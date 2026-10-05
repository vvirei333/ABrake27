
_CGImageCopyFileWithGPSInformation:
0x187a6c0f0:  7f 23 03 d5   pacibsp
0x187a6c0f4:  ff 83 01 d1   sub	sp, sp, #0x60
0x187a6c0f8:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x187a6c0fc:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x187a6c100:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x187a6c104:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x187a6c108:  fd 43 01 91   add	fp, sp, #0x50
0x187a6c10c:  f5 03 02 aa   mov	x21, x2
0x187a6c110:  f3 03 01 aa   mov	x19, x1
0x187a6c114:  f4 03 00 aa   mov	x20, x0
0x187a6c118:  36 16 80 52   mov	w22, #0xb1
0x187a6c11c:  d6 6b a5 72   movk	w22, #0x2b5e, lsl #0x10
0x187a6c120:  20 16 80 52   mov	w0, #0xb1
0x187a6c124:  c0 6b a5 72   movk	w0, #0x2b5e, lsl #0x10
0x187a6c128:  01 00 80 d2   mov	x1, #0
0x187a6c12c:  02 00 80 d2   mov	x2, #0
0x187a6c130:  03 00 80 d2   mov	x3, #0
0x187a6c134:  44 01 80 52   mov	w4, #0xa
0x187a6c138:  86 3b 1b 94   bl	_kdebug_trace_stub
0x187a6c13c:  5e 44 f6 97   bl	_IIOInitDebugFlags
0x187a6c140:  48 22 33 f0   adrp	x8, 0x1edeb7000
0x187a6c144:  08 41 34 91   add	x8, x8, #0xd10 ; _gIIODebugFlags
0x187a6c148:  08 01 40 b9   ldr	w8, [x8]
0x187a6c14c:  00 3d 0e 53   ubfx	w0, w8, #0xe, #0x2
0x187a6c150:  40 01 00 34   cbz	w0, loc_187a6c178 ; ⤵ 0x28
0x187a6c154:  41 19 00 b0   adrp	x1, 0x187d95000
0x187a6c158:  21 c4 3c 91   add	x1, x1, #0xf31
0x187a6c15c:  a2 1b 00 f0   adrp	x2, 0x187de3000
0x187a6c160:  42 68 20 91   add	x2, x2, #0x81a ; "CGImageCopyFileWithGPSInformation"
0x187a6c164:  03 00 80 d2   mov	x3, #0
0x187a6c168:  04 00 80 d2   mov	x4, #0
0x187a6c16c:  05 00 80 92   mov	x5, #0xffffffffffffffff
0x187a6c170:  e6 03 15 aa   mov	x6, x21
0x187a6c174:  5c 29 ff 97   bl	_ImageIODebugOptions
0x187a6c178:  ; loc_187a6c178
0x187a6c178:  14 04 00 b4   cbz	x20, loc_187a6c1f8 ; ⤵ 0x80
0x187a6c17c:  ff ff 00 a9   stp	xzr, xzr, [sp, #0x8]
0x187a6c180:  ff 0f 00 f9   str	xzr, [sp, #0x18]
0x187a6c184:  f7 23 00 91   add	x23, sp, #0x8
0x187a6c188:  e0 23 00 91   add	x0, sp, #0x8
0x187a6c18c:  e1 03 15 aa   mov	x1, x21
0x187a6c190:  54 44 f6 97   bl	__ZN13IIODictionaryC1EPK14__CFDictionary
0x187a6c194:  81 6c 8e d2   mov	x1, #0x7364
0x187a6c198:  21 ae af f2   movk	x1, #0x7d71, lsl #0x10
0x187a6c19c:  01 88 c1 f2   movk	x1, #0xc40, lsl #0x20
0x187a6c1a0:  c1 21 e0 f2   movk	x1, #0x10e, lsl #0x30
0x187a6c1a4:  00 09 80 52   mov	w0, #0x48
0x187a6c1a8:  92 e5 1b 94   bl	j___ZnwmSt19__type_descriptor_t
0x187a6c1ac:  f5 03 00 aa   mov	x21, x0
0x187a6c1b0:  14 4c 00 a9   stp	x20, x19, [x0]
0x187a6c1b4:  17 08 00 f9   str	x23, [x0, #0x10]
0x187a6c1b8:  1f 60 00 39   strb	wzr, [x0, #0x18]
0x187a6c1bc:  00 e4 00 6f   movi	v0.2d, #0
0x187a6c1c0:  00 00 01 ad   stp	q0, q0, [x0, #0x20]
0x187a6c1c4:  1f 20 00 f9   str	xzr, [x0, #0x40]
0x187a6c1c8:  ac ff ff 97   bl	__ZN7GPSCopy26copyFileWithGPSInformationEv
0x187a6c1cc:  f3 03 00 aa   mov	x19, x0
0x187a6c1d0:  e0 03 15 aa   mov	x0, x21
0x187a6c1d4:  e1 fc ff 97   bl	__ZN7GPSCopyD2Ev
0x187a6c1d8:  81 6c 8e d2   mov	x1, #0x7364
0x187a6c1dc:  21 ae af f2   movk	x1, #0x7d71, lsl #0x10
0x187a6c1e0:  01 88 c1 f2   movk	x1, #0xc40, lsl #0x20
0x187a6c1e4:  c1 21 e0 f2   movk	x1, #0x10e, lsl #0x30
0x187a6c1e8:  76 e5 1b 94   bl	__ZdlPvSt19__type_descriptor_t_stub
0x187a6c1ec:  e0 23 00 91   add	x0, sp, #0x8
0x187a6c1f0:  16 48 f6 97   bl	__ZN13IIODictionaryD1Ev
0x187a6c1f4:  02 00 00 14   b	loc_187a6c1fc ; ⤵ 0x8
0x187a6c1f8:  ; loc_187a6c1f8
0x187a6c1f8:  13 00 80 52   mov	w19, #0
0x187a6c1fc:  ; loc_187a6c1fc
0x187a6c1fc:  c0 06 00 11   add	w0, w22, #0x1
0x187a6c200:  01 00 80 d2   mov	x1, #0
0x187a6c204:  02 00 80 d2   mov	x2, #0
0x187a6c208:  03 00 80 d2   mov	x3, #0
0x187a6c20c:  44 01 80 52   mov	w4, #0xa
0x187a6c210:  50 3b 1b 94   bl	_kdebug_trace_stub
0x187a6c214:  e0 03 13 aa   mov	x0, x19
0x187a6c218:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x187a6c21c:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x187a6c220:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x187a6c224:  f8 5f 42 a9   ldp	x24, x23, [sp, #0x20]
0x187a6c228:  ff 83 01 91   add	sp, sp, #0x60
0x187a6c22c:  ff 0f 5f d6   retab
0x187a6c230:  f3 03 00 aa   mov	x19, x0
0x187a6c234:  e0 23 00 91   add	x0, sp, #0x8
0x187a6c238:  04 48 f6 97   bl	__ZN13IIODictionaryD1Ev
0x187a6c23c:  e0 03 13 aa   mov	x0, x19
0x187a6c240:  90 2f 1b 94   bl	__Unwind_Resume_stub

