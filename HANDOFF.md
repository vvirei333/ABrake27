
# iOS Kernelcache Reverse Engineering — Handoff

> Last updated: Session 21 (2026-10-04)
> Target: iPhone14,5 (iPhone 13, A15) / iOS 27.0.1 (24A446) and 27.2 (24B5089g)

## Project Overview

**Goal:** Understand the IOKit surface of `AppleSEPUserClient` on iOS 27 through binary reverse engineering of the kernelcache. Document the dispatch tables, decode chained fixups, and produce a reusable methodology for future research.

**Not goal:** weaponised exploit. This is a research-oriented, offline, documentation-first project.

**Environment:**
- Host: CachyOS (Arch-based), AMD Ryzen 5 3600, no Mac
- Ghidra: `/opt/ghidra` (12.1.2, PyGhidra — no Jython)
- Ghidra venv: `/home/ivan/projects/iphone-lockdownd-fuzzer/ghidra_venv/bin/python`
- Ghidra project: `/home/ivan/projects/iphone-lockdownd-fuzzer/ghidra_proj/amfi_stable` (and `amfi_beta`)
- Kernelcache (stable): `/run/media/ivan/New Volume/My Projects/iphone-ios27-diff/kernelcaches/stable/24A446__iPhone14,5/kernelcache.release.iPhone14,5`
- Kernelcache (beta): `/run/media/ivan/New Volume/My Projects/iphone-ios27-diff/kernelcaches/beta/24B5089g__iPhone14,5/kernelcache.release.iPhone14,5`
- Tools: `tools/macho_tool.py` (stdlib-only Mach-O parser + AArch64 decoder)
- Agent tooling: Claude Code (VS Code), OpenCode (external terminal), Kimi (web chat) — used for parallel analysis

**Kernel versions:**
- stable: `Darwin Kernel Version 27.0.0: Thu Aug 13 21:40:46 PDT 2026; root:xnu-13432.2.10~2/RELEASE_ARM64_T8110`
- beta: `Darwin Kernel Version 27.2.0 ... root:xnu-13432.40.162~93/RELEASE_ARM64_T8110`

**Important notes:**
- Kernelcache is `MH_FILESET` (merged cache — no `__PRELINK_*` segments, kexts folded into `__TEXT`)
- No `LC_SYMTAB` — symbols are stripped. All names recovered via strings or adrp+add analysis
- `.a2s` file contains only GOT stubs (9591 bytes) — no function symbols
- Kernelcache uses `LC_DYLD_CHAINED_FIXUPS` (ARM64E format)

## Session Log

### Session 1-2: Initial diff and exploit landscape

- Diffed iOS 27.0.1 (24A446) vs 27.2 (24B5089g) kernelcaches, rootfs, entitlements
- Produced `diff_output/` reports (DYLIBS, KEXTS, FILES, MACHOS, SANDBOX, IBOOT, FIRMWARE, Entitlements)
- Mapped Dopamine 3.x exploit bundles (kfd, weightBufs, dmaFail, badRecovery, DarkSword, ClearSword, etc.)
- Conclusion: no public kernel exploit for A15/iOS 27; direction — search for new bug
- Direction selected: VFS/VM race conditions (CVE-2025-43520 class)

### Session 3-4: AMFI DER entitlement patch (27.0.1 vs 27.2)

- Diff of `amfi_audit_no_entitlements()` between stable and beta
- **27.0.1 stable (`sub_fffffff008e943dc`):** only XML entitlement extractor. If CodeDirectory says `no entitlements`, DER section is not checked → self-signed IPA without DER passes.
- **27.2 beta (`sub_fffffff008f5021c`):** adds DER extractor call (`bl 0xfffffff008f7118c`) after XML check fails
- New beta strings:
  - `"AMFI: DER entitlement extraction failure in no entitlement check."`
  - `"AMFI: DER entitlements present in no entitlement check. (length: %ld, ptr: %s)"`
- **Conclusion:** beta 2 closes the DER-omission hole. 27.0.1 remains permissive on this specific path.
- Also verified not-beta-only: `_set_local_signing_public_key`, `amfi_allow_3p_launch_constraints`, `cs_enforcement_disable`, device-tree keys `amfi-allows-trust-cache-load`, `amfi-only-platform-code` — present in both.

