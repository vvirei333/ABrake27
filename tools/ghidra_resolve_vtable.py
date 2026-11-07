#!/usr/bin/env python3
# ghidra_resolve_vtable.py
#
# Resolve IOUserClient::externalMethod entry points + dispatch tables for classes
# whose "virtual IOReturn ...::externalMethod" prototype string has NO code xref
# (so they can't be found via strings). Works from the dispatch mechanism instead.
#
# Two dispatch shapes are present in this kernelcache:
#   (A) inline dispatch: externalMethod does  `if (sel < N) { e=&TABLE[sel*0x18];
#       ... call through dispatcher_vtable[+0x550] }`   (e.g. AMFI, DIDeviceCreator)
#   (B) helper dispatch: externalMethod tail-calls the shared dispatchExternalMethod
#       helper (FUN_fffffff00a98c774) passing (&TABLE, count)  (e.g. AppleSmartIO)
#
# For each externalMethod entry we decompile and extract (table_va, selector_count).
#
# IMPORTANT findings baked into this tool:
#  * Dispatch-record STRIDE is NOT universal -- it is auto-detected per table:
#       0x18 = IOExternalMethodDispatch  (ptr + 4xu32, compact)        -> AMFI, DI
#       0x28 = IOExternalMethodDispatch2 (ptr + 4xu32 + 16 reserved)   -> SmartIO
#    detect_stride() picks it by testing which stride lands the *next* entry's
#    first qword on a real text pointer. Never blanket-assume 0x18 or 0x28.
#  * Ghidra's loader already resolves chained fixups, so getLong() returns the
#    FINAL VA. Do NOT use "base + (raw & 0xffffffff)" (double counts). For arm64e
#    PAC-signed slots, pac_strip() just normalises the high bits.
#
# Run headless via the project's PyGhidra venv:
#   GHIDRA_INSTALL_DIR=/opt/ghidra \
#   ghidra_venv/bin/python tools/ghidra_resolve_vtable.py [project_name]
#
# NOTE: AppleSEPUserClient (40+ methods) uses an arm64e PAC-signed dispatch table;
# PAC-strip reveals the entries but Ghidra merges several handlers, so its
# externalMethod entry is left UNRESOLVED -> finish via the Ghidra GUI adrp/add.

import csv
import re
import sys

PROJECT_PATH = "/home/ivan/projects/iphone-lockdownd-fuzzer/ghidra_proj"
PROGRAM_NAME = "kernelcache.release.iPhone14,5"
DISPATCH_HELPER = 0xfffffff00a98c774
OUT_CSV = "/tmp/external_methods_resolved.csv"

# externalMethod entry points discovered during analysis (string-xref or vtable/table).
# "entry" None => to be located; here we pass the verified entries.
TARGETS = [
    ("AppleMobileFileIntegrityUserClient", 0xfffffff008e8a6e8),
    ("AppleSmartIOUserClient",             0xfffffff00929ea6c),
    ("AppleSEPUserClient",                 None),   # PAC table, unresolved headless
]

import pyghidra
pyghidra.start()
from ghidra.base.project import GhidraProject
from ghidra.app.decompiler import DecompInterface
from ghidra.util.task import ConsoleTaskMonitor

pname = sys.argv[1] if len(sys.argv) > 1 else "amfi_stable"
project = GhidraProject.openProject(PROJECT_PATH, pname, True)
program = project.openProgram("/", PROGRAM_NAME, True)

def U(v): return v & 0xFFFFFFFFFFFFFFFF
space = program.getAddressFactory().getDefaultAddressSpace()
def A(off): return space.getAddress("%x" % off)

_mem = program.getMemory()
_fm = program.getFunctionManager()


def pac_strip(q):
    """Normalise an arm64e PAC-signed / fixup'd kernel pointer to its VA."""
    return 0xfffffff000000000 | (U(q) & 0xffffffff)


def _rq(off):
    try:
        return U(_mem.getLong(A(U(off))))
    except Exception:
        return None


def _is_text_ptr(va):
    return va is not None and (va >> 32) == 0xfffffff0 and \
        _fm.getFunctionContaining(A(va)) is not None


def detect_stride(table_va, probe=16):
    """Auto-detect the dispatch-record stride (0x18 or 0x28) for a table by
    scoring how many of the first `probe` slots land on a real text pointer at
    each stride. Handles NULL/unimplemented leading selectors. Ties -> 0x18."""
    best, best_hits = None, 0
    for stride in (0x18, 0x28):
        hits = sum(1 for i in range(probe)
                   if _is_text_ptr(pac_strip(_rq(table_va + i * stride))))
        if hits > best_hits:
            best, best_hits = stride, hits
    return best


