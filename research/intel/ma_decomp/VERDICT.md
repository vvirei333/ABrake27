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

## KTX hypothesis verification (2026-11-04, session 3 cont.)

- **ImageIO has full KTX support**: `IIO_Reader_KTX` (27 refs), `KTXReadPlugin`,
  `KTXWritePlugin`, `KTX2ReadPlugin`, `KTX2WritePlugin`, `KTXorientation` key — both
  KTX1 and KTX2 registered as generic format readers.
- **Hypothesis 1 (engineering intent) STRENGTHENED**: MADImageASTCFormatReader's
  "ktx" validator + ImageIO's registered KTX readers = the reader consumes KTX
  containers whose payloads are ASTC block-compressed data. This is coherent design,
  not a copy-paste bug: "ASTC" names the payload, "ktx" names the container.
- `readDataToBuffer:Position:Length:` (decompiled): bounds-checked accessor
  (position/length validated against container bounds before read) — defensive code,
  not an attack surface. Confirms MediaAnalysis reads container payload bytes verbatim.

## 🔥 27.2 FINAL (24B119) DIFF — both findings VERIFIED (2026-11-04, session 4)

Extracted 27.2 final (24B119, signed) from ipsw.me — real release binaries, not beta.
Tool: `tools/diff_function.py` (LC_SYMTAB lookup + normalized SequenceMatcher).

### 1. ASTCReadPlugin::initialize — VERIFIED UNGUARDED in 27.0.1
- identity 27.0.1↔27.2: **48.4%** (major rework in final)
- 27.0.1 @0x18798df88: **zero** bound checks in full function (4000 insns scanned)
- 27.2 @0x1878fd740: the DX10 dimension range guard, byte-exact:
  `sub w8, w21, #0x85; cmp w8, #0x37 (=0xbc-0x85); b.hi error; ubfx w9, w8, #2, #30;
  adrp x10, <block-size table>; add x8, x10, x9`
- **Conclusion: 27.0.1 dimensions flow to the block-size table UNCHECKED — confirmed
  with our own diff, no longer trust-dependent on the original beta diff.**

### 2. PSDWritePlugin::writeOneImage (rlebuf) — VERIFIED FIXED in 27.2
- identity: 66.7%; the 8-bit depth path REWRITTEN:
- 27.0.1 @0x187b65178: `mul w8, w10, w21 (32-bit); lsl w0, w8, #1` → alloc, NO check
- 27.2 @0x187ad81cc: `umulh x8, x10, x21; cset/b.ne error; mul x9 (64-bit);
  tbnz x9, #0x3f; lsl x0, x9, x8` → alloc with full 64-bit + two overflow checks
- **Conclusion: Apple fixed exactly the 32-bit truncation we identified. The
  rlebuf asymmetric-check finding is real and was silently patched in 27.2.**

## 🔥🔥 NEW SILENT FIX #2: BC (Block Compression/DDS) — 27.2 diff (2026-11-04)

Batch diff of all 24 ImageIO plugins (initialize/testHeader): systemic baseline
~65-70% identity (infrastructure change), but **below baseline**: BC 43.5% (tied
with ASTC), ASTC 43.5%, HEIF 50.3%, KTX 51.9%, ETC 55.3%.

**BCReadPlugin::initialize @ 27.2 0x187a225c4** — new range-check absent in 27.0.1:
```
sub  w8, w8, #0x83     ; value - 0x83
cmp  w8, #0x10         ; range [0x83, 0x93] = 16 table entries
b.cs → error
adrp x9, <table>       ; table indexed AFTER the check
```
Same pattern class as the ASTC guard (sub+cmp+branch before table indexing).
27.0.1 BC has no such sequence → **BC was silently hardened too**.

**Reusable hunter:** sweep every plugin's 27.2 binary for new `sub w?, w?, #imm;
cmp #imm; b.cs/b.hi` sequences absent in 27.0.1 → enumerates ALL silent
table-index fixes in one pass. TODO next session.

HEIF/KTX/ETC low identity = other rework, no new sub-guards found in this pass.

## 🚀 SWEEP RESULTS — 9 new silent guards in 5 plugins (2026-11-04, session 4)

The sub+cmp+branch hunter swept all 24 ImageIO plugins (initialize, 16000-insn
windows, 27.0.1 vs 27.2): **Apple silently hardened the ENTIRE texture family**:

| Plugin | New guards (sub imm / cmp imm) | 27.2 VA |
|--------|-------------------------------|---------|
| ASTC | #0x85 / #0x37 | 0x1878fd740 |
| BC | #0x17 / #0x8 + #0x1c / #0x5 (+#0x83/#0x10 found earlier) | 0x187a22af8, 0x187a22b88 |
| KTX2 | #0x2 / #0x7 | 0x1879e3158 |
| PVR | #0x85 / #0x37 (SAME window as ASTC — shared dimension table pattern) | 0x187a5aae8 |
| RAD | #0x2 / #0x4 ×4 (per-configuration) | 0x187ae90b4, 0x187ae90e8, 0x187ae912c, 0x187ae920c |

The other 19 plugins: zero new guards. The texture family (ASTC/BC/KTX2/PVR/RAD)
was the only one silently hardened — consistent with the block-size-table bug
class discovered in the ASTC/DDS lead, now fixed family-wide in 27.2.

**Novelty:** this enumeration is first-public. The 27.2 advisory's ImageIO CVEs
(11 total, vague descriptions) likely include several of these — matching them
1:1 requires per-CVE PoC work (device), but the FIX MAP is complete.

## CVE-2026-112706 fix diff (2026-11-04, session 4) — state

- 27.2 rootfs extracted; **mediaplaybackd shim binaries are functionally
  identical** (only version strings 24A413i→24B115) — the fix is NOT in the shim.
- Message keys (CreationURL/ByteStreamDetails/FileDescriptor/etc.) present in
  BOTH versions, neighborhoods byte-identical — the fix is pure code logic.
- The logic lives in **FigByteStreamServer** (strings `<< FigByteStreamServer >>`,
  service name, FigServedByteStreamState) inside a subcache-05 dylib; no exported
  symbols → locating + diffing the function needs one more Ghidra pass on CoreMedia
  (caveat: FigSandboxRegisterURLWithProcess — the registration call the fix likely
  hardens — is in CoreMedia per the ingestion analysis).
- Breadcrumbs set: strings block @ subcache .05, `FigSandboxRegistrationForCreationURL`
  key exists in both versions — the 27.2 whitelist likely gates the REGISTER step.

## 🎯 Behavioral probe v1 result + testHeader decoded (2026-11-04, session 4)

**Probe v1 (real device): ALL 18 fixtures survived, images=0 everywhere.**
Root cause found by decompiling `IIO_Reader_ASTC::testHeader` (27.0.1, Ghidra):
1. **Raw .astc is NOT accepted** — the reader checks a magic dword at **data offset 0x18**
   (24-byte container prologue!) against THREE constants: 0x4B415354 / 0x4B324154 /
   0x41535443 ("KAST"/"K2AT"/"ASTC" as big-endian FourCCs — Apple texture container
   variants). Our fixtures had the ASTC magic at offset 0 → never matched.
2. **`.ktx` route is UTI-gated**: requires kCGImageTypeIdentifierKTX/KTX2 hint (from file
   extension) AND size > 0x40 (KTX1) / > 0x50 (KTX2). Our ext_confusion.ktx was 32 bytes.
3. `valid_2img.bin` (IAKC) was misplaced: IAKC is MediaAnalysis's own container, not a
   CGImageSource format — in-process probe can't test it.

**Negative result explained — not a refutation.** Probe v2 plan:
- fixtures with 24-byte prologue + the three container magics at 0x18, size > 0x40
- decode with UTI type-hint options (kCGImageTypeIdentifierASTC/KTX)
- re-test on device (device iOS version still needed! unguarded path exists only on 27.0.x)

## Probe v2 result (2026-11-04, device = iOS 27.0 beta 4, pre-hardening)

**Still nil/images=0 on all 9 container fixtures (magic@0x18, size>0x40, UTI hints).**