### Session 5-6: AMFI IOUserClient dispatch table

- Located `AppleMobileFileIntegrityUserClient::externalMethod` — beta `sub_fffffff008f46528`
- Decoded `IOExternalMethodDispatch` table at beta `data_fffffff007e8a648` — **18 selectors (0..17)**
- Key selectors identified:
  - **11 = `armSecurityBootMode`** (`com.apple.private.amfi.developer-mode-control`)
  - 15 = `getDeveloperModeForceEnabled`
  - 16 = `completeSecurityBootMode`
  - 5 = `loadCompilationServiceCodeDirectoryHash`
  - 6 = `isCdhashInTrustCache`
  - 9 = `setDenylist`
- **Selector 11 write-side analysis:** wrapper `sub_fffffff008f46dd0` reads `scalarInput[0]`, tail-calls `sub_fffffff008f4e64c` which writes NVRAM variable `security-mode-change-enable` via IODTNVRAM `setProperty`
- **Force-enabled flag `data_fffffff00af8a658+0x7`:** only 2 read sites (`0xfffffff008f46f58`, `0xfffffff008f4e3d8`). No write site in AMFI — write happens elsewhere (ACM/SEP via NVRAM + reboot)
- ACM `LibCall_BuildCommand` (`sub_fffffff008f5e170`) analysed: magic `"DRCS"` header, memcpy of payload after 8-byte header. Not related to dev-mode flag.

### Session 7-8: PoC build and sideload attempt

- Built `poc/poc.c` — IOKit client for `AppleMobileFileIntegrity` + `AppleCredentialManager`
- Cross-compiled for arm64 on Linux via `clang` + `ld64.lld` + `zsign`
- Attempted sideload via SideStore with free Apple ID
- **Blocker:** `platform-application` + `com.apple.private.amfi.developer-mode-control` entitlements are platform-restricted. `amfid` kills the process before userspace even starts → no crash log, no log file.
- **Conclusion:** selector 11 is unreachable from a sideloaded app. Only platform-signed code can call it.

### Session 9-10: Developer Mode enabled via lockdown

- **Method that works:** `com.apple.amfi.lockdown` protocol via `pymobiledevice3`
- Chain: `action=1` (enable) → reboot → `action=2` (accept) → reboot → `action=0` (reveal)
- **Precondition:** passcode removed
- **Verified:** `mounter query-developer-mode-status` → True, survives reboot, `DeveloperDiskImage` mounted at `/System/Developer`
- **Conclusion:** Developer Mode is a done deal. PoC via selector 11 is not needed to reach this goal.

### Session 11-15: TOCTOU CVE-2025-43520 hypothesis — dead end

- **Hypothesis:** `cluster_write_contig` / `cluster_read_contig` in XNU vfs_cluster.c do not re-check `UPL_PHYS_CONTIG` after second `vm_map_get_upl`. Potential TOCTOU → OOB on physmem.
- Initial binary analysis (Session 11, via `tools/macho_tool.py`): addresses claimed to be `cluster_write_contig=0xfffffff00a3b4f00`, `cluster_read_contig=0xfffffff00a3bb554`, `vm_map_get_upl=0xfffffff00a3b10fc`, `upl_phys_page=0xfffffff00a71aeb4`
- Session 14 xref check (Ghidra): function starts `0xfffffff00a3b4eec` and `0xfffffff00a3bb550` — off by 4-20 bytes from session 11
- **Session 15 (Ghidra decompile):** the three key addresses were misidentified:
  - `0xfffffff00a3b10fc` = `cluster_io` (1367 insns, not `vm_map_get_upl`)
  - `0xfffffff00a2ff4bc` = `buf_alloc` (not `vm_object_upl_request`)
  - `0xfffffff00a71aeb4` = `uio_update` from `bsd/kern/kern_subr.c` (not `upl_phys_page`)
- **Conclusion:** TOCTOU hypothesis does not survive binary verification. Session 11 was based on heuristic identification without Ghidra. Closed.

