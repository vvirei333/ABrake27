#!/usr/bin/env python3
"""ghidra_dump_range.py — decompile a function + every function it calls
(1 level of recursion), each to a separate .c file in <output_dir>.

Usage:
    ghidra_venv/bin/python tools/ghidra_dump_range.py <target_hex> <output_dir> [variant]
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from _ghidra_common import open_variant, get_function, decompile_c


def safe_name(func):
    nm = func.getName()
    ep = func.getEntryPoint().toString()
    nm = "".join(ch if (ch.isalnum() or ch in "_.-") else "_" for ch in nm)
    return "%s_%s" % (nm, ep)


def main():
    if len(sys.argv) < 3:
        sys.exit(__doc__)
    target = sys.argv[1]
    outdir = sys.argv[2]
    variant = sys.argv[3] if len(sys.argv) > 3 else "stable"
    os.makedirs(outdir, exist_ok=True)

    with open_variant(variant) as flat:
        from ghidra.util.task import TaskMonitor  # only available inside the JVM context

        program, func, addr = get_function(flat, target)
        if func is None:
            sys.exit("!! no function at/containing %s" % target)

        # level-0 target + level-1 callees (dedup, including the target itself)
        callees = set(func.getCalledFunctions(TaskMonitor.DUMMY))
        todo = [func] + sorted(callees, key=lambda fn: fn.getEntryPoint().getOffset())
        seen = set()
        print("target %s calls %d functions (1 level)" % (func.getName(), len(callees)))
        for fn in todo:
            ep = fn.getEntryPoint().toString()
            if ep in seen:
                continue
            seen.add(ep)
            c, err = decompile_c(program, fn)
            path = os.path.join(outdir, safe_name(fn) + ".c")
            header = "// variant=%s  func=%s @ %s  size=%d bytes%s\n\n" % (
                variant, fn.getName(), ep, fn.getBody().getNumAddresses(),
                "  (ROOT)" if fn == func else "",
            )
            with open(path, "w") as f:
                f.write(header)
                f.write(c if c else "// DECOMPILE FAILED: %s\n" % err)
            print("  wrote", os.path.basename(path), "FAILED" if err else "")


if __name__ == "__main__":
    main()
