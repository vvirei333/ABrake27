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

# iOS 27 ImageIO — GPSCopy out-of-bounds write, silently patched in 27.2 beta — CLOSED, reachability ruled out

**Diffing `ImageIO.framework`'s EXIF/TIFF GPS-IFD parser between iOS 27.0.1 (24A446) and
27.2 beta (24B5089g), `iPhone14,5`**

> Status: bug confirmed statically via binary diff; reachability exhaustively traced and
> **ruled out — no caller exists anywhere in this build's shipped userland.** Closed as a
> documentation-only finding, not pursued for Apple Security submission. Sessions 25–28,
> 2026-10-04 through 2026-10-06.

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
- The bug itself is real. **The reachability question that was open as of Session 26 has since
  been answered: no.** See below.

## Trigger (structural — derived from the diff, no working exploit built)

A malformed GPS IFD (EXIF `GPSInfo` sub-IFD inside a TIFF/JPEG container) with a desynchronized
offset/count pair causes a pointer-arithmetic length computation to underflow. On 27.0.1 that
underflowed/oversized `len` is passed straight into `memmove` with no capacity check, producing
an out-of-bounds heap write. On 27.2 beta, the new `checkCapacity` call sees the same bad `len`
and throws `OutOfBounds` instead of calling `memmove`.

This is a structural read of the control-flow diff, not a demonstrated crash — no fuzzed or
hand-crafted file was ever run against either build (moot once reachability closed negative).

## Reachability — exhaustively traced, closed negative (Sessions 27–28)

`CGImageCopyFileWithGPSInformation` is a **file-path-in/file-path-out** API, not a buffer-decode
API — already a weaker reachability shape than a generic decode-path bug. The full trace (not
just the initial guess at likely callers) came back empty at every layer checked:

- **No caller anywhere in ~600+ images checked.** Full sweep of every DSC-resident framework
  that imports ImageIO (Photos, PhotoLibraryServices, PhotoImaging, PhotosUICore/UIPrivate,
  Sharing, ShareSheet, Messages.framework, QuickLook family, WebKit, Vision, CameraUI, MapKit,
  Mail-support frameworks, ~80 confirmed individually + ~500 more via a batch scan) plus 9
  extracted BlastDoor XPC sandboxes (the only genuine zero-click receive path — Messages/Hubble/
  UnknownSenders/MediaAnalysis/IDS/Maps/Telephony/Thumbnails/Wallet) plus 7 standalone app/
  extension binaries (MobileMail, Preview, MusicMessagesApp, CameraMessagesApp,
  PhotosFileProvider, ContinuityCamera, companioncamerad) — **zero callers found.**
- **No vtable.** `GPSCopy` has no `_ZTV7GPSCopy` — unlike the sibling JPEG-segment-handler
  classes it coincidentally shares a method name with (`_APP1`, `_APP13`, `_JPEGFile`, etc., all
  of which DO have vtables), `GPSCopy` is non-polymorphic. Confirmed by its constructor storing
  plain data fields at `this+0`, not a vtable pointer.
- **No indirect/function-pointer dispatch either.** A control test proved `ipsw dyld xref` is
  blind to vtable/data-pointer references (it only sees direct `bl`), so the "no caller" result
  above doesn't by itself rule out table-based dispatch — closed separately by grepping the
  *entire* `__text` of ImageIO (1.3–1.4M disassembled instructions, two independent tools) for
  any `adrp`-computed address of either `GPSCopy::processData()` or
  `GPSCopy::copyFileWithGPSInformation()` outside their one known call site: **zero matches.**
- **No cross-image symbol-level reference either.** A regex sweep of every dylib's bind/import
  table in the whole shared cache for any `_ZN7GPSCopy*` mangled symbol: **zero matches**
  (expected, since these are local symbols, but now independently confirmed).

**Verdict: dead code from Apple's own shipped-apps' perspective on this iOS build.** The bug is
real and was silently patched, but its only entry point has no confirmed caller anywhere in this
build's userland — not a zero-click bug, not a 1-click bug, not even a traceable user-triggered
feature (no "Remove Location" button or similar was found calling it). The realistic (unverified)
trigger model, if this matters at all, is a **third-party app explicitly calling the public
ImageIO C API by name** on a file under its own control — the symbol is still exported (`T` in
the dylib symtab) for static linking even though absent from the dlsym export trie.

**Not pursued for Apple Security submission** — a memory-safety bug with no demonstrated
reachability path isn't submission-ready, and further escalation (PoC construction, macOS-side
checking) wasn't judged worth the effort given this result. Documented here for the record and
as a methodology example (see the "what doesn't work" notes in `HANDOFF.md` Sessions 27–28 for
the `ipsw dyld xref` vtable-blindness caveat, which matters for any future similar trace).

## Same-batch signal that *did* pan out: DDS/ASTC (see next section)

