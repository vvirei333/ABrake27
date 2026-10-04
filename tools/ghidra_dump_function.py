#!/usr/bin/env python3
"""ghidra_dump_function.py — decompile ONE function (by address) to a .c file.

Usage:
    ghidra_venv/bin/python tools/ghidra_dump_function.py <target_hex> <output_file> [variant]

variant = stable (default) | beta. Reuses the pre-analyzed ghidra_proj project.
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from _ghidra_common import open_variant, get_function, decompile_c


def main():
    if len(sys.argv) < 3:
        sys.exit(__doc__)
    target = sys.argv[1]
    out = sys.argv[2]
    variant = sys.argv[3] if len(sys.argv) > 3 else "stable"

    with open_variant(variant) as flat:
        program, func, addr = get_function(flat, target)
        if func is None:
            sys.exit("!! no function at/containing %s" % target)
        c, err = decompile_c(program, func)
        header = "// variant=%s  target=%s\n// func=%s @ %s  size=%d bytes\n\n" % (
            variant, target, func.getName(), func.getEntryPoint(),
            func.getBody().getNumAddresses(),
        )
        with open(out, "w") as f:
            f.write(header)
            f.write(c if c else "// DECOMPILE FAILED: %s\n" % err)
        print("wrote %s  (func=%s @ %s)" % (out, func.getName(), func.getEntryPoint()))
        if err:
            print("  DECOMPILE FAILED:", err)


if __name__ == "__main__":
    main()
