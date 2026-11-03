# MediaAnalysis ASTC-lead — independent static verification (2026-11-04)

**All findings re-verified on our own 27.0.1 (24A446) extraction** — independent of the
original Sessions 28–31 (whose binaries were lost with the old project dir).
Artifacts: `extracted_2701/`, decompiles in this dir (Ghidra headless / pyghidra).

## Confirmed

1. **`MADImageASTCFormatReader` exists** in MediaAnalysis.framework (dyld cache) with the
   full method set from Session 30: `initWithData:`, `isValidASTCExtension:`,
   `readOneImageSource`, `readNextImageSource`, `readPList`,
   `readDataToBuffer:Position:Length:`.
2. **`readOneImageSource`** (decompiled): slices the container by per-image
   `(offset, length)` records → `CGImageSourceCreateWithData` (stub import,
   `func_0x0002400221a0`) → ImageIO generic autodetect → `ASTCReadPlugin::initialize`.
   Matches the Session 31 trace exactly.
3. **`readPList`** (decompiled): gates on container magic **`0x434B4149`** ("IAKC" LE) —
   a **proprietary MediaAnalysis container**, not a raw `.astc` file. Raw ASTC bytes are
   embedded *inside* the IAKC container and individually passed to CGImageSource.
   → **Refinement of the delivery model:** mediaanalysisd consumes IAKC containers;
   the ImageIO ASTC parser is reached with the embedded payload.
4. **Blast radius (`mediaanalysisd`)**: runs as **mobile**, 10 Mach services, **80
   entitlements** — incl. `biome.read-only/writer`, `cloudphotod.access`, `contacts`,
   `imcore.spi.database-access` (iMessage DB), homekit cameraclips. Sandbox is
   **extension-based** (per-directory sandbox extensions issued/consumed at runtime, not
   an inline profile).
5. **CVE-2026-112706 cross-check** (see ../PROVENANCE.md): advisory real, bytestream.xpc
   Mach service + FigXPC handshake machinery real on the same build.

## Open (next session)

- `isValidASTCExtension:` imp not auto-labeled by Ghidra (matched wrong `initWithData:`
  via substring — VCPImageDescriptor collision). Needs manual imp lookup from the ObjC
  method list. **Key question: does the extension/UTI check gate the IAKC path at all,
  or is the container accepted by metadata?**
- Who *produces* IAKC containers and issues the sandbox extensions (issuer daemon —
  photolod/photosd pipeline?) — determines the delivery vector for arbitrary payloads.
- CVE-2026-112706: handler-side subset binary holding `Curl`/`CreationURL` keys.
- Full-cache xref (`ipsw dyld disass` full-cache mode) for the reader registry —
  single-binary Ghidra project can't see cross-image refs (expected limitation).

## Method note

pyghidra via `env -i … PYTHONPATH=<venv site-packages> GHIDRA_INSTALL_DIR=/opt/ghidra
/usr/bin/python3` — the venv shims on this host resolve through a broken surrogate path
(`Загр<b0>узки` AppImage dir) and intermittently lose their own site-packages.
