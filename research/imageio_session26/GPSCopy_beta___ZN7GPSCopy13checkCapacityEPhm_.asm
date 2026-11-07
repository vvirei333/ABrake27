
__ZN7GPSCopy13checkCapacityEPhm:
0x187a6b594:  08 24 42 a9   ldp	x8, x9, [x0, #0x20]
0x187a6b598:  0a 01 09 8b   add	x10, x8, x9
0x187a6b59c:  48 01 01 eb   subs	x8, x10, x1
0x187a6b5a0:  84 00 00 54   b.mi	loc_187a6b5b0 ; ⤵ 0x10
0x187a6b5a4:  1f 01 02 eb   cmp	x8, x2
0x187a6b5a8:  43 00 00 54   b.lo	loc_187a6b5b0 ; ⤵ 0x8
0x187a6b5ac:  c0 03 5f d6   ret
0x187a6b5b0:  ; loc_187a6b5b0
0x187a6b5b0:  7f 23 03 d5   pacibsp
0x187a6b5b4:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x187a6b5b8:  fd 03 00 91   mov	fp, sp
0x187a6b5bc:  19 17 0a 94   bl	__ZN7GPSCopy13checkCapacityEPhm.cold.1