The DDS/ASTC overflow guard flagged alongside GPSCopy in Session 25/26 as a "same coordinated
hardening pass" lead was pursued further (Session 28) and, unlike GPSCopy, turned out to have a
**much stronger reachability profile** — see the dedicated section below. The `rlebuf`
`%d`→`%llu` widening lead remains unlocalized.

## Credit / methodology

Found via static binary diff of `ImageIO.framework` between iOS 27.0.1 (24A446) and iOS 27.2 beta
(24B5089g) kernelcache/rootfs images, `iPhone14,5`. Same toolkit and methodology as the other
findings in this document (offline Mach-O parsing + `ipsw`/Ghidra decompilation where needed).
Full session log: `HANDOFF.md`, Sessions 25–28.

---

# iOS 27 ImageIO — ASTC/DDS "image dimensions overflow" hardening, reachable from the generic decode path

**Same diff pass as GPSCopy above (`ImageIO.framework`, iOS 27.0.1 vs 27.2 beta, `iPhone14,5`),
following up the one lead from that session that turned out to matter more.**

> Status: patch confirmed as security hardening via structural SoP diff; reachability confirmed
> structurally (registered decode-path format reader + MediaAnalysis chain traced in Session 31).
> **Current flagship open lead for this project.**
> Sessions 28–31, 2026-10-06.

## TL;DR

- Component: `ImageIO.framework`, `ASTCReadPlugin::initialize(IIODictionary*)` — a method of a
  genuinely polymorphic plugin class (`__ZTV14ASTCReadPlugin` exists in both builds)
  instantiated by `IIO_Reader_ASTC::createReadPlugin()`.
- `IIO_Reader_ASTC` is a **registered ImageIO format reader**: it implements
  `testHeader(const uint8_t*, size_t, const __CFString*, IIOHeaderOptions)`, the standard
  format-sniffing interface, sitting in the exact same list/signature as `IIO_Reader_PNG`,
  `_GIF`, `_BMP`, `_TIFF`, `_JP2`, `_HEIF`, `_WebP`, `_LibJPEG`, `_AppleJPEG`, `_KTX`, `_KTX2`,
  etc. (~25 readers total) — i.e. the same generic-format-autodetection machinery
  `CGImageSourceCreateWithData`/`CreateImageAtIndex`/`CreateThumbnailAtIndex` use for any
  unrecognized file. This reader already existed in stable with the identical vtable shape —
  only the new guards inside the plugin it builds are beta-only.
- 4 new-in-beta strings (`"bad DDS/ASTC width/height %u"`, `"DDS/ASTC: image dimensions
  overflow"`, `"bad DDS/ASTC data: expected %llu bytes"`) all trace to this one function.

## Patch classification: HARDENING (SoP, structurally verified)

A normalized (address-stripped) structural diff of the full function (1060 stable / 1224 beta
instructions) shows **69% of the function is byte-for-byte identical** between builds, with the
growth resolving into exactly **3 clean, isolated pure-insertion blocks** rather than scattered
edits:
1. A DX10-header width/height range check (118 new instructions), inserted right after the
   format-magic check and before the dimensions are used to index a block-size table.
2. A 64-bit multiply-overflow check (`mul x8,x22,x24; lsr x9,x8,#0x3c; cbnz x9,<error>`, ~21
   lines), inserted immediately before the existing, unchanged size computation that consumes
   the product.
3. The "dimensions overflow" error-log-and-bail path itself (129 new instructions), inserted
   right before validated dimensions flow into existing, unchanged downstream format-dispatch
   logic.

All three guard-then-bail to the same common error exit; surrounding logic on both sides of every
insertion is otherwise isomorphic — the identical "insert N guards around existing read/compute
logic, don't touch the logic itself" signature as the GPSCopy fix above.

## Reachability: structurally confirmed (stronger profile than GPSCopy)

