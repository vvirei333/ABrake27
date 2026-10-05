
# iOS Kernelcache Reverse Engineering — Handoff

> Last updated: Session 22 (2026-10-04)
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
- poc/checkopen/ — in progress (test client для dynamic checkpoint)

### Session 22 — Runtime test result: IOKit blocked by sandbox

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

### Session 22 (продолжение): Phase 1 завершён — Phase 2 готов

**1. Beta kernelcache проанализирован (Ghidra):**
- Beta: `ghidra_proj_beta/betakc` — auto-analysis завершён за **2414 сек (~40 мин)**
- Stable: `ghidra_proj/sepkc` — готов
- **Оба проекта готовы к Phase 2** (C-diff handler'ов stable ↔ beta)

**2. IOKit runtime — заблокирован (dynamic path closed):**
- `check_open.ipa` через SideStore: `IOServiceOpen = 0xe00002e2` (**kIOReturnNotPermitted**)
- Причина: SideStore срезает platform-restricted entitlement
  `com.apple.security.iokit-user-client-class` при переподписи на free Apple ID
- **Динамика через IOKit на free Apple ID / iOS 27 не работает**
- **Fallback:** static + diff + userspace via lockdown (без IOKit user client)

**3. Phase 2 — следующий шаг:**
- Построить пары handler'ов **stable ↔ beta по selector index**
- AMFI (18 селекторов) + SEP (96 селекторов): таблицы **структурно идентичны** →
  diff ожидается в handler-телах, а не в таблицах
- **IOAVUserClient (10 → 11 селекторов) — приоритет №1**
- Для каждой пары: декомпилировать обе версии → текстовый diff C →
  классифицировать (новый / изменённый / идентичный)

### Session 23 (2026-10-04): Phase 2 C-diff — AMFI ЗАВЕРШЁН (0 находок), IOAV в процессе

**ВАЖНО — реальные имена Ghidra (paste был неверен):**
- Проект ОДИН: `ghidra_proj/` с программами `amfi_stable` и `amfi_beta`.
  НЕ `sepkc`/`betakc`, НЕТ каталога `ghidra_proj_beta`. `analyze=False` работает
  (обе программы уже проанализированы и сохранены).
- Корень проекта = `bigdata` → `/run/media/ivan/New Volume/My Projects/iphone-ios27-diff`
  (симлинк `iphone-lockdownd-fuzzer/bigdata`). CLAUDE.md/HANDOFF.md/FINDINGS_LOCK.md тут.

**AMFI Phase 2 — ВСЕ 18 СЕЛЕКТОРОВ ФУНКЦИОНАЛЬНО ИДЕНТИЧНЫ (stable ↔ beta).**
- Таблица IOExternalMethodDispatch2022, stride 0x18, 18 входов.
  - stable base `0xfffffff007e6c3a8`, beta base `0xfffffff007e8a648` (оба подтверждены:
    sel6=isCdhashInTrustCache stable 0x8e8ab80 / beta 0x8f469c0; sel11 beta 0x8f46dd0).
  - NULL-слоты (raw=0 в обоих, не реализованы): sel 0,1,3,8,10 → 13 реализовано.
  - Сигнатуры (scalarIn/structIn/scalarOut/structOut) и размеры тел — идентичны по всем sel.
  - Единственные «diff» — build-specific адреса: thunk_FUN_, PTR_DAT_ (stack canary),
    PTR_PTR_ (property ptr). После нормализации → IDENTICAL ×18.
  - sel11 armSecurityBootMode разобран построчно: отличия только canary/property глобали — косметика.
- **DER-entitlement патч (Session 3-4) НЕ в dispatch-поверхности** (он в codesigning-пути
  amfi_audit_no_entitlements), поэтому в handler-диффе его нет — это корректно.

**Инструменты (переиспользуемые):**
- `ghidra_proj/phase2_amfi.py` — generic: `python phase2_amfi.py <stable|beta> <base_hex>`.
  Читает таблицу (18×0x18), страчивает PAC hi-биты, декомпилит каждый handler →
  `/tmp/diff/amfi_<sel>_<variant>.c` + манифест. Запуск через ghidra_venv/bin/python.
- `/tmp/diff/normdiff.py` — нормализатор+классификатор: `python3 normdiff.py <comp> <nsel>`.
  Нормализация: адреса 0x…(6-16hex), (thunk_|j_)?(FUN|DAT|LAB|PTR|UNK|SUB|caseD|switchD)_+hex,
  2-й проход — имена локалов (local_/uStack_/Var). Классы: IDENTICAL / IDENTICAL* (только имена) /
  CHANGED / ADDED_SELECTOR / REMOVED_SELECTOR. Пишет `<comp>_<sel>.diff` для не-identical.
- Артефакты: `/tmp/diff/amfi_*_{stable,beta}.c`, `amfi_manifest_{stable,beta}.txt`.
  **ПРЕДУПРЕЖДЕНИЕ: /tmp эфемерен — при необходимости скопировать в bigdata/diff_output.**

**IOAV — СЛЕДУЮЩИЙ ШАГ (приоритет, НЕ завершён):**
- base: beta `0xfffffff007fa9510` (11 сел), stable `~0xfffffff007f15bd0` (10 сел, АДРЕС ПРИБЛИЗИТ.,
  источник /tmp/diff_security_ranked.md — ПРОВЕРИТЬ базу+count перед декомпилом).
- Сиблинг-селекторы = logging controls (setLogLevelMask, setEventLogCommandMask).
- План: сделать generic `phase2_table.py` (argv: comp, variant, base, nsel) — обобщить phase2_amfi.py;
  извлечь обе версии, спарить по индексу sel 0..9, **аудитировать НОВЫЙ 11-й selector (beta sel10)**.

**SEP — после IOAV:** 96 сел, stable base `0xfffffff007ec73f8` (stride 0x18). Beta base НЕИЗВЕСТНА —
найти (externalMethod/диспетчер beta). Phase 1: структурно идентично → ожидается diff в телах.
Сначала только non-null (84 активных). Session 21 уже закрыл SEP handler-layer как safe на stable.

**Результат-файл задачи:** `/tmp/diff_phase2_report.md` (AMFI-секция готова к записи; IOAV/SEP TODO).

### Session 23 (cont.): Coredump lead — CLOSED (not attack surface)

Investigated `triggerCoredumpViaUserClient` in **stable 27.0.1** (`24A446__iPhone14,5`).
**Verdict: closed — this is NOT attack surface.**

#### Finding: it is a C++ method, NOT an IOKit UserClient selector
- `triggerCoredumpViaUserClient` is a **method name of class `AppleBasebandSPMIHEB`**
  (baseband/SPMI subsystem), **not** a UserClient selector, not `externalMethod`,
  not a dispatch-table entry. There is no `IOAVUserClient`-style proto string for it.
- **Proof of string type:** the literal sits in `__cstring` **immediately before** its own
  log format, and the format is `%06ld.%06d %s::%s:` = `<class>::<method>` — i.e. the
  2nd `%s` is the method name:
  - `0xfffffff007386725` `"triggerCoredumpViaUserClient\0"`
  - `0xfffffff007386740` `"%06ld.%06d %s::%s: Triggering coredump via user client\n\0"`

#### Addresses (stable)
| item | VA | size |
|---|---|---|
| `triggerCoredump` (orchestrator, caller) | `0xfffffff0085a87e8` | 556 B |
| `triggerCoredumpViaUserClient` | `0xfffffff0085a8534` | 692 B |
| `triggerCoredumpViaKernel` (fallback) | `0xfffffff0085a8110` | 1060 B |

- **Outside the SEP range** `0x9150000–0x919FFFF` → not SEP code.
- xrefs: 4 for `…ViaUserClient` (all inside its own method — trace-log call sites),
  8 for `…ViaKernel`, 1 caller of each (`triggerCoredump` @ `0xfffffff0085a87e8`).

#### Mechanism
```
triggerCoredump (FUN_fffffff0085a87e8)   "Triggering coredump due to a SPMI error"
  ├─ triggerCoredumpViaUserClient (FUN_fffffff0085a8534)   try first
  │     sar = this->field_0xA8;              // "SAR Service KEXT" instance
  │     if (!sar) return 0xe00002d8;          // "SAR Service KEXT instance is not ready"
  │     handle = this->vtable[0x1e8/8](this, 0);
  │     return sar->vtable[0x3a8/8](sar, …, 0xffffffffe00002e9, 4, handle, 0);
  │     //  ret != 0 → log "…falling back to kernel method"
  └─ triggerCoredumpViaKernel (FUN_fffffff0085a8110)
        heb = this->field_0x88;               // SPMI HEB object
        if (!heb) return 0xe0000001;          // "Invalid SPMI HEB object…"
        r = heb->vtable[0x550/8](heb, 0);     // trigger SPMI coredump interrupt
```
- The "user client" is **another in-kernel kext service (SAR Service)**, reached via a
  **C++ virtual call** (`sar->vtable[0x3a8]`) — **not** `IOConnectCall*` /
  `IOExternalMethodDispatch`. → **not reachable from userspace.**

#### Corroborating strings (same `__cstring` neighborhood)
`AppleBasebandSPMIHEB` (`0xfffffff0073892f8`), `registerSARServiceKEXTInstance_block_invoke`,
`Failed to communicate with SAR Service KEXT instance (ret: 0x%x)`,
`Crashing baseband due to %u failed billboard transactions`, billboard protocol strings.
Related kext: `com.apple.driver.AppleSART` (`AppleSARTMarconi`, `IOSARTMapper`,
`IOCoastGuardSARTMapper`, `AppleSART.kext`).

#### `kern_register_coredump_helper` — kernel-internal API
- Found at `0xfffffff0074b80aa`, but in block **`__os_log`**, i.e. an **os_log
  type/subsystem string, not code**. **0 xrefs on code.** Context confirms it is only
  used as a log label: `"kern_register_coredump_helper failed. ret: 0x%x"` (ISPCoredump).
- Treat as a **kernel-internal API name**, not a reachable symbol. (Also note:
  `kern_coredump_routine` and `coredump_encryption_key` do **not** exist in stable —
  they are beta-only additions.)

#### Verdict
- **Not attack surface.** No UserClient, no dispatch table, no selector, no
  `IOServiceOpen`, no entitlement check. Reachable **only** through the baseband error
  path (SPMI error / too many failed billboard transactions), which userspace cannot
  reach by any normal means.
- **Defense-in-depth note only:** the baseband crash path has **no entitlement gate**
  and has an unconditional `triggerCoredumpViaKernel` fallback. Worth revisiting **only
  if** a userspace → SPMI-error-injection primitive is ever found
  (`AppleBasebandSPMIHEB`, vtable `+0x550` and `+0x3a8` are the interesting hooks).

#### Gaps / not resolved
- `/tmp/sep_full_table.csv` **does not exist** → the cross-check against the "12 null SEP
  selectors" was not possible (moot anyway: these are method names, not selectors).
- `0xe00002d8` / `0xffffffffe00002e9` not decoded to `kIOReturn*` names (the local SDK
  headers contain no such table). Elsewhere in this project `0xe00002e2` was observed as
  kIOReturnNotPermitted.
- Ghidra imports the KC monolithically (`__text`/`__cstring`/`__os_log`, no per-kext
  blocks) → kext attribution was made from string adjacency, not from block ownership.

#### Artifacts
- Report: `/tmp/coredump_e_check.md` (151 lines) · `/tmp/string_va.txt` ·
  `/tmp/coredump_caller.c` (248 lines).
- Reusable headless Java scripts (new, in `tmp/ghidra_scripts/`):
  - `CdCheck.java` — string → xref → containing fn → decompile; writes the two files above.
  - `CdClass.java` — memory-block names, callers, constant values, class probes.
  - Invocation: `analyzeHeadless <proj> amfi_stable -process 'kernelcache.release.iPhone14,5' -noanalysis -readOnly -scriptPath <dir> -postScript X.java`
  - Gotchas hit: GhidraScript has **no `mem` field** (use `currentProgram.getMemory()`);
    `getFunctionAt(Address)` is **final** in `FlatProgramAPI` (rename your helper);
    `import ghidra.program.model.mem.Memory` is required explicitly.
- Logs: `tmp/cd_check.log`, `tmp/cd_class.log`, `tmp/coredump_e_check.md` (workspace copy).
### Session 22 (cont.): IOAVUserClient — CLOSED (cosmetic redesign, not security-relevant)

Both dispatch tables decoded and every handler decompiled; paired **by body, not by index**.

**Verdict: closed — not security-relevant. Cosmetic redesign between the two builds.**

#### Tables
| | stable 27.0.1 | beta 27.2 |
|---|---|---|
| base | `0xfffffff007f15bd0` | `0xfffffff007fa9510` |
| selectors | 10 (all implemented) | 11 (all implemented) |
| dispatcher | **not located** (analysis gap) | `FUN_fffffff00980720c` (via ref@`0xfffffff009807228`) |

- **No proto string** for `IOAVUserClient::externalMethod` in either KC (8 other user clients do
  emit one) — the class is reached via its meta-class ctors `FUN_fffffff00973eb54` /
  `FUN_fffffff00973f4d0` → `OSMetaClass::OSMetaClass("IOAVUserClient", PTR_DAT_fffffff007f954f0, 0x100)`.
- Both bases were **validated from memory content**, not from `umull #0x18` (block `__const`,
  all targets in `__text`, sane scalar/struct fields).

#### Shape of the redesign
- **Stable:** thick inline handlers, each performing its own **typed-object lookup**.
- **Beta:** thin trampolines; the provider is reached through the **`this+0x100` vtable slot**
  and the handler forwards immediately (e.g. sel10 → `(**(code **)(**(long **)(param_1 + 0x100) + 0x20))(...)`).
- **Zero matching bodies** between the builds (0 shared callee-body hashes out of 11 stable /
  5 beta) — but this reflects **different implementations, not different versions of one
  function**: the work moved from per-handler inline code into the shared provider vtable.
- Duplicate bodies exist *within* each build (stable sel4≡sel9, sel6≡sel7; beta sel3≡sel4,
  sel0≡sel1) — one more reason index-based pairing is invalid here.

#### Misclassification corrected
- Earlier note in `tmp/ioav_matching.md` called `thunk_FUN_fffffff00a871144(param_1,
  PTR_DAT_fffffff007f14f60)` a "capability gate" and speculated about **reduced access control**.
  **Wrong:** it is a **typed-object lookup**, not an entitlement check. Corrected in the report.
- **No entitlement is enforced at the beta dispatch layer** (`FUN_fffffff00980720c`) either.

#### Methodology notes (new, reusable)
- **Ghidra's Java script compiler is broken on this host** — every `-postScript X.java` fails with
  `Failed to get OSGi bundle containing script`, with no `error:` output and an empty
  `osgi/compiled-bundles/<id>/`. Not caused by script contents, script path (fails on NVMe too),
  `TMPDIR`, or a stale cache (cleared `compiled-bundles` + `felixcache`). Observed while `/tmp`
  (tmpfs 7.8 GB) was transiently at 100%, but the first failure preceded that.
- **Working alternative: PyGhidra 3.1.0** in `/home/ivan/projects/iphone-lockdownd-fuzzer/ghidra_venv`
  — `pyghidra.open_program(BIN, project_location=…, project_name=…, analyze=False,
  nested_project_location=False)`, then `DecompInterface.decompileFunction(func, t, monitor)`.
  Scripts: `tmp/ioav_dump.py`, `tmp/ioav_split_beta.py`, `tmp/ioav_callees.py`, `tmp/ioav_match2.py`.
- Splitting a mis-merged function headlessly: `FunctionManager.removeFunction(entry)` +
  `DisassembleCommand(addr, None, True)` + `CreateFunctionCmd(addr)`. (`RemoveFunctionCmd` does
  **not** exist in `ghidra.app.cmd.function`.)
- Kernel VAs are **unsigned** 64-bit — parse with `BigInteger(hex,16).longValue()`, never
  `Long.parseLong` (top bit set).
- Cross-build handler matching must fingerprint **callees by their own normalized body hashes**;
  callee addresses change every build, their logic does not.
- Headless output is prefixed `INFO  <Script>.java> ` — filter on that prefix or you will discard
  the entire script output.

#### Artifacts
`/tmp/ioav_matching.md`, `/tmp/ioav_stable/` (10 `.c`), `/tmp/ioav_beta/` (11 `.c`),
`/tmp/ioav_diffs/`, `tmp/ioav_analysis.md`, `tmp/ioav_callees_{stable,beta}.json`,
`tmp/ioav_matching.md` (workspace copies).






### Session 24 (2026-10-05): WidgetKit/SpringBoard attack surface — SBIconStateArchiver CLOSED, negative finding

**CLOSED — negative finding.** 4 new methods in `SBIconStateArchiver` (beta only:
`modernizedRootArchiveFromITunesRepresentation:`, `_rootArchiveByAssigningMissingFolderIdentifiers:`,
`_iconListByAssigningMissingFolderIdentifiers:identifierPrefix:` + its `_block_invoke`) are a
**robustness fix** for the iTunes-sync icon-layout import path: when
`kSBIconStateUniqueIdentifier` is missing, duplicated, or non-string, beta synthesizes a new ID
(`synthesizedFolderIdentifier.<prefix>.<idx>`). The new code is itself written defensively
(`isKindOfClass:` checked at every level — on the array element before `objectForKey:`, and on the
pre-existing identifier before trusting its type). **No type confusion. No exploitation potential
found.** Full decompile trail below; see also the WidgetKit/SpringBoard section of `WRITEUP.md`.

Started as a new attack-surface sweep (WidgetKit + SpringBoard, XPC/NSItemProvider/NSKeyedUnarchiver
surface), separate from AMFI/SEP/IOAV work. Pipeline: extracted both frameworks from the *full*
dyld_shared_cache (not standalone files — see Methodology below), selector-diffed, then manually
decoded the one relevant hit.

#### Extraction / environment notes (new, reusable)
- `WidgetKit.framework` and `SpringBoard.framework` live in the **dyld_shared_cache**, not as
  loose files in the rootfs DMG. Extraction path used:
  ```
  ipsw extract --dyld --dyld-arch arm64e -o <outdir> <ipsw>      # full split cache (~several GB)
  ipsw dyld extract <DSC> "/System/Library/Frameworks/WidgetKit.framework/WidgetKit" -o <outdir> --objc --force
  ipsw dyld extract <DSC> "/System/Library/PrivateFrameworks/SpringBoard.framework/SpringBoard" -o <outdir> --objc --force
  ```
  `--objc` is required to get `-[Class method]` symbols into the symtab (readable via `llvm-nm`).
  `SpringBoard.app`'s own Mach-O is **not** in the cache (thin launcher); all logic lives in
  `SpringBoard.framework`.
- `/tmp` is tmpfs (7.8G) — AEA-decrypt of the DMG during `--dyld` extraction fills it and fails
  ("no space left on device"). Fix: `export TMPDIR="/run/media/ivan/New Volume/ipsw_tmp"` before
  calling `ipsw extract`.
- **`__objc_methname`/`__objc_methtype` are size-0x0 in every per-image file extracted from a
  modern (iOS 15+) dyld_shared_cache** — selector strings are uniqued into a cache-wide pool, not
  duplicated per image. Confirmed via `llvm-otool -l` and `rabin2 -S` (`size 0x0` at both).
  **Consequence: `strings`/`otool` on a standalone-extracted dylib can never show bare selector
  literals** (`decodeObjectForKey:`, `setRequiresSecureCoding:`, etc.) — this is a structural
  limitation, not an absence-of-finding. Don't waste time re-trying string/otool scans on these
  files for selector names.
- Same root cause broke **r2** (`aaa` → `ERROR: Invalid class name for method. Avoid parsing
  invalid data`, repeated) and partially breaks **Ghidra** on the standalone file: `-[Class
  method]` symbols from the `--objc`-synthesized symtab are usable (function definitions
  resolve fine — got 65425/65441 funcs, ~525s each via PyGhidra `analyze=True`), but
  `objc_msgSend` **call-site** selector resolution does not, because the selref the call reads
  points at the same zero-backed region.
- **Working alternative for selector/string-resolved disassembly: `ipsw dyld disass <DSC>
  --symbol-image "<path>" -s "<symbol>"`** run against the **full, un-extracted** DSC file. This
  has the whole cache mapped, so selector/string literals and even ARC-runtime stub names
  (`_objc_retain_x19_stub`, `_objc_claimAutoreleasedReturnValue_stub`, etc.) resolve correctly.
  This became the primary tool for this session, replacing both r2 and Ghidra-on-standalone-dylib
  for anything selector-related. Plain `bl <addr>` targets that don't auto-resolve (regular
  per-selector specialized stubs, pattern `adrp x1,…; add x1,x1,#off ; b _objc_msgSend`) can be
  decoded manually with `ipsw dyld disass <DSC> -a <addr> -c 4` — the `add` instruction's comment
  gives the literal selector name.
