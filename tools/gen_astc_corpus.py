#!/usr/bin/env python3
"""Deterministic ASTC/DDS fuzz-corpus generator.

Targets the hardened path in iOS 27.2 beta `ASTCReadPlugin::initialize`
(WRITEUP §4). See research/fuzzing/astc_dds_corpus.md for the strategy and
the honest caveats about unverified guard semantics.

stdlib-only, no deps. Run: python3 tools/gen_astc_corpus.py [outdir]
"""
import os
import struct
import sys

ASTC_MAGIC = b"\x5c\xa1\xab\x13"
DDS_MAGIC = b"DDS "


def astc(block_x, block_y, block_z, dim_x, dim_y, dim_z, payload=b"\x00" * 16):
    hdr = ASTC_MAGIC + bytes([block_x & 0xFF, block_y & 0xFF, block_z & 0xFF])
    hdr += struct.pack("<I", dim_x)[:3]
    hdr += struct.pack("<I", dim_y)[:3]
    hdr += struct.pack("<I", dim_z)[:3]
    return hdr + payload


def dds(width, height, dxgi=None, dxgi_fmt=0, array_size=1, mips=1,
        dim=4, misc=0, payload=b"\x00" * 64):
    """Minimal DDS; when dxgi is set, appends the 20-byte DX10 header."""
    hdr = DDS_MAGIC
    hdr += struct.pack("<7I44x8I", 124, 0x1007, height, width, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
    hdr = DDS_MAGIC + struct.pack("<I", 124)
    # dwFlags: CAPS|HEIGHT|WIDTH|PIXELFORMAT  (0x1|0x2|0x4|0x1000)
    hdr += struct.pack("<7I", 0x1007, height, width, 0, 0, 0, 0)
    hdr += struct.pack("<2I44x", 32, 0x4)          # pixelformat: size=32, fourCC=0
    hdr += struct.pack("<5I", 0x100000, 0, 0, 0, 0)  # caps + reserved
    if dxgi:
        hdr += struct.pack("<5I", dxgi_fmt, dim, misc, array_size, mips)
    return hdr + payload


def emit(out, name, data):
    path = os.path.join(out, name)
    with open(path, "wb") as f:
        f.write(data)


def main(outdir):
    os.makedirs(os.path.join(outdir, "astc"), exist_ok=True)
    os.makedirs(os.path.join(outdir, "dds"), exist_ok=True)

    BOUNDS = [0, 1, 3, 4, 12, 13, 0x84, 0x85, 0xBC, 0xBD, 0xFFFF, 0xFFFFFF]

    # 1) boundary sweep on ASTC dims (LE24), block dims fixed 6x6x1
    for d in BOUNDS:
        emit(outdir, f"astc/dim_x_{d:06x}.astc", astc(6, 6, 1, d, 6, 1))
        emit(outdir, f"astc/dim_y_{d:06x}.astc", astc(6, 6, 1, 6, d, 1))

    # 2) block-dim attacks — beta added NO block-dim guard (sibling-bug candidates)
    for b in (0, 1, 13, 255):
        emit(outdir, f"astc/block_x_{b:02x}.astc", astc(b, 6, 1, 64, 64, 1))
        emit(outdir, f"astc/block_y_{b:02x}.astc", astc(6, b, 1, 64, 64, 1))
    emit(outdir, "astc/block_z_0.astc", astc(6, 6, 0, 64, 64, 1))
    emit(outdir, "astc/block_z_255.astc", astc(6, 6, 255, 64, 64, 1))

    # 3) 64-bit multiply wrap: dim_x*(dim_y*block_area) mod 2^64 small, true product huge
    #    LE24 max = 0xFFFFFF = 2^24-1 → pairs near 2^60 and wrapping 2^64
    wrap_pairs = [
        (0xFFFFFF, 0xFFFFFF),           # ~2^48 — big but no top-4-nibble set
        (0xFFFFFF, 0x1000000 % (2**24)),
        (0x100000, 0x100000),           # 2^40 product region
        (0xFFFFFF, 0x100001),
    ]
    for i, (dx, dy) in enumerate(wrap_pairs):
        emit(outdir, f"astc/wrap_{i}.astc", astc(6, 6, 1, dx, dy, 1))

    # 4) truncated headers / EOF edges
    full = astc(6, 6, 1, 64, 64, 1)
    for n in (0, 4, 8, 12, 15):
        emit(outdir, f"astc/trunc_{n}.astc", full[:n])
    emit(outdir, "astc/magic_only.astc", ASTC_MAGIC)
    emit(outdir, "astc/nopayload.astc", astc(6, 6, 1, 64, 64, 1, payload=b""))

    # 5) DDS + DX10: dxgiFormat sweep past any plausible table end
    for fmt in (0, 1, 2, 60, 70, 90, 95, 96, 97, 130, 0xFFFFFFFF):
        emit(outdir, f"dds/dxgi_{fmt:08x}.dds",
             dds(0xBC, 0xBC, dxgi=True, dxgi_fmt=fmt))
    # dimension sweep around [0x85, 0xBC] with a mid-range dxgiFormat
    for d in BOUNDS:
        emit(outdir, f"dds/w_{d:06x}.dds", dds(d, 0xBC, dxgi=True, dxgi_fmt=98))
        emit(outdir, f"dds/h_{d:06x}.dds", dds(0xBC, d, dxgi=True, dxgi_fmt=98))
    # degenerate DX10 fields
    for name, kw in [
        ("dx10_dim_0", dict(dim=0)), ("dx10_dim_5", dict(dim=5)),
        ("dx10_array_0", dict(array_size=0)), ("dx10_mips_0", dict(mips=0)),
        ("dx10_misc_ff", dict(misc=0xFFFFFFFF)),
    ]:
        emit(outdir, f"dds/{name}.dds", dds(64, 64, dxgi=True, **kw))

    # legacy (non-DX10) DDS with extreme dims
    emit(outdir, "dds/legacy_maxdims.dds", dds(0xFFFFFFFF, 0xFFFFFFFF))
    emit(outdir, "dds/legacy_zero.dds", dds(0, 0))

    n = sum(len(files) for _, _, files in os.walk(outdir))
    print(f"emitted {n} files under {outdir}")


if __name__ == "__main__":
    main(sys.argv[1] if len(sys.argv) > 1 else "corpus")