Unlike `GPSCopy`, `ASTCReadPlugin` **has a vtable** and its constructor is reached via a standard
factory (`IIO_Reader_ASTC::createReadPlugin`) that is itself a member of a class implementing
ImageIO's generic format-sniffing interface (`testHeader`), alongside every mainstream format
reader ImageIO ships. This satisfies a structural reachability check (vtable exists + the
constructor sits behind a decode-path registry member) without needing the full indirect-scan
that GPSCopy required (that scan would only be needed if this check came back ambiguous — it
didn't).

**This means the vulnerable code path is reachable, in principle, from any code that asks
ImageIO to sniff/decode an unrecognized file** — including automatic thumbnail/preview
generation (Quick Look, Spotlight, Mail/Messages previews), not gated behind a narrow,
rarely-called utility function the way GPSCopy was.

## Reachability: MediaAnalysis chain (Session 31)

Session 30 identified `MediaAnalysis.framework` as the strongest downstream consumer:
`MADImageASTCFormatReader`, a dedicated Objective-C class with methods `isValidASTCExtension:`,
`initWithData:`, `readOneImageSource`, `readNextImageSource`, `readPList`, and
`readDataToBuffer:Position:Length:`. The class exists in both stable and beta builds with
an identical symbol set, and its source path is embedded in debug strings as
`.../Sources/MediaAnalysis/MediaAnalysis/MADImageASTCFormatReader.mm`.

Session 31 traced the disassembly chain (structural — no behavioral execution):

```
MADImageASTCFormatReader::readOneImageSource     @ 0x23d629124
  → CGImageSourceCreateWithData                  (stub import)
  → container magic 0x434B4149 checked in readPList

VCPImageManager::decodeImageSource               @ 0x23d6f6b84
  → CGImageSourceCreateIOSurfaceAtIndex          (primary path)
  → CGImageSourceCreateImageAtIndex              (fallback @ 0x23d6f6c88)

ImageIO autodetect pipeline
  → IIO_ReaderHandler::buildPluginList
  → ASTCReadPlugin::initialize                   (hardened in beta)
```

**Gap:** the ObjC dispatch between `readOneImageSource` output and `decodeImageSource` input
was inferred from the class structure, not directly traced through a single disassembly path.
This is a standard ObjC-method-dispatch gap, not an open question about whether the code
path exists — both ends are confirmed via stub imports.

**Severity assessment:** HIGH → conditional CRITICAL. The condition is whether `.astc` files
can be delivered to `mediaanalysisd`'s processing queue without user interaction. Plausible
delivery vectors (structural inference, not confirmed behaviorally):

- iCloud shared album or Photo Library sync (background)
- AirDrop-accepted files saved to Photos (semi-interactive)
- iCloud Drive shared folder (background)

**Complementary findings from Session 30:**

| Process | ImageIO link | Decode imports | ASTC-specific | Verdict |
|---------|-------------|---------------|---------------|---------|
| MediaAnalysis / mediaanalysisd | YES | CGImageSourceCreate{Image,IOSurface}AtIndex | MADImageASTCFormatReader (dedicated) | ZERO-CLICK candidate |
| QuickLookThumbnailing | YES | CGImageSourceCreate{Image,Thumbnail}AtIndex | none | SEMI-ZEROCLICK |
| BlastDoor XPC (9 services) | 4/9 link ImageIO | metadata-only (CopyPropertiesAtIndex) | none | RULED OUT |
| CoreUI | NO | none | none | RULED OUT |
| PassKitCore | YES | CGImageSourceCreate{Image,Thumbnail}AtIndex | none | 1-CLICK |

BlastDoor XPC services (MessagesBlastDoorService, MessagesHubbleService,
MessagesUnknownSendersService, MessagesMediaAnalysisService, and 5 others) use
`CGImageSourceCopyPropertiesAtIndex` for metadata extraction only — they never call
the decode function that would reach `ASTCReadPlugin::initialize`. Zero-click via
BlastDoor is structurally ruled out.

## What's still missing before this is submission-ready

- **Partial caller sweep completed (Session 30).** BlastDoor XPC services (9 checked) ruled
  out as zero-click vectors; MediaAnalysis/mediaanalysisd identified as the strongest candidate
  with a dedicated `MADImageASTCFormatReader` class. QuickLookThumbnailing confirmed as a
  semi-zero-click path. The exhaustive sweep that closed GPSCopy has not been replicated for
  all 598 ImageIO importers, but the high-value targets have been checked.
- **MediaAnalysis chain structurally traced (Session 31).** `readOneImageSource` →
  `CGImageSourceCreateWithData` → ImageIO autodetect → `ASTCReadPlugin::initialize`. ObjC
  dispatch gap between `readOneImageSource` output and `VCPImageManager::decodeImageSource`
  input remains inferred, not directly disassembled.
- **No behavioral confirmation.** No `.astc` file has been run against either build. The
  question of whether `mediaanalysisd` actually processes `.astc` files delivered via iCloud/
  AirDrop is open — structural evidence says the code path exists, not that the delivery
  mechanism reaches it.
- No PoC file built — the exact DX10-header field layout, the width/height range `[0x85, 0xbc]`
  (block-size-table bounds) semantics, and the multiply-operand provenance were read off the
  disassembly but not independently cross-checked against the DDS/KTX spec.
- The companion `rlebuf` `%d`→`%llu` lead (same session batch as this and GPSCopy) remains
  unlocalized to a containing function.

## Credit / methodology

Same toolkit as the rest of this document; the key new technique in Session 28 was a normalized
(address-stripped) `difflib.SequenceMatcher` structural diff to separate genuine logic insertions
from address-relocation noise, plus a "vtable + decode-registry-membership" shortcut for
reachability. Sessions 30–31 added a targeted caller sweep across BlastDoor XPC services,
QuickLookThumbnailing, MediaAnalysis, CoreUI, PassKitCore, and UserNotifications, plus
disassembly-level tracing of the `MADImageASTCFormatReader` → ImageIO chain. Full session
logs: `HANDOFF.md`, Sessions 28–31.
