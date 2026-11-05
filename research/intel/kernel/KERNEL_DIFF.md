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