def decode_table(table_va, count, stride=None):
    """Decode `count` IOExternalMethodDispatch[2] records. Returns list of dicts
    with target VA (pac-stripped) and the 4 u32 count fields."""
    if stride is None:
        stride = detect_stride(table_va) or 0x18
    out = []
    for i in range(count):
        b = table_va + i * stride
        raw = _rq(b)
        tgt = pac_strip(raw) if raw else 0

        def u32(o):
            try:
                return _mem.getInt(A(U(o))) & 0xFFFFFFFF
            except Exception:
                return None
        out.append({
            "idx": i, "stride": stride, "target": tgt,
            "null": (raw is None or (raw & 0xffffffff) == 0),
            "in_scalar": u32(b + 0x08), "in_struct": u32(b + 0x0c),
            "out_scalar": u32(b + 0x10), "out_struct": u32(b + 0x14),
        })
    return out

HEX = re.compile(r'fffffff0[0-9a-f]{6,}')
# inline form: the dispatch-table base is a &DAT_/&PTR_ symbol used as  base + index
INLINE = re.compile(r'&(?:PTR_FUN_|PTR_DAT_|PTR_|DAT_|FUN_)(fffffff0[0-9a-f]{6,})\s*\+')
INLINE_BOUND = re.compile(r'<\s*(0x[0-9a-f]+|\d+)')
HELPER = re.compile(r'(?:thunk_)?FUN_%x\s*\(([^;]*)\)' % U(DISPATCH_HELPER))


def resolve(entry):
    fm = program.getFunctionManager()
    fn = fm.getFunctionAt(A(entry)) or fm.getFunctionContaining(A(entry))
    dec = DecompInterface(); dec.openProgram(program)
    r = dec.decompileFunction(fn, 60, ConsoleTaskMonitor())
    c = r.getDecompiledFunction().getC() if r.decompileCompleted() else ""
    dec.dispose()
    table = count = None
    # helper form (B)
    m = HELPER.search(c)
    if m:
        args = [a.strip() for a in m.group(1).split(",")]
        if len(args) >= 5:
            hm = HEX.search(args[3])
            if hm:
                table = int(hm.group(0), 16)
            try:
                count = int(args[4], 0)
            except Exception:
                count = args[4]
    # inline form (A)
    if table is None:
        im = INLINE.search(c)
        if im:
            table = int(im.group(1), 16)
        bm = INLINE_BOUND.search(c)
        if bm:
            count = int(bm.group(1), 0)
    return U(fn.getEntryPoint().getOffset()), table, count, c


try:
    rows = []
    for cls, entry in TARGETS:
        if entry is None:
            rows.append([cls, "UNRESOLVED", "UNRESOLVED(PAC table)", ""])
            print("[resolve] %-34s UNRESOLVED (arm64e PAC dispatch table)" % cls)
            continue
        ep, table, count, c = resolve(entry)
        stride = detect_stride(table) if isinstance(table, int) else None
        rows.append([cls, "0x%x" % ep,
                     ("0x%x" % table) if isinstance(table, int) else (table or "?"),
                     count if count is not None else "?"])
        print("[resolve] %-34s entry=0x%x table=%s count=%s stride=%s" % (
            cls, ep, ("0x%x" % table) if isinstance(table, int) else table, count,
            ("0x%x" % stride) if stride else "?"))
        if isinstance(table, int) and isinstance(count, int):
            for e in decode_table(table, count, stride):
                fn = _fm.getFunctionContaining(A(e["target"])) if not e["null"] else None
                print("    [%2d] %-20s %-24s in(s=%s,st=%s) out(s=%s,st=%s)" % (
                    e["idx"], "NULL" if e["null"] else "0x%x" % e["target"],
                    fn.getName() if fn else "", e["in_scalar"],
                    hex(e["in_struct"]) if e["in_struct"] == 0xffffffff else e["in_struct"],
                    e["out_scalar"],
                    hex(e["out_struct"]) if e["out_struct"] == 0xffffffff else e["out_struct"]))

    with open(OUT_CSV, "w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["class_name", "ext_method_entry", "table_va", "selector_count"])
        for r in rows:
            w.writerow(r)
    print("[resolve] wrote %s" % OUT_CSV)
finally:
    project.close()
