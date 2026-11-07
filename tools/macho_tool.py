#!/usr/bin/env python3
"""
macho_tool.py — minimal Mach-O (arm64e) kernelcache analysis toolkit.

Functions:
  - parse segments (LC_SEGMENT_64)
  - file offset <-> vmaddr translation
  - AArch64 decoder (PAC/auth bits ignored — only encoding bits matter)
  - bounded linear disassembly
No external deps (stdlib only).
"""
import struct, sys

REGS = ['x0','x1','x2','x3','x4','x5','x6','x7','x8','x9','x10','x11','x12','x13','x14','x15',
        'x16','x17','x18','x19','x20','x21','x22','x23','x24','x25','x26','x27','x28','x29','x30','sp']
WREGS = ['w0','w1','w2','w3','w4','w5','w6','w7','w8','w9','w10','w11','w12','w13','w14','w15',
         'w16','w17','w18','w19','w20','w21','w22','w23','w24','w25','w26','w27','w28','w29','w30','wsp']

def sign_ext(v, bits):
    v &= (1 << bits) - 1
    if v & (1 << (bits-1)):
        v -= (1 << bits)
    return v

def load_segments(path, header_limit=0x8000):
    with open(path, 'rb') as f:
        data = f.read(header_limit)
    magic = struct.unpack_from('<I', data, 0)[0]
    if magic != 0xfeedfacf:
        raise RuntimeError('not MH_MAGIC_64')
    ncmds = struct.unpack_from('<I', data, 16)[0]
    off = 32
    segs = []
    for _ in range(ncmds):
        cmd, cmdsize = struct.unpack_from('<II', data, off)
        if cmd == 0x19:
            segname = data[off+8:off+24].split(b'\0')[0].decode()
            vmaddr, vmsize, fileoff, filesize = struct.unpack_from('<QQQQ', data, off+24)
            segs.append((segname, vmaddr, vmsize, fileoff, filesize))
        off += cmdsize
    return segs

def seg_for_vmaddr(segs, va):
    for (name, vm, vs, fo, fs) in segs:
        if vm <= va < vm + vs:
            return (name, vm, vs, fo, fs)
    return None

def va_to_off(segs, va):
    s = seg_for_vmaddr(segs, va)
    return None if not s else s[3] + (va - s[1])

def off_to_va(segs, off):
    for (name, vm, vs, fo, fs) in segs:
        if fo <= off < fo + fs:
            return vm + (off - fo)
    return None

def logical_imm(Nims, sf, size):
    """Decode AArch64 logical immediate N:immr:imms -> mask value (best-effort)."""
    N = (Nims >> 12) & 1
    immr = (Nims >> 6) & 0x3F
    imms = Nims & 0x3F
    if N == 1:
        length = 64
    else:
        length = 32
        for i in range(5, -1, -1):
            if imms & (1 << i):
                length = 1 << (i + 1)
                break
    s = imms & ((length >> 1) - 1) if length > 1 else 0
    m = (1 << (s + 1)) - 1
    if length == 64:
        # replicate element mask across 64 bits
        if s < 6:
            elem = m
            return (elem * 0x0101010101010101) & 0xFFFFFFFFFFFFFFFF if False else m
        return m & 0xFFFFFFFFFFFFFFFF
    return m & 0xFFFFFFFF

