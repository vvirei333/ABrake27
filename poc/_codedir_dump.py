#!/usr/bin/env python3
"""
Dump the embedded code-signature superblob of a Mach-O binary.

Parses:
  - Mach-O load commands -> LC_CODE_SIGNATURE
  - CS_SuperBlob -> index of CSMAGIC blobs
  - CodeDirectory (CSMAGIC_CODEDIRECTORY) header incl. nSpecialSlots,
    nCodeSlots, hashType, codeLimit, and the special-slot hash table
    (which is where the entitlements blob hash lives).

Read-only: prints a report, does not modify anything.
"""
import struct
import sys


def u32(b, o):
    return struct.unpack_from(">I", b, o)[0]


def main(path):
    data = open(path, "rb").read()
    magic_be = u32(data, 0)
    # On-disk magic bytes: FE ED FA CF -> read big-endian = 0xCFFAEDFE,
    # i.e. the file is little-endian. Normalise.
    if magic_be == 0xCFFAEDFE:
        E = "<"
    elif magic_be == 0xCAFEBABF:
        E = ">"
    elif magic_be == 0xFEEDFACF:
        E = ">"
    else:
        raise SystemExit(f"not a Mach-O 64: 0x{magic_be:08x}")

    def r32(o):
        return struct.unpack_from(E + "I", data, o)[0]

    def rb32(b, o):
        return struct.unpack_from(E + "I", b, o)[0]

    ncmds = r32(16)
    off = 32
    lc_sig = None
    for _ in range(ncmds):
        cmd, cmdsize = struct.unpack_from(E + "II", data, off)
        if cmd == 0x1D:  # LC_CODE_SIGNATURE
            lc_sig = struct.unpack_from(E + "II", data, off + 8)
        off += cmdsize
    print(f"[macho] size={len(data)} ncmds={ncmds} endian={'LE' if E=='<' else 'BE'} LC_CODE_SIGNATURE={lc_sig}")
    if not lc_sig:
        print("no code signature")
        return
    sig_off, sig_size = lc_sig
    blob = data[sig_off:sig_off + sig_size]
    s_magic, s_len, s_count = struct.unpack_from(E + "III", blob, 0)
    print(f"[superblob] magic=0x{s_magic:08x} len={s_len} count={s_count}")
    for i in range(s_count):
        btype, boff = struct.unpack_from(E + "II", blob, 8 + i * 8)
        bmagic = rb32(blob, boff)
        print(f"  slot[{i}] type=0x{btype:08x} off=0x{boff:08x} magic=0x{bmagic:08x}")
        if bmagic == 0xFADE0C02:  # CodeDirectory
            cd_off = boff
            version, flags, hash_off, ident_off, n_special, n_code = struct.unpack_from(
                E + "IIIIII", blob, cd_off + 8)
            code_limit = rb32(blob, cd_off + 8 + 24)
            hash_type = blob[cd_off + 8 + 28]
            print(f"    CodeDirectory v=0x{version:x} flags=0x{flags:x} "
                  f"hashOff={hash_off} identOff={ident_off} "
                  f"nSpecialSlots={n_special} nCodeSlots={n_code} "
                  f"codeLimit={code_limit} hashType={hash_type}")
            hsize = {1: 20, 2: 32}.get(hash_type, 32)
            base = cd_off + hash_off
            for slot in range(1, n_special + 1):
                so = base - slot * hsize
                h = blob[so:so + hsize].hex()
                print(f"      special slot {slot:2d}: {h}")
        elif bmagic == 0xFADE7171:
            ln = rb32(blob, boff + 4)
            xml = blob[boff + 8:boff + ln]
            print(f"    [XML entitlements] {ln-8} bytes:")
            print("      " + xml.decode("utf-8", "replace").replace("\n", "\n      ")[:1200])
        elif bmagic == 0xFADE7172:
            ln = rb32(blob, boff + 4)
            print(f"    [DER entitlements] {ln-8} bytes (hex head):")
            print("      " + blob[boff + 8:boff + 8 + 64].hex())
        elif bmagic == 0xFADE0B01:
            print("    [CMS signature]")
        else:
            print(f"    [unknown blob 0x{bmagic:08x}]")


if __name__ == "__main__":
    main(sys.argv[1])