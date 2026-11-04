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

## 💎 IAKC FORMAT SEMANTICS RESOLVED (2026-11-04, session 2)

Function identification via cache disassembly:
- `-[IMMultiFrameImage(ASTC_Persistence) finalizeASTCWithError:]` (MessagesBlastDoorSupport,
  contains the IAKC writer site @ 0x1c0bf70f8; neighboring string "CKAnimatedImageScale")
- `+[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:]` (ChatKit,
  validator site @ 0x193732b78 — reads IAKC container)
- `+[CKMultiFrameImage(ASTC_Persistence) _writeASTCImagesWithCount:imageProvider:durations:
  toOutputStream:error:]` (ChatKit, writer site @ 0x193a905b0 — frames+durations to stream)

**IAKC = the persistence stream of iMessage multi-frame ASTC images (animated stickers):**
magic "IAKC" + plist (durations, CKAnimatedImageScale, metadata — matches readPList's
0x434B4149 gate + plist parsing) + N per-frame (offset,length) records (matches
readOneImageSource's slicing) + ASTC frame payloads (reach CGImageSource → ASTCReadPlugin).

Pipeline: incoming animated sticker → BlastDoor (IMMultiFrameImage finalizeASTC) →
IAKC persisted → mediaanalysisd analyzes frames via MADImageASTCFormatReader →
ASTCReadPlugin::initialize (unguarded in 27.0.1).

**Novelty check:** public search for "IAKC" container documentation returns nothing —
this format and the BlastDoor→mediaanalysisd delivery chain are, to our knowledge,
first publicly documented here. Open verification question: whether attacker-supplied
ASTC frames persist verbatim through finalizeASTC (imageProvider = transcode-or-copy?).

## Verbatim-persistence analysis (2026-11-04, session 2 — the 80% question)

**Structural verdict: the transcode question is largely MOOT for the delivery chain.**

Key insight: mediaanalysisd's input is a **file PATH** (client-supplied resourcePaths +
sandboxTokens), not a transcoded copy. `MADImageASTCFormatReader::initWithData:` reads
the file bytes as-is → readPList (IAKC gate) → readOneImageSource slices frames →
CGImageSourceCreateWithData on raw frame bytes. **No transcode stage exists inside
mediaanalysisd.**

The parse/persist side (BlastDoor/ChatKit) reads incoming ASTC-based files via
`multiFrameImageWithASTCData:` (raw ASTC data in, length-gated at >0x13 bytes) and
persists via `_writeASTCImagesWithCount:...` — for already-ASTC sources this is
parse-and-rewrap, not re-encode (encode branch applies to non-ASTC sources being
converted into ASTC textures — that's the *purpose* of ASTC_Persistence). Caveat:
the encode-vs-copy branch inside the writer was not fully traced; noted as open.

**Net:** if an attachment file arrives already in ASTC/IAKC/KTX form, its payload bytes
reach `ASTCReadPlugin::initialize` verbatim on the mediaanalysisd side. The remaining
unknowns are behavioral, not structural: (1) does any upstream stage reject .ktx/.astc
attachments before the file is stored/analyzed, (2) does the sticker pipeline actually
invoke mediaanalysisd on such files (trigger conditions), (3) the writer's encode-vs-copy
branch.

## Reader confirmed raw-input
`+[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:]` takes raw
data, gates length (≤0x13 → error), category log handle "CKMultiFrameImage" — direct
untrusted-bytes parser in the Messages stack.

## Writer branch resolved (2026-11-04, session 2 cont.)

`_writeASTCImagesWithCount:...` uses **CGImageDestinationAddImage → CGImageDestinationFinalize**
with `_kCGImagePropertyASTCEncoder` properties — the persisted IAKC copy in BlastDoor is
**re-encoded through ImageIO's ASTC encoder**, not a verbatim copy (no
CGImageDestinationCopyImageSource passthrough observed).

**Impact on delivery chain: contained, not fatal.** The transcoded copy is BlastDoor's
rendering artifact. The mediaanalysisd ingestion is path-based (client-supplied
resourcePaths) — if the pipeline submits the ORIGINAL attachment file, the parser reads
attacker bytes directly regardless of the transcoded copy. What remains open (behavioral):
which path is actually submitted for sticker/animated attachments — original vs
transcoded artifact — and whether any upstream stage normalizes/rejects ASTC-family files.

Scanned: full writer function head (provider blocks, property dicts, NSMutableArray/
NSMutableData assembly, CGImageDestination path).

## Wallpaper-upgrade path (2026-11-04, session 2 cont.)

`requestWallpaperUpgrade:atSourceURL:toDestinationURL:withOptions:sandboxTokens:andReply:`
- Validates **exactly 2 tokens** ("Sandbox token count not equal to 2") — source + destination
- Consumes via the shared helper (FUN_10021e0e0 = audit-token "file-read*" check +
  extension_consume — same gate as ingestion)
