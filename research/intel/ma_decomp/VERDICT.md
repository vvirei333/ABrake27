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

## 🔥 UPDATE (same session): `isValidASTCExtension:` disassembled from the dyld cache

```asm
+[MADImageASTCFormatReader isValidASTCExtension:]  @ 0x239b65f90:
  mov  x0, x2                    ; arg = candidate extension
  adrp x2, 0x274bac000
  add  x2, x2, #0xba8            ; -> cstring "ktx"   (VERIFIED, see below)
  b   __objc_msgSend$isEqualToString:
```

- The tail-call target resolved to `objc_msgSend$x1=isEqualToString:` — chain complete.
- **Resolver cross-check:** ipsw's cache-cstring resolver verified against known strings
  of `readOneImageSource` ("[ %@] readOneImage: Already read out all images" — byte-exact
  match with the Ghidra decompile of the extracted binary). Annotation trustworthy.
- **FINDING: the ASTC reader's extension validator compares against `"ktx"`, not
  `"astc"`.** No `"astc"` literal exists in the class or binaries at all.
- Interpretation (two hypotheses, both delivery-relevant):
  1. **Engineering intent:** the reader consumes KTX containers (Khronos texture format
     that legitimately carries ASTC block-compressed data) — "ASTC" in the class name
     refers to the texture payload, "ktx" to the outer format. Then the real delivery
     gate for mediaanalysisd image analysis is **`.ktx` files**.
  2. **Apple copy-paste bug:** validator intended to check "astc" and accepts ".ktx"
     instead — either way, `.astc` is *not* what this validator admits.
- Consequence for the flagship lead: the delivery question narrows to
  **"does mediaanalysisd ever receive `.ktx` (or IAKC) files?"** — and the fuzz corpus
  should grow KTX-container fixtures (currently in the corpus doc as "skip").

## CVE cross-check (2026-11-04, advisory support.apple.com/en-us/149230 = iOS 27.2)

- 11 ImageIO CVEs in 27.2 (mostly OOB read/write, memory disclosure, 1 integer underflow
  CVE-2026-112625, 1 buffer overflow CVE-2026-112488) — **no confident attribution** of our
  three ASTC/DDS guard blocks to any listed CVE (advisory descriptions too vague to match
  "DX10 dimension check + 64-bit mul-overflow + error path" precisely). Treat the hardening
  as **silent unless** a future writeup attributes one of the OOB-write CVEs to ASTC/DDS.
- **NEW adjacent lead: CVE-2026-113915 (MediaAnalysis)** — "An app may be able to access
  sensitive user data", **race condition**, addressed with additional validation. Reporters
  include @eisw0lf / @Guluisacat. A race in mediaanalysisd is a different bug class than
  the ASTC guards — worth a dedicated diff/RE pass in the next session.

## IAKC producer hunt (2026-11-04, session end)

Searched for the 0x434B4149 constant (movz/movk pair + raw dword + cstring) in:
- MediaAnalysis.framework: **only one site — the readPList validation cmp** (0x239b661b8). No writer.
- mediaanalysisd / mediaanalysisd-service / assetsd (rootfs): none.
- Cache dylibs extracted+scanned: PhotosFormats, PhotoLibraryServicesCore, CMPhoto,
  MediaToolbox, PhotosImagingFoundation, SpotlightUI: none. PhotoLibraryServices not
  extractable by that name (versioned image name — retry with exact name from `info -l`).
- `photolod` does not exist under that name in this rootfs; photo daemons need a listing
  pass (`root/usr/libexec` inventory) with correct names (photoanalysisd etc.).
- Symbol tables contain no IAKC-named symbols; closest neighbor: `PhotoDecompressionContainer*`
  selectors in MediaAnalysis — candidate producer family for the next pass.

**Blocker learned:** iOS 27 subcache files store code pages compressed (only metadata
readable by raw grep) — code-pattern hunts across the cache REQUIRE `ipsw dyld extract`
decompression per-dylib first.

**Verdict:** producer not yet located; delivery gate remains `.ktx`/IAKC-validated input
into mediaanalysisd, whose upstream issuer is the next-session target.

## 🔥 IAKC PRODUCER FOUND (2026-11-04, full decompress pass: 1440 dylibs scanned)