- Ghidra project paths (new): `ghidra_proj/sb_stable`, `ghidra_proj/sb_beta` (SpringBoard.framework
  only; analyze=True, ~525s each, 65k+ funcs). Scripts: `ghidra_proj/import_sb.py`,
  `ghidra_proj/sb_find_string_xrefs.py` (latter confirmed useless for raw selector literals, per
  above — only finds the synthetic `-[Class method]` label strings in Swift reflection metadata,
  not real `__objc_methname` call-site data).

#### Selector diff results
- **WidgetKit.framework: 0 selector diff** (139 selectors, byte-identical set stable vs beta).
  Deprioritized per user's own correction mid-session.
- **SpringBoard.framework: 33 added / 35 removed** (net 54138→54136) out of ~54k total selectors.
  Full lists: `/tmp/widgets_out/SpringBoard_{added,removed}.txt` (also copied reasoning below).
  Correcting an earlier false lead from the session: there is **no isolated "+1 selector"** — that
  framing (from an outside "analyst") didn't match the actual diff and was dropped once challenged.
- Only genuinely on-topic hit after filtering by widget/layout/archiver keywords: **4 new
  `SBIconStateArchiver` class methods.** Nothing else in the 33 added / 35 removed lists matched
  (rest is SBAppResizingSession/SBFDIDeviceControl/SBSAPlatformMetrics/CarPlay/DeviceEmulation
  churn — unrelated refactors).

