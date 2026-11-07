# SPTM cross-version diff: t8110, 27.0.1 vs 27.2 — first-public analysis

Source images (extracted from the two IPSWs in `ipsws/`):
```
Firmware/sptm.t8110.release.im4p  (im4p → raw Mach-O via `ipsw img4 im4p extract`)
  27.0.1 24A446: 199,960 B → 1,196,064 B Mach-O arm64e (PAK00) — SPTM 820.0.22
  27.2   24B119: 202,750 B → 1,212,448 B Mach-O arm64e (PAK00) — SPTM 820.40.24
```
Binaries kept locally in `sptm_research/` (not committed — size). Dis:
`sptm_research/sptm_{2701,272}.dis` (llvm-objdump, stripped, ~88k insns each).

## Method
- Full normalized instruction-stream diff (addresses+immediates masked):
  identity **0.9708**, 741 diff blocks, 3,263 changed instructions, clustered
  to 29 regions.
- Region→function attribution via nearest preceding adrp+add/ldr resolving into
  a format/assert string (assert strings embed function names: `sptm_retype`,
  `uat_retype_in/out`, …). No LC_SYMTAB; segments identical layout except
  `__TEXT_EXEC` 0x60000 → 0x64000 (+16KB code) and shifts after it.

## Change map (29 clusters, security-relevant ones)

| 27.0.1 VA | insns changed | attributed to | assessment |
|---|---|---|---|
| 0x…f0270af670 | 117 | **`issue-gmmu-tlbis-at-retype`** | 🔥 **TLBI verification added** — see below |
| 0x…f0270e3544–0x…f0270e9720 | ~2,200 | hibernation: dispatch state, io-range walk, serialize/deserialize | largest rework; new assert `(serialize->bytes_accessed + size) <= serialize->total_length` (deserialization bounds) |
| 0x…f0270bb770 | 599 | (assert-adjacent, unnamed) | rework |
| 0x…f0270c5c44 | 460 | (assert-adjacent) | rework |
| 0x…f0270c4a94 | 240 | (assert-adjacent) | rework |
| 0x…f0270b2268 | 291 | per-cpu scratch page | rework |
| 0x…f0270c11d0 / 0x…f0270dc7c4 | 2+107 | `validate_t8110dart_dart_instance` | DART validation |
| 0x…f0270ccd34 | 4 | **`pte-remap-carveout-only`** | PTE remap restriction |
| 0x…f0270b022c | 63 | segment-multiple-of-page checks | integrity |
| 0x…f0270dd018 / 0x…f0270ec674 | 6+49 | `INVALID_FRAME_TYPE` paths | FTE frame-type handling |

## 🔥 Flagship finding: GMMU TLBI on retype — verified only in 27.2

String evidence (exact, from both binaries):
```
27.0.1 (820.0.22)                    27.2 (820.40.24)
  issue-gmmu-tlbis-at-retype           issue-gmmu-tlbis-at-retype
  perform_gmmu_tlbi_if_needed          perform_gmmu_tlbi_if_needed
  "Only CPU pages may need a GMMU TLBI on retype"
  issue_tlbi_by_addr / _by_asid        issue_tlbi_by_addr / _by_asid
                                       + "Failed to verify TLBI"          ← NEW
                                       + "verify-gmmu-tlbis-at-sync"      ← NEW
                                       + "gmmu-tlbi-verification-reg"     ← NEW
                                       + "The GMMU TLBI verification register
                                          should be 8B-aligned"           ← NEW
```
Semantics: SPTM retype (page type transition, the PPL trust boundary primitive)
issues a GMMU TLB invalidation **at retype time in 27.0.1 but never verifies
completion**. 27.2 introduces a verification register (boot-flag
`verify-gmmu-tlbis-at-sync`, DT key `gmmu-tlbi-verification-reg`, 8B-aligned)
and a "Failed to verify TLBI" failure path — i.e. the retype→TLBI window became
a *checked* operation, not a fire-and-forget.

