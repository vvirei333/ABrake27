#!/usr/bin/env python3
"""One-shot pyghidra: import MediaAnalysis (27.0.1), decompile the
MADImageASTCFormatReader methods + find who instantiates it (factory xrefs).

Run: ghidra_venv/bin/python research/intel/dump_astc_reader.py
Output: research/intel/ma_decomp/*.c
"""
import os
import pyghidra

BIN = "/run/media/ivan/New Volume/My Projects/ABrake27/extracted_2701/MediaAnalysis_check/MediaAnalysis"
OUT = "/run/media/ivan/New Volume/My Projects/ABrake27/research/intel/ma_decomp"
PROJ = "/run/media/ivan/New Volume/My Projects/tmp_ipsw/ghidra_ma_proj"

TARGETS = [
    "-[MADImageASTCFormatReader isValidASTCExtension:]",
    "-[MADImageASTCFormatReader initWithData:]",
    "-[MADImageASTCFormatReader readOneImageSource]",
    "-[MADImageASTCFormatReader readPList]",
    "-[MADImageASTCFormatReader readDataToBuffer:Position:Length:]",
]


def main():
    os.makedirs(OUT, exist_ok=True)
    with pyghidra.open_program(BIN, project_location=PROJ, project_name="ma2701",
                               analyze=True) as flat:
        from ghidra.app.decompiler import DecompInterface
        from ghidra.util.task import ConsoleTaskMonitor

        program = flat.getCurrentProgram()
        fm = program.getFunctionManager()
        di = DecompInterface()
        di.openProgram(program)
        monitor = ConsoleTaskMonitor()

        matched = {}
        for f in fm.getFunctions(True):
            n = f.getName()
            for t in TARGETS:
                key = t.split(" ", 1)[1] if " " in t else t  # "isValidASTCExtension:"
                if key in n or t in n:
                    matched.setdefault(key, f)
        print("matched:", list(matched))
        if not matched:
            # diagnostics: dump any function whose name mentions ASTC or MADImage
            for f in fm.getFunctions(True):
                n = f.getName()
                if "ASTC" in n or "MADImage" in n:
                    print("DIAG:", f.getName(), f.getEntryPoint())

        for name, f in matched.items():
            res = di.decompileFunction(f, 120, monitor)
            if res.decompileCompleted():
                code = res.getDecompiledFunction().getC()
                safe = name.replace(":", "").replace("[", "").replace("]", "").replace(" ", "_")
                path = os.path.join(OUT, safe + ".c")
                open(path, "w").write(code)
                print("wrote", path, len(code), "chars")
            else:
                print("FAIL decompile", name, res.getErrorMessage())

        # xrefs to the class factory: who references MADImageASTCFormatReader?
        symtab = program.getSymbolTable()
        cls_syms = [s for s in symtab.getSymbols("MADImageASTCFormatReader")]
        xref_lines = []
        for s in cls_syms:
            for ref in s.getReferences():
                xref_lines.append("%s  <-  %s @ %s" % (
                    s.getName(), ref.getReferenceType(),
                    ref.getFromAddress()))
        open(os.path.join(OUT, "class_xrefs.txt"), "w").write("\n".join(xref_lines))
        print("xrefs written:", len(xref_lines))


if __name__ == "__main__":
    main()