#### SBIconStateArchiver — full finding
New in beta (all 4 are **additions**, not modifications — `modernizeRootArchive:` and
`rootArchiveFromITunesRepresentation:` already existed, unchanged, in stable):
```
+[SBIconStateArchiver modernizedRootArchiveFromITunesRepresentation:]      // NEW wrapper
+[SBIconStateArchiver _rootArchiveByAssigningMissingFolderIdentifiers:]    // NEW
+[SBIconStateArchiver _iconListByAssigningMissingFolderIdentifiers:identifierPrefix:]   // NEW (singular, for Dock keys)
+[SBIconStateArchiver _iconListsByAssigningMissingFolderIdentifiers:identifierPrefix:]  // NEW (plural, for icon-lists / recursion)
```
Call chain (beta only):
```
modernizedRootArchiveFromITunesRepresentation:(input)
  = _rootArchiveByAssigningMissingFolderIdentifiers:(
        modernizeRootArchive:(
            rootArchiveFromITunesRepresentation:(input)))
```
`_rootArchiveByAssigningMissingFolderIdentifiers:` mutably copies the root dict; for keys
`kSBIconStateDock`, `kSBIconStateDockUtilities`, `kSBIconStateIconLists` it checks
`isKindOfClass:[NSArray class]` before touching the value — non-array values pass through
untouched (no crash path there).

