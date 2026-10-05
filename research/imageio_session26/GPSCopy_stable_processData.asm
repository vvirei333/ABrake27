   • parsing public symbols...
   • parsing private symbols...
   • parsing stub islands...  
   • parsing objc info...     
   • Saving symbol cache (21033589 symbols)...

__ZN7GPSCopy11processDataEv:
0x187b21c40:  7f 23 03 d5   pacibsp
0x187b21c44:  fc 6f ba a9   stp	x28, x27, [sp, #-0x60]!
0x187b21c48:  fa 67 01 a9   stp	x26, x25, [sp, #0x10]
0x187b21c4c:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x187b21c50:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x187b21c54:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x187b21c58:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x187b21c5c:  fd 43 01 91   add	fp, sp, #0x50
0x187b21c60:  08 10 40 f9   ldr	x8, [x0, #0x20]
0x187b21c64:  04 60 40 39   ldrb	w4, [x0, #0x18]
0x187b21c68:  09 01 40 79   ldrh	w9, [x8]
0x187b21c6c:  2a 09 c0 5a   rev	w10, w9
0x187b21c70:  4a 7d 10 53   lsr	w10, w10, #0x10
0x187b21c74:  9f 00 00 71   cmp	w4, #0
0x187b21c78:  29 11 8a 1a   csel	w9, w9, w10, ne
0x187b21c7c:  0a fb 9f 52   mov	w10, #0xffd8
0x187b21c80:  5f 21 29 6b   cmp	w10, w9, uxth
0x187b21c84:  c1 0c 00 54   b.ne	loc_187b21e1c ; ⤵ 0x198
0x187b21c88:  09 05 40 79   ldrh	w9, [x8, #0x2]
0x187b21c8c:  2a 09 c0 5a   rev	w10, w9
0x187b21c90:  4a 7d 10 53   lsr	w10, w10, #0x10
0x187b21c94:  9f 00 00 71   cmp	w4, #0
0x187b21c98:  29 11 8a 1a   csel	w9, w9, w10, ne
0x187b21c9c:  2a fc 9f 52   mov	w10, #0xffe1
0x187b21ca0:  5f 21 29 6b   cmp	w10, w9, uxth
0x187b21ca4:  c1 0b 00 54   b.ne	loc_187b21e1c ; ⤵ 0x178
0x187b21ca8:  f3 03 00 aa   mov	x19, x0
0x187b21cac:  09 09 40 79   ldrh	w9, [x8, #0x4]
0x187b21cb0:  2a 09 c0 5a   rev	w10, w9
0x187b21cb4:  4a 7d 10 53   lsr	w10, w10, #0x10
0x187b21cb8:  9f 00 00 71   cmp	w4, #0
0x187b21cbc:  36 11 8a 1a   csel	w22, w9, w10, ne
0x187b21cc0:  08 19 40 79   ldrh	w8, [x8, #0xc]
0x187b21cc4:  09 09 c0 5a   rev	w9, w8
0x187b21cc8:  29 7d 10 53   lsr	w9, w9, #0x10
0x187b21ccc:  08 11 89 1a   csel	w8, w8, w9, ne
0x187b21cd0:  08 3d 00 12   and	w8, w8, #0xffff
0x187b21cd4:  a9 a9 89 52   mov	w9, #0x4d4d
0x187b21cd8:  1f 01 09 6b   cmp	w8, w9
0x187b21cdc:  c0 00 00 54   b.eq	loc_187b21cf4 ; ⤵ 0x18
0x187b21ce0:  29 29 89 52   mov	w9, #0x4949
0x187b21ce4:  1f 01 09 6b   cmp	w8, w9
0x187b21ce8:  a1 09 00 54   b.ne	loc_187b21e1c ; ⤵ 0x134
0x187b21cec:  24 00 80 52   mov	w4, #0x1
0x187b21cf0:  64 62 00 39   strb	w4, [x19, #0x18]
0x187b21cf4:  ; loc_187b21cf4
0x187b21cf4:  60 0a 40 f9   ldr	x0, [x19, #0x10]
0x187b21cf8:  65 02 01 91   add	x5, x19, #0x40
0x187b21cfc:  01 00 80 d2   mov	x1, #0
0x187b21d00:  02 00 80 d2   mov	x2, #0
0x187b21d04:  03 00 80 d2   mov	x3, #0
0x187b21d08:  42 cf fe 97   bl	__Z36CreateGPSBufferFromPropertiesTIFFNewP13IIODictionarymmmbPm
0x187b21d0c:  60 1e 00 f9   str	x0, [x19, #0x38]
0x187b21d10:  68 22 40 f9   ldr	x8, [x19, #0x40]
0x187b21d14:  09 01 40 92   and	x9, x8, #0x1
0x187b21d18:  37 01 08 8b   add	x23, x9, x8
0x187b21d1c:  60 22 42 a9   ldp	x0, x8, [x19, #0x20]
0x187b21d20:  e8 02 08 8b   add	x8, x23, x8
0x187b21d24:  01 31 00 91   add	x1, x8, #0xc
0x187b21d28:  4a 5a 18 94   bl	_reallocf_stub
0x187b21d2c:  f4 03 00 aa   mov	x20, x0
0x187b21d30:  60 12 00 f9   str	x0, [x19, #0x20]
0x187b21d34:  01 40 00 91   add	x1, x0, #0x10
0x187b21d38:  e0 03 13 aa   mov	x0, x19
0x187b21d3c:  03 ff ff 97   bl	__ZN7GPSCopy6read32EPh
0x187b21d40:  88 42 20 8b   add	x8, x20, w0, uxtw
0x187b21d44:  78 62 40 39   ldrb	w24, [x19, #0x18]
0x187b21d48:  09 19 40 79   ldrh	w9, [x8, #0xc]
0x187b21d4c:  2a 09 c0 5a   rev	w10, w9
0x187b21d50:  4a 7d 10 53   lsr	w10, w10, #0x10
0x187b21d54:  1f 03 00 71   cmp	w24, #0
0x187b21d58:  29 11 8a 1a   csel	w9, w9, w10, ne
0x187b21d5c:  3f 3d 00 72   tst	w9, #0xffff
0x187b21d60:  e0 05 00 54   b.eq	loc_187b21e1c ; ⤵ 0xbc
0x187b21d64:  19 00 80 d2   mov	x25, #0
0x187b21d68:  fa 03 00 2a   mov	w26, w0
0x187b21d6c:  01 39 00 91   add	x1, x8, #0xe
0x187b21d70:  2a 3d 40 92   and	x10, x9, #0xffff
0x187b21d74:  4a f9 7f d3   lsl	x10, x10, #0x1
0x187b21d78:  4a 21 29 8b   add	x10, x10, w9, uxth
0x187b21d7c:  4a f5 7e d3   lsl	x10, x10, #0x2
0x187b21d80:  4b 31 00 d1   sub	x11, x10, #0xc
0x187b21d84:  2c ed 90 52   mov	w12, #0x8769
0x187b21d88:  ad 04 91 52   mov	w13, #0x8825
0x187b21d8c:  ee 03 01 aa   mov	x14, x1
0x187b21d90:  ; loc_187b21d90
0x187b21d90:  cf 01 40 79   ldrh	w15, [x14]
0x187b21d94:  f0 09 c0 5a   rev	w16, w15
0x187b21d98:  10 7e 10 53   lsr	w16, w16, #0x10
0x187b21d9c:  1f 03 00 71   cmp	w24, #0
0x187b21da0:  ef 11 90 1a   csel	w15, w15, w16, ne
0x187b21da4:  ef 3d 00 12   and	w15, w15, #0xffff
0x187b21da8:  ff 01 0c 6b   cmp	w15, w12
0x187b21dac:  80 00 00 54   b.eq	loc_187b21dbc ; ⤵ 0x10
0x187b21db0:  ff 01 0d 6b   cmp	w15, w13
0x187b21db4:  81 00 00 54   b.ne	loc_187b21dc4 ; ⤵ 0x10
0x187b21db8:  08 00 00 14   b	loc_187b21dd8 ; ⤵ 0x20
0x187b21dbc:  ; loc_187b21dbc
0x187b21dbc:  7f 01 19 6b   cmp	w11, w25
0x187b21dc0:  e0 03 00 54   b.eq	loc_187b21e3c ; ⤵ 0x7c
0x187b21dc4:  ; loc_187b21dc4
0x187b21dc4:  ce 31 00 91   add	x14, x14, #0xc
0x187b21dc8:  39 33 00 91   add	x25, x25, #0xc
0x187b21dcc:  5f 01 19 6b   cmp	w10, w25
0x187b21dd0:  01 fe ff 54   b.ne	loc_187b21d90 ; ⤴ -0x40
0x187b21dd4:  12 00 00 14   b	loc_187b21e1c ; ⤵ 0x48
0x187b21dd8:  ; loc_187b21dd8
0x187b21dd8:  08 01 19 8b   add	x8, x8, x25
0x187b21ddc:  09 61 41 b8   ldur	w9, [x8, #0x16]
0x187b21de0:  2a 09 c0 5a   rev	w10, w9
0x187b21de4:  1f 03 00 71   cmp	w24, #0
0x187b21de8:  35 11 8a 1a   csel	w21, w9, w10, ne
0x187b21dec:  01 69 00 91   add	x1, x8, #0x1a
0x187b21df0:  e0 03 13 aa   mov	x0, x19
0x187b21df4:  d5 fe ff 97   bl	__ZN7GPSCopy6read32EPh
0x187b21df8:  08 00 15 4b   sub	w8, w0, w21
0x187b21dfc:  ff 02 08 eb   cmp	x23, x8
0x187b21e00:  a2 0e 00 54   b.hs	loc_187b21fd4 ; ⤵ 0x1d4
0x187b21e04:  a0 1b 00 b0   adrp	x0, 0x187e96000
0x187b21e08:  00 6c 10 91   add	x0, x0, #0x41b ; "processData"
0x187b21e0c:  a2 1b 00 b0   adrp	x2, 0x187e96000
0x187b21e10:  42 9c 10 91   add	x2, x2, #0x427 ; "GPS info is already present...\n"
0x187b21e14:  61 2f 80 52   mov	w1, #0x17b
0x187b21e18:  ae a0 f7 97   bl	__Z8LogErrorPKciS0_z
0x187b21e1c:  ; loc_187b21e1c
0x187b21e1c:  00 00 80 52   mov	w0, #0
0x187b21e20:  ; loc_187b21e20
0x187b21e20:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x187b21e24:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x187b21e28:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x187b21e2c:  f8 5f 42 a9   ldp	x24, x23, [sp, #0x20]
0x187b21e30:  fa 67 41 a9   ldp	x26, x25, [sp, #0x10]
0x187b21e34:  fc 6f c6 a8   ldp	x28, x27, [sp], #0x60
0x187b21e38:  ff 0f 5f d6   retab
0x187b21e3c:  ; loc_187b21e3c
0x187b21e3c:  1b 01 19 8b   add	x27, x8, x25
0x187b21e40:  75 63 41 b8   ldur	w21, [x27, #0x16]
0x187b21e44:  2a 05 00 11   add	w10, w9, #0x1
0x187b21e48:  4b 09 c0 5a   rev	w11, w10
0x187b21e4c:  6b 7d 10 53   lsr	w11, w11, #0x10
0x187b21e50:  1f 03 00 71   cmp	w24, #0
0x187b21e54:  69 05 89 1a   csinc	w9, w11, w9, eq
0x187b21e58:  09 19 00 79   strh	w9, [x8, #0xc]
0x187b21e5c:  42 3d 00 12   and	w2, w10, #0xffff
0x187b21e60:  e0 03 13 aa   mov	x0, x19
0x187b21e64:  83 01 80 52   mov	w3, #0xc
0x187b21e68:  c7 fe ff 97   bl	__ZN7GPSCopy16adjustIFDOffsetsEP7IFDDataii
0x187b21e6c:  1f 03 00 71   cmp	w24, #0
0x187b21e70:  a8 0a c0 5a   rev	w8, w21
0x187b21e74:  a8 12 88 1a   csel	w8, w21, w8, ne
0x187b21e78:  88 02 08 8b   add	x8, x20, x8
0x187b21e7c:  09 19 40 79   ldrh	w9, [x8, #0xc]
0x187b21e80:  2a 09 c0 5a   rev	w10, w9
0x187b21e84:  4a 7d 10 53   lsr	w10, w10, #0x10
0x187b21e88:  29 11 8a 1a   csel	w9, w9, w10, ne
0x187b21e8c:  01 39 00 91   add	x1, x8, #0xe
0x187b21e90:  22 3d 00 12   and	w2, w9, #0xffff
0x187b21e94:  e0 03 13 aa   mov	x0, x19
0x187b21e98:  83 01 80 52   mov	w3, #0xc
0x187b21e9c:  ba fe ff 97   bl	__ZN7GPSCopy16adjustIFDOffsetsEP7IFDDataii
0x187b21ea0:  61 6b 00 91   add	x1, x27, #0x1a
0x187b21ea4:  e0 03 13 aa   mov	x0, x19
0x187b21ea8:  a8 fe ff 97   bl	__ZN7GPSCopy6read32EPh
0x187b21eac:  1f 03 00 71   cmp	w24, #0
0x187b21eb0:  15 30 00 11   add	w21, w0, #0xc
0x187b21eb4:  61 1e 40 f9   ldr	x1, [x19, #0x38]
0x187b21eb8:  28 24 40 78   ldrh	w8, [x1], #0x2
0x187b21ebc:  09 09 c0 5a   rev	w9, w8
0x187b21ec0:  29 7d 10 53   lsr	w9, w9, #0x10
0x187b21ec4:  08 11 89 1a   csel	w8, w8, w9, ne
0x187b21ec8:  02 3d 00 12   and	w2, w8, #0xffff
0x187b21ecc:  e0 03 13 aa   mov	x0, x19
0x187b21ed0:  e3 03 15 aa   mov	x3, x21
0x187b21ed4:  ac fe ff 97   bl	__ZN7GPSCopy16adjustIFDOffsetsEP7IFDDataii
0x187b21ed8:  78 72 42 a9   ldp	x24, x28, [x19, #0x20]
0x187b21edc:  08 03 1c 8b   add	x8, x24, x28
0x187b21ee0:  89 02 1a 8b   add	x9, x20, x26
0x187b21ee4:  08 01 09 cb   sub	x8, x8, x9
0x187b21ee8:  08 01 19 cb   sub	x8, x8, x25
0x187b21eec:  02 69 00 d1   sub	x2, x8, #0x1a
0x187b21ef0:  60 9b 00 91   add	x0, x27, #0x26
0x187b21ef4:  61 6b 00 91   add	x1, x27, #0x1a
0x187b21ef8:  7a 59 18 94   bl	j___platform_memmove
0x187b21efc:  88 33 00 91   add	x8, x28, #0xc
0x187b21f00:  69 62 40 39   ldrb	w9, [x19, #0x18]
0x187b21f04:  3f 01 00 71   cmp	w9, #0
0x187b21f08:  09 b1 84 52   mov	w9, #0x2588
0x187b21f0c:  4a fb 8e 12   mov	w10, #0xffff8825
0x187b21f10:  68 16 00 f9   str	x8, [x19, #0x28]
0x187b21f14:  48 11 89 1a   csel	w8, w10, w9, ne
0x187b21f18:  09 80 80 52   mov	w9, #0x400
0x187b21f1c:  8a 00 80 52   mov	w10, #0x4
0x187b21f20:  49 11 89 1a   csel	w9, w10, w9, ne
0x187b21f24:  0a 20 a0 52   mov	w10, #0x1000000
0x187b21f28:  4a 05 9f 1a   csinc	w10, w10, wzr, eq
0x187b21f2c:  ab 0a c0 5a   rev	w11, w21
0x187b21f30:  ab 12 8b 1a   csel	w11, w21, w11, ne
0x187b21f34:  68 37 00 79   strh	w8, [x27, #0x1a]
0x187b21f38:  69 3b 00 79   strh	w9, [x27, #0x1c]
0x187b21f3c:  6a e3 01 b8   stur	w10, [x27, #0x1e]
0x187b21f40:  6b 23 02 b8   stur	w11, [x27, #0x22]
0x187b21f44:  a8 02 17 0b   add	w8, w21, w23
0x187b21f48:  09 09 c0 5a   rev	w9, w8
0x187b21f4c:  08 11 89 1a   csel	w8, w8, w9, ne
0x187b21f50:  68 63 02 b8   stur	w8, [x27, #0x26]
0x187b21f54:  08 03 15 8b   add	x8, x24, x21
0x187b21f58:  14 31 00 91   add	x20, x8, #0xc
0x187b21f5c:  80 02 17 8b   add	x0, x20, x23
0x187b21f60:  82 03 15 cb   sub	x2, x28, x21
0x187b21f64:  e1 03 14 aa   mov	x1, x20
0x187b21f68:  5e 59 18 94   bl	j___platform_memmove
0x187b21f6c:  61 8a 43 a9   ldp	x1, x2, [x19, #0x38]
0x187b21f70:  e0 03 14 aa   mov	x0, x20
0x187b21f74:  57 59 18 94   bl	j___platform_memmove
0x187b21f78:  69 22 42 a9   ldp	x9, x8, [x19, #0x20]
0x187b21f7c:  08 01 17 8b   add	x8, x8, x23
0x187b21f80:  68 1a 00 f9   str	x8, [x19, #0x30]
0x187b21f84:  28 01 15 8b   add	x8, x9, x21
0x187b21f88:  09 01 17 8b   add	x9, x8, x23
0x187b21f8c:  68 62 40 39   ldrb	w8, [x19, #0x18]
0x187b21f90:  2a 19 40 79   ldrh	w10, [x9, #0xc]
0x187b21f94:  4b 09 c0 5a   rev	w11, w10
0x187b21f98:  6b 7d 10 53   lsr	w11, w11, #0x10
0x187b21f9c:  1f 01 00 71   cmp	w8, #0
0x187b21fa0:  48 11 8b 1a   csel	w8, w10, w11, ne
0x187b21fa4:  f4 32 00 11   add	w20, w23, #0xc
0x187b21fa8:  21 39 00 91   add	x1, x9, #0xe
0x187b21fac:  02 3d 00 12   and	w2, w8, #0xffff
0x187b21fb0:  e0 03 13 aa   mov	x0, x19
0x187b21fb4:  e3 03 14 aa   mov	x3, x20
0x187b21fb8:  73 fe ff 97   bl	__ZN7GPSCopy16adjustIFDOffsetsEP7IFDDataii
0x187b21fbc:  68 12 40 f9   ldr	x8, [x19, #0x20]
0x187b21fc0:  89 02 16 0b   add	w9, w20, w22
0x187b21fc4:  29 09 c0 5a   rev	w9, w9
0x187b21fc8:  29 7d 10 53   lsr	w9, w9, #0x10
0x187b21fcc:  09 09 00 79   strh	w9, [x8, #0x4]
0x187b21fd0:  11 00 00 14   b	loc_187b22014 ; ⤵ 0x44
0x187b21fd4:  ; loc_187b21fd4
0x187b21fd4:  94 42 35 8b   add	x20, x20, w21, uxtw
0x187b21fd8:  61 1e 40 f9   ldr	x1, [x19, #0x38]
0x187b21fdc:  28 24 40 78   ldrh	w8, [x1], #0x2
0x187b21fe0:  09 09 c0 5a   rev	w9, w8
0x187b21fe4:  29 7d 10 53   lsr	w9, w9, #0x10
0x187b21fe8:  1f 03 00 71   cmp	w24, #0
0x187b21fec:  08 11 89 1a   csel	w8, w8, w9, ne
0x187b21ff0:  02 3d 00 12   and	w2, w8, #0xffff
0x187b21ff4:  e0 03 13 aa   mov	x0, x19
0x187b21ff8:  e3 03 15 aa   mov	x3, x21
0x187b21ffc:  62 fe ff 97   bl	__ZN7GPSCopy16adjustIFDOffsetsEP7IFDDataii
0x187b22000:  61 8a 43 a9   ldp	x1, x2, [x19, #0x38]
0x187b22004:  80 32 00 91   add	x0, x20, #0xc
0x187b22008:  32 59 18 94   bl	j___platform_memmove
0x187b2200c:  68 16 40 f9   ldr	x8, [x19, #0x28]
0x187b22010:  68 1a 00 f9   str	x8, [x19, #0x30]
0x187b22014:  ; loc_187b22014
0x187b22014:  20 00 80 52   mov	w0, #0x1
0x187b22018:  82 ff ff 17   b	loc_187b21e20 ; ⤴ -0x1f8

