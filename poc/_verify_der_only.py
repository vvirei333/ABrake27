#!/usr/bin/env python3
"""Verify a DER-only signed Mach-O.

Checks:
  1. superblob contains CSSLOT_DER_ENTITLEMENTS (0x7) and NOT CSSLOT_ENTITLEMENTS (0x5);
  2. the raw file contains no CSMAGIC_ENTITLEMENTS (0xfade7171) blob;
  3. the CodeDirectory special-slot array keeps nSpecialSlots >= 7, with the
     DER hash at slot -7 equal to SHA256(DER blob) and slot -5 (XML) all-zero;
  4. the DER payload decodes to the expected entitlement key set.

Usage: python3 _verify_der_only.py <macho>
"""
import hashlib
import struct
import sys

MAGIC_XML = 0xFADE7171
MAGIC_DER = 0xFADE7172
SLOT_ENTITLEMENTS = 0x5
SLOT_DER = 0x7


def main(path):
    data = open(path, "rb").read()
    ok = True

    def check(label, cond, detail=""):
        nonlocal ok
        mark = "PASS" if cond else "FAIL"
        if not cond:
            ok = False
        print(f"[{mark}] {label}" + (f" -- {detail}" if detail else ""))

    # --- locate LC_CODE_SIGNATURE ---
    magic = data[:4]
    if magic == b"\xcf\xfa\xed\xfe":
        E = "<"
    elif magic == b"\xfe\xed\xfa\xcf":
        E = ">"
    else:
        raise SystemExit(f"not a Mach-O (magic={magic.hex()})")
    ncmds = struct.unpack_from(E + "I", data, 16)[0]
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

    # --- superblob (always big-endian) ---
    smagic, slen, scount = struct.unpack_from(">III", region, 0)
    assert smagic == 0xFADE0CC0, f"bad superblob magic 0x{smagic:08x}"
    idx = [struct.unpack_from(">II", region, 12 + i * 8) for i in range(scount)]
    slots = {t: o for t, o in idx}
    print(f"[superblob] length={slen} count={scount} slots="
          + ", ".join(f"0x{t:x}" for t, _ in idx))

    check("DER slot (0x7) present in superblob", SLOT_DER in slots)
    check("XML slot (0x5) absent from superblob", SLOT_ENTITLEMENTS not in slots)
    check("raw CSMAGIC_ENTITLEMENTS (0xfade7171) absent from file",
          data.find(struct.pack(">I", MAGIC_XML)) < 0)
    check("raw CSMAGIC_DER_ENTITLEMENTS (0xfade7172) present in file",
          data.find(struct.pack(">I", MAGIC_DER)) >= 0)

    # --- DER blob + its hash ---
    do = slots.get(SLOT_DER)
    if do is None:
        print("no DER slot, cannot continue")
        return 1
    dmagic, dlen = struct.unpack_from(">II", region, do)
    assert dmagic == MAGIC_DER, f"DER blob magic 0x{dmagic:08x}"
    der_blob = region[do:do + dlen]
    der_sha256 = hashlib.sha256(der_blob).digest()
    print(f"[DER blob] offset={do} len={dlen} sha256={der_sha256.hex()[:32]}...")

    # --- CodeDirectory special slots ---
    co = slots[0x0]
    cmagic, clen, cver = struct.unpack_from(">III", region, co)
    assert cmagic == 0xFADE0C02, f"CD magic 0x{cmagic:08x}"
    (hashOffset,) = struct.unpack_from(">I", region, co + 16)
    (nSpecial,) = struct.unpack_from(">I", region, co + 24)
    (nCode,) = struct.unpack_from(">I", region, co + 28)
    (hashSize,) = struct.unpack_from(">B", region, co + 36)
    (hashType,) = struct.unpack_from(">B", region, co + 37)
    print(f"[CodeDirectory] len={clen} version=0x{cver:x} hashType={hashType} "
          f"hashSize={hashSize} nSpecialSlots={nSpecial} nCodeSlots={nCode} "
          f"hashOffset={hashOffset}")

    check("nSpecialSlots >= 7 (DER hash keeps slot -7)", nSpecial >= 7,
          f"nSpecialSlots={nSpecial}")

    def special(slot):
        # slot is negative (-1 .. -nSpecial). hashOffset points at the *code*
        # slot hashes; the special slots sit immediately before it, ordered from
        # slot -nSpecial (lowest address) to slot -1 (highest). Hence:
        #   offset(slot) = co + hashOffset + slot * hashSize
        start = co + hashOffset + slot * hashSize
        return region[start:start + hashSize]

    der_slot = special(-7)
    xml_slot = special(-5)
    check("special slot -7 (DER) hash == SHA256(DER blob)",
          der_slot == der_sha256,
          f"slot={der_slot.hex()[:32]}... blob={der_sha256.hex()[:32]}...")
    check("special slot -5 (XML) is all zero",
          xml_slot == b"\x00" * hashSize,
          f"slot={xml_slot.hex()[:32]}...")
    print(f"[special slots] -1={special(-1).hex()[:16]}... "
          f"-5={xml_slot.hex()[:16]}... -7={der_slot.hex()[:16]}...")

    # --- decode DER payload entitlement keys ---
    body = der_blob[8:]
    # find the keys: 0x0c <len> <ascii key>
    keys = []
    i = 0
    while i < len(body):
        if body[i] == 0x0C and i + 1 < len(body):
            n = body[i + 1]
            if 0 < n < 128 and i + 2 + n <= len(body):
                cand = body[i + 2:i + 2 + n]
                if all(32 <= c < 127 for c in cand):
                    keys.append(cand.decode())
                    i += 2 + n
                    continue
        i += 1
    expected = {
        "com.apple.private.amfi.developer-mode-control",
        "com.apple.private.amfi.can-load-trust-cache",
        "platform-application",
        "com.apple.security.iokit-user-client-class",
    }
    print(f"[DER keys] {sorted(keys)}")
    check("DER payload contains all 4 expected entitlements",
          expected.issubset(set(keys)),
          f"missing={sorted(expected - set(keys))}")

    print()
    print("RESULT:", "ALL CHECKS PASSED" if ok else "SOME CHECKS FAILED")
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main(sys.argv[1]))
