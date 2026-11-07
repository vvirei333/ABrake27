#!/usr/bin/env python3
"""ghidra_find_const.py — find every place a constant is used as an operand.

Reports: VA, containing function, mnemonic, usage type (read/write/compare/
set-compute/bittest), full instruction text.

Usage:
    ghidra_venv/bin/python tools/ghidra_find_const.py <const_hex> <output_file> [variant] [scope_hex ...]

If one or more scope_hex function addresses are given, only those functions
(their bodies) are scanned. With no scope, the WHOLE program is scanned --
impractical for a tiny/common constant like 0x40 in a 64 MB kernelcache, so
pass the functions of interest.
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from _ghidra_common import open_variant, get_function

COMPARE = {"cmp", "cmn", "tst", "ccmp", "ccmn", "teq"}
BITTEST = {"tbz", "tbnz"}


def usage_type(mnem):
    m = mnem.lower()
    if m in COMPARE:
        return "compare"
    if m in BITTEST:
        return "bittest"
    if m.startswith("st"):
        return "write"
    if m.startswith("ld"):
        return "read"
    if m in ("movz", "movn", "movk", "mov", "orr", "eor", "and", "ands",
             "add", "sub", "bic", "orn", "eon", "adds", "subs", "lsl", "lsr"):
        return "set-compute"
    return "other"


def scan_body(program, listing, body, const, out_rows, fm):
    it = listing.getInstructions(body, True)
    for ins in it:
        matched = False
        n = ins.getNumOperands()
        for i in range(n):
            sc = ins.getScalar(i)
            if sc is None:
                continue
            v = sc.getUnsignedValue()
            if v == const or sc.getValue() == const:
                matched = True
                break
        if not matched:
            continue
        va = ins.getAddress()
        fn = fm.getFunctionContaining(va)
        fname = fn.getName() if fn else "?"
        fep = fn.getEntryPoint().toString() if fn else "?"
        out_rows.append((va.toString(), fname, fep, ins.getMnemonicString(),
                         usage_type(ins.getMnemonicString()), ins.toString()))


def main():
    if len(sys.argv) < 3:
        sys.exit(__doc__)
    const = int(sys.argv[1], 16)
    out = sys.argv[2]
    variant = sys.argv[3] if len(sys.argv) > 3 else "stable"
    scopes = sys.argv[4:]

    with open_variant(variant) as flat:
        program = flat.getCurrentProgram()
        listing = program.getListing()
        fm = program.getFunctionManager()
        rows = []
        if scopes:
            for s in scopes:
                _, func, _ = get_function(flat, s)
                if func is None:
                    print("!! no function at", s)
                    continue
                print("scanning %s @ %s ..." % (func.getName(), func.getEntryPoint()))
                scan_body(program, listing, func.getBody(), const, rows, fm)
        else:
            print("scanning WHOLE PROGRAM for %#x (may be slow / huge) ..." % const)
            mem = program.getMemory()
            scan_body(program, listing, mem, const, rows, fm)

        with open(out, "w") as f:
            f.write("# constant %#x  variant=%s  scope=%s  hits=%d\n" % (
                const, variant, (",".join(scopes) if scopes else "WHOLE-PROGRAM"), len(rows)))
            f.write("# %-18s %-28s %-18s %-7s %-12s %s\n" % (
                "VA", "function", "func_entry", "mnem", "usage", "instruction"))
            for (va, fname, fep, mnem, usage, text) in rows:
                f.write("%-20s %-28s %-18s %-7s %-12s %s\n" % (
                    va, fname[:28], fep, mnem, usage, text))
        print("wrote %s  (%d hits)" % (out, len(rows)))


if __name__ == "__main__":
    main()
