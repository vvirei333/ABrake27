
__ZN7GPSCopy26copyFileWithGPSInformationEv:
0x187a6c078:  7f 23 03 d5   pacibsp
0x187a6c07c:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x187a6c080:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x187a6c084:  fd 43 00 91   add	fp, sp, #0x10
0x187a6c088:  f3 03 00 aa   mov	x19, x0
0x187a6c08c:  01 00 40 f9   ldr	x1, [x0]
0x187a6c090:  a7 fd ff 97   bl	__ZN7GPSCopy13readInputFileEPK10__CFString
0x187a6c094:  40 02 00 34   cbz	w0, loc_187a6c0dc ; ⤵ 0x48
0x187a6c098:  e0 03 13 aa   mov	x0, x19
0x187a6c09c:  21 fe ff 97   bl	__ZN7GPSCopy11processDataEv
0x187a6c0a0:  e0 01 00 34   cbz	w0, loc_187a6c0dc ; ⤵ 0x3c
0x187a6c0a4:  61 06 40 f9   ldr	x1, [x19, #0x8]
0x187a6c0a8:  41 00 00 b5   cbnz	x1, loc_187a6c0b0 ; ⤵ 0x8
0x187a6c0ac:  61 02 40 f9   ldr	x1, [x19]
0x187a6c0b0:  ; loc_187a6c0b0
0x187a6c0b0:  e0 03 13 aa   mov	x0, x19
0x187a6c0b4:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x187a6c0b8:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x187a6c0bc:  ff 23 03 d5   autibsp
0x187a6c0c0:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x187a6c0c4:  50 00 f0 b6   tbz	x16, #0x3e, loc_187a6c0cc ; ⤵ 0x8
0x187a6c0c8:  20 8e 38 d4   brk	#0xc471
0x187a6c0cc:  ; loc_187a6c0cc
0x187a6c0cc:  e5 fd ff 17   b	__ZN7GPSCopy15writeOutputFileEPK10__CFString
0x187a6c0d0:  3f 04 00 71   cmp	w1, #0x1
0x187a6c0d4:  c1 00 00 54   b.ne	loc_187a6c0ec ; ⤵ 0x18
0x187a6c0d8:  61 14 0a 94   bl	__ZN7GPSCopy26copyFileWithGPSInformationEv.cold.1
0x187a6c0dc:  ; loc_187a6c0dc
0x187a6c0dc:  00 00 80 52   mov	w0, #0
0x187a6c0e0:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x187a6c0e4:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x187a6c0e8:  ff 0f 5f d6   retab
0x187a6c0ec:  ; loc_187a6c0ec
0x187a6c0ec:  e5 2f 1b 94   bl	__Unwind_Resume_stub