### Session 16: IOKit user client survey

- Enumeration of all `virtual IOReturn` proto strings: **289 strings, 18 unique classes**
- Filter for syscall-reachable entry points: `::externalMethod` ×9, `::clientClose` ×10, `::clientMemoryForType` ×4, `::initWithTask` ×0, `::start` ×4 (partial)
- Classes identified: `AppleMobileFileIntegrityUserClient`, `AppleSmartIOUserClient`, `AppleSEPUserClient`, `ANEDriverDebugClient`, `AppleBasebandPCIUserClient`, `DIDeviceIOUserClient`, `IOCECUserClient`, and 11 more
- **AMFI cross-check confirmed:** 18 selectors in stable, matching session 6. Table at `0xfffffff007e6c3a8`.
- **SmartIO decoded:** 4 selectors (`_extForcePanic`, `_extPing`, `_extResetPerf`, `_extQueryPerf`). All zero-input. Not a promising target.
- **SEP not resolved via strings** — proto string has no code xref (vtable-dispatched). ~40 `Dispatch*` handler names recovered from strings.

### Session 17-19: SEP dispatch — chained fixups decoded

- **Chained fixup format confirmed (Kimi analysis):** ARM64E 8-byte slot. Fields:
  - `target:32` (lower32) → VA = `0xfffffff007004000 + target` (rebase)
  - `next:11` at bit 51 → step in 4-byte units to next fixup
  - `auth:1` at bit 63, `bind:1` at bit 62
- **Two distinct slot shapes** in `__DATA_CONST`:
  - `auth=0, next=2` → step 8 bytes → packed pointer array
  - `auth=1, next=6` → step 24 bytes → `IOExternalMethodDispatch2022` with PAC-signed func
- Confirmed via Claude Code xref scan: wrappers `0x2163730` and `0x2165a30` present as **auth=1** targets with identical signing recipe (`key=IA, diversity=0xbcad, addrDiv=0`)
- Function boundary hypothesis (Kimi) — wrappers `0x9167730`/`0x9169a30` are real 16-byte thin thunks, not artifact of merging

### Session 20: Full AppleSEPUserClient dispatch surface

**Region decoded:** `__DATA_CONST` VA `0xfffffff007ec3698`, fileoff `0xebf698`, size `0xb698` (46744 bytes)

**Result:**
- **19 dispatch tables** in region
- **124 selector entries** total
- **Format: `IOExternalMethodDispatch2022`** (24 bytes, no `flags` field):

```c
struct IOExternalMethodDispatch2022 {
    uint64_t func;                 // PAC-signed (auth=1, key=IA)
    uint32_t scalarInputCount;
    uint32_t structInputSize;      // 0xffffffff = kIOUCVariableStructureSize
    uint32_t scalarOutputCount;
    uint32_t structOutputSize;
};
```

**Two main tables:**

**Table 5** — base `0xfffffff007ec73f8`, 17 entries (offsets `0x3d60..0x3ef8`)

| Sel | func VA | in_s | in_struct | out_s | out_struct | Notes |
|-----|---------|------|-----------|-------|------------|-------|
| 0 | 0x916722c | 0 | 0 | 0 | 0 | all-zero |
| 1 | 0x9167260 | 0 | 0 | 0 | 0 | all-zero |
| 2 | 0x91672a0 | 0 | 0 | 0 | 0 | all-zero |
| 3 | 0x91672d0 | 1 | 0 | 1 | 0 | |
| 4 | 0x9167324 | 0 | 0 | 1 | 0 | |
| 5 | 0x9167374 | 1 | 0 | 0 | 0 | |
| 6 | 0x91673bc | 4 | VARIABLE | 0 | 0 | variable in |
| 7 | 0x9167410 | 4 | VARIABLE | 0 | 0 | variable in |
| 8 | 0x9167464 | 4 | VARIABLE | 0 | 0 | variable in |
| 9 | 0x91674b8 | 2 | VARIABLE | 0 | 0 | variable in |
| 10 | 0x9167638 | 0 | 0 | 0 | 0 | all-zero |
| 11 | 0x916766c | 0 | 0 | 0 | 0 | all-zero |
| 12 | 0x91676a4 | 0 | 0 | 0 | 0 | all-zero |
| 13 | 0x91676dc | 0 | 0 | 1 | 0 | |
| 14 | 0x9190290 | 0 | 0 | 2 | VARIABLE | SEP cluster helper |
| 15 | 0x9167730 | 0 | 0 | 0 | 20 | wrapper → InvalidateNonce |
| 16 | 0x9167740 | 0 | 0 | 0 | 0 | all-zero |