Per-element block (`_iconListByAssigningMissingFolderIdentifiers:identifierPrefix:_block_invoke`,
full asm in `/tmp/widgets_decomp/SBIconStateArchiver_beta_iconList_block_invoke.asm`) — this is
the piece directly answering the "type confusion via array element" hypothesis:
```c
for (id element in iconList) {
    id sub = [element isKindOfClass:[NSDictionary class]]
             ? [element objectForKey:kSBIconStateIconLists] : nil;
    if ([sub isKindOfClass:[NSArray class]]) {           // element is a folder w/ nested list
        id existingID = [element objectForKey:kSBIconStateUniqueIdentifier];
        if (![existingID isKindOfClass:[NSString class]])  // missing OR wrong-typed ID
            mutableCopy[kSBIconStateUniqueIdentifier] =
                [NSString stringWithFormat:@"synthesizedFolderIdentifier.%@", prefix.idx];
        mutableCopy[kSBIconStateIconLists] = recurse(sub, newPrefix);  // plural variant, recursion
        result = [mutableCopy copy];
    } else {
        result = element;   // NOT a folder-dict → passed through unchanged, no cast
    }
    [accumulator addObject:result];
}
```

#### Verdict
- **Type-confusion-via-array-element hypothesis (task item 7 in this session) is NOT confirmed.**
  The new code is itself written defensively: `isKindOfClass:` is checked both on the element
  (before `objectForKey:`) and on the existing identifier (before treating it as a string) —
  mismatched-type elements pass through unmodified rather than being coerced or crashing.
