#!/usr/bin/env python3
"""dump_vm_upl.py — disassemble vm_map_get_upl + upl_phys_page from kernelcache.

Uses tools/macho_tool.py's load_segments / va_to_off / decode.
"""
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from macho_tool import load_segments, va_to_off, decode

KC = sys.argv[1] if len(sys.argv) > 1 else \
    "kernelcaches/stable/24A446__iPhone14,5/kernelcache.release.iPhone14,5"

# (VA, размер в байтах)
TARGETS = {
    "vm_map_get_upl":       (0xfffffff00a3b10fc, 0x500),
    "upl_phys_page":        (0xfffffff00a71aeb4, 0x200),
    "cluster_write_contig": (0xfffffff00a3b4f00, 0x800),
    "cluster_read_contig":  (0xfffffff00a3bb554, 0x900),
}

segs = load_segments(KC)
print(f"; kernelcache: {KC}")
print(f"; segments: {len(segs)}")

with open(KC, "rb") as f:
    data = f.read()
print(f"; file size: {len(data):#x}")
print()

for name, (va_start, size) in TARGETS.items():
    print(f"; ============ {name} @ {hex(va_start)} size={hex(size)} ============")
    fo = va_to_off(segs, va_start)
    if fo is None:
        print(f"; ERROR: VA {hex(va_start)} not mapped to any file offset")
        print()
        continue

    va = va_start
    for i in range(size // 4):
        if fo + i * 4 + 4 > len(data):
            break
        insn = struct.unpack_from("<I", data, fo + i * 4)[0]
        try:
            dec = decode(insn, va)
        except Exception as e:
            dec = None
            err = e
        if dec is None:
            print(f"  {va:#018x}:  {insn:08x}    ???")
        elif isinstance(dec, tuple) and len(dec) == 2:
            mnem, ops = dec
            line = f"  {va:#018x}:  {insn:08x}    {mnem}"
            if ops:
                line += f"  {ops}"
            print(line.rstrip())
        else:
            print(f"  {va:#018x}:  {insn:08x}    {dec!r}")
        va += 4
    print()