- `VCPParallaxAnalyzer` analyzes the SOURCE (image parse — same parser surface as the
  asset-analysis path), upgrade writes to DESTINATION (client-supplied path + token)

**Verdict: same race family as the asset-analysis path, no new primitive class.**
Source = read-side TOCTOU (swap before analyze); destination = write bounded by the
consumed token's baked path. Confirms the index-pairing design is systemic across
the MAClientHandler entrypoints. Statics on the mediaanalysisd surface: exhausted —
remaining work is behavioral (PoC + device).

## rlebuf localization progress (2026-11-04, session 3)

- String found: `ImageIO.framework`, VA `0x187eae4e8` — error family from the **PSD
  read plugin**: "could not allocate rowbuf/rlebuf/fullbuf/iptcData - size=%d" +
  "could not allocate iptcData - size=%d" (classic psd.c RLE decoder strings).
- Direct adrp+add scan found no xref (string may be referenced via pointer table /
  chained fixup) → Ghidra headless analysis of the extracted ImageIO binary running
  in background to locate the containing function and decompile it.
- Hypothesis to verify: Session 25 flagged a `%d`→`%llu` change in this string between
  builds. If stable passes `size_t` to a `%d` variadic log — cosmetic-only. **The
  security question is whether the ALLOCATION uses a truncated (int) size while the
  subsequent read uses the full 64-bit size** — classic PSD heap overflow pattern.
  Function decompile will settle it.

## rlebuf VERDICT (2026-11-04, session 3 — llvm-objdump clean disasm)

The `rlebuf`/`rowbuf`/`fullbuf` strings belong to **PSDWritePlugin::writeOne** (psd.c
writer, not reader!) — `PSDWritePlugin::writeLayerMaskBlock8bit/16bit` call sites at
0x187b65118/0x187b6513c confirm context (IIOImageWriteSession, layer mask blocks).

**THE FINDING — asymmetric overflow checking between depth paths** in writeOne:

```
; 16-bit depth path (0x187b65168): PROTECTED
187b65168:  mul  x8, x21, x28          ; 64-bit multiply
187b6516c:  mul  x8, x8, x9
187b65170:  lsr  x25, x8, #3
187b65174:  b    0x187b65224           ; → umulh overflow-check path below

; 8-bit depth path (0x187b65178): ⚠️ 32-BIT, NO CHECK
187b65178:  mul  w8, w10, w21          ; 32-bit truncated multiply
187b6517c:  lsl  w0, w8, #1            ; rlebuf size = (uint)(w10*w21)*2
187b65188:  add  x8, x28, #0x7f        ; width + 127
187b6519c:  umulh x9, x8, magic        ; division-by-127 trick (compiler)
187b651a8:  add  x8, x28, x8, lsr #6   ; x8 = width + width/127 (RLE worst case/row)
187b651ac:  mul  x25, x8, x21          ; 64-bit
187b651c8:  bl   0x188138470           ; ALLOC gets 32-bit truncated w0
; success → joins shared path:
187b65224:  umulh x8, x10, x25         ; overflow check (64-bit)
187b6522c:  b.ne → bail
187b65230:  mul  x20, x10, x25         ; full 64-bit size for write loop
```

- The **16-bit path overflow-checks before allocating**; the **8-bit path allocates with
  a 32-bit truncated product and no umulh check**.
- LogDebug line constant 0x6c9 (psd.c line 1737) matches the Session 25 `%d`→`%llu`
  observation — Apple touched this exact region in 27.2.

**Security assessment (honest):**
- This is the PSD **WRITE** path — triggered when an app exports/saves PSD, not on
  untrusted file parse. Attacker would need controlled huge dimensions flowing into a
  PSD export (narrower than read-path delivery, but real if reachable: crafted source
  image with metadata dimensions > 2^31/channels → truncated rlebuf → OOB write during
  RLE encode loop that uses 64-bit x20).
- The `%d` vs `%llu` string change alone is cosmetic; the asymmetric check is the
  substance. Beta 27.2 binary needed to confirm what Apple actually fixed.
- Severity: LOW-to-MEDIUM conditional (write-path reachable, dimension source
  attacker-controlled only in specific app flows).

## Upstream extension-filter search (2026-11-04, session 3) — NEGATIVE

Searched 1728 decompressed dylibs + extracted rootfs for an attachment extension
whitelist containing `.astc`/`.ktx` (pattern `ast.astc.ktx`, `hasAlpha` neighborhoods):
- `ast.astc.ktx` raw cache hit traced to a GLSL/shader-identifier neighborhood
  (`DOMAIN_MIN`, shader constants) — NOT an attachment filter.
- `hasAlphaChannel` in CoreSpotlight = Spotlight metadata attribute list, unrelated.
- No explicit `.astc`/`.ktx` allow-list found in any extracted binary.

**Conclusion:** no static evidence of an upstream stage that whitelists image extensions
before mediaanalysisd. The question "does an attacker-supplied .ktx/.astc file reach
the parser" remains purely behavioral (device test — behavioral kit prepared in
research/behavioral_kit/).