**Table 7** — base `0xfffffff007ec77d0`, 31 entries (offsets `0x4138..0x4408`)

| Sel | func VA | in_s | in_struct | out_s | out_struct | Notes |
|-----|---------|------|-----------|-------|------------|-------|
| 0 | 0x91687c0 | 0 | VARIABLE | 0 | 0 | variable in |
| 1 | 0x91688e0 | 0 | 0 | 0 | VARIABLE | variable out |
| 2 | 0x9168a80 | 0 | 0 | 0 | VARIABLE | variable out |
| 3 | 0x91903b8 | 0 | 1024 | 0 | 0 | xART path |
| 4 | 0x9168c18 | 0 | 1024 | 0 | 0 | |
| 5 | 0x9168f18 | 0 | 0 | 0 | 0 | all-zero |
| 6 | 0x9168f94 | 0 | 0 | 0 | 0 | all-zero |
| 7 | 0x916902c | 1 | 0 | 0 | 0 | |
| 8 | 0x91690c8 | 1 | 0 | 0 | 0 | |
| 9 | 0x9169164 | 0 | 0 | 0 | VARIABLE | variable out |
| 10 | 0x91691dc | 0 | VARIABLE | 0 | 0 | variable in |
| 11 | 0x9169254 | 0 | 0 | 0 | VARIABLE | variable out |
| 12 | 0x91692cc | 0 | 0 | 0 | 0 | all-zero |
| 13 | 0x9169398 | 0 | VARIABLE | 0 | 0 | variable in |
| 14 | 0x9169410 | 0 | 0 | 0 | VARIABLE | variable out |
| 15 | 0x9169488 | 0 | VARIABLE | 0 | 0 | variable in |
| 16 | 0x9169500 | 0 | 0 | 0 | 10 | |
| 17 | 0x9169580 | 1 | 0 | 0 | 0 | |
| 18 | 0x9169614 | 0 | 64 | 0 | 0 | |
| 19 | 0x916969c | 0 | 0 | 0 | 176 | |
| 20 | 0x9169728 | 2 | VARIABLE | 0 | 3145856 | 3 MB fixed out |
| 21 | 0x9169824 | 0 | VARIABLE | 0 | 0 | variable in |
| 22 | 0x916989c | 0 | 0 | 0 | 0 | all-zero |
| 23 | 0x916990c | 1 | 0 | 0 | 0 | |
| 24 | 0x91904c8 | 1 | 0 | 1 | 1024 | nonce path |
| 25 | 0x9169990 | 0 | 0 | 0 | 0 | all-zero |
| 26 | 0x91699e0 | 0 | 0 | 0 | 20 | |
| 27 | 0x9169a30 | 0 | 0 | 0 | 20 | wrapper → GenerateNonceAndSlot |
| 28 | 0x91905d0 | 0 | 0 | 0 | 0 | all-zero |
| 29 | 0x9169a40 | 1 | 0 | 0 | 0 | |
| 30 | 0x9169aa0 | 0 | 0 | 0 | VARIABLE | variable out |

**String cluster identified** — `__PRELINK_TEXT` VA `0xfffffff0076c7600..0xfffffff0076c7900`:

