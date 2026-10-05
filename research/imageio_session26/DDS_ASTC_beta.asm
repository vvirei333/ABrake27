
__Z21CreateReader_DDS_ASTCv:
0x187a4f144:  7f 23 03 d5   pacibsp
0x187a4f148:  f6 57 bd a9   stp	x22, x21, [sp, #-0x30]!
0x187a4f14c:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x187a4f150:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x187a4f154:  fd 83 00 91   add	fp, sp, #0x20
0x187a4f158:  14 47 98 d2   mov	x20, #0xc238
0x187a4f15c:  14 b9 ab f2   movk	x20, #0x5dc8, lsl #0x10
0x187a4f160:  14 88 c3 f2   movk	x20, #0x1c40, lsl #0x20
0x187a4f164:  b4 21 e0 f2   movk	x20, #0x10d, lsl #0x30
0x187a4f168:  00 07 80 52   mov	w0, #0x38
0x187a4f16c:  e1 03 14 aa   mov	x1, x20
0x187a4f170:  a0 59 1c 94   bl	j___ZnwmSt19__type_descriptor_t
0x187a4f174:  f3 03 00 aa   mov	x19, x0
0x187a4f178:  61 67 2c d0   adrp	x1, 0x1e073d000
0x187a4f17c:  21 00 17 91   add	x1, x1, #0x5c0 ; _kCGImageTypeIdentifierBC
0x187a4f180:  62 1c 00 b0   adrp	x2, 0x187ddc000
0x187a4f184:  42 20 0e 91   add	x2, x2, #0x388 ; ".dds."
0x187a4f188:  83 6a 8a 52   mov	w3, #0x5354
0x187a4f18c:  23 88 a8 72   movk	w3, #0x4441, lsl #0x10
0x187a4f190:  04 04 80 52   mov	w4, #0x20
0x187a4f194:  05 00 80 d2   mov	x5, #0
0x187a4f198:  c7 3c f7 97   bl	__ZN10IIO_ReaderC2EPKPK10__CFStringPKcjmm
0x187a4f19c:  f0 66 2d d0   adrp	x16, 0x1e272d000
0x187a4f1a0:  10 42 2d 91   add	x16, x16, #0xb50 ; __ZTV15IIO_Reader_ASTC
0x187a4f1a4:  10 42 00 91   add	x16, x16, #0x10
0x187a4f1a8:  f1 03 13 aa   mov	x17, x19
0x187a4f1ac:  51 40 f6 f2   movk	x17, #0xb202, lsl #0x30
0x187a4f1b0:  30 0a c1 da   pacda	x16, x17
0x187a4f1b4:  70 02 00 f9   str	x16, [x19]
0x187a4f1b8:  e0 03 13 aa   mov	x0, x19
0x187a4f1bc:  01 00 80 52   mov	w1, #0
0x187a4f1c0:  b4 3b f7 97   bl	__ZN10IIO_Reader23setAddToTypeIdentifiersEb
0x187a4f1c4:  e0 03 13 aa   mov	x0, x19
0x187a4f1c8:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x187a4f1cc:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x187a4f1d0:  f6 57 c3 a8   ldp	x22, x21, [sp], #0x30
0x187a4f1d4:  ff 0f 5f d6   retab
0x187a4f1d8:  f5 03 00 aa   mov	x21, x0
0x187a4f1dc:  e0 03 13 aa   mov	x0, x19
0x187a4f1e0:  e1 03 14 aa   mov	x1, x20
0x187a4f1e4:  77 59 1c 94   bl	__ZdlPvSt19__type_descriptor_t_stub
0x187a4f1e8:  e0 03 15 aa   mov	x0, x21
0x187a4f1ec:  a5 a3 1b 94   bl	__Unwind_Resume_stub

