#!/usr/bin/env python3
"""Find 'could not allocate rlebuf' in ImageIO (27.0.1), locate containing
function, decompile it + neighbors that reference rowbuf/fullbuf/iptcData.

Run: (clean env) python3 research/intel/find_rlebuf.py
Output: research/intel/ma_decomp/rlebuf_*.c
"""
import os
import pyghidra

BIN = "/run/media/ivan/New Volume/My Projects/ABrake27/extracted_2701/all_dylibs/System/Library/Frameworks/ImageIO.framework/ImageIO"
OUT = "/run/media/ivan/New Volume/My Projects/ABrake27/research/intel/ma_decomp"
PROJ = "/run/media/ivan/New Volume/My Projects/tmp_ipsw/ghidra_iio_proj"

NEEDLES = ["rlebuf", "rowbuf", "fullbuf"]


def main():
    os.makedirs(OUT, exist_ok=True)
    with pyghidra.open_program(BIN, project_location=PROJ, project_name="iio2701",
                               analyze=True) as flat:
        from ghidra.app.decompiler import DecompInterface
        from ghidra.util.task import ConsoleTaskMonitor

        program = flat.getCurrentProgram()
        listing = program.getListing()
        fm = program.getFunctionManager()
        di = DecompInterface()
        di.openProgram(program)
        monitor = ConsoleTaskMonitor()

        hit_funcs = {}
        for si in listing.getDefinedData(True):
            try:
                v = si.getValue()
            except Exception:
                continue
            if v is None:
                continue
            try:
                s = str(v)
            except Exception:
                continue
            for n in NEEDLES:
                if n in s:
                    for ref in program.getReferenceManager().getReferencesTo(si.getAddress()):
                        f = fm.getFunctionContaining(ref.getFromAddress())
                        if f:
                            hit_funcs.setdefault(f, set()).add(n)
                            print("HIT:", n, "->", f.getName(), "@", f.getEntryPoint())

        print("functions:", len(hit_funcs))
        for f, names in sorted(hit_funcs.items(), key=lambda x: x[0].getEntryPoint().getOffset()):
            res = di.decompileFunction(f, 180, monitor)
            tag = "_".join(sorted(names))
            if res.decompileCompleted():
                code = res.getDecompiledFunction().getC()
                path = os.path.join(OUT, "rlebuf_%s_%x.c" % (tag, f.getEntryPoint().getOffset()))
                open(path, "w").write(code)
                print("wrote", path, len(code), "chars")
            else:
                print("FAIL", f.getName(), res.getErrorMessage())


if __name__ == "__main__":
    main()