```
0x76c7600  "...rClientLoadRestoreFirmwareWithART(AppleSEPUserClient*, void*, IOExternalMethodArguments*)"
0x76c765d  "arts != NULL"
0x76c766a  "static IOReturn AppleSEPUserClient::DispatchUserClientCommitHash(...)"
0x76c76e6  "xART"
0x76c76eb  "\"We seem not to support ART or xART\" @%s:%d"
0x76c7717  "xart != nullptr"
0x76c7727  "Failed to commit hash"
0x76c773d  "user client"
0x76c7749  "test panic"
0x76c7754  "IOReturn AppleSEPUserClient::getOrGenerateNonce(IOExternalMethodArguments*, bool)"
0x76c7800  "Failed to generate nonce"
0x76c7819  "Failed to read nonce"
0x76c782e  "outbuf"
0x76c7835  "AppleSEP: %s SEP Nonce (%u bytes): 0x"
0x76c786e  "static IOReturn AppleSEPUserClient::DispatchUserClientInvalidateNonce(...)"
```

**Wrapper → handler chain:**

```
table5 sel 15 (wrapper 0x9167730, mode=1) ──bl─┐
                                                 ├→ FUN_916a7ec(…, mode) → getOrGenerateNonce (0x91918d0)
table7 sel 27 (wrapper 0x9169a30, mode=0) ──bl─┘                          │
                                                                           ↓
                                                  DispatchUserClientInvalidateNonce
                                                  DispatchUserClientGenerateNonceAndSlot
```

**Outlier handler bodies** (all in `0x919xxxx` cluster):

| Func VA | Table | Sel | String ref | Interpretation |
|---------|-------|-----|-----------|----------------|
| 0x9190290 | 5 | 14 | (none) | SEP cluster helper |
| 0x91903b8 | 7 | 3 | `"xART"` + panic | ART firmware path |
| 0x91904c8 | 7 | 24 | `"user client"` | nonce / user-client path |

**Total surface:**
- 19 tables
- 124 selector entries
- 24 selectors with `VARIABLE` input/output sizes
- 12 selectors with all-zero argument counts (framework does no validation)
- 6 method names recovered from string cluster

### Session 21: hilo cluster split + full audit closed (zero findings)

- **Corrected model:** the SEP dispatch is **ONE 96-selector array** at base `0xfffffff007ec73f8` (stride `0x18`, bound `cmp w1,#0x60`), NOT "19 tables". The earlier split was runs of null (unimplemented) selectors. 84 implemented, 12 null. externalMethod/dispatcher thunk @ `0xfffffff00916a564` → generic IOUserClient2022 helper. "table7 base 0x7ec77d0" is just `&array[41]`.
- **`FUN_9168a84` was a Ghidra MIS-MERGE of 21 separate functions** (selectors 45–66), each with its own `pacibsp`/`bti`+`stp` prologue. Split via `removeFunction`+`createFunction` at each entry VA → clean per-selector decompiles.
- **hilo capability gate:** every hilo handler begins with `FUN_9178410(sepManager, "hilo")` (`copyProperty`) → `0xe00002c2` if absent. Gate string `0x76c80f8 = "hilo"`.
- **Handler-layer inputs all bounded:** sel48 scalar≤1, sel49 ≤0x29, sel59 structInputSize==0x40 exact, **sel61 user len capped ≤0x4000 then wrapped in IOMemoryDescriptor**, sel64 bool. The `structOutputSize=0x300200` on sel61 is **dispatch-table metadata / chained-fixup artifact, NOT a copy size** (confirmed: data is user memory ≤16 KB).
- **Shared serializer scope (bl-scan + reverse bl-scan):** the marshalling sinks (`FUN_915f788`, `FUN_915f2b8`, `FUN_915e730`) are reachable **only** via hilo selectors (behind the gate). Core primitive `FUN_915e730` is a **bounds-checked IOMemoryDescriptor mapper** (`if (iomd->getLength() < needed) reject 0xe00002c2`). Verdict: **out-of-scope / safe**, no TLV-underflow / count×size / length bug.
- No memory-safety finding at the handler layer. See `docs/serializer_verdict.md`, `docs/hilo_verdict.md`.

#### Audit order (all closed as safe/bounded)
setFirmwareBytes (sel6/7/8) → nonce get/invalidate (sel15/68) → SHM map/unmap (sel82) → SHM read (sel89) → DynamicObjectOp (sel81) → hilo cluster (sel48–64) → shared serializer.