def decode(insn, va):
    # PAC instructions (arm64e)
    if (insn & 0xFFFFFC00) == 0xDAC10000:  # pacia/pacib/paciza/pacizb
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        opts = ['pacia','pacib','paciza','pacizb']
        kind = (insn >> 8) & 0x3
        return (opts[kind], f'{REGS[rd]}, {REGS[rn]}')
    if (insn & 0xFFFFFC00) == 0xDAC11000:  # autia/autib/autiza/autizb
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        opts = ['autia','autib','autiza','autizb']
        kind = (insn >> 8) & 0x3
        return (opts[kind], f'{REGS[rd]}, {REGS[rn]}')
    if (insn & 0xFFFFFC00) == 0xDAC12000:  # pacda/pacdb
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        return ('pacda' if ((insn >> 8) & 0x1) == 0 else 'pacdb', f'{REGS[rd]}, {REGS[rn]}')
    if (insn & 0xFFFFFC00) == 0xDAC13000:  # autda/autdb
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        return ('autda' if ((insn >> 8) & 0x1) == 0 else 'autdb', f'{REGS[rd]}, {REGS[rn]}')
    if (insn & 0xFFFFF800) == 0xDAC10800:  # pacga
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F; rm = (insn >> 16) & 0x1F
        rm2 = (insn >> 10) & 0x1F
        return ('pacga', f'{REGS[rd]}, {REGS[rn]}, {REGS[rm2]}')
    if (insn & 0xFFFFFC1F) == 0xD71F0800:  # braa/braab
        rn = (insn >> 5) & 0x1F; rm = (insn >> 10) & 0x1F
        return ('braa', f'{REGS[rn]}, {REGS[rm]}')
    if (insn & 0xFFFFFC1F) == 0xD71F0C00:  # brab
        rn = (insn >> 5) & 0x1F; rm = (insn >> 10) & 0x1F
        return ('brab', f'{REGS[rn]}, {REGS[rm]}')
    if (insn & 0xFFFFFC1F) == 0xD73F0800:  # blraa
        rn = (insn >> 5) & 0x1F; rm = (insn >> 10) & 0x1F
        return ('blraa', f'{REGS[rn]}, {REGS[rm]}')
    if (insn & 0xFFFFFC1F) == 0xD73F0C00:  # blrab
        rn = (insn >> 5) & 0x1F; rm = (insn >> 10) & 0x1F
        return ('blrab', f'{REGS[rn]}, {REGS[rm]}')
    if (insn & 0xFFFFFC1F) == 0xD61F081F:  # retaa
        return ('retaa', '')
    if insn == 0xDAC147F6:
        return ('xpaclri', '')
    # ADRP
    if (insn & 0x9F000000) == 0x90000000:
        rd = insn & 0x1F
        imm = sign_ext(((insn >> 5) & 0x7FFFF) << 2 | ((insn >> 29) & 0x3), 21) << 12
        return ('adrp', f'{REGS[rd]}, 0x{(va & ~0xFFF) + imm:#x}')
    # ADD x (imm)
    if (insn & 0xFF000000) == 0x91000000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        imm = ((insn >> 10) & 0xFFF) << (((insn >> 22) & 0x3) * 12)
        return ('add', f'{REGS[rd]}, {REGS[rn]}, #0x{imm:x}')
    # ADD w (imm)
    if (insn & 0xFF000000) == 0x11000000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        imm = ((insn >> 10) & 0xFFF) << (((insn >> 22) & 0x3) * 12)
        return ('add', f'{WREGS[rd]}, {WREGS[rn]}, #0x{imm:x}')
    # ADD x (shifted reg)
    if (insn & 0xFF200000) == 0x8B000000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F; rm = (insn >> 16) & 0x1F
        return ('add', f'{REGS[rd]}, {REGS[rn]}, {REGS[rm]}')
    # MOVZ x / MOVK x
    if (insn & 0x7F800000) == 0x52800000:
        rd = insn & 0x1F
        return ('movz', f'{REGS[rd]}, #0x{((insn >> 5) & 0xFFFF) << (((insn >> 21) & 0x3) * 16):x}')
    if (insn & 0x7F800000) == 0x72800000:
        rd = insn & 0x1F
        return ('movk', f'{REGS[rd]}, #0x{((insn >> 5) & 0xFFFF) << (((insn >> 21) & 0x3) * 16):x}')
    # B / BL (bit31 distinguishes; B=0x14000000, BL=0x94000000)
    if (insn & 0x7C000000) == 0x14000000:
        if insn & 0x80000000:
            return ('bl', f'0x{va + (sign_ext(insn & 0x3FFFFFF, 26) << 2):#x}')
        return ('b', f'0x{va + (sign_ext(insn & 0x3FFFFFF, 26) << 2):#x}')
    # B.cond (conditional branch)
    if (insn & 0xFF000010) == 0x54000000:
        cond = insn & 0xF
        conds = ['eq','ne','cs','cc','mi','pl','vs','vc','hi','ls','ge','lt','gt','le','al','nv']
        return ('b.%s' % conds[cond], f'0x{va + (sign_ext((insn >> 5) & 0x7FFFF, 19) << 2):#x}')
    # CBZ x / CBNZ x (sf=1)
    if (insn & 0xFF000000) == 0xB4000000:
        rt = insn & 0x1F
        return ('cbz', f'{REGS[rt]}, 0x{va + (sign_ext((insn >> 5) & 0x7FFFF, 19) << 2):#x}')
    if (insn & 0xFF000000) == 0xB5000000:
        rt = insn & 0x1F
        return ('cbnz', f'{REGS[rt]}, 0x{va + (sign_ext((insn >> 5) & 0x7FFFF, 19) << 2):#x}')
    # CBZ w / CBNZ w (sf=0)
    if (insn & 0x7F000000) == 0x34000000:
        rt = insn & 0x1F
        return ('cbz', f'{WREGS[rt]}, 0x{va + (sign_ext((insn >> 5) & 0x7FFFF, 19) << 2):#x}')
    if (insn & 0x7F000000) == 0x35000000:
        rt = insn & 0x1F
        return ('cbnz', f'{WREGS[rt]}, 0x{va + (sign_ext((insn >> 5) & 0x7FFFF, 19) << 2):#x}')
    # TBZ / TBNZ
    if (insn & 0x7F000000) == 0x36000000:
        rt = insn & 0x1F
        bit = (((insn >> 31) & 1) << 5) | ((insn >> 19) & 0x1F)
        return ('tbz', f'{REGS[rt]}, #{bit}, 0x{va + (sign_ext((insn >> 5) & 0x3FFF, 14) << 2):#x}')
    if (insn & 0x7F000000) == 0x37000000:
        rt = insn & 0x1F
        bit = (((insn >> 31) & 1) << 5) | ((insn >> 19) & 0x1F)
        return ('tbnz', f'{REGS[rt]}, #{bit}, 0x{va + (sign_ext((insn >> 5) & 0x3FFF, 14) << 2):#x}')
    # CMP x / CMP w (subs,imm)
    if (insn & 0xFF000000) == 0xF1000000:
        rn = (insn >> 5) & 0x1F
        imm = ((insn >> 10) & 0xFFF) << (((insn >> 22) & 0x1) * 12)
        return ('cmp', f'{REGS[rn]}, #0x{imm:x}')
    if (insn & 0xFF000000) == 0x71000000:
        rn = (insn >> 5) & 0x1F
        imm = ((insn >> 10) & 0xFFF) << (((insn >> 22) & 0x1) * 12)
        return ('cmp', f'{WREGS[rn]}, #0x{imm:x}')
    # TST x / TST w (ands,imm)
    if (insn & 0xFF800000) == 0xF2000000:
        rn = (insn >> 5) & 0x1F
        return ('tst', f'{REGS[rn]}, #{logical_imm((insn >> 10) & 0x1FFF, (insn >> 22) & 0x1, 64):#x}')
    if (insn & 0xFF800000) == 0x72000000:
        rn = (insn >> 5) & 0x1F
        return ('tst', f'{WREGS[rn]}, #{logical_imm((insn >> 10) & 0x1FFF, (insn >> 22) & 0x1, 32):#x}')
    # RET / BR / BLR
    if insn == 0xD65F03C0:
        return ('ret', '')
    if (insn & 0xFFFFFC1F) == 0xD65F0000:
        return ('ret', REGS[(insn >> 5) & 0x1F])
    if (insn & 0xFFFFFC1F) == 0xD61F0000:
        return ('br', REGS[(insn >> 5) & 0x1F])
    if (insn & 0xFFFFFC1F) == 0xD63F0000:
        return ('blr', REGS[(insn >> 5) & 0x1F])
    # RETAA / RETAB (PAC)
    if insn == 0xD65F0BFF:
        return ('retaa', '')
    # STP x (pre-index)
    if (insn & 0xFFC00000) == 0xA9800000:
        rt = insn & 0x1F; rn = (insn >> 5) & 0x1F; rt2 = (insn >> 10) & 0x1F
        imm = sign_ext((insn >> 15) & 0x7F, 7) << 3
        return ('stp', f'{REGS[rt]}, {REGS[rt2]}, [{REGS[rn]}, #0x{imm:#x}]!')
    # STP x (offset)
    if (insn & 0xFFC00000) == 0xA9000000:
        rt = insn & 0x1F; rn = (insn >> 5) & 0x1F; rt2 = (insn >> 10) & 0x1F
        imm = sign_ext((insn >> 15) & 0x7F, 7) << 3
        return ('stp', f'{REGS[rt]}, {REGS[rt2]}, [{REGS[rn]}, #0x{imm:#x}]')
    # LDP x (offset)
    if (insn & 0xFFC00000) == 0xA9400000:
        rt = insn & 0x1F; rn = (insn >> 5) & 0x1F; rt2 = (insn >> 10) & 0x1F
        imm = sign_ext((insn >> 15) & 0x7F, 7) << 3
        return ('ldp', f'{REGS[rt]}, {REGS[rt2]}, [{REGS[rn]}, #0x{imm:#x}]')
    # LDP x (post-index)
    if (insn & 0xFFC00000) == 0xA8C00000:
        rt = insn & 0x1F; rn = (insn >> 5) & 0x1F; rt2 = (insn >> 10) & 0x1F
        imm = sign_ext((insn >> 15) & 0x7F, 7) << 3
        return ('ldp', f'{REGS[rt]}, {REGS[rt2]}, [{REGS[rn]}], #0x{imm:#x}')
    # STR x (imm)
    if (insn & 0xFFC00000) == 0xF9000000:
        rt = insn & 0x1F; rn = (insn >> 5) & 0x1F
        return ('str', f'{REGS[rt]}, [{REGS[rn]}, #0x{((insn >> 10) & 0xFFF) << 3:x}]')
    # STR w (imm)
    if (insn & 0xFFC00000) == 0xB9000000:
        rt = insn & 0x1F; rn = (insn >> 5) & 0x1F
        return ('str', f'{WREGS[rt]}, [{REGS[rn]}, #0x{((insn >> 10) & 0xFFF) << 2:x}]')
    # STRB w (imm)
    if (insn & 0xFFC00000) == 0x39000000:
        rt = insn & 0x1F; rn = (insn >> 5) & 0x1F
        return ('strb', f'{WREGS[rt]}, [{REGS[rn]}, #0x{(insn >> 10) & 0xFFF:x}]')
    # LDR x (imm)
    if (insn & 0xFFC00000) == 0xF9400000:
        rt = insn & 0x1F; rn = (insn >> 5) & 0x1F
        return ('ldr', f'{REGS[rt]}, [{REGS[rn]}, #0x{((insn >> 10) & 0xFFF) << 3:x}]')
    # LDR w (imm)
    if (insn & 0xFFC00000) == 0xB9400000:
        rt = insn & 0x1F; rn = (insn >> 5) & 0x1F
        return ('ldr', f'{WREGS[rt]}, [{REGS[rn]}, #0x{((insn >> 10) & 0xFFF) << 2:x}]')
    # LDR x (literal)
    if (insn & 0xFF000000) == 0x58000000:
        rt = insn & 0x1F
        return ('ldr', f'{REGS[rt]}, [0x{va + (sign_ext((insn >> 5) & 0x7FFFF, 19) << 2):#x}]')
    # LDRB w (imm)
    if (insn & 0xFFC00000) == 0x39400000:
        rt = insn & 0x1F; rn = (insn >> 5) & 0x1F
        return ('ldrb', f'{WREGS[rt]}, [{REGS[rn]}, #0x{(insn >> 10) & 0xFFF:x}]')
    # MOV x,x (orr rm=31)
    if (insn & 0xFFE0FC00) == 0xAA000000 and ((insn >> 16) & 0x1F) == 31:
        return ('mov', f'{REGS[insn & 0x1F]}, {REGS[(insn >> 5) & 0x1F]}')
    # MOV w,w
    if (insn & 0xFFE0FC00) == 0x2A000000 and ((insn >> 16) & 0x1F) == 31:
        return ('mov', f'{WREGS[insn & 0x1F]}, {WREGS[(insn >> 5) & 0x1F]}')
    # AND x (shifted reg)
    if (insn & 0xFF000000) == 0x8A000000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F; rm = (insn >> 16) & 0x1F
        return ('and', f'{REGS[rd]}, {REGS[rn]}, {REGS[rm]}')
    # AND w
    if (insn & 0xFF000000) == 0x0A000000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F; rm = (insn >> 16) & 0x1F
        return ('and', f'{WREGS[rd]}, {WREGS[rn]}, {WREGS[rm]}')
    # AND x (imm)
    if (insn & 0xFF800000) == 0x92400000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        return ('and', f'{REGS[rd]}, {REGS[rn]}, #{logical_imm((insn >> 10) & 0x1FFF, (insn >> 22) & 0x1, 64):#x}')
    # AND w (imm)
    if (insn & 0xFF800000) == 0x12400000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        return ('and', f'{WREGS[rd]}, {WREGS[rn]}, #{logical_imm((insn >> 10) & 0x1FFF, (insn >> 22) & 0x1, 32):#x}')
    # ORR x (shifted reg)
    if (insn & 0xFF000000) == 0xAA000000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F; rm = (insn >> 16) & 0x1F
        return ('orr', f'{REGS[rd]}, {REGS[rn]}, {REGS[rm]}')
    # ORR w (shifted reg)
    if (insn & 0xFF000000) == 0x2A000000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F; rm = (insn >> 16) & 0x1F
        return ('orr', f'{WREGS[rd]}, {WREGS[rn]}, {WREGS[rm]}')
    # ORR x (imm)
    if (insn & 0xFF000000) == 0xB2000000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        m = logical_imm((insn >> 10) & 0x1FFF, (insn >> 22) & 0x1, 64)
        if rn == 31:
            return ('mov', f'{REGS[rd]}, #0x{m:x}')
        return ('orr', f'{REGS[rd]}, {REGS[rn]}, #0x{m:x}')
    # ORR w (imm)
    if (insn & 0xFF000000) == 0x32000000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        m = logical_imm((insn >> 10) & 0x1FFF, (insn >> 22) & 0x1, 32)
        if rn == 31:
            return ('mov', f'{WREGS[rd]}, #0x{m:x}')
        return ('orr', f'{WREGS[rd]}, {WREGS[rn]}, #0x{m:x}')
    # LSL x imm
    if (insn & 0xFFC00000) == 0xD3400000 and ((insn >> 22) & 1) == 0 and ((insn >> 22) & 1) == 0:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        sh = 64 - ((insn >> 16) & 0x3F)
        if sh != 64:
            return ('lsl', f'{REGS[rd]}, {REGS[rn]}, #{sh}')
    # LSR x imm
    if (insn & 0xFFC00000) == 0xD3400000 and ((insn >> 22) & 1) == 0:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        sh = (insn >> 16) & 0x3F
        return ('lsr', f'{REGS[rd]}, {REGS[rn]}, #{sh}')
    # UBFX x
    if (insn & 0xFFC00000) == 0xD3400000 and ((insn >> 22) & 1) == 0 and ((insn & 0x00C00000) == 0x00C00000):
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        immr = (insn >> 16) & 0x3F; imms = (insn >> 10) & 0x3F
        return ('ubfx', f'{REGS[rd]}, {REGS[rn]}, #{immr}, #{imms - immr + 1}')
    # UBFX w
    if (insn & 0x7FC00000) == 0x53000000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        immr = (insn >> 16) & 0x1F; imms = (insn >> 10) & 0x1F
        return ('ubfx', f'{WREGS[rd]}, {WREGS[rn]}, #{immr}, #{imms - immr + 1}')
    # SUB x imm
    if (insn & 0xFF000000) == 0xD1000000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        imm = ((insn >> 10) & 0xFFF) << (((insn >> 22) & 0x1) * 12)
        return ('sub', f'{REGS[rd]}, {REGS[rn]}, #0x{imm:x}')
    # SUB w imm
    if (insn & 0xFF000000) == 0x51000000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        imm = ((insn >> 10) & 0xFFF) << (((insn >> 22) & 0x1) * 12)
        return ('sub', f'{WREGS[rd]}, {WREGS[rn]}, #0x{imm:x}')
    # ADDS x
    if (insn & 0xFF000000) == 0xB1000000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F
        imm = ((insn >> 10) & 0xFFF) << (((insn >> 22) & 0x1) * 12)
