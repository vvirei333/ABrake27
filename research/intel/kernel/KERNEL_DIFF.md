# Kernelcache diff: iPhone14,5 (T8110), 27.0.1 vs 27.2 — campaign v1

## Images
```
kernelcache.release.iphone14 (LZSS → decompressed via `ipsw kernel dec`)
  27.0.1 24A446: 21,124,088 → 67,108,864 B — xnu-13432.2.10~2, Darwin 27.0.0
  27.2   24B119: 21,269,656 → 67,371,008 B — xnu-13432.42.3~28 (+262KB)
```
Build delta 13432.2.10 → 13432.42.3: ~40 point-release iterations — this is
where the 27.1/27.2 advisory fixes live. Artifacts in `kernel_diff/` (not
committed; 134MB).

## Method (v1: string-set diff)
Full ≥10-char printable string sets: 138,995 vs 139,516; **2,993 new / 2,472
removed**. Security-relevant slices:

### 🔥 AMFI: DER entitlements parsed in the "no entitlement check" path (NEW)
```
AMFI: DER entitlement extraction failure in no entitlement check.
AMFI: DER entitlements present in no entitlement check. (length: %ld, ptr: %s)
```
xnu-13432.42.3 makes AMFI extract and inspect DER-encoded entitlements even on
code paths that previously skipped entitlement validation entirely (unsigned/
pathological signature cases). Defensive read: closes a class of
"entitlement-bearing signature, no-entitlement-check consumer" mismatches —
the exact family where CSP^-related confusions historically lived. First-public
observation.

### Exclaves surface grew
- `_exclaves_indicator_system_state_change` (new symbol-string)
- new xbs source paths under Exclaves/CLPC build roots
Consistent with 27.x moving more of the trust surface into Exclaves; every new
Exclaves RPC endpoint is a future audit target.

### Hibernate hardening (matches SPTM finding, SPTM_DIFF.md)
```
%s: Waking from hibernate, clearing cached performance counters
%s: ... (ActiveAction)
AppleDCPLinkService: hibernate-resume re-start of link service failed
```
Kernel-side hibernate-resume hygiene added alongside the SPTM (de)serialization
bounds rework — Apple hardened the wake path end-to-end in 27.2.

### mac_label
`_mac_label_get` / `_mac_label_set` appear as new exported strings — MAC label
handling touched; candidate for a v2 disassembly-level diff.

### New source-path breadcrumbs (for v2 targeting)
```
xnu/bsd/k[ern?]... TemporaryDirectory.14N5mt (27.2 build root)
```
bsd/kernel source paths embedded in 27.2 panic/assert strings map which xnu
subsystems were rebuilt: bsd, VM, CLPC, Exclaves, IOHIDFamily-2360.40.13.0.1,
AppleInputDeviceSupport_kexts-10110.1.

## v2 roadmap (this campaign is deliberately shallow)
1. Disassembly-level diff (both kernels are MH_FILESET ARM64E, no LC_SYMTAB —
   reuse the 4-gram-consensus window method from VERDICT.md).
2. `ipsw kernel ctfdump` on both (CTF presence unconfirmed for RELEASE builds).
3. Focus list from this pass: AMFI `no entitlement check` call sites,
   `mac_label_*`, Exclaves indicator endpoint, hibernate resume path.