#### Methodology summary (sessions 19–21)
- **Chained-fixup walk** (ARM64E 8-byte slot: `target=q&0xffffffff`, `next=(q>>51)&0x7ff`, `auth=bit63`, `bind=bit62`); PAC bits stripped for VA recovery.
- **"One table vs 19 tables" trap:** runs of null slots look like boundaries — verify against the dispatcher's `selector*0x18 + base` and its `cmp #bound`, not against gaps.
- **Self-scope pretty-strings** for naming: decode a handler's own `adrp+add` into the `__PRETTY_FUNCTION__` cluster (`__PRELINK_TEXT ~0x76c7600`). Do NOT follow shared tail-calls (they collapse many selectors to one name).
- **bl-scan** a handler set to find shared helpers (callee → set of callers); **reverse bl-scan** a helper across `__TEXT_EXEC` to decide scope (all callers gated ⇒ out-of-scope).
- **Ghidra 12 has no Jython:** headless post-scripts must be `.java` GhidraScripts (`analyzeHeadless <proj> <name> -process <prog> -noanalysis -postScript X.java`), or use the PyGhidra venv at `~/projects/iphone-lockdownd-fuzzer/ghidra_venv`.
- **`macho_tool.decode()` adrp operand string is malformed** (`0x0x..`) — decode `adrp`/`add` from raw instruction bits.

#### Final verdict
96 selectors / 84 active / ~30 handlers reviewed in depth across 6 feature areas + shared serializer → **zero memory-safety findings**. AppleSEPUserClient dispatch surface is well-gated and input-validated.

#### Next step
Pivot to **AMFI selector 6 (`isCdhashInTrustCache`)** — the remaining promising IOKit surface from the Session 16 user-client survey.

## Current State

**Done:**
- Full SEP dispatch surface decoded (Session 20)
- Chained fixup format documented
- 6 method names recovered
- Wrapper → handler chains traced
- AMFI dispatch table (18 selectors) analysed in both stable and beta
- DER entitlement patch between 27.0.1 and 27.2 identified
- Developer Mode enabled via lockdown protocol
- TOCTOU hypothesis (CVE-2025-43520) closed as false
- IOKit user client survey: 18 unique classes

**Pending:**
- `pass2.py` — staged Ghidra post-script that will produce:
  - Function names backfilled into CSVs
  - Decompiles of six priority handlers: t5 sel6/7/8/9, t7 sel0, t7 sel20
  - Base xrefs for both tables (externalMethod identification)
  - Cross-check: does `FUN_fffffff009177388` (3324 B) scale selector by 0x18 and reference `0x7ec73f8` or `0x7ec77d0`?
- Offline symbol naming pass (adrp+add → string cluster, all 124 entries)
- All-zero selector sweep (12 entries)
- Detailed handler analysis for priority targets

**Priority targets for further analysis (not yet decompiled):**
1. t5 sel 6-9 (`0x91673bc/410/464/4b8`) — 4 scalars + VARIABLE struct — family of RPC operations
2. t7 sel 20 (`0x9169728`) — `structOut=0x300400` (3 MB) with `"outbuf"` assert in cluster
3. t7 sel 0 (`0x91687c0`) — front-door, VARIABLE input
4. t7 sel 24 (`0x91904c8`) — out 1024 fixed, near nonce cluster
5. `LoadRestoreFirmwareWithART` — VARIABLE input firmware blob (not yet bound to selector)

## Tools and Artifacts

**Kernelcache tools (`tools/`):**
- `macho_tool.py` — Mach-O parser + AArch64 decoder (stdlib only)
  - `load_segments(path)` → list of `(name, vmaddr, vmsize, fileoff, filesize)`
  - `va_to_off(segs, va)` → file offset
  - `decode(insn, va)` → (mnemonic, operands) or None — **known issue:** adrp operand string malformed
  - `linear_disasm(segs, va, end)` — iterate instructions
- `ghidra_find_userclients.py` — enumerate `virtual IOReturn` proto strings (Ghidra headless)
- `ghidra_find_external_methods.py` — filter to syscall-reachable entry points
- `ghidra_resolve_vtable.py` — resolve dispatch table base via ×0x18 scaling + adrp

