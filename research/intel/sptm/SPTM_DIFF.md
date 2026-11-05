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
