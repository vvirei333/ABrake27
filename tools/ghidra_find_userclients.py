#!/usr/bin/env python3
# ghidra_find_userclients.py
#
# IOKit user-client attack-surface enumeration for a kernelcache.
#
# Step 1: scan defined strings in __TEXT / __PRELINK_TEXT segments, keep those
#         starting with "virtual IOReturn" (each marks an IOUserClient subclass
#         method prototype), and record xrefs.
# Step 2: for the first 20 such strings, resolve the reader instruction's
#         containing function (entry / size / name).
#
# Pure metadata collection, no interpretation.
#
# Run headless via the project's PyGhidra venv (this Ghidra build has no Jython):
#   GHIDRA_INSTALL_DIR=/opt/ghidra \
#   ghidra_venv/bin/python tools/ghidra_find_userclients.py [project_name]
#
# Can also be dropped in as a PyGhidra -postScript (uses currentProgram then).

import csv
import sys

PROJECT_PATH = "/home/ivan/projects/iphone-lockdownd-fuzzer/ghidra_proj"
PROGRAM_NAME = "kernelcache.release.iPhone14,5"
PREFIX = "virtual IOReturn"
# This is a modern *merged* kernelcache (normal for iOS 17+): there are no
# __PRELINK_* blocks -- prelinked kext code/strings are folded into the standard
# __TEXT segment -- and MemoryBlock names here are *section* names. The target
# strings live in __cstring (a __TEXT section). Accept the string-bearing
# sections of __TEXT, plus any PRELINK block should one ever be present.
STRING_SECTIONS = ("__cstring", "__ustring", "__os_log", "__const", "__TEXT")
OUT_STRINGS = "/tmp/userclients.csv"
OUT_FUNCS = "/tmp/userclients_funcs.csv"
STEP2_LIMIT = 20

# ---- obtain `program`, whether run standalone or as a PyGhidra post-script ----
_project = None
try:
    program = currentProgram  # noqa: F821  (injected in post-script mode)
except NameError:
    import pyghidra
    pyghidra.start()
    from ghidra.base.project import GhidraProject
    pname = sys.argv[1] if len(sys.argv) > 1 else "amfi_stable"
    _project = GhidraProject.openProject(PROJECT_PATH, pname, True)
    program = _project.openProgram("/", PROGRAM_NAME, True)

from ghidra.program.model.data import StringDataInstance


def hx(addr):
    # getOffset() is a signed Java long; high kernel addrs go negative -> mask.
    return "0x%x" % (addr.getOffset() & 0xFFFFFFFFFFFFFFFF)


def seg_ok(block):
    if block is None:
        return False
    name = block.getName()
    return name in STRING_SECTIONS or "PRELINK" in name


def func_name_at(addr):
    fm = program.getFunctionManager()
    f = fm.getFunctionContaining(addr)
    return f


def run():
    mem = program.getMemory()
    listing = program.getListing()
    refmgr = program.getReferenceManager()

    hits = []  # (addr, value)
    data_it = listing.getDefinedData(True)
    while data_it.hasNext():
        data = data_it.next()
        block = mem.getBlock(data.getAddress())
        if not seg_ok(block):
            continue
        if not StringDataInstance.isString(data):
            continue
        val = StringDataInstance.getStringDataInstance(data).getStringValue()
        if val is None or not val.startswith(PREFIX):
            continue
        hits.append((data.getAddress(), val))

    hits.sort(key=lambda t: t[0].getOffset() & 0xFFFFFFFFFFFFFFFF)
    print("[userclients] matched %d strings starting with %r" % (len(hits), PREFIX))

    # ---- Step 1 CSV ----
    with open(OUT_STRINGS, "w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["string_addr", "string_value", "xref_count",
                    "first_xref_addr", "first_xref_func"])
        for addr, val in hits:
            refs = list(refmgr.getReferencesTo(addr))
            xref_count = len(refs)
            first_xref_addr = ""
            first_xref_func = ""
            if refs:
                fa = refs[0].getFromAddress()
                first_xref_addr = hx(fa)
                fn = func_name_at(fa)
                first_xref_func = fn.getName() if fn else ""
            w.writerow([hx(addr), val, xref_count,
                        first_xref_addr, first_xref_func])
    print("[userclients] wrote %s" % OUT_STRINGS)

    # ---- Step 2 CSV (first STEP2_LIMIT strings, one row per reader xref) ----
    with open(OUT_FUNCS, "w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["string_addr", "string_value", "xref_addr",
                    "func_entry", "func_size", "func_name"])
        for addr, val in hits[:STEP2_LIMIT]:
            refs = list(refmgr.getReferencesTo(addr))
            if not refs:
                w.writerow([hx(addr), val, "", "", "", "NO_XREF"])
                continue
            for ref in refs:
                fa = ref.getFromAddress()
                fn = func_name_at(fa)
                if fn is None:
                    w.writerow([hx(addr), val, hx(fa), "", "", "NO_FUNC"])
                else:
                    w.writerow([hx(addr), val, hx(fa),
                                hx(fn.getEntryPoint()),
                                fn.getBody().getNumAddresses(),
                                fn.getName()])
    print("[userclients] wrote %s (first %d strings)" % (OUT_FUNCS, STEP2_LIMIT))


try:
    run()
finally:
    if _project is not None:
        _project.close()
