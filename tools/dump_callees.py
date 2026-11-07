#!/usr/bin/env python3
"""
dump_callees.py — linear-dump the callees of vm_map_get_upl from the iOS 27.0.1
kernelcache (Mach-O arm64e) using tools/macho_tool.py.

Usage:
    python3 tools/dump_callees.py > /tmp/vm_callees.asm 2>&1

Targets (stable, 24A446__iPhone14,5):
    callee1 = 0xfffffff00a2ff4bc  (suspected vm_object_upl_request)
    callee2 = 0xfffffff00a40e150  (unidentified)

Set KC=/path/to/kernelcache in the environment to dump a different build.
"""
import os
import struct
import sys

# import the toolkit from the same directory (works regardless of CWD)
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import macho_tool as mt  # noqa: E402  (load_segments, va_to_off, decode)

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
STABLE = os.path.join(
    ROOT, "kernelcaches", "stable", "24A446__iPhone14,5", "kernelcache.release.iPhone14,5"
)
KC = os.environ.get("KC", STABLE)

# (name, VA, size-in-bytes)
TARGETS = [
    ("callee1", 0xFFFFFFF00A2FF4BC, 0x800),
    ("callee2", 0xFFFFFFF00A40E150, 0x600),
]


def dump(data, segs, name, va, size):
    print("=" * 78)
    print("### %s  @ %#x  (size %#x)" % (name, va, size))
    print("=" * 78)
    off = mt.va_to_off(segs, va)
    if off is None:
        print("!! VA %#x is not mapped to a segment in this kernelcache" % va)
        print()
        return
    print("# file offset: %#x" % off)
    n = size // 4
    end = min(len(data), off + size)
    a = va
    pos = off
    while pos + 4 <= end:
        insn = struct.unpack_from("<I", data, pos)[0]
        r = mt.decode(insn, a)
        if r:
            mnem, ops = r[0], r[1]
        else:
            mnem, ops = "?", ""
        print("  %#018x:  %08x  %s %s" % (a, insn, mnem, ops))
        a += 4
        pos += 4
    print()


def main():
    with open(KC, "rb") as f:
        data = f.read()
    segs = mt.load_segments(KC)
    print("# kernelcache: %s" % KC)
    print("# file size:   %d bytes" % len(data))
    print("# segments:")
    for (nm, vm, vs, fo, fs) in segs:
        print("#   %-16s vm=%#x size=%#x fileoff=%#x" % (nm, vm, vs, fo))
    print()
    for (name, va, size) in TARGETS:
        dump(data, segs, name, va, size)


if __name__ == "__main__":
    main()
