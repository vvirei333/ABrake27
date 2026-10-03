#!/usr/bin/env python3
# ghidra_find_external_methods.py
#
# Narrow the "virtual IOReturn ..." IOUserClient prototype strings down to the
# syscall-reachable entry points, resolve the reader function for each, and
# group by class name.
#
# Note: this is a modern *merged* kernelcache (iOS 17+), so there are no
# __PRELINK_* segments -- prelinked kext code/strings live in the standard
# __TEXT segment. The relevant strings sit in the __cstring section.
#
# Run headless via the project's PyGhidra venv (this Ghidra build has no Jython):
#   GHIDRA_INSTALL_DIR=/opt/ghidra \
#   ghidra_venv/bin/python tools/ghidra_find_external_methods.py [project_name]

import csv
import sys

PROJECT_PATH = "/home/ivan/projects/iphone-lockdownd-fuzzer/ghidra_proj"
PROGRAM_NAME = "kernelcache.release.iPhone14,5"
PREFIX = "virtual IOReturn"
STRING_SECTIONS = ("__cstring", "__ustring", "__os_log", "__const", "__TEXT")
# The five markers that denote syscall-reachable user-client entry points.
MARKERS = (
    "::externalMethod",
    "::clientClose",
    "::clientMemoryForType",
    "::initWithTask",
    "::start",
)
OUT_CSV = "/tmp/external_methods.csv"

_project = None
try:
    program = currentProgram  # noqa: F821
except NameError:
    import pyghidra
    pyghidra.start()
    from ghidra.base.project import GhidraProject
    pname = sys.argv[1] if len(sys.argv) > 1 else "amfi_stable"
    _project = GhidraProject.openProject(PROJECT_PATH, pname, True)
    program = _project.openProgram("/", PROGRAM_NAME, True)

from ghidra.program.model.data import StringDataInstance


def hx(addr):
    return "0x%x" % (addr.getOffset() & 0xFFFFFFFFFFFFFFFF)


def seg_ok(block):
    if block is None:
        return False
    name = block.getName()
    return name in STRING_SECTIONS or "PRELINK" in name


def split_class_method(val):
    # val: "virtual IOReturn Class::method(args...)"  (possibly Namespace::Class::method)
    parts = val.split(None, 2)          # ["virtual", "IOReturn", "Class::method(...)"]
    if len(parts) < 3 or "::" not in parts[2]:
        return ("", parts[2] if len(parts) > 2 else val)
    sig = parts[2]
    cls, method = sig.split("::", 1)    # class = up to FIRST "::"
    return (cls, method)


def scan_strings():
    mem = program.getMemory()
    listing = program.getListing()
    hits = []
    it = listing.getDefinedData(True)
    while it.hasNext():
        d = it.next()
        if not seg_ok(mem.getBlock(d.getAddress())):
            continue
        if not StringDataInstance.isString(d):
            continue
        v = StringDataInstance.getStringDataInstance(d).getStringValue()
        if v and v.startswith(PREFIX):
            hits.append((d.getAddress(), v))
    hits.sort(key=lambda t: t[0].getOffset() & 0xFFFFFFFFFFFFFFFF)
    return hits


def run():
    refmgr = program.getReferenceManager()
    fm = program.getFunctionManager()

    all_hits = scan_strings()
    print("[extmethods] total 'virtual IOReturn' strings: %d" % len(all_hits))

    # per-marker string counts
    per_marker = {m: 0 for m in MARKERS}
    filtered = []  # (addr, val) matching any marker
    for addr, val in all_hits:
        matched = False
        for m in MARKERS:
            if m in val:
                per_marker[m] += 1
                matched = True
        if matched:
            filtered.append((addr, val))

    print("\n[extmethods] per-filter string counts:")
    for m in MARKERS:
        print("   %-24s %d" % (m, per_marker[m]))
    print("   %-24s %d (union, deduped)" % ("TOTAL matched strings", len(filtered)))

    rows = []
    for addr, val in filtered:
        cls, method = split_class_method(val)
        refs = list(refmgr.getReferencesTo(addr))
        if not refs:
            rows.append([cls, method, hx(addr), "", "", "", "NO_XREF"])
            continue
        for ref in refs:
            fa = ref.getFromAddress()
            fn = fm.getFunctionContaining(fa)   # entry may be above the xref
            if fn is None:
                rows.append([cls, method, hx(addr), hx(fa), "", "", "NO_FUNC"])
            else:
                rows.append([cls, method, hx(addr), hx(fa),
                             hx(fn.getEntryPoint()),
                             fn.getBody().getNumAddresses(),
                             fn.getName()])

    with open(OUT_CSV, "w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["class_name", "method_name", "string_addr",
                    "xref_addr", "func_entry", "func_size", "func_name"])
        for r in rows:
            w.writerow(r)
    print("\n[extmethods] wrote %s (%d rows)" % (OUT_CSV, len(rows)))

    classes = sorted({r[0] for r in rows if r[0]})
    classes_resolved = sorted({r[0] for r in rows if r[0] and r[4]})
    print("\n[extmethods] unique classes (all filtered strings): %d" % len(classes))
    print("[extmethods] unique classes with a resolved reader func: %d"
          % len(classes_resolved))
    print("\n[extmethods] UNIQUE CLASS LIST:")
    for c in classes:
        print("   " + c)


try:
    run()
finally:
    if _project is not None:
        _project.close()