- **What the patch actually looks like: a robustness/consistency fix**, not a memory-safety fix.
  In **stable (27.0.1)**, the iTunes-representation icon-layout import path
  (`rootArchiveFromITunesRepresentation:` → `modernizeRootArchive:`) has **no step that assigns or
  validates `kSBIconStateUniqueIdentifier`** on folder entries. A layout blob (e.g. from an
  iTunes/Finder sync restore) with folders that are missing this key, or have a duplicate/wrong-typed
  value for it, flows through unchanged into whatever consumes the modernized archive
  (`SBIconModel`/`SBHomeScreenController` — **not yet traced**, see Gaps). Beta closes that gap by
  synthesizing a unique ID (`synthesizedFolderIdentifier.<prefix>.<idx>`) wherever one is missing
  or mistyped, recursively, before the archive is used.
- Most likely downstream impact of the stable-side gap: state-consistency bug (duplicate dict key /
  nil-key use somewhere in icon-state bookkeeping) → crash or UI corruption on import of a
  malformed/legacy icon layout, not an RCE-class primitive. Not escalated further this session.

#### Gaps / not resolved
- Did not trace the actual **external caller** of `rootArchiveFromITunesRepresentation:` /
  `modernizedRootArchiveFromITunesRepresentation:` (i.e. who feeds an iTunes-sync-style icon-layout
  blob into this path, and under what trust boundary — Finder/iTunes restore, iCloud sync, a local
  file). Blocked by the same selref-resolution gap described above: specialized per-selector stubs
  are shared per-image, so a classic "xref to function address" search doesn't find callers of a
  *selector* the way it would for a plain C function — would need either a full in-place DSC import
  into Ghidra (not attempted, likely very heavy) or scripted stub-literal scanning across all of
  `__TEXT_STUBS` to find every call site that loads this one selector's string address.
- Did not trace **`SBIconModel`/`SBHomeScreenController`** consumption of
  `kSBIconStateUniqueIdentifier` to confirm the actual failure mode when it's missing/duplicate in
  stable (next natural step, offered to user, not yet picked up).
- Task item 8 from this session's brief (r2 scan: `decodeObjectForKey:` present /
  `setRequiresSecureCoding:` absent nearby, across all of SpringBoard) was **not completed and is
  not salvageable with r2/otool on the standalone binary** — see Extraction notes above. Would need
  re-doing entirely via `ipsw dyld disass` stub-literal scanning (not attempted — large search
  space, no targeted candidate yet to justify the cost).
- WidgetKit.framework itself got no further look after the 0-selector-diff result (deprioritized by
  user).

#### Artifacts
- `/tmp/widgets_out/`: `{WidgetKit,SpringBoard}_{stable,beta}_strings.txt` (keyword-filtered),
  `{WidgetKit,SpringBoard}_{stable,beta}_selectors.txt` (normalized, sorted), `SpringBoard_{added,
  removed}.txt`, `SpringBoard_{stable,beta}_allstrings.txt`, `SpringBoard_strings_{added,removed}.txt`,
  `strings_diff_secure_coding.txt` (near-empty, see Extraction notes for why), `import_sb_{stable,
  beta}.log` (Ghidra analysis logs).
- `/tmp/widgets_decomp/`: `SBIconStateArchiver_beta_{rootArchiveFixup,iconListFixup,iconListsFixup,
  iconList_block_invoke}.asm` — full annotated disassembly of all 4 new methods + the per-element
  block, obtained via `ipsw dyld disass` against the live beta DSC.
- `~/projects/iphone-lockdownd-fuzzer/bigdata/extracted/{stable,beta}/{dyld/,bins/}` — full arm64e
  dyld_shared_cache per variant (large, gitignored) + extracted WidgetKit/SpringBoard standalone
  Mach-O (usable for nm/symbol-definition lookups, **not** for selector-call xrefs — see above).
- `~/projects/iphone-lockdownd-fuzzer/ghidra_proj/{import_sb.py,sb_find_string_xrefs.py}`,
  projects `sb_stable`/`sb_beta`.

## Методология — грабли (dyld_shared_cache / ObjC-селекторы)

Применимо к любому будущему анализу userland-бинарников, вытащенных из dyld_shared_cache
(SpringBoard, WidgetKit, да и вообще любой `/System/Library/...Framework` на iOS 15+):

1. **`strings`/`otool` diff по `__objc_methname` на вырезанных из DSC бинарниках НЕ РАБОТАЕТ.**
   Начиная с iOS 15+ селекторные строки unique'ятся в общий across-images пул самого
   dyld_shared_cache. В файле, извлечённом поштучно (`ipsw dyld extract <DSC> <image>`),
   `__TEXT.__objc_methname` имеет `size=0x0` (подтверждено `llvm-otool -l` и `rabin2 -S` на
   WidgetKit и SpringBoard, оба build'а). Голые имена селекторов (`decodeObjectForKey:`,
   `setRequiresSecureCoding:` и т.п.) физически отсутствуют в файле — их не найдёт никакой
   strings-based скан, сколько угодно ключевых слов ни подбирай. Это структурное ограничение,
   а не признак отсутствия находки.

2. **r2 (radare2) на таких вырезанных dylib'ах ломается на ObjC-анализе.** `aaa` выдаёт поток
   `ERROR: Invalid class name for method. Avoid parsing invalid data` и `WARN: not parsing ivars,
   wrong va2pa` — та же причина: `__objc_methlist` ссылается на адреса вне файла (в shared pool),
   r2 пытается их разыменовать и получает мусор.

