
__ZN7GPSCopy22checkInitializedLengthEPhm:
0x187a6b5c4:  08 10 40 f9   ldr	x8, [x0, #0x20]
0x187a6b5c8:  09 18 40 f9   ldr	x9, [x0, #0x30]
0x187a6b5cc:  0a 01 09 8b   add	x10, x8, x9
0x187a6b5d0:  48 01 01 eb   subs	x8, x10, x1
0x187a6b5d4:  84 00 00 54   b.mi	loc_187a6b5e4 ; ⤵ 0x10
0x187a6b5d8:  1f 01 02 eb   cmp	x8, x2
0x187a6b5dc:  43 00 00 54   b.lo	loc_187a6b5e4 ; ⤵ 0x8
0x187a6b5e0:  c0 03 5f d6   ret
0x187a6b5e4:  ; loc_187a6b5e4
0x187a6b5e4:  7f 23 03 d5   pacibsp
0x187a6b5e8:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x187a6b5ec:  fd 03 00 91   mov	fp, sp
0x187a6b5f0:  0c 17 0a 94   bl	__ZN7GPSCopy13checkCapacityEPhm.cold.1

