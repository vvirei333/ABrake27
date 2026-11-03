# ASTC/DDS fuzz-corpus grammar (targets: `ASTCReadPlugin::initialize`)

**Purpose:** grammar + boundary strategy for building a corpus that stresses the exact
code path hardened in iOS 27.2 beta (`ASTCReadPlugin::initialize`, see WRITEUP §4) —
so that any *unguarded sibling* in 27.0.1 stable can be found behaviorally, and so the
field semantics of the patch can be cross-checked against the public specs
(WRITEUP open item #4).

**Honest scope note:** this is derived from the structural diff + public ASTC/DDS specs.
The exact guard semantics (`[0x85, 0xbc]` window, multiply-operand provenance) were read
off disassembly and must be re-verified against the extracted 27.0.1 binary before
trusting the corpus. All values below are *hypotheses to hit*, not confirmed semantics.

---

## 1. File formats covered

| Format | Magic | Header |
|--------|-------|--------|
| ASTC | `0x13ABA15C` (bytes `5C A1 AB 13`) | 16 bytes fixed header, then payload |
| DDS | `"DDS "` (`0x20534444`) | 124-byte DDS header + optional 20-byte DX10 header |
| KTX/KTX2 | `«AB 4B »BB` / `0x«AB»4B«BB»2A` | not the patch target — skip for now |

### ASTC fixed header (spec)

| Off | Size | Field | Notes |
|-----|------|-------|-------|
| 0   | 4    | magic | `5C A1 AB 13` |
| 4   | 1    | block_x | spec-valid: 4..12 |
| 5   | 1    | block_y | 4..12 |
| 6   | 1    | block_z | 1 (2D files) |
| 7   | 3    | dim_x (LE24) | |
| 10  | 3    | dim_y (LE24) | |
| 13  | 3    | dim_z (LE24) | |
| 16  | …    | image data | |

### DDS DX10 extension header

| Off | Size | Field |
|-----|------|-------|
| 0   | 4    | dxgiFormat (enum — indexes a format/block-size table → **the table bounds are the suspect**) |
| 4   | 4    | resourceDimension |
| 8   | 4    | miscFlag |
| 12  | 4    | arraySize |
| 16  | 4    | mipMapCount |

---

## 2. Where the beta guards bite (fuzz focus, from the structural diff)

1. **DX10 width/height range check** (~118 insns, after magic check, *before* indexing the
   block-size table) → corpus must cover widths/heights **around and far outside** the
   `[0x85, 0xbc]` window and every plausible off-by-one boundary.
2. **64-bit multiply-overflow check** (`mul x8,x22,x24; lsr x9,x8,#0x3c; cbnz → error`,
   ~21 insns, before the unchanged size computation) → the guard trips when the product's
   top bits are non-zero (`product >> 60 != 0`). Corpus needs dimension pairs whose product
   lands **just below / just at / just above 2^60**, and cases where the product truncates
   to a small value modulo 2^64 (classic wrap → tiny "expected size").
3. **"expected %llu bytes" data-size check** → computed size vs actual trailing data:
   equal, ±1, empty payload, huge-declared-vs-small-file.

---

## 3. Corpus strategy (per file)

- **Boundary sweep:** every dimension field ∈ {0, 1, 3, 4, 12, 13, 0x84, 0x85, 0xbc, 0xbd,
  0xffff, 0xffffff (LE24 max)}, crossed with the multiply-overflow dimension pairs.
- **dxgiFormat sweep:** every enum value 0..130 (covers formats past the last valid row of
  a block-size table) × width/height 1..0x100.
- **Block-dim attacks (ASTC):** block_x/block_y = 0 (div-by-zero?), 1, >12, 255 — the beta
  did NOT add a visible block-dim guard, so **any crash here is a candidate sibling bug**.
- **Negative/edge:** truncated headers (4/8/15 bytes), magic followed by EOF, LE24 dims with
  high bit garbage, arraySize=0, mipMapCount=0, resourceDimension=0/5.
- **Wrap-targeted:** dim pairs from the table `(w*h) mod 2^64 ∈ {0, 1, small}` while the
  true product is ≥ 2^60 — e.g. dim_x = 2^24-1, dim_y = 2^36/… tuned per-block-size so the
  64-bit product wraps exactly.

## 4. Deliverables

- `tools/gen_astc_corpus.py` — deterministic generator, emits `corpus/astc/` and `corpus/dds/`
- Future (Mac-side): feed corpus to `harness/astc_harness.swift` (LibFuzzer harness wrapper)
- Future (Linux-side, no device): the same corpus against a macOS/`ImageIO` build if a
  collaborator provides one — README open-call

## 5. Cross-check checklist (before trusting any corpus verdict)

- [ ] Re-verify `[0x85, 0xbc]` semantics in the extracted 27.0.1 binary (block-size-table
      row index? raw dimension threshold? dxgiFormat range?)
- [ ] Confirm multiply-operand provenance: is the product `dim_x*dim_y` or
      `dim_x*dim_y*block_size`?
- [ ] Compare guard semantics against CVE-2026-43818 / CVE-2026-65346 / CVE-2026-20634
      advisories — if one matches, this "silent" patch is attributed, and the corpus should
      target the *pre-patch* shape of that CVE's PoC instead
- [ ] KTX/KTX2 readers share the same registry — same sweep, lower priority

---

## 6. UPDATE 2026-11-04: KTX promoted from "skip" to PRIORITY

`isValidASTCExtension:` (decompiled/disassembled, see research/intel/ma_decomp/) compares
against **"ktx"**, not "astc". The MediaAnalysis reader consumes IAKC containers (magic
0x434B4149) whose embedded payloads go to CGImageSourceCreateWithData → autodetect →
ASTCReadPlugin::initialize. Corpus must now include:

1. **KTX v1/v2 containers** (magic `«AB 4B »BB` / 0x«AB»4B«BB»2A) with ASTC payload
   variations (the boundary/wrap sweeps of §3, nested inside KTX)
2. **IAKC containers** (magic 0x434B4149 LE) — synthesized: plist header + per-image
   (offset,length) records + embedded ASTC/KTX payloads; corrupt each header field
3. **Extension-confusion set:** ASTC magic inside a `.ktx`-named file, KTX magic inside
   `.astc`-named file — the validator gate and the magic sniffer disagree by design