# SXTB
    if (insn & 0xFFFFFC00) == 0x13001C00:
        return ('sxtb', f'{WREGS[insn & 0x1F]}, {WREGS[(insn >> 5) & 0x1F]}')
    # SXTH
    if (insn & 0xFFFFFC00) == 0x93401C00:
        return ('sxth', f'{REGS[insn & 0x1F]}, {WREGS[(insn >> 5) & 0x1F]}')
    # SXTW
    if (insn & 0xFFFFFC00) == 0x93407C00:
        return ('sxtw', f'{REGS[insn & 0x1F]}, {WREGS[(insn >> 5) & 0x1F]}')
    # MADD
    if (insn & 0xFFE08000) == 0x9B000000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F; rm = (insn >> 16) & 0x1F; ra = (insn >> 10) & 0x1F
        return ('madd', f'{REGS[rd]}, {REGS[rn]}, {REGS[rm]}, {REGS[ra]}')
    # CSEL x
    if (insn & 0x7FE0FC00) == 0x9A800000:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F; rm = (insn >> 16) & 0x1F
        cond = (insn >> 12) & 0xF
        conds = ['eq','ne','cs','cc','mi','pl','vs','vc','hi','ls','ge','lt','gt','le','al','nv']
        return ('csel', f'{REGS[rd]}, {REGS[rn]}, {REGS[rm]}, {conds[cond]}')
    # CSET (csinc x, xzr, xzr, cond) -> for EINVAL paths
    if (insn & 0x7FE0FC00) == 0x9A9F0000:
        pass
    # CSINC x (used for error code selection)
    if (insn & 0x7FE0FC00) == 0x9A800400:
        rd = insn & 0x1F; rn = (insn >> 5) & 0x1F; rm = (insn >> 16) & 0x1F
        cond = (insn >> 12) & 0xF
        conds = ['eq','ne','cs','cc','mi','pl','vs','vc','hi','ls','ge','lt','gt','le','al','nv']
        return ('csinc', f'{REGS[rd]}, {REGS[rn]}, {REGS[rm]}, {conds[cond]}')
    # NOP
    if insn == 0xD503201F:
        return ('nop', '')
    # HINT (PAC hint instrs)
    if (insn & 0xFFFFF01F) == 0xD503201F:
        return ('hint', f'#{insn & 0x7F}')
    # NEG x
    if (insn & 0xFFE0FC00) == 0xCB00FC00:
        rd = insn & 0x1F; rm = (insn >> 16) & 0x1F
        return ('neg', f'{REGS[rd]}, {REGS[rm]}')
    return None