**Why it matters (defensive framing):** an unverified TLBI after a page-type
transition leaves a stale-mapping window — the classic primitive for
type-confusion between PPL-trust-levels. In 27.0.1 nothing on the SPTM side
detects that the invalidation did not land. This is the strongest *silent
hardening* candidate of the whole ABrake27 campaign and was not covered by
AzozzALFiras (their SPTM tracking is version-number only) or any public
writeup we could find.

## SPTM as target surface (research framing)
- Entry is the SMC/UAT call gate (`sptm_uat_*` endpoint family: MAP/UNMAP/RETYPE/
  SET_CTX_ID/REVOKE_SAPT_MULTIPAGE/GET_INFO) — reachable only from EL1 with PPL
  state; not app-reachable. Any "SPTM bypass" claim (TG watch-list) must
  therefore start from a kernel exploit; SPTM itself is not an attack *entry*
  surface for userland. Treat the pwnumbda/SPTM rumors as zero-information
  until a writeup appears (STATUS §6 unchanged).
- What we CAN say from this diff: Apple's own hardening between 27.0.1→27.2
  concentrated on (a) TLBI verification at retype, (b) hibernate
  (de)serialization bounds, (c) DART validation, (d) PTE remap carveout
  restriction — four areas worth reading as a map of what Apple considers
  attack-primitive-adjacent in its own code.

## Repro
```bash
unzip -j ipsws/<ipsw> Firmware/sptm.t8110.release.im4p -d sptm_<v>
ipsw img4 im4p extract sptm_<v>/sptm.t8110.release.im4p --output sptm_<v>/sptm.bin
llvm-objdump -d --no-show-raw-insn sptm_<v>/sptm.bin > sptm_<v>.dis
# diff + attribution scripts inline in session notes (normalized SequenceMatcher
# + adrp/add string-ref attribution, consensus-window rule from VERDICT.md)
```

## Correction + refinement (string-set diff, 2026-11-05 later pass)

⚠️ Correction to the flagship table: the hibernate serialize asserts
(`(serialize->bytes_accessed + size) <= serialize->total_length`,
`cur_page_pos <= max_page_size`, HMAC checks) exist in **both** builds — they
were NOT added in 27.2. The earlier "new assert" wording was wrong.

What the precise string-set diff (32 new / 2 gone) actually shows as NEW in
820.40.24:

1. **TLBI verification family (confirmed, expanded):**
   - `gmmu-tlbi-verification-reg` + `gmmu-tlbi-verification-bit (%llu) is unset
     or out of range [0, 63]` — the verification register has a *bit index*,
     validated into [0,63]
   - `verify-gmmu-tlbis-at-sync is enabled but gmmu-tlbi-verification-reg is
     not set` — boot-flag/DT cross-validation
   - `%s: Failed to verify TLBI`
2. **NEW hibernate handoff bounds check:**
   `hib_header_copy->handoffPageCount < HIB_HANDOFF_PAGECOUNT_LIMIT`
   — the handoff page-count now has a hard upper limit asserted at deserialization.
3. **NEW NVMe hibernation latch enforcement:**
   `enforce_no_hib_latch`, `VIOLATION_NVME_ILLEGAL_HIBERNATION_QUEUE_LATCH`
   — storage queue latch state is now policed during hibernation.
4. **NEW DART mutual-exclusion validation:**
   `dart %p: relaxed_rw_protections and allow_pte_remap are not supported together`
   — two previously co-configurable protection knobs are now exclusive.
5. **NEW FTE refcnt assert:** `fte(%p), new_type(%s), page_flags(%u),
   read_refcnt(%d) iommu_read_refcnt(%u)` — retype now asserts CPU-vs-IOMMU
   read-refcount consistency.

So the honest 27.2 SPTM hardening list: TLBI verify (flagship), handoff
page-count limit, NVMe hib latch, DART knob exclusivity, FTE refcnt assert.
The ~2,200-insn hibernate region diff is mostly rework around these.

