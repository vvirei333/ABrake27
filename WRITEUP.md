# iOS 27 AppleSEPUserClient — Dispatch Table Reverse Engineering

**Reverse-engineering the AppleSEPUserClient dispatch surface on iOS 27.0.1 (24A446, iPhone14,5)**

> Status: research in progress. Session 20, 2026-10-04.

---

## TL;DR

We decoded the complete `IOExternalMethodDispatch2022` surface exposed by `AppleSEPUserClient` in the iOS 27.0.1 stable kernelcache for `iPhone14,5` (A15).

- **19 dispatch tables** found in a single `__DATA_CONST` region
- **124 selector entries** total, each 24 bytes (`IOExternalMethodDispatch2022`)
- **Identified 6 method names** via embedded `__PRETTY_FUNCTION__` strings: `DispatchUserClientInvalidateNonce`, `DispatchUserClientGenerateNonceAndSlot`, `DispatchUserClientCommitHash`, `LoadRestoreFirmwareWithART`, `getOrGenerateNonce`, and one unnamed SEP cluster helper
- **Documented 12 selectors** with no framework-level argument validation (unexplored surface)
- All work done offline via a stdlib-only Mach-O parser (`tools/macho_tool.py`) — no IDA, no Binary Ninja required

This is a **map, not an exploit**. The purpose is to document the IOKit surface exposed by Secure Enclave's kernel-side client on current iOS.

---

## Context

### What is AppleSEPUserClient

`AppleSEPUserClient` is the IOKit user client subclass for `AppleSEPManager`, the kernel extension that brokers communication between iOS kernel and the Secure Enclave Processor (SEP).

Userspace processes with the appropriate entitlements can `IOServiceOpen` against this client and invoke selectors via `IOConnectCallMethod`. Each selector maps to a kernel-side handler via an `IOExternalMethodDispatch` table.

### Why this matters for research

- The dispatch table enumerates the entire callable surface of the client
- Each entry declares how many scalar inputs, structure inputs, and outputs the kernel will accept
- Entries with `structInputSize = kIOUCVariableStructureSize` (0xffffffff) delegate size validation entirely to the handler — a common class of bug introduction
- The `AppleSEPManager` kernel extension has not been publicly documented in detail for iOS 17+

### Target

| Field | Value |
|---|---|
| Device | iPhone14,5 (iPhone 13, A15) |
| OS | iOS 27.0.1 (build 24A446) |
| Kernel | `Darwin Kernel Version 27.0.0: Thu Aug 13 21:40:46 PDT 2026; root:xnu-13432.2.10~2/RELEASE_ARM64_T8110` |
| Binary | `kernelcache.release.iPhone14,5` (Mach-O arm64e, MH_FILESET, ~64 MB) |

---

## Methodology

All analysis was done **offline** from the kernelcache file with a small Python toolkit. No vendor disassembler was used for the initial pass.

### Tool: `tools/macho_tool.py`

A stdlib-only Mach-O parser + AArch64 decoder. Provides:

- `load_segments(path)` — parse `LC_SEGMENT_64` records, return `(name, vmaddr, vmsize, fileoff, filesize)` tuples
- `va_to_off(segs, va)` — translate a virtual address to a file offset
- `decode(insn, va)` — decode a single AArch64 instruction (partial coverage)
- `linear_disasm(segs, va, end)` — iterate instructions in a range

Known limitation: the decoder does not currently handle all instruction forms (some outputs are `???`), and `adrp` operand strings are malformed — the page/imm must be extracted from the instruction bits directly.

### Chained fixups: `__DATA_CONST` slot format

The kernelcache uses `LC_DYLD_CHAINED_FIXUPS` with the ARM64E format. Each 8-byte slot in `__DATA_CONST` encodes either a rebase or a bind operation:

*(SEP writeup draft ends here — incomplete in source. Appending a separate, unrelated research
thread below; see HANDOFF.md Session 24 for the full session log this is condensed from.)*

---

# iOS 27 SpringBoard/WidgetKit — SBIconStateArchiver silent hardening patch

**Reverse-engineering the WidgetKit/SpringBoard external-data surface on iOS 27, diffing 27.0.1
(24A446) vs 27.2 beta (24B5089g), `iPhone14,5`**

> Status: investigation closed on this specific lead (not a vuln, documented as a robustness
> fix); downstream consumer not traced. Session 24, 2026-10-05.

## TL;DR

- `WidgetKit.framework`: **0 selector diff** between stable and beta — deprioritized, not pursued
  further.
- `SpringBoard.framework`: 33 selectors added / 35 removed in beta out of ~54k total. Only
  on-topic cluster: **4 new `SBIconStateArchiver` class methods**, all additions (no existing
  method bodies changed).
- These 4 methods wire a **new fixup step** into the iTunes/Finder-sync icon-layout import path:
  `modernizedRootArchiveFromITunesRepresentation:` = `_rootArchiveByAssigningMissingFolderIdentifiers:`
  applied to the existing (stable-already-had-it) `rootArchiveFromITunesRepresentation:` →
  `modernizeRootArchive:` chain.