4. Syscall/mach-trap table diff (needs dis pass, string method can't see it).

## Framing
Ties into the campaign-wide pattern: Apple ships real, silent hardening in 27.2
(AMFI DER check, SPTM TLBI verify, hibernate bounds) while the TG doc's
"Fixed in 27.2" claims for its two CVEs carry no binary evidence. Two
independent facts, one story: hardening happens, fix-claims need verification.

### v2 addendum: AMFI DER-check refined (string-neighborhood analysis)

- 27.0.1 already contains the non-DER variant `AMFI: Entitlements present in no
  entitlement check.` (0x62d9b4) inside the `getOSEntitlements`/`copyOSEntitlements`
  cluster (AppleMobileFileIntegrity kext, CoreEntitlments.cpp region — assert
  strings `"CoreEntitlments has triggered a panic"`, `site.CEAccelerationElement_t`).
- 27.2 **adds the DER variants immediately after the non-DER ones**
  (0x634e9d / 0x634edf): the no-entitlement-check path's entitlement scan was
  *extended* to also parse DER-encoded entitlement blobs — not a brand-new check.
- Same neighborhood: OOP-JIT entitlement strings, SMAC library-mapping checks,
  `com.apple.system-task-ports.token.control`, `trust_cache_interface` — the
  AMFI library-mapping surface was actively reworked in this build.
- Disassembly-level diff of the `copyOSEntitlements` function remains open
  (needs the 67MB `llvm-objdump` pass; queued as kernel v2 proper).

### v2 status note (2026-11-05 evening close-out)

Both kernels disassembled (`kc_{2701,272}.dis`, ~120MB each, 2.95M insns) — but
`llvm-objdump` renders large parts of `__PRELINK_TEXT` as `<unknown>` (data-in-code
directives confuse the decoder), so adrp+add xref hunting for the AMFI strings
(string VAs 0xfffffff007638e9d/edf in 27.2, 0xfffffff007631931/95d/9b4 in 27.0.1)
does not resolve in this dis. Kernel v2 proper needs a Mach-O-aware pass:
`ipsw macho disass` per-kext, or Ghidra with the AMFI kext sliced out
(kext boundaries come from `__PRELINK_INFO`). Queued.

### v2 PROPER: AMFI kext diff — DER fallback fully characterized

Extracted both AMFI kexts from the fileset (`ipsw kernel extract --all`,
`com.apple.driver.AppleMobileFileIntegrity`, 298KB each) and diffed cleanly:
**identity 0.9997, exactly 2 change clusters** (the kext is otherwise untouched).

**New function added in 27.2** (27.2 VA 0xfffffff008ed03e0; nothing at the
corresponding spot in 27.0.1):
```
entitlement_probe(cred):
    err = parse_legacy_entitlements(cred, &len, &ptr)        // 0x…8ef135c
    if (err)  log("AMFI: Entitlement extraction failure in no entitlement check.")
    else if (len == 0 && ptr == 0) {
        err2 = parse_DER_entitlements(cred, &len2, &ptr2)    // 0x…8ef134c  ← NEW CALL
        if (err2)   log("AMFI: DER entitlement extraction failure in no entitlement check.")
        else if (len2 || ptr2)
                    log("AMFI: DER entitlements present in no entitlement check. (length, ptr)")
    }
    else      log("AMFI: Entitlements present in no entitlement check. (length, ptr)")
    return same_gate_result_as_27.0.1
```
Key facts (from the instruction stream):
- The DER parse runs **only when the legacy entitlement blob is empty** — it is a
  fallback probe, not a replacement.
- **The gate's return value is unchanged** in every path (0/1 exactly as in
  27.0.1) — this is pure *observation/telemetry*: Apple is instrumenting how
  often code carrying DER-encoded entitlements flows through paths that skip
  entitlement validation. Classic "measure first, enforce later" pattern;
  watch for this becoming a hard gate in a future release.
- Second cluster (2 insns @0x…8ea15a0): a constant loaded via `ldr d0` from
  `__DATA_CONST` differs — table/constant tweak in the codesign-flags check
  (`movk w8, #0xefff` mask region), cosmetic.

Method note: whole-kext normalized diff (44.5k insns, identity 0.9997) resolves
what the whole-kernel 120MB dis could not — per-kext extraction is the right
kernel v2 technique; kernel-wide llvm-objdump stays unusable for PRELINK_TEXT.

## v3 CAMPAIGN: whole-kext sweep + sandbox kext deep-dive (2026-11-05)

`ipsw kernel extract --all` on both kernels → 251 kexts each, byte-map:
**34 changed by size, 0 added, 0 removed.** Largest deltas:
```
+114672  com.apple.driver.ASIOKit              (feature growth)
 +65736  com.apple.driver.AppleH11ANEInterface (ANE)
 +32840  com.apple.driver.RTBuddy
 +16424  com.apple.kernel
 +16384  com.apple.security.sandbox             ← deep-dived
 +16384  com.apple.driver.AppleAVE2 / DCPAVFamilyProxy / usb.networking
   +16   corecrypto, apfs, tmpfs, AppleSEPCredentialManager, IOSkywalkFamily ...
```

### com.apple.security.sandbox: identity 0.9862, 17 clusters

String-attributed change map (27.0.1 VAs):
| cluster | attributed to | read |
|---|---|---|
| 489 insns @0x…9f6a538 | `%s: size underflow` | bounds-check rework in container/profile parsing |
| 371 @0x…9f80654 | `failed to write %zu bytes to %s at offset %llu` | profile-store path reworked |
| 257 @0x…9f7fdb0 | `out-of-range address` | **address validation tightened** |
| 122 @0x…9f7e810 | `truncated` | input validation |
| 105 @0x…9f66fc8 | `renamex_np(RENAME_SWAP) denied: %d` | deny-path rework |
|  73 @0x…9f7f5b8 | `requires %u profile flags, max is %zu` | profile-flags validation |
|  52 @0x…9f7bde0 | `unsupported extension type` | extension handling |

New profile string: `/System/Library/Frameworks/SystemConfiguration.framework/
deprecated-get-network-info` — a *deprecated* profile stub added (network-info
entitlement plumbing being retired in stages).

