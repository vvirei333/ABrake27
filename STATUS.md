# ABrake27 — Project Status

> **Last updated:** Session 31 (2026-10-06) · docs normalized 2026-11-04
> **Target:** iPhone14,5 (iPhone 13, A15) — iOS 27.0.1 (24A446, stable) vs 27.2 (24B5089g, beta)
> **Device state:** research device sold — **all remaining work is static-only**
> **This file is the authoritative state summary.** Full journal: [HANDOFF.md](HANDOFF.md). Writeups: [WRITEUP.md](WRITEUP.md).

---

## 1. Where the project stands

31 sessions completed. Two tracks fully done (AMFI dev-mode, SEP dispatch map), one diff campaign finished with 1 closed negative + 1 closed robustness fix + **1 flagship open lead (ImageIO ASTC/DDS)** + 1 unlocalized lead (`rlebuf`).

## 2. Closed threads (do not reopen without new evidence)

| Thread | Verdict | Where |
|--------|---------|-------|
| CVE-2025-43520 TOCTOU (cluster_*_contig / UPL_PHYS_CONTIG) | **False.** Session 15 (Ghidra): the three key Session-11 addresses were misidentified (`vm_map_get_upl` → `cluster_io`, `upl_phys_page` → `uio_update`). Hypothesis does not survive binary verification. | HANDOFF Sessions 11–15 |
| GPSCopy OOB write (ImageIO) | **Real bug, unreachable.** Silently patched in beta with `checkCapacity` guards; exhaustively traced — zero callers in shipped userland (no vtable, no indirect dispatch, no cross-image refs). Effectively dead code. Not submitted to Apple. | WRITEUP §3 |
| SpringBoard SBIconStateArchiver | **Robustness fix, not security.** New `synthesizedFolderIdentifier.*` methods are written defensively. | WRITEUP §2 |
| Coredump helper / IOAVUserClient / SmartIO / hilo audit | No security findings; documented as negative results. | HANDOFF Sessions 16–23 |

## 3. Verified result

**Developer Mode via stock lockdown protocol works on iOS 27.0.1** — `com.apple.amfi.lockdown`, `action=1 → reboot → action=2 → reboot → action=0`; precondition: no passcode. Verified persistent at kernel level across an independent reboot (mounter query → true, DDI at `/System/Developer`). Repro in README; full honesty log in [FINDINGS_LOCK.md](FINDINGS_LOCK.md).

Key structural facts (locked, Session 11):
- AMFI **never writes** the dev-mode flag (`data_fffffff00af8a658+0x7`, bit0) — only 2 read sites.
- **ACM is the source of truth**: AMFI asks ACM command `0x25`; `≠1` → force-disable path.
- The single `strb [x, #0x7]` in AMFI writes an ACM command buffer ("CS" magic), not the flag.
- Selector 11 path requires platform-restricted entitlement → unreachable from sideloaded code.

## 4. OPEN — flagship: ImageIO ASTC/DDS hardening

**What is confirmed (structural):**
- Beta adds three pure-insertion guard blocks in `ASTCReadPlugin::initialize` (DX10 dimension checks, multiply-overflow check, error path) — security hardening.
- The reader is registered in the generic ImageIO format-autodetection pipeline (same registry as PNG/JPEG/TIFF) — any file-sniffing decode path can reach it.
- Chain traced: `MADImageASTCFormatReader::readOneImageSource` → `CGImageSourceCreateWithData` → ImageIO autodetect → `ASTCReadPlugin::initialize`.
- BlastDoor zero-click ruled out (Session 30). MediaAnalysis (`mediaanalysisd`, dedicated `MADImageASTCFormatReader`) = top zero-click candidate; QuickLookThumbnailing = semi-zero-click.
- Severity assessed HIGH, conditionally CRITICAL.

**What is NOT confirmed (blocks any disclosure):**
1. **Delivery path:** whether `.astc` files actually reach `mediaanalysisd` without user interaction (iCloud/AirDrop → Photos delivery is *inferred*, not proven).
2. **ObjC dispatch gap** in the middle of the MediaAnalysis chain (inferred from the registry, not traced through full-cache disassembly).
3. No PoC built; field semantics not cross-checked against the ASTC/DDS/KTX specs.
4. Companion **`rlebuf` format-string lead** — flagged in Session 25, never localized.

**Static-only continuation plan (no device needed):**
- [ ] Extract `mediaanalysisd` sandbox profile + entitlements + LaunchConstraints from the firmware filesystem archive → what input channels exist (CoreSpotlight indexing, PhotoKit ingestion)?
- [ ] Check whether `.astc` is in any autodetection allow-list on the delivery path (QuickLookThumbnailing first — fully static).
- [ ] Full-cache `ipsw dyld disass` around the ObjC dispatch gap (selector call sites — `ipsw dyld xref` is blind to vtable/data-pointer refs, see Methodology).
- [ ] Cross-check ASTC header field semantics against the spec (pure documentation).
- [ ] Localize `rlebuf`: string → xref → function → diff 27.0.1 vs 27.2.

## 5. Open threads from the SEP campaign (paused mid-way)

These were parked when the diff campaign took priority (state reflects ~Session 21+):
- `pass2.py` Ghidra post-script results never fully collected (handler names backfill, six priority decompiles, externalMethod cross-check for `FUN_fffffff009177388`).
- Priority handlers not decompiled: t5 sel 6–9 (VARIABLE-struct RPC family), t7 sel 0 (front-door VARIABLE input), t7 sel 20 (3 MB `structOut`, `"outbuf"` assert), t7 sel 24 (1024-byte out, nonce cluster).
- 12 all-zero selectors unswept; entitlement gating per table (t5 vs t7) unknown.
- Offline symbol-naming sweep over all 124 entries (adrp+add → `__PRETTY_FUNCTION__` strings).

## 6. Environment (for resuming)

- Host: CachyOS (Arch), no Mac. Ghidra 12.1.2 + PyGhidra at `/opt/ghidra`; projects `amfi_stable` / `amfi_beta` (old path: `~/projects/iphone-lockdownd-fuzzer/ghidra_proj/`).
- Kernelcaches: `kernelcaches/{stable,beta}/*/kernelcache.release.iPhone14,5` (MH_FILESET, symbols stripped, `LC_DYLD_CHAINED_FIXUPS` ARM64E — no `LC_SYMTAB`; `.a2s` = GOT stubs only).
- Tools: `tools/macho_tool.py` (stdlib Mach-O parser + AArch64 decoder — weak on logical-immediates/complex loads, expect `???`), `tools/ghidra_*.py` headless scripts, `ipsw` (blacktop) + Ghidriff for diff passes.
- Ghidra venv path and kernelcache paths in HANDOFF §Project Overview point at the **old** project directory (`iphone-ios27-diff`) — update when resuming.
