#!/usr/bin/env python3
"""Hexdump the LC_CODE_SIGNATURE region of a Mach-O to inspect byte order."""
import struct
import sys

path = sys.argv[1]
data = open(path, "rb").read()
ncmds = struct.unpack_from("<I", data, 16)[0]
off = 32
sig = None
for _ in range(ncmds):
    cmd, cmdsize = struct.unpack_from("<II", data, off)
    if cmd == 0x1D:
        sig = struct.unpack_from("<II", data, off + 8)
    off += cmdsize
print("LC_CODE_SIGNATURE (dataoff,datasize) =", sig)
so, ss = sig
region = data[so:so + ss]
print(f"file size={len(data)} sig region {so}..{so+ss} ({ss} bytes)")
print("first 96 bytes:")
for i in range(0, 96, 16):
    chunk = region[i:i + 16]
    hx = " ".join(f"{b:02x}" for b in chunk)
    print(f"  +{i:04x}: {hx}")
print("last 32 bytes:")
for i in range(max(0, ss - 32), ss, 16):
    chunk = region[i:i + 16]
    hx = " ".join(f"{b:02x}" for b in chunk)
    print(f"  +{i:04x}: {hx}")
# Try both interpretations of the superblob magic
be = struct.unpack_from(">I", region, 0)[0]
le = struct.unpack_from("<I", region, 0)[0]
print(f"superblob magic as BE=0x{be:08x}  as LE=0x{le:08x}")
print(f"superblob len BE={struct.unpack_from('>I', region, 4)[0]} LE={struct.unpack_from('<I', region, 4)[0]}")
print(f"superblob count BE={struct.unpack_from('>I', region, 8)[0]} LE={struct.unpack_from('<I', region, 8)[0]}")