### Why it matters for the CVE-112706 thread
The doc's bytestream sandbox-escape chains through **this kext** (the daemon's
profile lives here). Unlike every other CVE-112706-linked component, the
sandbox kext DID change in 27.2 — in validation/bounds regions, exactly the
shape a profile-side mitigation would take. This is the *only* binary evidence
compatible with a real 27.2 mitigation of the bytestream issue; the doc's
"server-side path whitelist + fd type validation" wording remains unsupported,
but "fixed via sandbox profile" now has a candidate home. Verdict on the doc
stays "fix-claim unverified", with a sharper pointer.

### Method note
Whole-kext sweep (byte map) → pick changed kexts → normalized dis diff +
string attribution. Reusable; next candidates: com.apple.kernel (+16424,
innermost), AppleT8110DART (+24), corecrypto (+16).

## v3b: com.apple.kernel deep-dive (2026-11-05)

Full 2.2M-insn dis of both kernels' innermost kext (12.1MB); full SequenceMatcher
out of scope, targeted xref analysis of the new assert strings instead.

New in 27.2 (string-set diff of the kext, +350/-293):
1. **`VM entry %p lock shared lock overflow <v:%d c:%c%c w:%c%c %c/%d>`** —
   xref'd to code @0xfffffff00aa7a764 (boot region), inside a VM-map locking
   function using `TPIDR_EL1` per-cpu state and `ldxr/ldadd` atomics with the
   `#0x40000` overflow flag on the lock word. → **new instrumentation for
   shared-lock overflow on vm_map_entry** — the classic lck_rw overflow panic
   class now has a dedicated diagnostic path. Defensive read: Apple is chasing
   a lock-contention/overflow condition that at minimum caused field panics,
   at worst was a DoS lead.
2. `vm: configured segment limit would overflow slot mapping index, reducing to %d`
   — new defensive clamp in VM segment configuration (integer-overflow guard
   on slot-mapping index).
3. `memsize=%u MB leaves no memory for XNU/SPTM to manage: the iBoot carveouts
   alone are %llu MB` — new boot-time consistency check in the XNU↔SPTM memory
   handoff (ties into the SPTM hibernation rework).
4. `_exclaves_indicator_system_state_change` — new Exclaves state-change
   indicator surface (matches the framework-side growth seen in v1).
5. Removed: `memorystatus: swap is disabled, bypassing fast-wake warmup`
   (fast-wake warmup path changed).
6. Same panic-adjacent and OSLog source-path churn (new xbs build root
   FBE73862…) — consistent with ~40 xnu point-release iterations.

No new gate/entitlement strings in the innermost kernel; the 27.2 security
delta concentrates in VM-lock diagnostics + boot consistency checks, which
complements (not changes) the sandbox-kext conclusion from v3.

## v3c: `com.apple.driver.AppleT8110DART` (+24 B) — kext starts calling the DART page-table walk in `com.apple.kernel`

Next candidate from the v3 roadmap. File grows 131,752 → 131,776 B (+24), yet the
code delta is structural, not a new message: **no new human-readable strings**
(the only `__cstring` change is a 2-byte insertion inside a long `1/2` digit run —
an ObjC encoding/class-hierarchy blob, not a format string).

### Section deltas
```
__text       0xffc0 -> 0x102a0   (+736)
__auth_stubs 0x320  -> 0x350     (+48 = 3 stubs x 16)
__auth_got   0x190  -> 0x1a8     (+24 = 3 slots)
__bss        0x8    -> 0x48      (+64 = 2 qwords)
__cstring    0x2961 -> 0x2963    (+2, digit-encoding only)
```

### The 3 new imports are appended, and they resolve to `t8110dart.c` internals
Stub slots are laid out in GOT order (offsets 0x0, 0x8, … , 0x188 in 27.0.1;
0x0 … 0x1a0 in 27.2), so a sequence diff of (stub VA, GOT offset) is exact:
27.0.1 has 50 slots, 27.2 has the same 50 plus **three appended**:

| new stub (27.2) | GOT off | target (24B119) | identified by its own panic string | semantics |
|---|---|---|---|---|
| `0xfffffff009394ff0` | 0x190 | `0xfffffff00a3c8978` | `t8110dart %p (%s): invalid SID %u` | SID → number of translation levels (returns 3 or 4) |
| `0xfffffff009395000` | 0x198 | `0xfffffff00a3c8a20` | `… invalid SID %u translation level: %u` | bounds-checks level<4/<5 and extracts the level field from the IOVA via mask/shift tables at `0xfffffff007012a20` (qword masks) / `0xfffffff007012a40` (byte shifts) |
| `0xfffffff009395010` | 0x1a0 | `0xfffffff00a3c8bb4` | same family, level walk | loops levels 1..N, walks `[this+0x1e0]` descriptors, returns the translated address |

Important qualifier: the **callee functions themselves are not new** — both panic
strings exist in 27.0.1's kernel too (`invalid SID %u @%s:%d` at
`0xfffffff007059d9f` in 2701, `0xfffffff00705a064` in 272). What changed is that the DART *kext*
now imports and calls them, i.e. it acquired an IOVA→PA page-table walk of its own.