movz/movk constant `0x434B4149` ("IAKC") sites:
1. **MessagesBlastDoorSupport** @ 0x1c0bf70f8 — `bl(read 8B) → cmp x0,#8 → movz/movk IAKC → str w8,[sp] → add x2,sp → movz x3,#4 → bl(write/verify) → cmp x0,#4` — **WRITER pattern**
2. **ChatKit** @ 0x193732b78 — header load → `cmp w8, IAKC → b.ne` — validator
3. **ChatKit** @ 0x193a905b0 — same writer pattern as BlastDoorSupport

**=> IAKC containers are built/validated in the iMessage attachment-analysis pipeline.**

### Delivery chain (structurally grounded on 27.0.1 extraction)

```
iMessage attachment (zero-click ingress via BlastDoor)
  → MessagesBlastDoorSupport / ChatKit: wrap/validate IAKC container
  → mediaanalysisd (entitlement com.apple.messages.supportsAttachments,
     Mach services com.apple.mediaanalysisd.*)
  → VCPMediaAnalysisClientHandler::requestURLAssetAnalysis:...sandboxTokens:
     → consumeSandboxExtension:url: → FigSandboxRegisterURLWithProcess
  → MADImageASTCFormatReader (isValidASTCExtension: == "ktx")
  → CGImageSourceCreateWithData → ImageIO autodetect → ASTCReadPlugin::initialize
     (UNGUARDED dimensions math in 27.0.1, guarded in 27.2)
```

BlastDoor "ruled out" in Session 30 was premature: BlastDoor XPC services were ruled out
for DIRECT ImageIO decode; the container path (BlastDoor → IAKC → mediaanalysisd) was not
considered. Zero-click iMessage delivery to the ASTC parser is now a structurally complete
chain — behavioral confirmation still required (no device).

## CVE-2026-113915 (MediaAnalysis race) — race-candidate neighborhood (27.0.1)

Decompiled 10 functions around sandbox-extension issuance/consumption
(research/intel/ma_decomp/race_*.c). Key ingestion entrypoint:
`VCPMediaAnalysisClientHandler::requestURLAssetAnalysis:forAssetWithResourcePaths:
withOptions:analysisTypes:sandboxTokens:withReply:` — takes **client-supplied
resourcePaths + sandboxTokens arrays**, consumes extensions, registers URLs with
CoreMedia (`FigSandboxRegisterURLWithProcess`), validates "Sandbox token count (%lu)
does not match resource count (%lu)". TOCTOU candidates: consume(extension)→register(URL)
→read(asset) windows. Detailed race analysis = next session.

## CVE-2026-113915 race analysis — TOCTOU windows (27.0.1, static)

### The gate (VCPMADServicePublicClientHandler::consumeSandboxExtension:url:)
```
T0:  sandbox_check_by_audit_token(client_audit_token, "file-read*")   // check CLIENT's CURRENT access to PATH
T0': sandbox_extension_consume(token)                                  // daemon takes the capability for ITSELF
T0'': FigSandboxRegisterURLWithProcess(path,1,1)                       // URL registered with CoreMedia
T1:  analysis pipeline opens/reads the path                            // NO re-check (extension = process-wide capability)
```
Note: this is the **PUBLIC service** handler (`com.apple.mediaanalysisd.service.public`
is Mach-reachable from apps). Ingestion loop pairs `resourcePaths[i]` with
`sandboxTokens[i]` **by index only**; on any failure the loop aborts (fatal) — the
consume/registration are gated, but the T0→T1 window is not.

### Race hypothesis framework (needs device validation; no 27.2 beta binaries to diff)
1. **Check-vs-read window:** client's read access validated at T0; daemon's open at T1
   rides the consumed extension. Access/permission change between T0 and T1 persists.
2. **Path swap (rename/symlink) race:** extension bound to a PATH, not inode — client
   submits readable path Y at T0, swaps Y → sensitive target before T1 open. Fits the
   advisory language exactly: race condition / "additional validation" added in 27.2
   (plausibly inode-binding or re-stat at open).
3. **Token↔path binding:** nothing in the ingestion loop validates that token[i] was
   issued FOR path[i] — only index pairing + counts. If extensions are transferable
   between legitimately obtained paths, checked-path ≠ capability-path is possible.

Honesty: this is a static hypothesis framework consistent with the official advisory
(race + sensitive data + additional validation), NOT a confirmed exploit primitive.
