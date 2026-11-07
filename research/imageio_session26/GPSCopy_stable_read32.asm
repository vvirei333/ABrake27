
__ZN7GPSCopy6read32EPh:
0x187b21948:  28 00 40 39   ldrb	w8, [x1]
0x187b2194c:  29 04 40 39   ldrb	w9, [x1, #0x1]
0x187b21950:  2a 08 40 39   ldrb	w10, [x1, #0x2]
0x187b21954:  2b 0c 40 39   ldrb	w11, [x1, #0x3]
0x187b21958:  0c 60 40 39   ldrb	w12, [x0, #0x18]
0x187b2195c:  9f 05 00 71   cmp	w12, #0x1
0x187b21960:  0c 1d 08 53   lsl	w12, w8, #0x18
0x187b21964:  8c 41 09 2a   orr	w12, w12, w9, lsl #0x10
0x187b21968:  8c 21 0a 2a   orr	w12, w12, w10, lsl #0x8
0x187b2196c:  8c 01 0b 2a   orr	w12, w12, w11
0x187b21970:  08 21 09 2a   orr	w8, w8, w9, lsl #0x8
0x187b21974:  08 41 0a 2a   orr	w8, w8, w10, lsl #0x10
0x187b21978:  08 61 0b 2a   orr	w8, w8, w11, lsl #0x18
0x187b2197c:  80 11 88 1a   csel	w0, w12, w8, ne
0x187b21980:  c0 03 5f d6   ret