### Where the new imports are actually called: the exception / fault-reporting path
Call sites of the three new stubs sit in the DART exception machinery, identified by
the strings each enclosing function references:

| stub | call sites | enclosing function (identified by its strings) |
|---|---|---|
| levels-per-SID (`0x…9394ff0`) | `0x938cc28`, `0x938d818`, `0x938ecac` | SID-exception reporters: `"%s (%p): %s %s exception%s SID %d ERROR_SID_SUMMARY 0x%08x ERROR_ADDRESS 0x%016llx"`, `_handleInterrupt` (`Secondary exception DART instance %u`), `AppleT8110DART.cpp` REQUIRE paths |
| level-field (`0x…9395000`) | 13 sites incl. `0x938cc48/cc88/cca4`, `0x938dd88`, `0x938eccc` | same exception reporters + `Chunk table changed: md %p page %#x chunkRefs[%#llx] %p pthandle expected %p actual %p` |
| translate (`0x…9395010`) | `0x938b7a4`, `0x938c278`, `0x938c2dc`, `0x938c860`, `0x938d234` | chunk-table / APF reject paths (`(%s) %s:%u: VERIFY failed`, `APF reject`) and Exclave SID exception path |

So 27.2 gives the DART kext the ability to **resolve a faulting IOVA inside its own
exception handler** (SID → level count → per-level field → walk), and adds a
chunk-table consistency diagnostic (`pthandle expected %p actual %p`). Practically:
better fault attribution and an extra invariant check — diagnostics/robustness, not a
new capability exposed to a client.

### Code changes that go with it
- Mapping-state copy loop: 27.2 reads **one more 32-bit property** of the indexed
  object (`ldr w8,[x8,#0x348]`, bounds-checked array access at `[this+0xc50]+0x20`
  with the `movk x16,#0x2bad` poison-on-OOB `csel`) and mirrors it into the state
  struct at `+0x78`; 27.0.1's sequence starts at `#0x350`. Net: the mapping state
  gained a word, and one more DART property is captured per mapping.
- **Two new tiny functions** (`0xfffffff009393364`, `0xfffffff0093933a0`):
  `bti c; ldrb w8,[x0,#0xc6d]; …[x0,#0x16a0]/[x0,#0x16a8]…; ldr x0,[x8]; b <local>`
  — accessor thunks (flag check + pointer fetch + tail call), one per caller shape.
- `__bss` +64: two new qword globals (likely the cached SID/level state).

### Why it matters
This is the kext-side half of the same theme SPTM shows in 27.2 (`SPTM_DIFF.md`):
new strings there include `relaxed_rw_protections and allow_pte_remap are not
supported together`, `Inconsistent unganged clock protection configuration`,
`VIOLATION_T8110_DART_UNGANG_GAPF_RACE`, and
`sptm_t8110dart_skip_disable_clock_protection_write`. Two independent binaries were
touched in the DART configuration/validation area in the same build — consistent
with a coordinated hardening pass rather than a feature.

Caveats: nothing here is user-reachable — the new walk runs in the fault path; the
extra state word's meaning (which of #0x348…#0x358) is inferred from load/store
pairing, not from symbols; and the SPTM↔kext link is thematic, not proven. Nothing
here contradicts the v3 conclusion that 27.2's kernel delta is defensive.

### Repro
```python
# 1. slice the kext from both kernels: ipsw kernel extract --all
# 2. section deltas: parse LC_SEGMENT_64 sections, compare __text/__auth_* sizes
# 3. stubs: __auth_stubs is N x 16 B; decode adrp+add to get GOT offset per slot
#    -> sequence diff gives appended slots (0x190/0x198/0x1a0)
# 4. GOT targets: LD/ST are chained words, target = 0xfffffff007004000 + (q & 0x3ffffffffff)
# 5. name each target: disassemble, find adrp+add into __TEXT cstrings
#    ("t8110dart %p (%s): invalid SID %u", "... translation level: %u")
```
Artifacts: `kernel_diff/kexts_{2701,272}/com.apple.driver.AppleT8110DART`,
`kernel_diff/kexts_272/com.apple.kernel` (for naming the imports).

## v3d: `com.apple.kec.corecrypto` (+16 B) — boot FIPS POST gains an ML-DSA-44 rejection KAT

Second v3 candidate. The file delta is 16 bytes but the payload is not cosmetic:

```
__text            0x6ecb0 -> 0x6f1e0   (+1328)
__cstring         0x4479  -> 0x453c    (+195)
__const (__TEXT)  0x10180 -> 0x101e0   (+96)
__const (__DATA_CONST) 0x3fb8 -> 0x3fd8 (+32)
```
Whole-file string diff: 569 -> 576, only **9 new / 2 gone**, and three of the new
ones are the entire story:
```
fipspost_post_mldsa_sign_rejection_kat_44                       (test name)
FIPSPOST_KEXT [%llu] %s:%d: FAILED: ccmldsa_sign (rejection, ML-DSA-44): %d
FIPSPOST_KEXT [%llu] %s:%d: FAILED: mismatch rejection sig (ML-DSA-44): %d
```
27.0.1 already has the same FIPS-POST surface for post-quantum crypto — `ccmldsa65`,
`ccmldsa87`, `cckem_mlkem768`, `cckem_mlkem1024`, `fipspost_post_mldsa_sign_rejection_kat`
and the *generic* `ccmldsa_sign (rejection)` / `mismatch rejection sig` messages. What
27.2 adds is a **dedicated ML-DSA-44 rejection test**: the same rejection-sampling
path, but for the smallest (44) parameter set, with its own vector and its own
pass/fail reporting. No new algorithm name strings (`ccmldsa44` does not exist in
either build) — the 44 mode is exercised through the existing ML-DSA API, i.e. the
parameter set was already compiled in; only its KAT coverage is new.

New constant blob (96 B, inserted in `__TEXT.__const`):
```
00 01 02 03 ... 1e 1f          <- 32-byte deterministic seed/message
46 48 3f 2b 67 49 5e 58 c0 a2 27 2e 62 47 73 36
97 b1 c4 b8 11 89 ca 48 4c ed 1e 95 24 cd c1 42
89 23 16 79 c0 78 b3 f0 57 13 88 a8 a1 47 75 21
0f c1 12 4d 05 29 96 e6 b5 59 c9 4f a1 7b 65 47   <- 64 bytes of fixed test data
```
Read: rejection sampling is the fault-injection-sensitive step of ML-DSA signing
(the signer must discard and re-draw when the candidate signature exceeds the norm
bound), so a KAT that *forces* the rejection path and checks the expected "rejection
signature" is exactly how you assert that the discard logic still behaves under a
deterministic input. Adding it for the 44 parameter set in the same build that adds
the SPTM TLBI verification and the sandbox/VM hardening is consistent with a broad
"self-check everything silently" pass.

Scope checks: `mldsa|mlkem|compsig` string hits exist **only** in `corecrypto`
(42 → 45) — no other kext in either kernel references the PQ algorithms, so this is
not a new cross-kext surface. The `COMPSIG-MLDSA87-RSA3072-PSS-SHA512` composite
scheme is unchanged.

Caveats: not an attack surface — POST runs at boot, and the failure path (crypto
self-test failure) was not analysed. Whether the 44 parameter set is *used* by any
27.2 subsystem is not established by kernelcache alone (consumers would be userland
Security/CoreCrypto clients).

Repro: same per-kext extraction; diff `__cstring`/`__const`/`__text` sections and the
string sets; the inserted blob is at `__TEXT.__const` offset 23499 in the 27.2 file
(28 bytes of context on both sides match).

## v3e: small-delta sweep — the 34 size-changed kexts by *content*, not by size

The v3 map ranked kexts by file-size delta. Size is a poor proxy (page-aligned
sections hide +16/+24 deltas, and `sha256` is useless at kext granularity: **all 251
kexts differ by hash** because of `LC_UUID`, build-root strings and every shifted
`adrp` displacement — 217 of them have *identical* size). What works is the section
map plus a string-set diff per kext. Result for the 34 size-changed kexts
(strings ≥8 chars, build-path noise filtered):