3. **Ghidra работает частично.** Если бинарник извлечён с `ipsw dyld extract --objc`, в symtab
   появляются синтезированные `-[Class method]`/`+[Class method]` записи для **определений**
   методов — это надёжно (via `nlist`, не зависит от methlist). Но **xref на call site** для
   `objc_msgSend`-вызовов внешних (Foundation/UIKit) селекторов не резолвится — селектор-референс
   читает тот же пустой `__objc_methname`. Поиск строки через `DefinedData`-скан в Ghidra тоже не
   находит голые селекторы — только случайные совпадения в Swift-reflection-метаданных (не code
   xrefs).

4. **Рабочий воркэраунд: `ipsw dyld disass <полный DSC> --symbol-image "<path>" -s "<symbol>"`.**
   Работает против **целого, не вырезанного** файла dyld_shared_cache — там shared selector pool
   физически на месте, поэтому резолвятся и имена селекторов, и ARC-рантайм стабы
   (`_objc_retain_x19_stub`, `_objc_claimAutoreleasedReturnValue_stub` и т.п.), и строковые
   константы. Для специализированных per-selector стабов (паттерн `adrp x1,…; add x1,x1,#off ; b
   _objc_msgSend`), на которые `ipsw` не даёт автоматическое имя при встрече через `bl <addr>`
   внутри более крупной функции — декодируется вручную: `ipsw dyld disass <DSC> -a <addr> -c 4`,
   комментарий у `add` даёт буквальное имя селектора. Альтернатива — загрузка **целого** DSC в
   Ghidra (не пробовали в Session 24: тяжело по времени/памяти для framework такого размера,
   кэш — многогигабайтный multi-file split cache).

### Session 24 (addendum): remaining 29 SpringBoard added-selectors — zero security candidates