Interpretation: two failed iterations on static-derived fixtures. The reader-selection
path (CGImageSourceCreateWithDataEx → IIO_ReaderHandler::buildPluginList → testHeader
dispatch) does not engage IIO_Reader_ASTC::testHeader the way our fixtures assume —
either the UTI strings we used are wrong, the [x22,#0x18] load isn't file data
(Ghidra arg-renumbering uncertainty in testHeader decompile), or plugin selection
happens through different machinery entirely.

**Next decisive step (static, no device):** trace the actual selection path in the
cached full disasm (/tmp/iio_disasm.txt): _CGImageSourceCreateWithDataEx →
buildPluginList → the testHeader call sites — establish exactly what data pointer /
UTI string reaches each testHeader, then derive fixtures from THAT.
Round-trips to the device stop until this is closed.

## Probe v3 (2026-11-04) — allowable-types steering

Selection-path trace found: `CGImageSourceCreateWithDataEx` reads
**`kCGImageSourceAllowableTypes`** (takes precedence over deprecated
`kCGImageSourceDecodeFormatAllowlist`) — a list of type identifiers steering the
reader selection loop. Type identifiers in ImageIO: **`ATX-ASTC`**, **`ATX-420f`**
(Apple texture container; our magic@0x18 dwells = ATX subtypes). Public texture
API surface: `CGImageTextureDataCreate` etc.

Probe v3: options = {kCGImageSourceAllowableTypes: [ATX-ASTC, ATX-420f],
kCGImageSourceTypeIdentifierHint: ATX-ASTC} on every fixture. Awaiting device run
(27.0 beta 4 = pre-hardening, valid target).

## 🔥 ATX HEADER SPEC RECOVERED (2026-11-04, session 4 cont.) — probe v4 built

Decompiled `readHeader` validation (0x1878d064c, ImageIO 27.0.1). ATX container:
header size **0x54 (84 bytes)**, fields:
```
version     @0x00 (int)  == 1        // our zero-prologue died here: "version [0]"
mipmapA     @0x18, mipmapB @0x1c
pixelDepth  @0x20 >= 0x21
faceCount   @0x28 < dataSize
mipmapLevel @0x2c ∈ [1, 32-LZCOUNT(max)]
orientation @0x38 < 9
watermark   @0x3c, 16 bytes          // bytes compared against 'U'(0x55); popcount
                                     // trick must yield u16 ∈ [4, 16) — Apple
                                     // watermark/anti-tamper, table at 0x187dbfb20
alpha       @0x50 < 7
```
All three prior probes died at version==0 → "unsupported ATX version [0]" — every
negative result explained. **Fixtures v4 (15): valid ATX headers × 5 watermark
candidates × {overflow dims, block0, valid baseline}** — one watermark variant will
pass the [4,16) window, and then the payload reaches the (27.0.1: unguarded) ASTC
block-size math. ASTCProbe.ipa rebuilt (v4).

## PROBE v4 RESULT + WATERMARK TABLE DECODED (2026-11-05)

**Device telemetry: ALL 15 fixtures survived — and the run is INVALID as a negative:**
the device was on **26.6.1 RC (iPhone 13)**, not iOS 27 (confirmed in TG). The whole
ATX/ATXReadPlugin surface differs there; fixtures never reach the 27.0.1 code under
test. No conclusion about watermark/trigger — probe must run on a 27.0.x build
(delayedOTA window to 24A446/27.0.x open until 24/01/2027).

**Watermark check fully decoded (static, no device needed):**
table `DAT_187dbfb20` = `01 02 04 08 10 20 40 80 01 02 04 08 10 20 40 80`
(weights 1<<(i%8) for bytes 0..15 of the watermark). Validation sim:
```
mask_i  = (wm[i] == 'U') ? 1<<(i%8) : 0
sVar6   = Σ mask (NEON_ext slice — either bytes 0..7 or 8..15, both modeled)
uVar4   = (popcount(sVar6>>8) << 8) | (popcount(sVar6&0xff) + popcount(sVar6>>8))
REJECT if uVar4 < 4 || uVar4 == 16
```
Candidate outcomes (identical under both slice models):
- `allU` (55×16): uVar4=8 → **PASS** (both models)
- `altU` (5500×8): uVar4=4 → **PASS** (both models)
- `halfU` (55×8 + 00×8): passes only under bytes-0..7 model
- `ff`, `zero`: rejected (0)

So **v4's candidate set was already correct** — `allU` passes under every model.
Negative result on the 26.6.1 device says nothing about the trigger. Next run:
same IPA on any iOS 27.0.x device. Until then the ATX trigger chain is fully
statically characterized: valid header (allU watermark) → payload reaches
(27.0.1: unguarded) block-size math `sub w8,w21,#0x85; cmp w8,#0x37`.

## CVE-2026-112706 DIFF CAMPAIGN — «FIXED IN 27.2» CLAIM UNCORROBORATED (2026-11-05)

Full cross-version diff of every bytestream-serving component, 24A446 ↔ 24B119:

1. **`/usr/libexec/mediaplaybackd`: functionally identical.** 622 differing bytes
   total — all in `__info_plist` (build metadata) and `__LINKEDIT` (version
   strings). `__text` diff: identity 1.000 (94 insns, byte-for-byte same logic).
2. **MediaToolbox `FigByteStreamServer`: identical.** The real CVE surface is here
   (not CoreMedia): service string `com.apple.coremedia.mediaplaybackd.bytestream.xpc`
   + keys (`CreationURL`, `FileOpenOptions`, `SandboxRegistrationForCreationURL`,
   `ByteStreamDetails.FileDescriptor`, `ServerPID[Version]`, `PreferEndpointBacked...`)
   live in MediaToolbox at 0x1975fbe00.. (2701). All **16** functions matching
   `frbs_*/ByteStreamServer*` normalized-diff clean (≥0.995 identity).
   Symbol sets: identical (175==175).
3. **CoreMedia FigXPC layer: codegen refactors only.** 576/578 functions matched;
   real diffs = `RemoveConnection` (+null-check & cold path), `SendAsyncMessage...
   block_invoke` (outlined-call reshuffle) — refactors, not security fixes.
4. `CoreMediaTestFoundation` (registers servers via
   `_CoreMediaTestFoundationStartServer`, weak-linked by mediaplaybackd) is an
   `/AppleInternal` component — **absent from the production dyld cache**.

**Implication (two-sided):**
- The quarantined TG doc's "Fixed: iOS 27.2 (server-side path whitelist + fd type
  validation)" is **not corroborated by the binaries**. Either the doc overstates
  the fix, or the exploit's fate on 27.2 is unknown. Doc reliability: downgrade —
  its *technique* details were externally consistent (service name verified in
  launchd plist; FigXPC handshake code verified), but its *fix claim* now has no
  binary evidence.
