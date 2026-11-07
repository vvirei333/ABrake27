
__ZN7GPSCopy15pointerToOffsetEm:
0x187a6b5f4:  08 14 40 f9   ldr	x8, [x0, #0x28]
0x187a6b5f8:  3f 00 08 eb   cmp	x1, x8
0x187a6b5fc:  88 00 00 54   b.hi	loc_187a6b60c ; ⤵ 0x10
0x187a6b600:  08 10 40 f9   ldr	x8, [x0, #0x20]
0x187a6b604:  00 01 01 8b   add	x0, x8, x1
0x187a6b608:  c0 03 5f d6   ret
0x187a6b60c:  ; loc_187a6b60c
0x187a6b60c:  7f 23 03 d5   pacibsp
0x187a6b610:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x187a6b614:  fd 03 00 91   mov	fp, sp
0x187a6b618:  02 17 0a 94   bl	__ZN7GPSCopy13checkCapacityEPhm.cold.1

