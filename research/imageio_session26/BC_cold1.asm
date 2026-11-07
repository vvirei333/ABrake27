
__ZN12BCReadPlugin16decodeDXTCtoRGBXEP19IIOImageReadSessionP13vImage_Buffer16CGImageAlphaInfob.cold.1:
0x187ce5d00:  7f 23 03 d5   pacibsp
0x187ce5d04:  ff 83 00 d1   sub	sp, sp, #0x20
0x187ce5d08:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x187ce5d0c:  fd 43 00 91   add	fp, sp, #0x10
0x187ce5d10:  08 00 40 b9   ldr	w8, [x0]
0x187ce5d14:  e0 05 00 f0   adrp	x0, 0x187da4000
0x187ce5d18:  00 5c 23 91   add	x0, x0, #0x8d7 ; "decodeDXTCtoRGBX"
0x187ce5d1c:  e8 03 00 f9   str	x8, [sp]
0x187ce5d20:  e2 05 00 f0   adrp	x2, 0x187da4000
0x187ce5d24:  42 18 25 91   add	x2, x2, #0x946 ; "*** BC - no compressed data for level %d\n"
0x187ce5d28:  a1 b6 80 52   mov	w1, #0x5b5
0x187ce5d2c:  4d cb ec 97   bl	__cg_jpeg_mem_term
0x187ce5d30:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x187ce5d34:  ff 83 00 91   add	sp, sp, #0x20
0x187ce5d38:  ff 0f 5f d6   retab