## Addendum 2026-11-06: a sixth cluster the string pass missed — **UAT Dekker lock/gate + outer TLB flush**

Re-ran the string diff on the same two images with a lower threshold (**len ≥ 6**
instead of ≥ 10): 2,500 vs 2,528 unique strings → **45 new / 17 gone** (the earlier
pass reported 32/2). The extra strings are short identifiers, and three of them
form a cluster that changes the model of the whole UAT path:

```
uat_dekkerlock_lock          → 0xfffffff027005b31
uat_dekker_gate_lock         → 0xfffffff027005b94
uat_sync_outer_tlb_sapt_flush→ 0xfffffff027005467
"%s: UAT Dekker lock acquisition timed out after %llu ns (spun for %llu cycles)"
"%s: UAT Dekker gate acquisition timed out after %llu ns (spun for %llu cycles)"
```

xref (adrp+add into `__TEXT`) lands in exactly five `__TEXT_EXEC` functions, and the
log strings they already carry identify which UAT operation each one is:

| function (820.40.24) | identified by its own log strings | op |
|---|---|---|
| `0xfffffff0270ad8f0` | `Corrupted map_data`, `Copying segments into %p will overflow the state object page` | `sptm_uat_map` |
| `0xfffffff0270ac7b8` | `Corrupted prepare_fw_unmap_data`, `unmap_data` | `prepare_fw_unmap` / unmap |
| `0xfffffff0270abc74` | `TTBR%d`, `Attempted a TLB Invalidate by ASID`, `Provided CTXID %d does not fit in the ASID field` | state ops (set CTXID, TLB by ASID) |
| `0xfffffff0270aea24` | `new type not XNU_IOMMU`, `retyping from XNU_IOMMU but not to XNU_DEFAULT` | `sptm_uat_retype` |
| `0xfffffff0270e9ccc` | `FTE %p should be held exclusive by sptm_retype()`, `Only CPU pages may need a GMMU TLBI on retype` | frame path of `sptm_retype` |
| (`0xfffffff0270b0eb8` bootstrap-stage announce — uses the gate only) | | |

Mechanics, from `0xfffffff0270abe94` on: `dsb sy`; read `s3_4_c15_c10_6`; compute a
deadline from `cntfrq_el0` (masked to /8, `umulh`); on expiry log the "...timed out
after %llu ns (spun for %llu cycles)" line; on success `dmb sy` + `stlurb` release and,
after the operation, `uat_sync_outer_tlb_sapt_flush`. So in 27.2 **every UAT
transition (map / unmap / context / retype) runs under a lock+gate pair with a
bounded spin and an explicit timeout**, not under a bare flag.

Also new in the same build and not in the earlier list:
```
VIOLATION_T8110_DART_UNGANG_GAPF_RACE
"%s: dart %p (%s:%u): Inconsistent unganged clock protection configuration"
sptm_t8110dart_skip_disable_clock_protection_write
sptm_allow_vm_isa_internal_guests / sptm_is_iuou_or_iuos_device / internal-use-only-unit
/chosen/manifest-properties      (DT manifest gating for internal/VM guests)
0x4B1D000000000003ULL            (was ..._002 in 27.0.1)
```

Correction to the flagship framing: the TLBI-verification strings are confirmed
byte-exactly (`verify-gmmu-tlbis-at-sync`, `gmmu-tlbi-verification-reg`,
`gmmu-tlbi-verification-bit` validated into `[0,63]`, `Failed to verify TLBI`), and the
UAT Dekker discipline is the *other half* of the same fix — verification without
mutual exclusion would still leave the retype-vs-map window open.

Implication for reachability (unchanged): SPTM entry is the SMC/UAT gate, EL1+PPL
only. The new locks make the retype/map race strictly harder, so any surviving
primitive in this area has to live outside these five functions (hibernate path,
DART config, or the internal-guest gating).

