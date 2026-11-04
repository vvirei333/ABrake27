#!/usr/bin/env python3
"""Structural function diff between two extracted Mach-O binaries
(27.0.1 vs 27.2 final). Normalized (address-stripped) SequenceMatcher diff
— same methodology as the original Sessions 3/22/28.

Usage:
  python3 tools/diff_function.py <bin_a> <bin_b> <function_name_substring> [out.md]

Finds the named function in both binaries (via symbol table strings → VA →
raw instruction stream), normalizes (strips imm addresses), diffs, and
reports: identity %, added/removed instruction blocks with addresses.
"""
import difflib
import re
import struct
import sys

sys.path.insert(0, "tools")
import macho_tool as mt


def find_symbol_va(data, segs, name_sub):
    """Find a C++/ObjC-ish symbol by substring via a naive scan: the extracted
    binaries keep __TEXT symbol strings near their functions; use macho_tool's
    loader + a symbols file if available. Fallback: search __cstring-based
    identification is done by the caller. Here: scan symbol strings."""
    # symbols live in the string table; extracted binaries from ipsw keep a
    # symtab? MH_FILESET from dyld extract: LC_SYMTAB present (ipsw writes it).
    # Parse LC_SYMTAB quickly.
    # Mach-O header parse:
    magic = struct.unpack_from("<I", data, 0)[0]
    if magic == 0xFEEDFACF:
        off, nsyms = None, None
        ncmds = struct.unpack_from("<I", data, 16)[0]
        p = 32
        strtab_off = strtab_size = sym_off = sym_n = 0
        for _ in range(ncmds):
            cmd, size = struct.unpack_from("<II", data, p)
            if cmd == 0x2:  # LC_SYMTAB
                sym_off, nsyms, strtab_off, strtab_size = struct.unpack_from("<IIII", data, p + 8)
                break
            p += size
        if sym_off:
            results = []
            for i in range(nsyms):
                n_strx = struct.unpack_from("<I", data, sym_off + i * 16)[0]
                n_value = struct.unpack_from("<Q", data, sym_off + i * 16 + 8)[0]
                end = data.find(b"\x00", strtab_off + n_strx)
                name = data[strtab_off + n_strx:end]
                if name_sub.encode() in name:
                    results.append((name.decode(errors="replace"), n_value))
            return results
    return []


def read_code(data, segs, va, length=4000):
    try:
        off = mt.va_to_off(segs, va)
    except Exception:
        return []
    out = []
    for i in range(length // 4):
        a = off + i * 4
        if a + 4 > len(data):
            break
        w = struct.unpack_from("<I", data, a)[0]
        try:
            m = mt.decode(w, va + i * 4)
        except Exception:
            m = "???"
        if isinstance(m, tuple):
            m = "%s %s" % m
        out.append((va + i * 4, w, str(m)))
    return out


def normalize(insns):
    """Address-stripped tokens: mnemonic + operands with immediates masked."""
    toks = []
    for va, w, m in insns:
        m2 = re.sub(r"0x[0-9a-f]+", "IMM", m)
        m2 = re.sub(r"#-?\d+", "#IMM", m2)
        toks.append(m2)
    return toks


def main():
    bin_a, bin_b, name = sys.argv[1], sys.argv[2], sys.argv[3]
    out = sys.argv[4] if len(sys.argv) > 4 else None
    da, sa = open(bin_a, "rb").read(), mt.load_segments(bin_a)
    db, sb = open(bin_b, "rb").read(), mt.load_segments(bin_b)

    syms_a = find_symbol_va(da, sa, name)
    syms_b = find_symbol_va(db, sb, name)
    print("A symbols:", [(n, hex(v)) for n, v in syms_a[:3]])
    print("B symbols:", [(n, hex(v)) for n, v in syms_b[:3]])
    if not syms_a or not syms_b:
        sys.exit("!! symbol not found in one of the binaries")

    insns_a = read_code(da, sa, syms_a[0][1], 12000)
    insns_b = read_code(db, sb, syms_b[0][1], 12000)
    na, nb = normalize(insns_a), normalize(insns_b)
    ratio = difflib.SequenceMatcher(None, na, nb).ratio()
    print("identity: %.1f%%  (A=%d insns, B=%d insns)" % (ratio * 100, len(na), len(nb)))

    sm = difflib.SequenceMatcher(None, na, nb)
    blocks = []
    for tag, i1, i2, j1, j2 in sm.get_opcodes():
        if tag == "equal":
            continue
        blocks.append((tag, i1, i2, j1, j2))
    print("diff blocks:", len(blocks))
    lines = ["# diff: %s" % name, "",
             "- A: %s @ %s" % (bin_a.split("/")[-1], hex(syms_a[0][1])),
             "- B: %s @ %s" % (bin_b.split("/")[-1], hex(syms_b[0][1])),
             "- identity: %.1f%%" % (ratio * 100), ""]
    for tag, i1, i2, j1, j2 in blocks[:40]:
        lines.append("## %s  A[%d:%d] B[%d:%d]" % (tag, i1, i2, j1, j2))
        for k in range(i1, min(i2, i1 + 12)):
            va, w, m = insns_a[k]
            lines.append("- A %s: %s" % (hex(va), m))
        for k in range(j1, min(j2, j1 + 12)):
            va, w, m = insns_b[k]
            lines.append("+ B %s: %s" % (hex(va), m))
    text = "\n".join(lines)
    if out:
        open(out, "w").write(text)
        print("wrote", out)
    else:
        print(text[:2000])


if __name__ == "__main__":
    main()
