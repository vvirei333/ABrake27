#!/usr/bin/env python3
"""Find isValidASTCExtension: label/function in the cached ma2701 Ghidra project,
create a function at its address if needed, decompile to stdout file."""
import os
import pyghidra

OUT = "/run/media/ivan/New Volume/My Projects/ABrake27/research/intel/ma_decomp"

with pyghidra.open_program(
        "/run/media/ivan/New Volume/My Projects/ABrake27/extracted_2701/MediaAnalysis_check/MediaAnalysis",
        project_location="/run/media/ivan/New Volume/My Projects/tmp_ipsw/ghidra_ma_proj",
        project_name="ma2701", analyze=False) as flat:

    from ghidra.app.decompiler import DecompInterface
    from ghidra.util.task import ConsoleTaskMonitor

    program = flat.getCurrentProgram()
    st = program.getSymbolTable()
    fm = program.getFunctionManager()

    hits = []
    for s in st.getSymbols("isValidASTCExtension"):
        hits.append(("sym", s.getName(True), s.getAddress()))
    for s in st.getSymbols("isValidASTCExtension:"):
        hits.append(("sym", s.getName(True), s.getAddress()))
    if not hits:
        # fallback: iterate all symbols containing the substring (bounded)
        it = st.getAllSymbols(True)
        for i, s in enumerate(it):
            if "isValidASTCExtension" in s.getName():
                hits.append(("any", s.getName(True), s.getAddress()))
            if i > 400000:
                break
    print("hits:")
    for kind, name, addr in hits:
        print("  %s  %s @ %s" % (kind, name, addr))

    if hits:
        addr = hits[0][2]
        func = fm.getFunctionAt(addr)
        if func is None:
            func = fm.getFunctionContaining(addr)
        if func is None:
            func = flat.createFunction(addr, "isValidASTCExtension_tmp")
        print("function:", func, "@", func.getEntryPoint() if func else None)
        if func:
            di = DecompInterface(); di.openProgram(program)
            res = di.decompileFunction(func, 120, ConsoleTaskMonitor())
            if res.decompileCompleted():
                code = res.getDecompiledFunction().getC()
                path = os.path.join(OUT, "isValidASTCExtension.c")
                open(path, "w").write(code)
                print("wrote", path, len(code), "chars")
            else:
                print("decompile FAIL:", res.getErrorMessage())