| kext | Δfile | real strings | read |
|---|---|---|---|
| `AppleH11ANEInterface` | +65736 | 220 | ANE pool/Exclave rework: shared-memory free message bounds (`offset/size`), `completeRequestsWithStaleEpoch`, `Started SECURE mode for Exclave client`, `exclave-client-add`, `sep-client-power-off` |
| `AppleAVE2` | +16384 | 79 | **HEVC/H.264 parser bounds**: `number of temporal layers (prop) is out of range`, `HEVC VPS layer_id_in_nuh is out of range`, `MCTF strength count out of range`, `log2_max_pic_order_cnt_lsb_minus4 <= 12`, `vps_num_layer_sets_minus1 + 1 + num_add_layer_sets <= (63 + 1)`, invalid MB/CTU stats buffer |
| `sandbox` | +16384 | 256 | profile churn as in v3 (new/removed profile keys incl. `scripting.ios.KeyboardExtension`, `libjxl`) — no new gate logic beyond v3 |
| `RTBuddy` | +32840 | 39 | metric/string-table bounds (`label_offset ... below string table base`), `claim-wake-endpoint-flags`, coreAnalytics absence handling |
| `ASIOKit` | +114672 | 41 | mostly blob churn (no readable messages) — needs dis, not strings |
| `AppleFSCompressionTypeZlib` | +16376 | 7 | `chunk %u produced %lld of %lld expected bytes` |
| `apfs` | +8 | 30 | **consistency cluster**: `punch hole dstream and file size mismatch: [%llu, %llu); ino …`, `IP bm base %lld:%lld is not free in the bitmap!`, `apfs_rr: cleanup last failed to decrement crypto refcount (ret %d)`, `decrement_dstream_id_for_deletion` (renamed from `_ex`), `applied dstream workaround inode %llu`; `__bss` −136, `__const` +8 |
| `AppleSEPCredentialManager` | +8 | 9 | **ACMDeviceInfo size validation** + SEP endpoint timeout diagnostics (below) |
| `AppleSmartBatteryManagerEmbedded` | +8 | 33 | new failure counters (`ChargingOverTemperature`, `DischargingOverCurrentHW1` …), `ChargeInhibit`, `IsDevFused` |
| `IOMobileGraphicsFamily-DCP` | +8 | 17 | `map_block_buf` error paths: alloc/prepare failures, `block_size … too small for addr_offs/size_offs`, DP link power-down/link-service hibernate messages |
| `AppleDCP` | +16 | 8 | **DPTX FIFO telemetry**: `videoOverflow`/`videoUnderflow`, `com.apple.display.DPTXFIFOErrors`, boot property `support-dptx-fifo-telemetry`, `_handleDPTXFIFOEpiResponse` |
| `AppleT8110CLPC` | +16 | 12 | ANE job tracking (`ane_job_tracking.enable(now)`), thermal keys `#cpu-thrtl-min-cycles-e/p`, `amx-thrtl-min-ratio-p` |
| `IONVMeFamily` | −32 | 7 | NVMe **Sanitize Status** telemetry (`SSTAT`, start/end time, bytes read/written); removed `SanitizeInProgress == true` assert |
| `AppleUSBDeviceNCM` | −24 | 0 | **removed** boot-args `ncm-no-trm`, `disable-transport-rm`, function `submitPacketGated` |
| `tmpfs` | +16 | 0 | removed UPL map/unmap error messages |
| `lifs` | +16 | 8 | msleep/timeout semantics: `giving up with EIO`, `request %llu was claimed by a reply while giving up`, `lifs_abandon_sync_req` |
| `IOgPTPPlugin` | −88 | 2 | removed `syncRate/portType/timestampCount` and `interface not found`/`task != nullptr` messages |
| `AppleMobileDispH14P-DCP` | +32 | 48 | dual-pipe modeset telemetry + AED shim pairing (`paired primary fb … with secondary fb`) |

### `AppleSEPCredentialManager` (+8): ACMDeviceInfo validation, timeout diagnostics, one new release
`__text` +732, `__cstring` +179, `__auth_stubs` +16, `__auth_got` +8 — i.e. one new
import and real code.