**Ghidra scripts (`ghidra_proj/`):**
- `sep_search.py`, `sep_refs.py`, `sep_find2.py`, `sep_wrappers.py`, `sep_extmethod.py`
- `decompile_three.py`, `decompile_wrappers.py`
- `kc_fixups.py` — preScript for chained fixup analysis (attempted, hit path issue)
- `pass2.py` — **staged** post-script (waiting on auto-analysis completion)

**Artifacts (`/tmp/`):**
- `/tmp/sep_table5.csv` — decoded table 5 (17 entries)
- `/tmp/sep_table7.csv` — decoded table 7 (31 entries)
- `/tmp/sep_dispatch_reconstructed.csv` — all 124 entries
- `/tmp/sep_dispatch_summary.txt` — summary across 19 tables
- `/tmp/sep_all_tables.txt` — all 19 tables
- `/tmp/three_funcs_ids.txt` — offline identification of outlier functions
- `/tmp/sep_slots.txt`, `/tmp/sep_slots_2.txt` — raw fixup slot decodes
- `/tmp/vtable_refs.txt` — **pending pass2**
- `/tmp/table5_reader.c`, `/tmp/table7_reader.c` — **pending pass2**
- `/tmp/t5_sel6.c` through `/tmp/t5_sel9.c` — **pending pass2**
- `/tmp/t7_sel0.c`, `/tmp/t7_sel20.c` — **pending pass2**

## Methodology Notes

**What works:**
- Offline `adrp+add` → string resolution for method naming (fast, no Ghidra needed)
- Chained fixup bit-level decode: `target = q & 0xffffffff`, `next = (q >> 51) & 0x7ff`, `auth = (q >> 63) & 1`
- Walking auth=1 / next=6 chains backward from known wrappers to find table base
- Wrapper → body via `bl` decode: `imm = instr & 0x03ffffff`, sign-extend 26 bits, `target = pc + (imm << 2)`

**What does not work:**
- Byte scan on `__DATA_CONST` looking for `(va - base) & 0xffffffff` — format is chained fixup, not raw offsets
- Parsing adrp operand from `macho_tool.decode()` output string — malformed
- Direct `getReferencesTo` on handlers — they are reached via PAC-indirect, Ghidra cannot see until full analysis

**Verification tricks:**
- `kIOUCVariableStructureSize = 0xffffffff` in a size field is canonical — confirms table layout
- Both wrappers sharing identical signing recipe (`div=0xbcad, key=IA`) suggests same table family
- `out_struct=20` on both wrappers (table5 sel15 and table7 sel27) confirms nonce structure size

## Next Steps

1. **Wait for Ghidra auto-analysis (PID 6398)** → fire `pass2.py` → collect:
   - CSV names
   - Six handler decompiles
   - Vtable refs for both table bases
   - `FUN_fffffff009177388` cross-check

2. **Offline symbol naming sweep** — for each of the 124 entries, decode handler body, find adrp+add targets into `__PRELINK_TEXT 0x76c7600..0x76c7900`, extract method name from `__PRETTY_FUNCTION__` string

3. **All-zero selector sweep** — 12 selectors with no framework arg validation. Check whether handlers read `arguments` at all; if not, they are no-arg commands (reset/invalidate class)

4. **Priority decompile review:**
   - t5 sel 6-9: check for `size * unit`, `size + offset`, truncation 64→32, `IOMalloc` without cap
   - t7 sel 20: check what fills the 3 MB output — user blob after copyin (safe) vs kernel buffer smaller than 3 MB (data exposure)
   - t7 sel 0: front-door VARIABLE input — check cap

5. **Bind remaining method names to selectors** — `LoadRestoreFirmwareWithART`, `DispatchUserClientCommitHash` are known by name but not yet bound to specific selectors

6. **Entitlement gating per table** — extract entitlement strings checked in each reader/externalMethod to determine which table (t5 vs t7) has weaker gating

7. **Update HANDOFF when pass2 completes** with:
   - Named selectors
   - Decompiled handler summaries
   - Confirmed externalMethod for each table

## Open Questions

