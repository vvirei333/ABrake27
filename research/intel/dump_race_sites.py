#!/usr/bin/env python3
"""CVE-2026-113915 (MediaAnalysis race, fixed 27.2) — static hunt on 27.0.1.

Import mediaanalysisd, find functions whose bodies reference the sandbox-
extension / asset-path strings, decompile them. Race candidates = functions
that (a) issue/consume a sandbox extension AND (b) open/read the target.
"""
import os
import pyghidra

BIN = "/run/media/ivan/New Volume/My Projects/ABrake27/extracted_2701/24A446__iPhone14,5/root/System/Library/PrivateFrameworks/MediaAnalysis.framework/mediaanalysisd"
OUT = "/run/media/ivan/New Volume/My Projects/ABrake27/research/intel/ma_decomp"
PROJ = "/run/media/ivan/New Volume/My Projects/tmp_ipsw/ghidra_mad_proj"

KEY_STRINGS = [
    "Issuing sandbox extension for",
    "Consuming sandbox extension",
    "Failed to consume sandbox extension",
    "Failed to open Photos Library",
    "sandbox extension data count mismatch",
    "Failed to issue sandbox extension",
]


def main():
    os.makedirs(OUT, exist_ok=True)
    with pyghidra.open_program(BIN, project_location=PROJ, project_name="mad2701",
                               analyze=True) as flat:
        from ghidra.app.decompiler import DecompInterface
        from ghidra.util.task import ConsoleTaskMonitor

        program = flat.getCurrentProgram()
        listing = program.getListing()
        fm = program.getFunctionManager()
        di = DecompInterface()
        di.openProgram(program)
        monitor = ConsoleTaskMonitor()

        # find string instances, then xrefs -> containing functions
        targets = {}
        for si in listing.getDefinedData(True):
            v = si.getValue()
            if v is None:
                continue
            s = str(v)
            for ks in KEY_STRINGS:
                if ks in s:
                    targets.setdefault(ks, []).append(si.getAddress())

        hit_funcs = set()
        for ks, addrs in targets.items():
            for a in addrs:
                for ref in program.getReferenceManager().getReferencesTo(a):
                    f = fm.getFunctionContaining(ref.getFromAddress())
                    if f:
                        hit_funcs.add(f)
                        print("HIT:", ks, "->", f.getName(), "@", f.getEntryPoint())

        print("functions to decompile:", len(hit_funcs))
        for f in sorted(hit_funcs, key=lambda x: x.getEntryPoint().getOffset()):
            res = di.decompileFunction(f, 180, monitor)
            if res.decompileCompleted():
                code = res.getDecompiledFunction().getC()
                name = f.getName().replace(":", "").replace("/", "_")[:80]
                path = os.path.join(OUT, "race_%s_%x.c" % (name, f.getEntryPoint().getOffset()))
                open(path, "w").write(code)
                print("wrote", path, len(code), "chars")
            else:
                print("FAIL", f.getName(), res.getErrorMessage())


if __name__ == "__main__":
    main()
