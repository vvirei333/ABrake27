#@category iphone-ios27-diff
# ghidra_find_string.py -- Ghidra headless (Jython) script.
#
# Finds a defined string in currentProgram and reports every xref to it:
# string address, and per xref the from_address, the containing function's
# name and its entry address. Also emits basic metadata (entry, size in
# bytes, instruction count) for each distinct reader function.
#
# Args (getScriptArgs): one string to locate, e.g. "cluster_write_contig".
# Output: written to stdout between <<<FINDSTR-BEGIN>>> / <<<FINDSTR-END>>>
# fences so the caller can slice it out of Ghidra's own log noise.
#
# Run via:
#   analyzeHeadless <proj_loc> <proj_name> -process <program> -noanalysis \
#       -readOnly -scriptPath <dir> -postScript ghidra_find_string.py <string>

args = getScriptArgs()
if len(args) < 1:
    print("!! usage: ghidra_find_string.py <string>")
else:
    target = args[0]
    listing = currentProgram.getListing()

    print("<<<FINDSTR-BEGIN>>>")
    print("=== STRING: %s ===" % target)

    matches = []
    data_it = listing.getDefinedData(True)
    while data_it.hasNext():
        d = data_it.next()
        if not d.hasStringValue():
            continue
        val = d.getValue()
        if val is not None and str(val) == target:
            matches.append(d.getAddress())

    if not matches:
        print("STRING_NOT_FOUND")
    else:
        # distinct reader functions, keyed by entry address string
        func_meta = {}
        for saddr in matches:
            print("STRING_ADDR %s" % saddr)
            refs = getReferencesTo(saddr)
            if not refs:
                print("  (no xrefs)")
            for ref in refs:
                frm = ref.getFromAddress()
                fn = getFunctionContaining(frm)
                if fn is None:
                    fname = "<none>"
                    fentry = "<none>"
                else:
                    fname = fn.getName()
                    fentry = fn.getEntryPoint().toString()
                    if fentry not in func_meta:
                        func_meta[fentry] = fn
                print("XREF from=%s func=%s entry=%s" % (frm, fname, fentry))

        print("--- reader function metadata ---")
        for fentry in sorted(func_meta.keys()):
            fn = func_meta[fentry]
            body = fn.getBody()
            size = body.getNumAddresses()
            ins_it = listing.getInstructions(body, True)
            icount = 0
            while ins_it.hasNext():
                ins_it.next()
                icount += 1
            print("FUNC name=%s entry=%s size=%d instr=%d"
                  % (fn.getName(), fentry, size, icount))

    print("<<<FINDSTR-END>>>")