def linear_disasm(data, segs, start_va, count):
    out = []
    va = start_va
    for _ in range(count):
        off = va_to_off(segs, va)
        if off is None or off + 4 > len(data):
            break
        insn = struct.unpack_from('<I', data, off)[0]
        r = decode(insn, va)
        out.append((va, insn, r[0] if r else '?', r[1] if r else ''))
        va += 4
    return out

def find_xrefs_to_string(data, segs, str_va):
    """Scan text segments for adrp+add pairs targeting str_va. Returns list of (insn_va, rd)."""
    res = []
    text_segs = [(n, v, vs, fo, fs) for (n, v, vs, fo, fs) in segs if 'TEXT' in n.upper()]
    page = str_va & ~0xFFF
    lo12 = str_va & 0xFFF
    for (n, v, vs, fo, fs) in text_segs:
        end = min(len(data), fo + fs)
        off = fo
        while off + 8 <= end:
            a = struct.unpack_from('<I', data, off)[0]
            if (a & 0x9F000000) == 0x90000000:
                rd = a & 0x1F
                imm = sign_ext(((a >> 5) & 0x7FFFF) << 2 | ((a >> 29) & 0x3), 21) << 12
                va = v + (off - fo)
                if (va & ~0xFFF) + imm == page:
                    b = struct.unpack_from('<I', data, off + 4)[0]
                    if (b & 0xFF000000) == 0x91000000:
                        brd = b & 0x1F
                        brn = (b >> 5) & 0x1F
                        bimm = ((b >> 10) & 0xFFF) << (((b >> 22) & 0x3) * 12)
                        if brn == rd and bimm == lo12:
                            res.append((va, rd))
            off += 4
    return res

if __name__ == '__main__':
    print('macho_tool loaded OK')