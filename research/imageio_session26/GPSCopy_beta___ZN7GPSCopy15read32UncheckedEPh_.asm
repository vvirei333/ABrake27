
__ZN7GPSCopy15read32UncheckedEPh:
0x187a6b61c:  28 00 40 39   ldrb	w8, [x1]
0x187a6b620:  29 04 40 39   ldrb	w9, [x1, #0x1]
0x187a6b624:  2a 08 40 39   ldrb	w10, [x1, #0x2]
0x187a6b628:  2b 0c 40 39   ldrb	w11, [x1, #0x3]
0x187a6b62c:  0c 60 40 39   ldrb	w12, [x0, #0x18]
0x187a6b630:  9f 05 00 71   cmp	w12, #0x1
0x187a6b634:  0c 1d 08 53   lsl	w12, w8, #0x18
0x187a6b638:  8c 41 09 2a   orr	w12, w12, w9, lsl #0x10
0x187a6b63c:  8c 21 0a 2a   orr	w12, w12, w10, lsl #0x8
0x187a6b640:  8c 01 0b 2a   orr	w12, w12, w11
0x187a6b644:  08 21 09 2a   orr	w8, w8, w9, lsl #0x8
0x187a6b648:  08 41 0a 2a   orr	w8, w8, w10, lsl #0x10
0x187a6b64c:  08 61 0b 2a   orr	w8, w8, w11, lsl #0x18
0x187a6b650:  80 11 88 1a   csel	w0, w12, w8, ne
0x187a6b654:  c0 03 5f d6   ret