- Decompiled the per-element closure that does the actual work (`_iconListByAssigningMissing-
  FolderIdentifiers:identifierPrefix:_block_invoke`). **It is itself written defensively**
  (`isKindOfClass:` checked on both the array element and the pre-existing identifier before
  either is used) — the "type confusion via array element" hypothesis that motivated this dig is
  **not confirmed**.
- Read as a **robustness/consistency fix, not a memory-safety fix**: stable's import path can
  leave folder entries with a missing/duplicate/non-string `kSBIconStateUniqueIdentifier`; beta
  synthesizes one (`synthesizedFolderIdentifier.<prefix>.<idx>`) wherever absent or mistyped,
  recursively. Likely stable-side symptom is a state-consistency bug/crash in whatever consumes
  the identifier downstream (not traced), not an RCE primitive.

## Methodology note worth keeping

Both `WidgetKit` and `SpringBoard` ship inside the **dyld_shared_cache**, not as loose
rootfs files (`SpringBoard.app`'s own Mach-O is a thin launcher; all logic is in
`SpringBoard.framework`). Modern (iOS 15+) shared caches unique ObjC selector strings into a
cache-wide pool, so **any per-image file extracted standalone has a zero-size
`__objc_methname`/`__objc_methtype`** (confirmed via `llvm-otool -l`, `rabin2 -S`) — `strings`,
`otool`, and r2's `aaa` (which errored with `Invalid class name for method` throughout) cannot
recover selector-call literals from such a file; this is structural, not an absence of findings.
Ghidra on the standalone file still resolves method *definitions* fine (via the `--objc`-injected
symtab from `ipsw dyld extract --objc`) but not `objc_msgSend` call-site selectors, for the same
reason. The fix: `ipsw dyld disass <full DSC> --symbol-image "<path>" -s "<symbol>"` run against
the **unextracted** cache file, which has the real selector pool mapped and resolves everything
(including ARC stub names). This became the primary RE tool for this session.

## Full call chain found (beta only; the two inner calls already existed, unchanged, in stable)

```
+[SBIconStateArchiver modernizedRootArchiveFromITunesRepresentation:]      // NEW
    = _rootArchiveByAssigningMissingFolderIdentifiers:(                    // NEW
          modernizeRootArchive:(                                          // pre-existing
              rootArchiveFromITunesRepresentation:(input)))               // pre-existing
```

`_rootArchiveByAssigningMissingFolderIdentifiers:` mutably copies the root dict; for
`kSBIconStateDock` / `kSBIconStateDockUtilities` / `kSBIconStateIconLists` it checks
`isKindOfClass:[NSArray class]` before processing — non-array values pass through unmodified.

Per-element block (`..._iconListByAssigningMissingFolderIdentifiers:identifierPrefix:_block_invoke`):

```c
for (id element in iconList) {
    id sub = [element isKindOfClass:[NSDictionary class]]
             ? [element objectForKey:kSBIconStateIconLists] : nil;
    if ([sub isKindOfClass:[NSArray class]]) {            // element is a folder w/ nested list
        id existingID = [element objectForKey:kSBIconStateUniqueIdentifier];
        if (![existingID isKindOfClass:[NSString class]])  // missing OR wrong-typed ID
            mutableCopy[kSBIconStateUniqueIdentifier] =
                [NSString stringWithFormat:@"synthesizedFolderIdentifier.%@", prefix.idx];
        mutableCopy[kSBIconStateIconLists] = recurse(sub, newPrefix);
        result = [mutableCopy copy];
    } else {
        result = element;   // not a folder-dict → unchanged, no cast attempted
    }
    [accumulator addObject:result];
}
```

## Open thread (not picked up this session)

Who actually calls `rootArchiveFromITunesRepresentation:` / the new wrapper, and under what trust
boundary (Finder/iTunes sync restore? iCloud? a local file?) — blocked by the same selref issue:
specialized per-selector stubs are shared per-image, so a plain "xref to function address" search
doesn't surface selector call sites the way it would for a normal C symbol. Would need either a
full in-place DSC import into Ghidra, or a scripted scan of `__TEXT_STUBS` for every stub that
loads this one selector's string address. Also not traced: `SBIconModel`/`SBHomeScreenController`
consumption of `kSBIconStateUniqueIdentifier`, which would confirm the actual stable-side failure
mode.

Artifacts: `/tmp/widgets_out/`, `/tmp/widgets_decomp/SBIconStateArchiver_beta_*.asm`. Full session
log with extraction commands and all gaps: `HANDOFF.md`, Session 24.

---

# iOS 27 ImageIO — GPSCopy out-of-bounds write, silently patched in 27.2 beta

