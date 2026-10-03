#!/usr/bin/env python3
"""Dump the LC_CODE_SIGNATURE superblob and all embedded blobs.

NOTE: the Mach-O header uses the target endianness, but the code-signature
superblob is ALWAYS big-endian (Apple's CSSM conventions).
"""
import struct
import sys

MAGICS = {
    0xFADE0CC0: "CSMAGIC_EMBEDDED_SIGNATURE (superblob)",
    0xFADE0CC1: "CSMAGIC_EMBEDDED_SIGNATURE (multi)",
    0xFADE0C00: "CSMAGIC_REQUIREMENTS",
    0xFADE0C01: "CSMAGIC_REQUIREMENT",
    0xFADE0C02: "CSMAGIC_CODEDIRECTORY",
    0xFADE0C04: "CSMAGIC_EMBEDDED_ENTITLEMENTS_LEGACY?",
    0xFADE0B01: "CSMAGIC_BLOBWRAPPER",
    0xFADE7171: "CSMAGIC_ENTITLEMENTS (XML)",
    0xFADE7172: "CSMAGIC_DER_ENTITLEMENTS",
}

SLOTS = {
    0x0000: "CSSLOT_CODEDIRECTORY",
    0x0001: "CSSLOT_INFOSLOT",
    0x0002: "CSSLOT_REQUIREMENTS",
    0x0003: "CSSLOT_RESOURCEDIR",
    0x0004: "CSSLOT_APPLICATION",
    0x0005: "CSSLOT_ENTITLEMENTS",
    0x0006: "CSSLOT_REP_SPECIFIC",
    0x0007: "CSSLOT_DER_ENTITLEMENTS",
    0x1000: "CSSLOT_ALTERNATE_CODEDIRECTORIES",
}


def hexdump(b, base=0, limit=256):
    out = []
    n = min(len(b), limit)
    for i in range(0, n, 16):
        chunk = b[i:i + 16]
        hx = " ".join(f"{x:02x}" for x in chunk)
        asc = "".join(chr(x) if 32 <= x < 127 else "." for x in chunk)
        out.append(f"    +{base + i:04x}: {hx:<47} {asc}")
    if len(b) > limit:
        out.append(f"    ... ({len(b) - limit} more bytes)")
    return "\n".join(out)


def main(path):
    data = open(path, "rb").read()
    # --- Mach-O header (target endianness) ---
    magic = data[:4]
    if magic == b"\xcf\xfa\xed\xfe":
        E = "<"
    elif magic == b"\xfe\xed\xfa\xcf":
        E = ">"
    else:
        raise SystemExit(f"not a Mach-O (magic={magic.hex()})")
    ncmds = struct.unpack_from(E + "I", data, 16)[0]
    print(f"[macho] file={path} size={len(data)} endian={E} ncmds={ncmds}")
    off = 32
    sig = None
    for _ in range(ncmds):
        cmd, cmdsize = struct.unpack_from(E + "II", data, off)
        if cmd == 0x1D:
            sig = struct.unpack_from(E + "II", data, off + 8)
        off += cmdsize
    if not sig:
        raise SystemExit("no LC_CODE_SIGNATURE")
    so, ss = sig
    region = data[so:so + ss]
    print(f"[LC_CODE_SIGNATURE] offset={so} size={ss}")
    print("  raw head:")
    print(hexdump(region, 0, 64))

    # --- Superblob (always big-endian) ---
    smagic, slen, scount = struct.unpack_from(">III", region, 0)
    print(f"[superblob] magic=0x{smagic:08x} ({MAGICS.get(smagic, '?')}) "
          f"length={slen} count={scount}")
    if smagic not in (0xFADE0CC0, 0xFADE0CC1):
        raise SystemExit("superblob magic mismatch")
    idx = []
    for i in range(scount):
        t, o = struct.unpack_from(">II", region, 12 + i * 8)
        idx.append((t, o))
        print(f"  index[{i}] type=0x{t:08x} ({SLOTS.get(t, '?')}) offset={o} (0x{o:x})")

    # --- Each blob ---
    for i, (t, o) in enumerate(idx):
        if o + 8 > len(region):
            print(f"  blob[{i}] offset {o} outside region!")
            continue
        bmagic, blen = struct.unpack_from(">II", region, o)
        print(f"\n=== blob[{i}] slot=0x{t:04x} ({SLOTS.get(t, '?')}) "
              f"offset={o} magic=0x{bmagic:08x} ({MAGICS.get(bmagic, '?')}) len={blen}")
        blob = region[o:o + blen]
        if bmagic == 0xFADE0C02:
            ver = struct.unpack_from(">I", blob, 8)[0]
            print(f"    CodeDirectory version=0x{ver:x}")
        print(hexdump(blob, o, 128))
        if bmagic in (0xFADE7171, 0xFADE7172):
            print("    --- payload as text ---")
            print(blob[8:].decode("utf-8", "replace"))
    print(f"\n[tail padding] region ends at {len(region)}, superblob len={slen}, "
          f"pad={len(region) - slen} bytes")


if __name__ == "__main__":
    main(sys.argv[1])