1. **New validator** `0xfffffff0091174c4` (xref'd only from the 27.2 side). It asserts
   `newValue && newValueSize == sizeof(ACMDeviceInfo)` — the compiled check is
   `cbz x20; cmp x19,#8; b.ne fail` with a `-3` (`0xfffffffd`) return and a log via the
   new `DataValidation_DeviceInfo` tag. So `ACMDeviceInfo` is 8 bytes and the property
   path now rejects any other size, where 27.0.1 accepted the value as-is.
2. **SEP endpoint wait loop** gained a give-up path with diagnostics:
   `%s: %s: giving up waiting for SEP endpoint after %llums (cmd=%u)` alongside a
   `0x753` bound on a shifted wait counter (`x26>>4`) and a reason string; the timeout
   class has no equivalent in 27.0.1's `__cstring`.
3. **One appended import** (GOT slot `0x330`) resolves to kernel `0xfffffff00a291cb0`:
   `ldaddl w-1` on `[obj+0x218]` with a teardown path — an OSObject-style
   release/refcount-drop helper. The release call itself is new in this kext, so a 27.2 path performs a
   refcount drop that has no counterpart in 27.0.1 — i.e. a lifetime/leak fix around
   the new validation path.

Relevance to this project: ACM is the source of truth for the AMFI dev-mode flag
(`FINDINGS_LOCK.md` §ACM, command `0x25`). 27.2 touching the ACM device-info property
path is at least adjacent to that surface — but nothing here shows a change to the ACM
command handling itself, only to the property size check and to the SEP endpoint wait.

Caveats: `async`-style reads of `__DATA` state mean the exact property name is not
recoverable from strings alone; no user-reachable trigger is claimed. `apfs`,
`AppleAVE2` and `AppleH11ANEInterface` above are string-level maps only — each needs
its own normalized dis pass before any verdict.

Repro: per-kext extraction; compare `LC_SEGMENT_64` section sizes; string-set diff
with `len ≥ 8` and a build-path filter; for a specific cluster, xref the new string
with `adrp`+`add` and identify the enclosing function by its own log strings.

## v3f: `com.apple.driver.AppleAVE2` (+16384) — a whole HEVC/AVC parameter-validation layer added in 27.2

Not a cosmetic delta, and the strongest media-side finding of the campaign after
ImageIO. Sections:
```
__text            0x1d0028 -> 0x1d3ef8   (+16080)
__cstring         0x4804a  -> 0x49270    (+4646)
__os_log          0x5cabd  -> 0x5e03a    (+5501)
__const (__TEXT)  0x4b6f0  -> 0x4b6c0    (-48)
__const (__DATA_CONST) 0xae10 -> 0xad60  (-176)
```
79 new strings; after filtering build noise (dates, `913.64.1`, encrypted literals)
the rest are `REQUIRE(...)` **assert-expression text** — the compiled-in source text of
a check, i.e. the project's closure-table evidence — or the log messages those checks
emit. Three new checker functions are named in the strings:
`AVE_HEVC_CheckVPSExtBounds`, `AVE_Client_CheckLRMEInfo`, `AVE_Client_CheckMCTFInfo`
(they join the pre-existing `AVE_Client_CheckCodecInfo` / `CheckCommonInfo` /
`CheckDMVInfo` family).

### What is checked (absent or materially tightened — verified by identifier search)
String search in 27.0.1 for `log2_max_pic_order_cnt_lsb_minus4`,
`vps_max_layers_minus1`, `num_tile_columns_minus1`, `sHEVC_VPS`, `sHEVC_SPS`,
`sHEVC_PPS`, `saMBStats`: **0 hits each** — no validation of those fields existed.
Two checks did exist in an older form and were rewritten: `userDPBnumFrames` was
bounded by `((16) > (16) ? (16) : (16)) + 1` and `iNumOfTemporalLayer` by
`((iNumOfTemporalLayer - 1) <= 7)`; 27.2 replaces them with `max(16,15)+1` and, for
temporal layers, two new forms — `0 < iNumOfTemporalLayer <= 7` on the encoder-GOP
config (rejects 0) and `0 <= iNumOfTemporalLayer <= 7` on the property struct. Both
tighten the upper bound from `(x-1) <= 7` (i.e. x ≤ 8) to `x <= 7`. 27.2 adds:

| area | check (verbatim assert text) |
|---|---|
| HEVC VPS | `pVPS->vps_max_layers_minus1 < (63 + 1)`; `pVPS->layer_id_in_nuh[i] < (63 + 1)`; `layerNumSum <= (63 + 1)`; `(uint32_t)pVPS->vps_num_layer_sets_minus1 + 1 + pVPS->num_add_layer_sets <= (63 + 1)`; `... + num_add_olss ... <= (63 + 1)` |
| HEVC VPS (info struct) | `vps_max_sub_layers_minus1 < 7 && vps_num_layer_sets_minus1 < 16 && vps_num_hrd_parameters <= 16 && ...`; `num_add_layer_sets <= (63 + 1)` |
| HEVC SPS | `log2_max_pic_order_cnt_lsb_minus4 <= 12`; `sps_max_sub_layers_minus1 < 7 && num_long_term_ref_pics_sps <= 16` |
| HEVC PPS | `num_tile_columns_minus1 <= 256 && num_tile_rows_minus1 <= 256 && chroma_qp_offset_list_...` |
| HEVC RPS | `num_short_term_ref_pic_sets < 65 && (num_long_term_sps + num_long_term_pics ...)` |
| AVC syntax | `4 <= iLog2MaxFrameNum <= (12 + 4) && 4 <= iLog2MaxPOCLsb ...`; `iBitDepthLuma == 8 && iBitDepthChroma == 8`; `iNumSliceGroups == 1 && 1 <= iNumRefIdxL0DefaultActive <= ...` |
| session config | `0 < iNumOfTemporalLayer <= 7` (enc + HEVC prop variants); `2 <= userDPBnumFrames <= (max(16,15) + 1)`; `0 <= iRefNum <= iMaxRefNum`; `0 <= iNum < (1 + min(2,64) * (1 + 9))` |
| MCTF/LRME | `0 <= iMCTFStrengthLevelNum <= min(2,64)` for HEVC/AV1/MCTF; `AVE_Client_CheckMCTFInfo` / `CheckLRMEInfo` reject `MCTF/LRME info is not correct` |
| buffers | `pInfo->sBufPFSet.saMBStats[m].iAddr != 0` (MB/CTU stats firmware buffer must be non-null); `invalid MB/CTU stats firmware buffer %p %d %lld %p %lld | %d` |
| alias | `psPSCtxSrc != psPSCtxDst` (source and destination PS context must differ) |

### Where the checks live (27.2 VAs, with the REQUIRE line numbers)
```
AVE_HEVC_CheckVPSExtBounds   0xfffffff00844482c   #0x222/#0x229/#0x239 …
HEVC header validator        0xfffffff008443a38   #0x289 (log2<=12), #0x2b0, #0x2d8
AVC syntax validator         0xfffffff00844333c   #0x1e0 (bit depth == 8)
PS context alias check       0xfffffff008504f38   #0xbb
MB/CTU stats validator       0xfffffff008422cec   #0x60a
```
Exact instructions worth quoting for the closure table:
```
0xfffffff00844408c  mov  w9, #0xc       ; log2_max_pic_order_cnt_lsb_minus4 <= 12
0xfffffff008444950  mov  w9, #0x40      ; vps layer bound 64
0xfffffff0084449c0  mov  w10, #0x40     ; layerNumSum <= 64
```
i.e. the compiled comparisons are present, not just new log text — exactly the
"bounds ≠ ok, verify BOTH sides" standard.

### Why it matters
`AppleAVE2` is the video **encoder** kext with `AppleAVE2UserClient` +
`externalMethod`; the validated structs (`VideoParamsDriver`, `sSessionCfg`,
`sSyntaxCfgAVC`, `*_VPS/SPS/PPS`) are the session/config blob the client hands to the
driver. 27.0.1 trusted HEVC VPS/SPS/PPS layer/tile/RPS counts, log2 sizes, DPB frame
counts and the MB/CTU stats buffer pointer; 27.2 checks all of them and adds
`CheckLRMEInfo`/`CheckMCTFInfo` + a PS-context src≠dst alias test. That is the shape of
a **user-reachable media-surface hardening** (the same class as the ImageIO ASTC
guards this project already tracks), shipped silently.

Open question: no matching advisory string was checked yet — Apple's 27.2 notes we
saw list `AppleAVD` CVE-2026-112415 (decoder OOB write) and `AppleAVE2` is a separate
kext, so this may be an uncredited hardening pass or a fix for an unassigned issue.

Caveats: the `REQUIRE` text proves the checks exist in the compiled image; it does not
prove they guard a path an app can reach without an entitlement (AVE user clients are
typically restricted). The full call-site → externalMethod trace was not done here.

Repro: extract both kexts; `grep` the `REQUIRE` identifier substrings (they are
absent in 27.0.1); xref each assert string with `adrp`+`add` in `__TEXT_EXEC`; the
enclosing function is found by the nearest `bti c` / `pacibsp`; the REQUIRE macro
stores (string, line, file) on the stack before calling the log helper.

### v3f-addendum: first OOB pass on AVE2 (2026-11-06) — guard map, but no unchecked index yet

Goal was to find, for the fields that 27.2 started checking, the place where 27.0.1
uses them as an index/size without a bound. What the disassembly actually shows:

**Validator pair identified.** The HEVC syntax validator is `0xfffffff008416de4`
(27.0.1, size `0xa3c`) vs `0xfffffff008443a38` (27.2, size `0x12c8`) — the function
grew by ~2.2 KB, almost all of it the new checks. Its head is identical in both:
```
ldr  w8, [x1, #0x64] ; sub w8,w8,#1 ; cmp w8,#2 ; b.hs  <error>   ; config kind
ldr  w8, [x1, #0x68] ; sub w8,w8,#1 ; cmp w8,#1 ; b.hi  <error>   ; count in [1,2]
```
So the per-parameter-set loop **is** bounded in 27.0.1 as well. The loop itself:
```
27.0.1:  base = pInfo+0x4348, stride 0x1c74, elem +0x1c0, bound = [pInfo+0x68] (signed)
         madd x26, x25, #0x1c74, #0x1c0 ; ldr w0,[x24,x26] ; bl <validate>
27.2:    base = pInfo+0x4350, same stride/elem, same bound
```
Element size 0x1c74 (7276 B) — these are full per-parameter-set structs inside the
session config object, and the count at `+0x68` is clamped to 1..2 in both builds.

**Consequence:** the obvious "count → array index" OOB is *not* there. The newly added
checks cover VPS layer-set/OLP totals, SPS `log2_max_pic_order_cnt_lsb_minus4` /
`sps_max_sub_layers_minus1` / `num_long_term_ref_pics_sps`, PPS tile counts, RPS counts
and AVC `iLog2Max*`/bit depth — i.e. fields consumed by the *bitstream packer* and by
arithmetic (shift amounts, layer loops), not by the fixed-size struct array.

**Open, and the actual next step:** trace those fields from the config struct into the
packer (search for `lsl`/`madd` fed by the same struct offsets), and check the two
pointer-shape checks — `saMBStats[m].iAddr != 0` and `psPSCtxSrc != psPSCtxDst` — since
those guard *pointers*, not counts, and pointer-shape bugs are the ones that turn into
memory-safety primitives. No OOB in AVE2 is established at this point; the delta is
proven as validation hardening, not as a bug.