**Diffing `ImageIO.framework`'s EXIF/TIFF GPS-IFD parser between iOS 27.0.1 (24A446) and
27.2 beta (24B5089g), `iPhone14,5`**

> Status: confirmed statically via binary diff; not yet reduced to a working PoC. Candidate for
> Apple Security submission once reachability is nailed down. Session 26, 2026-10-06.

## TL;DR

- Component: `ImageIO.framework`, internal class `GPSCopy`, reached via the public API
  `CGImageCopyFileWithGPSInformation(CFStringRef src, CFStringRef dst, CFDictionaryRef properties)`.
- Class of bug: heap OOB-write via unchecked `memmove` — `GPSCopy::processData()` computes a copy
  length from raw GPS-IFD offset/count fields with no bounds check before 4 separate `memmove`
  calls.
- 27.0.1 stable: 0 bounds-check calls guarding any of the 4 `memmove(dst, src, len)` sites;
  `read32()` called 3× with no validation on the result.
- 27.2 beta: same 4 `memmove` sites, register-for-register identical, each now preceded by a new
  `checkCapacity(ptr, len)` call using the same `len` computation; `read32` renamed/replaced by
  `read32Unchecked` at call sites that still want the raw value, with the checked path going
  through the new validator; a new exception class `OutOfBounds` was added (vtable + typeinfo
  present); **+42 new bounds-check-shaped functions** appear in the same binary region. No
  changelog/release-note entry mentions this.
- Read together, this is consistent with an internal fix for a real OOB-write, patched silently
  rather than disclosed — the kind of gap Apple Security wants reported even without a PoC.

## Trigger (structural — derived from the diff, no working exploit built)

A malformed GPS IFD (EXIF `GPSInfo` sub-IFD inside a TIFF/JPEG container) with a desynchronized
offset/count pair causes a pointer-arithmetic length computation to underflow. On 27.0.1 that
underflowed/oversized `len` is passed straight into `memmove` with no capacity check, producing
an out-of-bounds heap write. On 27.2 beta, the new `checkCapacity` call sees the same bad `len`
and throws `OutOfBounds` instead of calling `memmove`.

This is a structural read of the control-flow diff, not a demonstrated crash — no fuzzed or
hand-crafted file has been run against either build yet.

## Reachability — the open question blocking a submission

`CGImageCopyFileWithGPSInformation` is a **file-path-in/file-path-out** API (copies an image file
to a new path while scrubbing or rewriting GPS metadata), not a buffer-decode API. It is **not**
on the `CGImageSourceCreateWithData` path that previews/iMessage/QuickLook use for untrusted
attachment thumbnails, so this is not a zero-click-on-receipt bug as currently understood.

Likely callers (not yet traced to confirm):
- Photos.app "Remove Location" action on a shared/exported photo
- Camera.app GPS-embedding on capture (unlikely attacker-controlled)
- Mail/Messages attachment export flows that strip location before sending

Before this is submission-ready, need to:
1. Trace actual callers of `CGImageCopyFileWithGPSInformation` in `Photos.framework` /
   `Messages.framework` / `Mail.framework` to confirm something reachable from attacker-supplied
   image data (e.g. a received photo the victim then shares/exports with location removed).
2. Build an actual malformed-GPS-IFD test file and confirm the crash/OOB-write reproduces on
   27.0.1 and is rejected (`OutOfBounds` thrown, no crash) on 27.2 beta.
3. Check `EXIFCopy`/`TIFFCopy` for the same pattern — the batch of changes below suggests this
   wasn't an isolated fix.

## Same-batch signals (suggests a broader integer/bounds-check patch pass in the IIO plugin layer)

- A new explicit overflow-guard string appears near DDS/ASTC texture decoding ("image dimensions
  overflow") — lead function not yet located.
- An internal `rlebuf` size field's format string changed from `%d` to `%llu` — classic
  32-bit-to-64-bit widening fix for an integer-overflow bug — lead function not yet located.
- Together with the GPSCopy fix, this reads as one coordinated bounds/overflow hardening pass
  across several ImageIO plugins in the 27.2 beta, not a single unrelated change.

## Not yet confirmed / still needed before filing with Apple

- No PoC file built or tested against either build yet.
- `EXIFCopy`/`TIFFCopy` overlap with the same `memmove`-without-`checkCapacity` pattern: unchecked.
- DDS/ASTC overflow-guard and `rlebuf` widening: lead functions not located yet, so unclear if
  they're the same root cause or separate.
- Caller graph into `CGImageCopyFileWithGPSInformation` from a remotely-attacker-influenced path:
  not traced.

## Credit / methodology

Found via static binary diff of `ImageIO.framework` between iOS 27.0.1 (24A446) and iOS 27.2 beta
(24B5089g) kernelcache/rootfs images, `iPhone14,5`. Same toolkit and methodology as the other
findings in this document (offline Mach-O parsing + `ipsw`/Ghidra decompilation where needed).
Full session log: `HANDOFF.md`, Session 26.