- Where is `FUN_fffffff009177388` (3324 B) in the dispatch flow? Is it `externalMethod` for one of the client subclasses?
- Which entitlements gate table 5 vs table 7? Are they the same class with different client types, or base vs subclass?
- Why does table 7 sel 20 request exactly 3 MB output? What fills it?
- Are the 12 all-zero selectors reachable without arguments? What do they do?
- Are there additional `AppleSEPManager` user clients outside the `0x7ec3698` region?

## Reference: Chained Fixup Format

```
ARM64E chained fixup slot (8 bytes):
  bits  0-31   target          VA = image_base + target   (rebase: target is offset)
  bits 32-47   diversity       (auth=1 only)
  bit  48      addrDiv         (auth=1 only)
  bits 49-50   key             IA / IB / DA / DB
  bits 51-61   next            step in 4-byte units
  bit  62      bind            1 = bind, 0 = rebase
  bit  63      auth            1 = PAC-signed

Observed shapes:
  auth=0, next=2   → step 8 bytes  → packed pointer array
  auth=1, next=6   → step 24 bytes → IOExternalMethodDispatch2022 with PAC-signed func
```

## Reference: IOExternalMethodDispatch2022

```c
struct IOExternalMethodDispatch2022 {
    uint64_t func;                 // PAC-signed (auth=1, key=IA)
    uint32_t scalarInputCount;
    uint32_t structInputSize;      // 0xffffffff = kIOUCVariableStructureSize
    uint32_t scalarOutputCount;
    uint32_t structOutputSize;
};
```

---

*Progress saved: Session 21, 2026-10-04. AppleSEPUserClient audit CLOSED — zero findings. Next: AMFI sel 6 (isCdhashInTrustCache).*
```
### Session 22: AMFI sel 6 closed + diff phase 1

**AMFI sel 6 (isCdhashInTrustCache) — CLOSED, SAFE:**
- Полная цепочка: handler 0x8e8ab80 → copyBytes (256MB cap, exact-size)
  → parser 0x8e97754 → lookup 0x8ea4244 → FUN_a741590
- FUN_a741590 = **TXM (Trusted Execution Monitor) RPC gateway**
- На A15/T8110 trust-cache проверка делегирована в TXM
- Kernel только маршалит TXM-сообщение: bounds-checked arg count (0-7),
  bounded return words (≤6)
- Ноль kernel-side memory bug
- **Побочный вывод:** TXM = новая security surface iOS 26+ (отдельный
  security domain, kernel r/w не даёт доступ)

**Diff Phase 1 (structural):**
- 51 IOExternalMethodDispatch2022 tables в обоих билдах
- AMFI: идентично (18 селекторов)
- SEP: идентично (96 селекторов)
- 15 paired tables: ноль сигнатурных изменений
- **ЕДИНСТВЕННОЕ изменение:** IOAVUserClient 10→11 селекторов в beta

**Phase 2 (handler C-diff):** Beta kernelcache импортирован в Ghidra
(Mach-O arm64e, 514327 chained pointers), auto-analysis running.
C-diff в очереди после завершения.

**Артефакты:**
- /tmp/amfi_sel6_verdict.md
- /tmp/diff_security_ranked.md
- poc/checkopen/ — in progress (test client для dynamic checkpoint)### Session 22 — Runtime test result: IOKit blocked by sandbox

**Test:** check_open.ipa via SideStore (free Apple ID)
- Bundle: com.poc.checkopen.WN7892LN76
- Installed OK, launched, exited 0
- `IOServiceGetMatchingService("AppleMobileFileIntegrity") = 0x1c03` (found)
- `IOServiceOpen = 0xe00002e2` (**kIOReturnNotPermitted**)

**Cause:** SideStore strips platform-restricted entitlement
`com.apple.security.iokit-user-client-class` when re-signing with free Apple ID.
Sandbox blocks `IOServiceOpen` regardless of bundle install success.

**Verdict:** Dynamic IOKit testing on iOS 27 requires platform-signed binary
(paid developer account + device registration + explicit IOKit entitlement
provisioning). Free Apple ID is insufficient.

**Fallback path:** static analysis + diff-driven hunting + userspace
dynamic via lockdown/DVT services (no IOKit userclient dependency).