Applied GLM's P1/P2/P3/DISCARD keyword rubric (`NSXPCConnection|NSXPCInterface|allowedClasses|
remoteObjectProxy|ForExtender|Server|Endpoint|assertion|ForSecurity|XPC` for P1,
`audit_token|xpc_connection|SecTask|isEntitled|entitlement|verifySender|validateCallingPath|
allowedCaller` for P2) to the 29 added selectors not already covered by `SBIconStateArchiver`.
Batch-disassembled all 29 against the **full beta DSC** (`ipsw dyld disass … --symbol-image … -s
"<selector>"`, saved to `/tmp/widgets_decomp/scan29/*.asm`) and grepped each body.

**Result: 0 genuine P1/P2 hits out of 29.** One incidental string match
(`SBSAppResizingAssertionStorage` in `-[SBAppResizingSession
initWithWindowSceneManager:displayUniqueId:monitoredWindowScene:resizingCornerRadius:]`) is a
process-lifetime/jetsam assertion (à la `ProcessAssertion`), unrelated to caller-identity
validation — ruled out by inspection.

Manually decompiled the one name-plausible candidate that produced no string hit (guards can be
pure integer/ivar comparisons with no literal): `-[SBApplicationSceneUpdateTransaction
_shouldRequirePreflightForRequest:]`. Its guard reads **internal ivars** (`_sceneParameters`-derived
flag) and delegates to `_preflightController` with `_applicationIdentity` (both internal object
state, not an XPC/audit-token boundary value) — per GLM's diff-height check ("guard checks
internal data flow → feature, not security"), this is a feature dispatcher, not a silent patch.
DISCARDed.

Spot-checked the smallest bodies (`isUninstallRequestFulfilled`, `setUninstallRequestFulfilled:`,
`iconManager:failedToOpenFolder:`, `_shouldShowAlertForSeed`) — all are 2-instruction ivar
get/set, no logic at all.

**Conclusion: SpringBoard added-selectors (all 33, including the 4 `SBIconStateArchiver` ones
already closed separately) — zero security candidates found.** The remaining 29 are UI/lifecycle/
multitasking churn: CarPlay notification handling, AppResizing/Stage-Manager-adjacent APIs,
folder-open UI callbacks, biometric-alert UI, telephony info display. None reference an
XPC/audit-token/entitlement/caller-identity boundary in their body.

This closes the SpringBoard added-selector line of inquiry for this session. WidgetKit.framework
(0 selector diff) was already deprioritized earlier. Next attack-surface candidates, if this
thread is picked back up, would need a different entry point than selector-diffing (e.g. the
deferred `SBIconModel`/`SBHomeScreenController` downstream trace from the SBIconStateArchiver
finding, or a fresh class/method set not touched by this diff at all).

### Session 25: Track B — SBIconStateArchiver downstream trace — CLOSED (confirms state-confusion hypothesis, no new attack surface)

Traced where the modernized root archive (output of `SBIconStateArchiver`, Session 24) actually
gets consumed, to answer: does anything downstream validate `kSBIconStateUniqueIdentifier`
independently?

- `-[SBIconModel importState:]` (unchanged selector, present in both builds): branches on
  input type (`NSArray` → re-wraps via `+[SBIconStateArchiver ...]` stub@`0x2280e8fb0`
  — distinct from, but adjacent to, `modernizeRootArchive:`'s stub@`0x2280e8fa0`; `NSDictionary`
  → used as-is), then builds an `SBHIconStateBuilder` object from it and logs
  `"%@: icon state imported: %@"`. **No reference to `kSBIconStateUniqueIdentifier` in this
  function at all** — it delegates entirely.
- `SBHIconStateBuilder` is **not defined in SpringBoard.framework** — it's an external class
  (`_OBJC_CLASS_$_SBHIconStateBuilder` is `U`/undefined in SpringBoard's own symtab), implemented
  in **`SpringBoardHome.framework`**. Confirmed via `llvm-nm` on both frameworks across variants.
- Diffed `SpringBoardHome.framework`'s full selector set (18048 stable / 18083 beta) — **zero
  diff touching `SBHIconStateBuilder` or anything with "UniqueIdentifier" in the name.** The class
  is byte-identical between builds (not investigated beyond this targeted check — a full
  SpringBoardHome sweep was out of scope for this 30-40min budget).
- Decompiled `+[SBHIconStateBuilder iconStateFolderWithName:iconLists:]` (one of its 4 factory
  methods) as a representative sample: it is **unconditional dict-literal construction**
  (`{listType:"folder", displayName:name, iconLists:lists}`) — no branch, no nil check, no
  identifier handling of any kind.

#### Verdict
**Confirms, does not add to, the Session 24 finding.** There is no second layer of validation
anywhere downstream of `SBIconStateArchiver`. `SBIconModel.importState:` and
`SBHIconStateBuilder` both trust their input completely, in both stable and beta — identifier
correctness is **entirely** the archiver's responsibility, which is exactly why Apple patched it
there. In **stable (27.0.1)**, a malformed `kSBIconStateUniqueIdentifier` (missing/duplicate/wrong
type) in an iTunes-sync icon-layout blob flows unguarded all the way into live icon-model
construction via this same unchanged `importState:`/`SBHIconStateBuilder` path. Still assessed as
a **state-confusion/crash risk on import, not a memory-safety bug** — nothing in the consumer path
does anything with the identifier beyond using it as a dictionary key/display value.

**Track B closed.** Not escalated further (no PoC, per task scope).

Artifacts: `/tmp/widgets_decomp/SBIconModel_beta_importState.asm`,
`/tmp/widgets_decomp/SBIconModel_downstream.asm`, `/tmp/widgets_out/SpringBoardHome_{stable,beta}_selectors.txt`.

### Session 25 (cont.): Track C — ImageIO.framework — GPSCopy OOB-read CONFIRMED, two more leads open

New attack surface (per user direction: "19 CVE in 2026 — самая горячая цель"). Extracted
`ImageIO.framework` from both full DSCs the same way as Session 24 (`ipsw dyld extract ... --objc
--force`, then all disassembly against the **full, un-extracted** DSC via `ipsw dyld disass`).
ImageIO is mostly non-ObjC: 14036 (stable) / 14080 (beta) plain C/C++ symbols (plus tens of
thousands of Swift-mangled property-model symbols for a metadata layer, not inspected). Full
symbol diff + keyword-filtered string diff in `/tmp/imageio_out/`.

#### CONFIRMED: GPSCopy (EXIF/TIFF GPS-IFD parser) — out-of-bounds read, silently patched

New in beta: `GPSCopy::checkCapacity(uint8_t*,size_t)`, `GPSCopy::checkInitializedLength(uint8_t*,
size_t)`, `GPSCopy::pointerToOffset(size_t)`, `GPSCopy::read32Unchecked(uint8_t*)` (renamed from
stable's `GPSCopy::read32`, **body byte-for-byte identical** — confirmed by full instruction
diff), plus a brand-new C++ exception type `class OutOfBounds` (real vtable + typeinfo symbols:
`_ZTV11OutOfBounds`, `_ZTI11OutOfBounds`, `_ZTS11OutOfBounds`, non-inline destructors).

`checkCapacity`/`checkInitializedLength` both compute `(this->base + this->{capacity|
initializedLength}) - ptr` and throw `OutOfBounds` if negative or smaller than the requested read
size — i.e. two independent bounds checks (against total buffer capacity AND against how much of
it is actually populated from the input file), not a type/nil check.

**Smoking gun: `GPSCopy::processData()` call-count diff.** Stable's version (265 disasm lines)
calls the raw `read32()` **3 times with zero bounds-check calls anywhere in the function**.
Beta's version (486 lines, same overall shape, same `adjustIFDOffsets(IFDData*,int,int)` call
present unchanged) has **42 calls** to `checkCapacity`/`checkInitializedLength`/
`pointerToOffset`/`read32Unchecked` combined — a bounds check inserted before essentially every
pointer dereference in the IFD-walking loop. Textbook GLM pattern (guard validates file-derived
offset/length input; downstream read primitive unchanged; one-shot test: stable reads OOB memory
on a malformed offset, beta throws cleanly).

**Severity: OOB read confirmed by static evidence. OOB write not ruled out** — class name
"GPSCopy" implies it copies GPS metadata into an output file/buffer (`writeOutputFile` present),
and the same buffer-struct fields gate both read checks; whether the write side uses the same
translation and was equally unguarded in stable was **not traced this session** (would need
`readInputFile`/`writeOutputFile` disassembly). Caller of `copyFileWithGPSInformation()` (i.e.
what OS-level flow actually reaches this with attacker data — likely a Photos.app "remove
location"/metadata-strip path, not confirmed) also **not traced**.

Not escalated to PoC per task scope (reconnaissance only).

#### Two more leads, flagged but not traced to a containing function (time-boxed out this session)

- **`"*** DDS/ASTC: image dimensions overflow"`** — new explicit overflow-guard string in beta,
  alongside new `CreateReader_DDS_ASTC()` factory + `DDSDXGIFormatIsASTC()` helper. The factory
  itself (46 lines, inspected) doesn't reference the string — the actual check lives in some
  other, not-yet-located decode function. `ipsw`'s CLI has no generic "find xrefs to this data
  address" command (its disasm/a2f tools work from a function symbol or code address, not a
  string literal's address) — locating it would need either a scripted scan of all DDS/BC-related
  functions or a full in-cache xref pass.
- **rlebuf allocation error format `"size=%d"` (stable) → `"size=%llu"` (beta)** — the size
  variable driving an RLE-decompression buffer allocation was widened from 32-bit to 64-bit
  unsigned, the classic signature of an integer-overflow-in-size-calculation fix (narrow
  accumulator wraps on large dimensions → undersized malloc → OOB write during decompression).
  Same blocker as above: containing function not located this session.

#### Discarded as feature, not security (per GLM anti-patterns)

ISO5/HDR gain-map metadata support (`IIO_*ISO5*`, `HEIFMainImage::*ContentLightLevel*`/
`*MasteringDisplayColorVolume*`, `CGColorSpaceCreateWithCopyOfDataAndMetadata`) — new capability,
not a guard. `BCReadPlugin` new pixel-format decoders (`decode1010102toRGBA16`,
`decodePacked16toRGBA16`, `decodeUncompressedToRGBA`) — new format support. `ASTCTextureImp`/DDS
texture-format plumbing — feature. `sniffBC`→`sniffDDS` rename — cosmetic. `IIOReader_RawCamera`
constructor → `CreateReader_RawCamera()` factory — refactor pattern (not inspected further).
`IIOPixelConverterRGB` ctor gained 2 new bool params — purpose not inspected, not elevated without
evidence. TIFF `TIFFReadDirEntry*ArrayWithLimit` family + `loadTIFFStructure` — strong
"WithLimit"-suffix bounds-hardening naming signature, **not inspected this session** (flagged P3,
good next candidate — same shape as GPSCopy, TIFF directory-entry-array overflows are a classic
libtiff CVE class).

#### Noted for a follow-up pass, same "new .cold.N path on an existing function" shape as GPSCopy

`EXRReadPlugin::decodeBlockAppleEXR(...).cold.6` (OpenEXR has real CVE history) and
`BCReadPlugin::decodeDXTCtoRGBX(...).cold.1` — both are pre-existing functions that gained a new
compiler-generated cold/error path in beta, same signature as GPSCopy's fix. Not pursued this
session; recommended as next-in-line if this track continues, ahead of the already-discarded
BCReadPlugin feature additions.

Artifacts: `/tmp/imageio_out/` (`stable_cfuncs.txt`, `beta_cfuncs.txt`, `strings_diff.txt`,
`GPSCopy_*.asm`, `DDS_ASTC_beta.asm`, `imageio_shortlist.txt` — full shortlist writeup).

### Session 26: GPSCopy deep-dive — OOB-WRITE confirmed (upgraded from OOB-read), reachability found, 2 leads ruled out/left open

Full write-up: `/tmp/imageio_out/gpscopy_analysis.txt`. Headline change from Session 25: this is
now assessed as an **out-of-bounds WRITE**, not just a read — severity class moves from info-leak
toward memory-corruption/potential-RCE-primitive.

**Write-path (confirmed):** `GPSCopy::processData()` has 4 `memmove` call sites writing into the
GPS-info output buffer. In **stable**, all 4 compute their copy length via raw pointer-subtraction
arithmetic from GPS-IFD offset/count fields with **zero bounds-check calls anywhere in the
function**. In **beta**, every one of the same 4 sites is immediately preceded by a
`checkCapacity(ptr, len)` call using the *exact same* length value passed to the following
`memmove` (verified register-by-register at all 4 sites). The raw read primitive
(`read32`/`read32Unchecked`) remains byte-for-byte identical between builds — confirms the fix is
purely "add 42 guard calls around existing read/write sites," not a rewrite.

**Reachability (partially traced):** found the public exported entry point —
`Boolean CGImageCopyFileWithGPSInformation(CFStringRef src, CFStringRef dst, CFDictionaryRef
properties)` — a **file-path-based** API (not CGImageSource/buffer-based). Confirmed via
`TIFF_FileWriter::HasGPSInfoIFD`/`TIFF_MemoryReader::HasGPSInfoIFD` that it operates on an
**already-existing GPS IFD in the source file** (covers JPEG EXIF, since JPEG's EXIF block is the
same TIFF IFD format). **Not confirmed:** which OS-level flow actually calls this (candidate
guesses only — Photos.app "Remove Location," capture-time GPS embed, Mail/Messages attachment
prep — none verified). Based on the file-path signature, this is very likely a **separate utility
function, not part of the generic CGImageSource decode path** that thumbnail/preview generators
(iMessage previews, WebKit, Quick Look) use by default — this narrows the "trivial drive-by"
framing considerably; reachability is the single biggest open question if this is escalated
further.

**Trigger:** described structurally only (an internally-inconsistent GPS-IFD offset/count that
makes one of the 4 pointer-subtraction length computations underflow or exceed true buffer
capacity) — no payload built, no execution attempted, per task scope (recon only).

**Two quick leads — both inconclusive:**
- `"*** DDS/ASTC: image dimensions overflow"` (confirmed new-in-beta string): **containing
  function not located.** Ruled out a decoy: `ASTCTextureImp::decodeRGBXFromLinear`'s own overflow
  guard (`"Integer overflow in buffer size calculation (blockDim: %ux%u)"`) is **present in BOTH
  builds** (verified by direct string search) — not part of this patch, don't mistake it for the
  lead if revisited. `ipsw`'s CLI has no xref-to-string-literal search; would need a scripted scan
  or full in-Ghidra DSC import to localize the real one.
- rlebuf allocation `"size=%d"`→`"size=%llu"`: containing function **not located** either.
  Circumstantially consistent with an integer-overflow-class fix (same shape as the ruled-out ASTC
  decoy above) but **not confirmed** — flagged as a lead only.

**Two cold-paths checked, both low-priority:**
- `EXRReadPlugin::decodeBlockAppleEXR(...).cold.6` → `"*** axr_decoder_create failed\n"` —
  **DISCARD**, a resource/allocation-failure log, not a new bounds guard.
- `BCReadPlugin::decodeDXTCtoRGBX(...).cold.1` → `"*** BC - no compressed data for level %d\n"` —
  borderline null/missing-resource check, not the audit/offset/length class of guard; not
  escalated.

Artifacts: `/tmp/imageio_out/gpscopy_analysis.txt`, `GPSCopy_{stable,beta}_processData.asm`,
`CGImageCopyFileWithGPSInformation_beta.asm`, `EXR_cold6.asm`, `BC_cold1.asm`,
`IIO_Reader_ASTC_getImageCount_beta.asm`, `__ZN14ASTCTextureImp20decodeRGBXFromLinear...asm`.

**Not escalated to PoC, per task scope.**

---
**STOPPED HERE (2026-10-06) — resume next session:**
- GPSCopy (ImageIO, EXIF/TIFF GPS-IFD) OOB-write is the flagship finding so far, confirmed via static diff. Next: trace reachability (who calls `CGImageCopyFileWithGPSInformation` — Photos.app/Messages/Mail import scan, none done yet) before deciding whether this is worth escalating further.
- Two open ImageIO leads need a containing function: `"DDS/ASTC: image dimensions overflow"` string, and rlebuf `%d`→`%llu` allocation-size widening. Both need either a scripted scan or full in-Ghidra DSC import (ipsw CLI has no xref-to-string-literal search).
- TIFF `TIFFReadDirEntry*ArrayWithLimit` family (Session 25 Track C shortlist, P3) — not inspected at all yet, flagged as a good next candidate (same "WithLimit" bounds-hardening naming pattern as GPSCopy).