- If the doc is right that 27.0.1 is vulnerable, then no patched component exists
  to diff — the "fix" may have shipped in 27.1/27.2 via a different surface
  (sandboxd profile, libxpc fd handling) — next diff targets if ever needed:
  libxpc `xpc_dictionary_dup_fd`, sandboxd profiles.
- For the paper/portfolio: our bytestream surface map (service name, key protocol,
  RTM metrics logging of client CreationURLs @ `RTMCopyGeneralMetrics`) is
  first-public and stands on its own regardless.

Artifacts: tmp_ipsw/{mt_2701,mt_272,cm_2701,cm_272}.dis (1.5 GB, gitignored).

### CVE-112706 addendum: libxpc ruled out too (2026-11-05, session cont.)

`libxpc.dylib` (usr/lib/system, 647376 bytes both builds — identical size):
- `_xpc_dictionary_dup_fd`: identity 0.927, diffs = GOT/struct-offset relocations
  only (#0x708→#0xa28 etc.), zero logic changes.
- `_xpc_fd_create`: same pattern. `_xpc_connection_get_audit_token`: 1.000.
- **Full sweep: 1498/1498 functions match** (identity ≥0.9 or ≤3-insn size delta).

**Campaign closed.** Diffed components covering the entire bytestream round trip
(daemon → MediaToolbox FigByteStreamServer → CoreMedia FigXPC → libxpc fd
passing): ALL unchanged 24A446 ↔ 24B119. The doc's "fixed in 27.2" has no binary
support anywhere we can diff. Unreachable-from-userland layers left: sandboxd
profiles / kernel sandbox policy (kernelcache diff — separate campaign, low
likelihood for an XPC fd-laundering fix). Working hypothesis: the TG doc's fix
claim is fabricated or aspirational; the technique may still work on 27.2 —
which, for a *defensive* writeup, is exactly the kind of discrepancy worth
publishing (with the caveat that we could not verify the original exploit
dynamically).

## CVE-2026-113915 DIFF CAMPAIGN — RACE CANDIDATES MOSTLY SURVIVE 27.2 (2026-11-05)

mediaanalysisd is a stripped 3.7MB single-__text launcher binary; the 10 race
candidates (race_*.c, TOCTOU family) live in it. Method: window-diff (500 insns)
with 4-gram mnemonic anchor + 5-offset consensus voting (single-anchor drift
caught and corrected — first pass had silently aligned to the wrong function).

| candidate | 27.0.1 VA | identity 27.2 | verdict |
|---|---|---|---|
| requestURLAssetAnalysis...resourcePaths...sandboxTokens | 0x100068324 | **1.000** | UNCHANGED (flagship ingestion path!) |
| requestWallpaperUpgrade... | 0x100070378 | **1.000** | UNCHANGED |
| consumeSandboxExtension #2 | 0x10005f02c | **1.000** | UNCHANGED |
| requestMediaAnalysisDatabaseAccessSandboxExt | 0x10005eaf4 | **1.000** | UNCHANGED |
| filePath (user-controlled) | 0x1001b39c8 | **1.000** | UNCHANGED |
| FUN_10021512c | 0x10021512c | 0.976–1.000 | unchanged |
| consumeSandboxExtension #1 | 0x10001a378 | 0.726 | recompiled: sp→x29 stack shuffle; **removed** `bl+cbz` check pair @0x10001a7b8 and an 'L007' (0x4C303037) version gate @0x10001a840; **no new bounds/TOCTOU guard added** |
| requestEmbeddingStoreSandboxExt | 0x100097ed0 | 0.918 (weak anchor) | likely refactor |
| registerClientforPhotoLibraryURL / storeAnalysisforAsset | 0x100017fd4 / 0x1000177ac | no confident anchor | unresolved (low-priority) |

**Implication:** the core CVE-2026-113915 TOCTOU surface — ingestion reading
client-supplied resourcePaths at T1 against an audit-token check taken at T0 —
is byte-identical in 27.2. Combined with the CVE-112706 result, the pattern for
this TG doc is now systematic: **"Fixed in 27.2" claims carry no binary
evidence in either component we fully diffed.** The doc's technique sections
remain externally consistent (services, keys, call chains all verified) — its
fix-status fields look fabricated.

mediaanalysisd did grow 60KB 27.0.1→27.2 (new features elsewhere); the growth
is not in the race set. mediaanalysisd-generation: launcher __text identical
(6/6 funcs); the 24KB binary delta is cstrings/LINKEDIT only.

Method note (reusable): single 4-gram anchors drift silently — always require
multi-offset consensus (≥3 of 5 windows voting for the same delta) before
trusting a window alignment.

## PROBE v5 ON "iPhone 12 Pro 27.0.1" — ENVIRONMENT IS A RESEARCH VM, NOT A DEVICE (2026-11-05)

RECON unmasked it in one screen:
```
kern.version  = Darwin Kernel Version 25.4.0 ... root:xnu-12377.100.591.502.1~2/RELEASE_ARM64_VRESEARCH1
hw.machine    = iPhone99,11
hw.model      = VPHONE600AP
kern.osversion= 23E246
```
- `iPhone99,11` / `VPHONE600AP` / `ARM64_VRESEARCH1` = virtualized research
  platform (Corellium-style hypervisor VM), not physical Apple silicon.
- `Darwin 25.4.0 / xnu-12377` = iOS 26-generation kernel, and `23E246` is an
  18.4-era build number — **no iOS 27.0.1 anywhere in this environment**.
- All 18 SPTM/Exclaves/TLBI sysctl guesses: absent (expected, and now verified
  — also on a VM kernel).
- All 15 ATX fixtures survived — **invalid as a negative for the third time**;
  the 27.0.1 ImageIO code under test is not present in the VM's image.

**Campaign rule (hardened):** every future device round MUST run RECON first
and paste `kern.version` + `hw.machine` before any fixture run. Real-device
fingerprints: `hw.machine` in {iPhone14,5 (13), iPhone13,3 (12 Pro)}, xnu-13432.x
for 27.x, no VRESEARCH/VPHONE strings. VM negatives are not evidence about
27.0.1 — do not spend contact goodwill on them.

Project status: the on-device confirmation loop is blocked on access to REAL
hardware running iOS 27.0.x. Static side remains exhausted-and-consistent;
delayedOTA window to 24A446 closes 2027-01-24.

## EXTERNAL CORROBORATION (2026-11-05, intel sweep)

- Community rumor "iOS 27.2 Beta 3 patched an SPTM bug" (r/jailbreak) aligns
  with our static diff: SPTM 820.0.22 → 820.40.24 TLBI-verification at retype.
  Our first-public finding now has independent, non-binary corroboration.
- The Hexacon untethered jailbreak (iPhone 18 Pro, 27.0.1) is attributed to
  **CVE-2026-86950** — CoreGraphics OOB write, exploited in the wild, patched
  27.2 + backported to 18.7.1/26.7.1 ("compiler undefined behavior" bug class).
  Adjacent to our ImageIO surface; 27.0.1 confirmed vulnerable-window by demo.
- 27.0.1 R/W writeup + exploit "release soon" teased (r/jailbreak); signing
  window ~3 months.
- Watch: claim "PoCs for 31 CVEs fixed in 27.2" + "persistent exploit survives
  27.2 update" — UNVERIFIED community posts, zero-trust until writeup/code.
- pwnumbda: no public traces — treat as vaporware until proof.

## 🔥 CVE-2026-86950 FIX SITE ATTRIBUTED (2026-11-06, first-public)

Intel identified the Hexacon untethered jailbreak as CVE-2026-86950
(CoreGraphics OOB write, in-the-wild, "crafted file → RCE", "compiler
undefined-behavior differences"). Diffed CoreGraphics 24A446 vs 24B119:

- **27.0.1 contains ZERO `CG-SEC-` strings.** 27.2 adds them — Apple's marker
  for security-added validation.
- The key one: **`CG-SEC-187882049: invalid function for type 5 shading
  (range dimension does not match color space)`** — referenced inside
  **`_CGPDFShadingType5Init`** (27.2 @0x183c5c88c, xref @0x183c5cba0 → pdf_error).
- Function growth: 220 → 245 insns (+25), the delta being the new
  range-dimension ↔ color-space consistency check; in 27.0.1 a PDF with a
  Type 5 (free-form Gouraud mesh) shading whose Range array dimension
  mismatched its ColorSpace could reach downstream math with inconsistent
  dimensions → the OOB write window.

**Attribution: high-confidence** (semantics match the advisory: crafted-file
RCE in CoreGraphics; a UB-compiler-difference bug class fits a missing
dimension check being optimized away in one build). Not yet confirmed by a
published PoC diff — but this is the only CG-SEC-marked parser-validation
added between the vulnerable and fixed builds.

Portfolio phrasing: "we located Apple's silent fix for the in-the-wild
CVE-2026-86950 via CG-SEC-marker diffing: a PDF Type 5 shading
range/colorspace dimension check added to _CGPDFShadingType5Init in 27.2."

### SEC-marker global sweep + second fix attributed (2026-11-06, cont.)

Full-cache sweep (`SEC-[0-9]{6,12}` across every dyld cache chunk, both builds):
- 27.0.1: **0 markers anywhere**
- 27.2: **exactly 2, both CoreGraphics** — Apple used this convention only here.

Second marker: **`CG-SEC-187882136: used-cmap codespace-dimension mismatch
contained (decoded %zu codes from a %zu-byte code); falling back`**
→ xref @0x183ed7554 inside **`_cmap_convert`** (0x183ed71a4, the PDF CID/CMap
character-decoding loop). Unlike the Type5 check (hard fail), this one
*contains* the anomaly: clamps the decode to what the codespace dimension
allows and falls back gracefully — a bounds-fix in the PDF font CMap decoder.

Both markers live in the **PDF parsing pipeline** (shadings + CMaps) — the two
halves of "maliciously crafted file → RCE" chains, consistent with CVE-2026-86950
being a PDF/CoreGraphics file-processing bug, possibly fixed via two hardening
points rather than one.

Marker convention note for future diffs: grep `SEC-[0-9]{6,12}` across cache
chunks = instant map of Apple's silent security additions for any build pair.

## VECTOR SWEEP STATUS (2026-11-06 evening)

| surface | method | result |
|---|---|---|
| ImageIO textures | full diff | ✅ 9 silent guards mapped |
| CoreGraphics | SEC-marker sweep | ✅ 2 markers = CVE-86950 fix pair (Type5 shading, CMap) |
| SPTM | im4p full diff | ✅ TLBI verify + 4 more |
| Kernel (AMFI kext) | whole-kext diff | ✅ DER-probe (telemetry) |
| Kernel (sandbox kext) | whole-kext diff | ✅ validation rework — only bytestream-mitig-compatible change |
| Kernel (com.apple.kernel) | xref of new asserts | ✅ vm_map lock-overflow diagnostics |
| Kernelcaches (SEC markers) | sweep | 0 markers — convention is CG/PDF-only |
| WebKit 44.8MB | string diff | symbol churn only (new private APIs); code-level diff = separate campaign |
| mediaplaybackd / MediaToolbox / CoreMedia / libxpc | full diffs | identical 27.0.1↔27.2 (CVE-112706 fix-claim unsupported) |
| mediaanalysisd | window diff w/ consensus | 6/10 TOCTOU candidates identical |
| libxpc | full function sweep | 1498/1498 unchanged |

Remaining un-swept vectors: WebKit code-level (heavy), GPU firmware (AGX
firmware im4p not yet extracted), SEP firmware (needs different tooling).

## GPU FIRMWARE VECTOR (2026-11-06 evening, kext-level)

GPU kexts from the kernelcache filesets, byte-diff 24A446 ↔ 24B119:
- `AGXG14P` (924KB): 813KB changed — firmware blob **fully rebuilt** (churn).
- `IOGPUFamily` (414KB): 343KB changed — same rebuild churn.
- `AGXFirmwareKextRTBuddy64` (49KB): **77 bytes in 3 regions — surgical.**
- `AGXFirmwareKextG14PRTBuddy` (65KB): surgical too, **same offsets** (shared
  firmware image).

The surgical patch, decoded (firmware is AArch64 microcode):
```
0x4004-0x402a (both images):
  2701: d503245f(SB) adrp x8, 0xf00164e8   …   adrp x8, 0xf00164e8
  272 : d503245f(SB) adrp x8, 0xf0016668   …   adrp x8, 0xf0016668
  → code pointers moved by exactly one 4KB page (twice, mirrored pair)
0x2a0 (G14PRTBuddy __DATA):
  table size field 0xfff0ae00 → 0xfff0ae40 → a 64-byte entry ADDED to a table
0x80b6 (both):
  adrp page shift 0x0115d2b0 → 0x0116d2b0 (matches the +0x40 relocation)
0x2a0 (RTBuddy64):
  16 random-looking bytes replaced → build-id/signature/nonce, not code
```

Honest read: the RTBuddy firmware family gained a **new 64-byte table entry**
(some enumerated resource — channel/queue/descriptor) with the code pointers
relocated one page accordingly; drivers rebuilt alongside. **Not evidently a
security fix** — shape says feature/compat churn. The security-relevant GPU
changes, if any, are dissolved inside the fully-rebuilt AGXG14P/IOGPUFamily
blobs and cannot be localized without a firmware-internal diff (branch-target
alignment pass) — queued as the deepest layer of the GPU vector.

Practical conclusion for GPU_CHAIN.md: at the kext/firmware layer visible
from the kernelcache, 27.2's GPU delta is churn + one table extension; the
*hardening* that killed the GPU→kernel bridge happened in SPTM (TLBI verify),
not in the GPU firmware itself.

## ⚠️ CORRECTION: CVE-2026-86950 ATTRIBUTION RETRACTED (2026-11-06)

The public writeup (califio/publications, "The Great Glyph Grift") gives the
true root cause — **not** our CG-SEC markers:
- Root cause: UB double→int32 cast in `static inline aa_double_to_fixed()`;
  clang emitted saturating FCVTZS in `aa_moveto` but truncating FCVTZS+XTN in
  `aa_lineto` → mixed representations → signed delta wraps in `aa_add_edges` →
  bbox under-reports → coverage buffer undersized → controlled 16-bit OOB in
  `aa_cache_render`. Trigger: PDF + crafted TrueType with composite-glyph
  scaling matrices (zero-click via WhatsApp PDF rendering).
- **Fixed in 26.7.1** — before both our builds.
- Verified against our binaries: clamp constant ±1073737729 (0x3FFFF001
  encoding) present in 27.0.1 **and** 27.2 → the fix predates 27.0.1.

What remains valid from our pass:
1. The **CG-SEC marker convention** (27.0.1: zero; 27.2: exactly two, both PDF
   pipeline: Type5 shading range/colorspace fail + `_cmap_convert` containment)
   — still first-public, still silent hardening, just **unrelated to 86950**.
2. The clamp-presence check method (find the advisory's magic constant in the
   binary to date a fix) — fast and reliable.
Retraction applies to the "fix site" phrasing in the 2026-11-06 entries and
GPU_CHAIN.md §3.2 (annotated there).
