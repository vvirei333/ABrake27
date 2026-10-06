sub_18798df88:
0x18798df88:  7f 23 03 d5   pacibsp
0x18798df8c:  ff 83 06 d1   sub	sp, sp, #0x1a0
0x18798df90:  fc 6f 14 a9   stp	x28, x27, [sp, #0x140]
0x18798df94:  fa 67 15 a9   stp	x26, x25, [sp, #0x150]
0x18798df98:  f8 5f 16 a9   stp	x24, x23, [sp, #0x160]
0x18798df9c:  f6 57 17 a9   stp	x22, x21, [sp, #0x170]
0x18798dfa0:  f4 4f 18 a9   stp	x20, x19, [sp, #0x180]
0x18798dfa4:  fd 7b 19 a9   stp	fp, lr, [sp, #0x190]
0x18798dfa8:  fd 43 06 91   add	fp, sp, #0x190
0x18798dfac:  f3 03 00 aa   mov	x19, x0
0x18798dfb0:  e8 3e 2c b0   adrp	x8, 0x1e016a000
0x18798dfb4:  08 95 47 f9   ldr	x8, [x8, #0xf28]
0x18798dfb8:  08 01 40 f9   ldr	x8, [x8]
0x18798dfbc:  a8 83 1a f8   stur	x8, [fp, #-0x58]
0x18798dfc0:  00 f8 40 f9   ldr	x0, [x0, #0x1f0]
0x18798dfc4:  60 02 00 b4   cbz	x0, 0x18798e010
0x18798dfc8:  10 00 40 f9   ldr	x16, [x0]
0x18798dfcc:  f1 03 00 aa   mov	x17, x0
0x18798dfd0:  71 e0 fa f2   movk	x17, #0xd703, lsl #0x30
0x18798dfd4:  30 1a c1 da   autda	x16, x17
0x18798dfd8:  f1 03 10 aa   mov	x17, x16
0x18798dfdc:  f1 47 c1 da   xpacd	x17
0x18798dfe0:  1f 02 11 eb   cmp	x16, x17
0x18798dfe4:  40 00 00 54   b.eq	0x18798dfec
0x18798dfe8:  40 8e 38 d4   brk	#0xc472
0x18798dfec:  1f 02 40 39   ldrb	wzr, [x16]
0x18798dff0:  c1 dc 30 d0   adrp	x1, 0x1e9527000
0x18798dff4:  21 c0 08 91   add	x1, x1, #0x230
0x18798dff8:  c2 dc 30 d0   adrp	x2, 0x1e9527000
0x18798dffc:  42 40 20 91   add	x2, x2, #0x810
0x18798e000:  03 00 80 d2   mov	x3, #0
0x18798e004:  e7 fc 1e 94   bl	0x18814d3a0
0x18798e008:  f4 03 00 aa   mov	x20, x0
0x18798e00c:  02 00 00 14   b	0x18798e014
0x18798e010:  14 00 80 d2   mov	x20, #0
0x18798e014:  ff 4b 00 f9   str	xzr, [sp, #0x90]
0x18798e018:  00 e4 00 6f   movi	v0.2d, #0
0x18798e01c:  e0 83 03 ad   stp	q0, q0, [sp, #0x70]
0x18798e020:  e0 83 02 ad   stp	q0, q0, [sp, #0x50]
0x18798e024:  61 0e 40 f9   ldr	x1, [x19, #0x18]
0x18798e028:  e0 43 01 91   add	x0, sp, #0x50
0x18798e02c:  18 f2 fc 97   bl	0x1878ca88c
0x18798e030:  68 c6 45 39   ldrb	w8, [x19, #0x171]
0x18798e034:  c8 4d 00 36   tbz	w8, #0, 0x18798e9ec
0x18798e038:  f6 33 40 f9   ldr	x22, [sp, #0x60]
0x18798e03c:  75 02 08 91   add	x21, x19, #0x200
0x18798e040:  62 6a 40 f9   ldr	x2, [x19, #0xd0]
0x18798e044:  e0 43 01 91   add	x0, sp, #0x50
0x18798e048:  e1 03 15 aa   mov	x1, x21
0x18798e04c:  03 02 80 52   mov	w3, #0x10
0x18798e050:  06 ff ff 97   bl	0x18798dc68
0x18798e054:  1f 40 00 f1   cmp	x0, #0x10
0x18798e058:  a1 4c 00 54   b.ne	0x18798e9ec
0x18798e05c:  a8 02 40 b9   ldr	w8, [x21]
0x18798e060:  69 62 95 52   mov	w9, #0xab13
0x18798e064:  29 94 ab 72   movk	w9, #0x5ca1, lsl #0x10
0x18798e068:  1f 01 09 6b   cmp	w8, w9
0x18798e06c:  00 04 00 54   b.eq	0x18798e0ec
0x18798e070:  f5 83 02 91   add	x21, sp, #0xa0
0x18798e074:  00 e4 00 6f   movi	v0.2d, #0
0x18798e078:  a0 82 03 ad   stp	q0, q0, [x21, #0x70]
0x18798e07c:  a0 82 02 ad   stp	q0, q0, [x21, #0x50]
0x18798e080:  62 6a 40 f9   ldr	x2, [x19, #0xd0]
0x18798e084:  e0 43 01 91   add	x0, sp, #0x50
0x18798e088:  a1 83 02 d1   sub	x1, fp, #0xa0
0x18798e08c:  03 08 80 52   mov	w3, #0x40
0x18798e090:  f6 fe ff 97   bl	0x18798dc68
0x18798e094:  1f 00 01 f1   cmp	x0, #0x40
0x18798e098:  a1 4a 00 54   b.ne	0x18798e9ec
0x18798e09c:  a0 83 02 d1   sub	x0, fp, #0xa0
0x18798e0a0:  dc 03 00 94   bl	0x18798f010
0x18798e0a4:  80 05 00 34   cbz	w0, 0x18798e154
0x18798e0a8:  28 00 80 52   mov	w8, #0x1
0x18798e0ac:  68 22 04 79   strh	w8, [x19, #0x210]
0x18798e0b0:  a0 83 02 d1   sub	x0, fp, #0xa0
0x18798e0b4:  03 ff ff 97   bl	0x18798dcc0
0x18798e0b8:  7f 9e 02 79   strh	wzr, [x19, #0x14e]
0x18798e0bc:  60 1a 40 f9   ldr	x0, [x19, #0x30]
0x18798e0c0:  88 6d 2c d0   adrp	x8, 0x1e0740000
0x18798e0c4:  08 41 1c 91   add	x8, x8, #0x710
0x18798e0c8:  15 01 40 f9   ldr	x21, [x8]
0x18798e0cc:  e1 03 15 aa   mov	x1, x21
0x18798e0d0:  d9 9e fc 97   bl	0x1878b5c34
0x18798e0d4:  e8 03 00 aa   mov	x8, x0
0x18798e0d8:  60 1a 40 f9   ldr	x0, [x19, #0x30]
0x18798e0dc:  08 13 00 34   cbz	w8, 0x18798e33c
0x18798e0e0:  e1 03 15 aa   mov	x1, x21
0x18798e0e4:  31 c2 fc 97   bl	0x1878be9a8
0x18798e0e8:  a2 00 00 14   b	0x18798e370
0x18798e0ec:  7f 22 04 79   strh	wzr, [x19, #0x210]
0x18798e0f0:  68 12 48 39   ldrb	w8, [x19, #0x204]
0x18798e0f4:  69 16 48 39   ldrb	w9, [x19, #0x205]
0x18798e0f8:  2a 21 08 2a   orr	w10, w9, w8, lsl #0x8
0x18798e0fc:  5f 1d 20 71   cmp	w10, #0x807
0x18798e100:  6c 01 00 54   b.gt	0x18798e12c
0x18798e104:  5f 11 18 71   cmp	w10, #0x604
0x18798e108:  ad 0f 00 54   b.le	0x18798e2fc
0x18798e10c:  5f 11 20 71   cmp	w10, #0x804
0x18798e110:  4c 13 00 54   b.gt	0x18798e378
0x18798e114:  5f 15 18 71   cmp	w10, #0x605
0x18798e118:  60 26 00 54   b.eq	0x18798e5e4
0x18798e11c:  5f 19 18 71   cmp	w10, #0x606
0x18798e120:  81 49 00 54   b.ne	0x18798ea50
0x18798e124:  08 1a 80 52   mov	w8, #0xd0
0x18798e128:  3e 01 00 14   b	0x18798e620
0x18798e12c:  5f 1d 28 71   cmp	w10, #0xa07
0x18798e130:  6d 0f 00 54   b.le	0x18798e31c
0x18798e134:  5f 25 30 71   cmp	w10, #0xc09
0x18798e138:  cc 12 00 54   b.gt	0x18798e390
0x18798e13c:  5f 21 28 71   cmp	w10, #0xa08
0x18798e140:  60 25 00 54   b.eq	0x18798e5ec
0x18798e144:  5f 29 28 71   cmp	w10, #0xa0a
0x18798e148:  41 48 00 54   b.ne	0x18798ea50
0x18798e14c:  08 1b 80 52   mov	w8, #0xd8
0x18798e150:  34 01 00 14   b	0x18798e620
0x18798e154:  00 e4 00 6f   movi	v0.2d, #0
0x18798e158:  a0 82 01 ad   stp	q0, q0, [x21, #0x30]
0x18798e15c:  e0 83 05 ad   stp	q0, q0, [sp, #0xb0]
0x18798e160:  e0 2b 80 3d   str	q0, [sp, #0xa0]
0x18798e164:  62 6a 40 f9   ldr	x2, [x19, #0xd0]
0x18798e168:  e0 43 01 91   add	x0, sp, #0x50
0x18798e16c:  e1 83 02 91   add	x1, sp, #0xa0
0x18798e170:  03 0a 80 52   mov	w3, #0x50
0x18798e174:  bd fe ff 97   bl	0x18798dc68
0x18798e178:  1f 40 01 f1   cmp	x0, #0x50
0x18798e17c:  81 43 00 54   b.ne	0x18798e9ec
0x18798e180:  e0 83 02 91   add	x0, sp, #0xa0
0x18798e184:  7f 31 04 94   bl	0x187a9a780
0x18798e188:  20 43 00 34   cbz	w0, 0x18798e9ec
0x18798e18c:  e8 c3 40 b9   ldr	w8, [sp, #0xc0]
0x18798e190:  e9 33 40 f9   ldr	x9, [sp, #0x60]
0x18798e194:  3f 01 08 eb   cmp	x9, x8
0x18798e198:  29 66 00 54   b.ls	0x18798ee5c
0x18798e19c:  e8 d3 40 b9   ldr	w8, [sp, #0xd0]
0x18798e1a0:  3f 01 08 eb   cmp	x9, x8
0x18798e1a4:  49 66 00 54   b.ls	0x18798ee6c
0x18798e1a8:  e8 d7 40 b9   ldr	w8, [sp, #0xd4]
0x18798e1ac:  3f 01 08 eb   cmp	x9, x8
0x18798e1b0:  69 66 00 54   b.ls	0x18798ee7c
0x18798e1b4:  e8 db 40 b9   ldr	w8, [sp, #0xd8]
0x18798e1b8:  3f 01 08 eb   cmp	x9, x8
0x18798e1bc:  89 66 00 54   b.ls	0x18798ee8c
0x18798e1c0:  e8 df 40 b9   ldr	w8, [sp, #0xdc]
0x18798e1c4:  3f 01 08 eb   cmp	x9, x8
0x18798e1c8:  a9 66 00 54   b.ls	0x18798ee9c
0x18798e1cc:  e8 73 40 f9   ldr	x8, [sp, #0xe0]
0x18798e1d0:  1f 01 09 eb   cmp	x8, x9
0x18798e1d4:  42 67 00 54   b.hs	0x18798eebc
0x18798e1d8:  e8 77 40 f9   ldr	x8, [sp, #0xe8]
0x18798e1dc:  1f 01 09 eb   cmp	x8, x9
0x18798e1e0:  62 67 00 54   b.hs	0x18798eecc
0x18798e1e4:  08 20 80 52   mov	w8, #0x100
0x18798e1e8:  68 22 04 79   strh	w8, [x19, #0x210]
0x18798e1ec:  e8 b7 40 b9   ldr	w8, [sp, #0xb4]
0x18798e1f0:  df 02 08 eb   cmp	x22, x8
0x18798e1f4:  c9 3f 00 54   b.ls	0x18798e9ec
0x18798e1f8:  e8 bb 40 b9   ldr	w8, [sp, #0xb8]
0x18798e1fc:  df 02 08 eb   cmp	x22, x8
0x18798e200:  69 3f 00 54   b.ls	0x18798e9ec
0x18798e204:  e8 cb 40 b9   ldr	w8, [sp, #0xc8]
0x18798e208:  1f 41 00 71   cmp	w8, #0x10
0x18798e20c:  08 3f 00 54   b.hi	0x18798e9ec
0x18798e210:  e0 af 40 b9   ldr	w0, [sp, #0xac]
0x18798e214:  59 6d 05 94   bl	0x187ae9778
0x18798e218:  60 de 01 b9   str	w0, [x19, #0x1dc]
0x18798e21c:  08 78 03 51   sub	w8, w0, #0xde
0x18798e220:  1f 39 00 71   cmp	w8, #0xe
0x18798e224:  a8 00 00 54   b.hi	0x18798e238
0x18798e228:  e0 03 14 aa   mov	x0, x20
0x18798e22c:  21 00 80 52   mov	w1, #0x1
0x18798e230:  f7 6c 05 94   bl	0x187ae960c
0x18798e234:  60 de 41 b9   ldr	w0, [x19, #0x1dc]
0x18798e238:  7f d2 05 39   strb	wzr, [x19, #0x174]
0x18798e23c:  f7 d7 56 29   ldp	w23, w21, [sp, #0xb4]
0x18798e240:  77 d2 01 b9   str	w23, [x19, #0x1d0]
0x18798e244:  75 d6 01 b9   str	w21, [x19, #0x1d4]
0x18798e248:  28 00 80 52   mov	w8, #0x1
0x18798e24c:  68 da 01 b9   str	w8, [x19, #0x1d8]
0x18798e250:  78 e2 40 b9   ldr	w24, [x19, #0xe0]
0x18798e254:  ff 23 01 39   strb	wzr, [sp, #0x48]
0x18798e258:  ff 3f 01 39   strb	wzr, [sp, #0x4f]
0x18798e25c:  e1 23 01 91   add	x1, sp, #0x48
0x18798e260:  e2 3f 01 91   add	x2, sp, #0x4f
0x18798e264:  7b 04 00 94   bl	0x18798f450
0x18798e268:  e8 23 41 39   ldrb	w8, [sp, #0x48]
0x18798e26c:  08 3c 00 34   cbz	w8, 0x18798e9ec
0x18798e270:  e9 26 d8 1a   lsr	w9, w23, w24
0x18798e274:  aa 26 d8 1a   lsr	w10, w21, w24
0x18798e278:  68 12 08 39   strb	w8, [x19, #0x204]
0x18798e27c:  eb 3f 41 39   ldrb	w11, [sp, #0x4f]
0x18798e280:  6b 16 08 39   strb	w11, [x19, #0x205]
0x18798e284:  2c 00 80 52   mov	w12, #0x1
0x18798e288:  6c 1a 08 39   strb	w12, [x19, #0x206]
0x18798e28c:  69 1e 08 39   strb	w9, [x19, #0x207]
0x18798e290:  2d 7d 08 53   lsr	w13, w9, #0x8
0x18798e294:  6d 22 08 39   strb	w13, [x19, #0x208]
0x18798e298:  29 7d 10 53   lsr	w9, w9, #0x10
0x18798e29c:  69 26 08 39   strb	w9, [x19, #0x209]
0x18798e2a0:  6a 2a 08 39   strb	w10, [x19, #0x20a]
0x18798e2a4:  49 7d 08 53   lsr	w9, w10, #0x8
0x18798e2a8:  69 2e 08 39   strb	w9, [x19, #0x20b]
0x18798e2ac:  49 7d 10 53   lsr	w9, w10, #0x10
0x18798e2b0:  69 32 08 39   strb	w9, [x19, #0x20c]
0x18798e2b4:  69 36 08 91   add	x9, x19, #0x20d
0x18798e2b8:  2c 01 00 79   strh	w12, [x9]
0x18798e2bc:  7f 3e 08 39   strb	wzr, [x19, #0x20f]
0x18798e2c0:  69 d2 41 b9   ldr	w9, [x19, #0x1d0]
0x18798e2c4:  09 01 09 0b   add	w9, w8, w9
0x18798e2c8:  29 05 00 51   sub	w9, w9, #0x1
0x18798e2cc:  29 09 c8 1a   udiv	w9, w9, w8
0x18798e2d0:  69 e2 01 b9   str	w9, [x19, #0x1e0]
0x18798e2d4:  68 d6 41 b9   ldr	w8, [x19, #0x1d4]
0x18798e2d8:  68 01 08 0b   add	w8, w11, w8
0x18798e2dc:  08 05 00 51   sub	w8, w8, #0x1
0x18798e2e0:  08 09 cb 1a   udiv	w8, w8, w11
0x18798e2e4:  68 e6 01 b9   str	w8, [x19, #0x1e4]
0x18798e2e8:  df 02 09 eb   cmp	x22, x9
0x18798e2ec:  03 38 00 54   b.lo	0x18798e9ec
0x18798e2f0:  df 02 08 eb   cmp	x22, x8
0x18798e2f4:  a2 20 00 54   b.hs	0x18798e708
0x18798e2f8:  bd 01 00 14   b	0x18798e9ec
0x18798e2fc:  5f 11 10 71   cmp	w10, #0x404
0x18798e300:  20 18 00 54   b.eq	0x18798e604
0x18798e304:  5f 11 14 71   cmp	w10, #0x504
0x18798e308:  60 18 00 54   b.eq	0x18798e614
0x18798e30c:  5f 15 14 71   cmp	w10, #0x505
0x18798e310:  01 3a 00 54   b.ne	0x18798ea50
0x18798e314:  c8 19 80 52   mov	w8, #0xce
0x18798e318:  c2 00 00 14   b	0x18798e620
0x18798e31c:  5f 21 20 71   cmp	w10, #0x808
0x18798e320:  60 17 00 54   b.eq	0x18798e60c
0x18798e324:  5f 15 28 71   cmp	w10, #0xa05
0x18798e328:  a0 17 00 54   b.eq	0x18798e61c
0x18798e32c:  5f 19 28 71   cmp	w10, #0xa06
0x18798e330:  01 39 00 54   b.ne	0x18798ea50
0x18798e334:  c8 1a 80 52   mov	w8, #0xd6
0x18798e338:  ba 00 00 14   b	0x18798e620
0x18798e33c:  88 6d 2c d0   adrp	x8, 0x1e0740000
0x18798e340:  08 c1 08 91   add	x8, x8, #0x230
0x18798e344:  15 01 40 f9   ldr	x21, [x8]
0x18798e348:  e1 03 15 aa   mov	x1, x21
0x18798e34c:  3a 9e fc 97   bl	0x1878b5c34
0x18798e350:  c0 02 00 36   tbz	w0, #0, 0x18798e3a8
0x18798e354:  60 1a 40 f9   ldr	x0, [x19, #0x30]
0x18798e358:  e1 03 15 aa   mov	x1, x21
0x18798e35c:  93 c1 fc 97   bl	0x1878be9a8
0x18798e360:  80 00 00 34   cbz	w0, 0x18798e370
0x18798e364:  00 00 63 1e   ucvtf	d0, w0
0x18798e368:  2a df 1e 94   bl	0x188146010
0x18798e36c:  00 00 78 1e   fcvtzs	w0, d0
0x18798e370:  60 9e 02 79   strh	w0, [x19, #0x14e]
0x18798e374:  0e 00 00 14   b	0x18798e3ac
0x18798e378:  5f 15 20 71   cmp	w10, #0x805
0x18798e37c:  c0 13 00 54   b.eq	0x18798e5f4
0x18798e380:  5f 19 20 71   cmp	w10, #0x806
0x18798e384:  61 36 00 54   b.ne	0x18798ea50
0x18798e388:  68 1a 80 52   mov	w8, #0xd3
0x18798e38c:  a5 00 00 14   b	0x18798e620
0x18798e390:  5f 29 30 71   cmp	w10, #0xc0a
0x18798e394:  40 13 00 54   b.eq	0x18798e5fc
0x18798e398:  5f 31 30 71   cmp	w10, #0xc0c
0x18798e39c:  a1 35 00 54   b.ne	0x18798ea50
0x18798e3a0:  48 1b 80 52   mov	w8, #0xda
0x18798e3a4:  9f 00 00 14   b	0x18798e620
0x18798e3a8:  60 9e 42 79   ldrh	w0, [x19, #0x14e]
0x18798e3ac:  a8 83 59 b8   ldur	w8, [fp, #-0x68]
0x18798e3b0:  1f 21 20 6b   cmp	w8, w0, uxth
0x18798e3b4:  69 00 00 54   b.ls	0x18798e3c0
0x18798e3b8:  09 3c 00 12   and	w9, w0, #0xffff
0x18798e3bc:  04 00 00 14   b	0x18798e3cc
0x18798e3c0:  09 05 00 71   subs	w9, w8, #0x1
0x18798e3c4:  e9 33 89 1a   csel	w9, wzr, w9, cc
0x18798e3c8:  69 9e 02 79   strh	w9, [x19, #0x14e]
0x18798e3cc:  aa af 70 29   ldp	w10, w11, [fp, #-0x7c]
0x18798e3d0:  4a 25 c9 1a   lsr	w10, w10, w9
0x18798e3d4:  69 25 c9 1a   lsr	w9, w11, w9
0x18798e3d8:  3f 01 00 71   cmp	w9, #0
0x18798e3dc:  44 09 40 7a   ccmp	w10, #0, #0x4, eq
0x18798e3e0:  29 05 9f 1a   csinc	w9, w9, wzr, eq
0x18798e3e4:  6a a6 1e 29   stp	w10, w9, [x19, #0xf4]
0x18798e3e8:  df 02 0a eb   cmp	x22, x10
0x18798e3ec:  09 30 00 54   b.ls	0x18798e9ec
0x18798e3f0:  1f 41 00 71   cmp	w8, #0x10
0x18798e3f4:  c8 2f 00 54   b.hi	0x18798e9ec
0x18798e3f8:  df 02 09 eb   cmp	x22, x9
0x18798e3fc:  89 2f 00 54   b.ls	0x18798e9ec
0x18798e400:  a8 43 59 b8   ldur	w8, [fp, #-0x6c]
0x18798e404:  1f 05 00 71   cmp	w8, #0x1
0x18798e408:  60 00 00 54   b.eq	0x18798e414
0x18798e40c:  1f 19 00 71   cmp	w8, #0x6
0x18798e410:  a1 0d 00 54   b.ne	0x18798e5c4
0x18798e414:  a8 c3 58 b8   ldur	w8, [fp, #-0x74]
0x18798e418:  1f 7d 00 71   cmp	w8, #0x1f
0x18798e41c:  88 2e 00 54   b.hi	0x18798e9ec
0x18798e420:  a0 c3 57 b8   ldur	w0, [fp, #-0x84]
0x18798e424:  22 09 fd 97   bl	0x1878d08ac
0x18798e428:  60 de 01 b9   str	w0, [x19, #0x1dc]
0x18798e42c:  a8 c3 56 b8   ldur	w8, [fp, #-0x94]
0x18798e430:  29 40 80 52   mov	w9, #0x201
0x18798e434:  69 80 a0 72   movk	w9, #0x403, lsl #0x10
0x18798e438:  1f 01 09 6b   cmp	w8, w9
0x18798e43c:  e8 17 9f 1a   cset	w8, eq
0x18798e440:  68 d2 05 39   strb	w8, [x19, #0x174]
0x18798e444:  77 d6 5e 29   ldp	w23, w21, [x19, #0xf4]
0x18798e448:  77 d2 01 b9   str	w23, [x19, #0x1d0]
0x18798e44c:  75 d6 01 b9   str	w21, [x19, #0x1d4]
0x18798e450:  28 00 80 52   mov	w8, #0x1
0x18798e454:  68 da 01 b9   str	w8, [x19, #0x1d8]
0x18798e458:  ff 23 01 39   strb	wzr, [sp, #0x48]
0x18798e45c:  ff 3f 01 39   strb	wzr, [sp, #0x4f]
0x18798e460:  e1 23 01 91   add	x1, sp, #0x48
0x18798e464:  e2 3f 01 91   add	x2, sp, #0x4f
0x18798e468:  fa 03 00 94   bl	0x18798f450
0x18798e46c:  e8 23 41 39   ldrb	w8, [sp, #0x48]
0x18798e470:  e8 2b 00 34   cbz	w8, 0x18798e9ec
0x18798e474:  68 12 08 39   strb	w8, [x19, #0x204]
0x18798e478:  e9 3f 41 39   ldrb	w9, [sp, #0x4f]
0x18798e47c:  69 16 08 39   strb	w9, [x19, #0x205]
0x18798e480:  2a 00 80 52   mov	w10, #0x1
0x18798e484:  6a 1a 08 39   strb	w10, [x19, #0x206]
0x18798e488:  77 1e 08 39   strb	w23, [x19, #0x207]
0x18798e48c:  eb 7e 08 53   lsr	w11, w23, #0x8
0x18798e490:  6b 22 08 39   strb	w11, [x19, #0x208]
0x18798e494:  eb 7e 10 53   lsr	w11, w23, #0x10
0x18798e498:  6b 26 08 39   strb	w11, [x19, #0x209]
0x18798e49c:  75 2a 08 39   strb	w21, [x19, #0x20a]
0x18798e4a0:  ab 7e 08 53   lsr	w11, w21, #0x8
0x18798e4a4:  6b 2e 08 39   strb	w11, [x19, #0x20b]
0x18798e4a8:  ab 7e 10 53   lsr	w11, w21, #0x10
0x18798e4ac:  6b 32 08 39   strb	w11, [x19, #0x20c]
0x18798e4b0:  6b 36 08 91   add	x11, x19, #0x20d
0x18798e4b4:  6a 01 00 79   strh	w10, [x11]
0x18798e4b8:  7f 3e 08 39   strb	wzr, [x19, #0x20f]
0x18798e4bc:  6a d2 41 b9   ldr	w10, [x19, #0x1d0]
0x18798e4c0:  0a 01 0a 0b   add	w10, w8, w10
0x18798e4c4:  4a 05 00 51   sub	w10, w10, #0x1
0x18798e4c8:  4a 09 c8 1a   udiv	w10, w10, w8
0x18798e4cc:  6a e2 01 b9   str	w10, [x19, #0x1e0]
0x18798e4d0:  68 d6 41 b9   ldr	w8, [x19, #0x1d4]
0x18798e4d4:  28 01 08 0b   add	w8, w9, w8
0x18798e4d8:  08 05 00 51   sub	w8, w8, #0x1
0x18798e4dc:  08 09 c9 1a   udiv	w8, w8, w9
0x18798e4e0:  68 e6 01 b9   str	w8, [x19, #0x1e4]
0x18798e4e4:  df 02 0a eb   cmp	x22, x10
0x18798e4e8:  23 28 00 54   b.lo	0x18798e9ec
0x18798e4ec:  df 02 08 eb   cmp	x22, x8
0x18798e4f0:  e3 27 00 54   b.lo	0x18798e9ec
0x18798e4f4:  a1 83 02 d1   sub	x1, fp, #0xa0
0x18798e4f8:  e0 03 13 aa   mov	x0, x19
0x18798e4fc:  ee 02 00 94   bl	0x18798f0b4
0x18798e500:  60 27 00 34   cbz	w0, 0x18798e9ec
0x18798e504:  61 56 48 39   ldrb	w1, [x19, #0x215]
0x18798e508:  3f fc 03 71   cmp	w1, #0xff
0x18798e50c:  80 01 00 54   b.eq	0x18798e53c
0x18798e510:  75 1e 40 f9   ldr	x21, [x19, #0x38]
0x18798e514:  e0 83 02 91   add	x0, sp, #0xa0
0x18798e518:  65 cb fc 97   bl	0x1878c12ac
0x18798e51c:  88 6d 2c d0   adrp	x8, 0x1e0740000
0x18798e520:  08 a1 2c 91   add	x8, x8, #0xb28
0x18798e524:  02 01 40 f9   ldr	x2, [x8]
0x18798e528:  e1 83 02 91   add	x1, sp, #0xa0
0x18798e52c:  e0 03 15 aa   mov	x0, x21
0x18798e530:  7b cb fc 97   bl	0x1878c131c
0x18798e534:  e0 83 02 91   add	x0, sp, #0xa0
0x18798e538:  cd d0 fc 97   bl	0x1878c286c
0x18798e53c:  a8 c3 59 b8   ldur	w8, [fp, #-0x64]
0x18798e540:  02 01 01 91   add	x2, x8, #0x40
0x18798e544:  62 6a 00 f9   str	x2, [x19, #0xd0]
0x18798e548:  a1 83 02 d1   sub	x1, fp, #0xa0
0x18798e54c:  e0 03 13 aa   mov	x0, x19
0x18798e550:  f6 4f 07 94   bl	0x187b62528
0x18798e554:  60 6a 00 f9   str	x0, [x19, #0xd0]
0x18798e558:  e1 03 00 2a   mov	w1, w0
0x18798e55c:  e0 03 14 aa   mov	x0, x20
0x18798e560:  d1 08 fd 97   bl	0x1878d08a4
0x18798e564:  68 52 48 39   ldrb	w8, [x19, #0x214]
0x18798e568:  08 0d 00 35   cbnz	w8, 0x18798e708
0x18798e56c:  68 e2 41 b9   ldr	w8, [x19, #0x1e0]
0x18798e570:  69 e6 41 b9   ldr	w9, [x19, #0x1e4]
0x18798e574:  09 7d a9 9b   umull	x9, w8, w9
0x18798e578:  68 aa 4c a9   ldp	x8, x10, [x19, #0xc8]
0x18798e57c:  4a 11 09 8b   add	x10, x10, x9, lsl #0x4
0x18798e580:  1f 01 0a eb   cmp	x8, x10
0x18798e584:  22 0c 00 54   b.hs	0x18798e708
0x18798e588:  29 ed 7c d3   lsl	x9, x9, #0x4
0x18798e58c:  6a 12 48 39   ldrb	w10, [x19, #0x204]
0x18798e590:  6b 16 48 39   ldrb	w11, [x19, #0x205]
0x18798e594:  6c d2 41 b9   ldr	w12, [x19, #0x1d0]
0x18798e598:  6d d6 41 b9   ldr	w13, [x19, #0x1d4]
0x18798e59c:  e8 27 02 a9   stp	x8, x9, [sp, #0x20]
0x18798e5a0:  ec 37 01 a9   stp	x12, x13, [sp, #0x10]
0x18798e5a4:  e0 24 00 d0   adrp	x0, 0x187e2c000
0x18798e5a8:  00 18 3b 91   add	x0, x0, #0xec6
0x18798e5ac:  ea 2f 00 a9   stp	x10, x11, [sp]
0x18798e5b0:  e2 28 00 f0   adrp	x2, 0x187ead000
0x18798e5b4:  42 a4 3b 91   add	x2, x2, #0xee9
0x18798e5b8:  e1 3b 80 52   mov	w1, #0x1df
0x18798e5bc:  65 09 fd 97   bl	0x1878d0b50
0x18798e5c0:  0b 01 00 14   b	0x18798e9ec
0x18798e5c4:  e0 24 00 d0   adrp	x0, 0x187e2c000
0x18798e5c8:  00 18 3b 91   add	x0, x0, #0xec6
0x18798e5cc:  e8 03 00 f9   str	x8, [sp]
0x18798e5d0:  e2 28 00 f0   adrp	x2, 0x187ead000
0x18798e5d4:  42 08 3b 91   add	x2, x2, #0xec2
0x18798e5d8:  81 33 80 52   mov	w1, #0x19c
0x18798e5dc:  5d 09 fd 97   bl	0x1878d0b50
0x18798e5e0:  03 01 00 14   b	0x18798e9ec
0x18798e5e4:  e8 19 80 52   mov	w8, #0xcf
0x18798e5e8:  0e 00 00 14   b	0x18798e620
0x18798e5ec:  e8 1a 80 52   mov	w8, #0xd7
0x18798e5f0:  0c 00 00 14   b	0x18798e620
0x18798e5f4:  48 1a 80 52   mov	w8, #0xd2
0x18798e5f8:  0a 00 00 14   b	0x18798e620
0x18798e5fc:  28 1b 80 52   mov	w8, #0xd9
0x18798e600:  08 00 00 14   b	0x18798e620
0x18798e604:  88 19 80 52   mov	w8, #0xcc
0x18798e608:  06 00 00 14   b	0x18798e620
0x18798e60c:  88 1a 80 52   mov	w8, #0xd4
0x18798e610:  04 00 00 14   b	0x18798e620
0x18798e614:  a8 19 80 52   mov	w8, #0xcd
0x18798e618:  02 00 00 14   b	0x18798e620
0x18798e61c:  a8 1a 80 52   mov	w8, #0xd5
0x18798e620:  68 de 01 b9   str	w8, [x19, #0x1dc]
0x18798e624:  08 02 80 52   mov	w8, #0x10
0x18798e628:  68 6a 00 f9   str	x8, [x19, #0xd0]
0x18798e62c:  e0 03 14 aa   mov	x0, x20
0x18798e630:  01 02 80 52   mov	w1, #0x10
0x18798e634:  9c 08 fd 97   bl	0x1878d08a4
0x18798e638:  68 1e 08 91   add	x8, x19, #0x207
0x18798e63c:  08 01 40 79   ldrh	w8, [x8]
0x18798e640:  69 26 48 39   ldrb	w9, [x19, #0x209]
0x18798e644:  08 41 09 2a   orr	w8, w8, w9, lsl #0x10
0x18798e648:  68 d2 01 b9   str	w8, [x19, #0x1d0]
0x18798e64c:  69 16 44 79   ldrh	w9, [x19, #0x20a]
0x18798e650:  6a 32 48 39   ldrb	w10, [x19, #0x20c]
0x18798e654:  2a 41 0a 2a   orr	w10, w9, w10, lsl #0x10
0x18798e658:  6a d6 01 b9   str	w10, [x19, #0x1d4]
0x18798e65c:  69 36 08 91   add	x9, x19, #0x20d
0x18798e660:  29 01 40 79   ldrh	w9, [x9]
0x18798e664:  6b 3e 48 39   ldrb	w11, [x19, #0x20f]
0x18798e668:  29 41 0b 2a   orr	w9, w9, w11, lsl #0x10
0x18798e66c:  69 da 01 b9   str	w9, [x19, #0x1d8]
0x18798e670:  69 12 48 39   ldrb	w9, [x19, #0x204]
0x18798e674:  0b 01 09 0b   add	w11, w8, w9
0x18798e678:  6b 05 00 51   sub	w11, w11, #0x1
0x18798e67c:  6c 09 c9 1a   udiv	w12, w11, w9
0x18798e680:  6c e2 01 b9   str	w12, [x19, #0x1e0]
0x18798e684:  6b 16 48 39   ldrb	w11, [x19, #0x205]
0x18798e688:  4d 01 0b 0b   add	w13, w10, w11
0x18798e68c:  ad 05 00 51   sub	w13, w13, #0x1
0x18798e690:  ad 09 cb 1a   udiv	w13, w13, w11
0x18798e694:  6d e6 01 b9   str	w13, [x19, #0x1e4]
0x18798e698:  8d 7d ad 9b   umull	x13, w12, w13
0x18798e69c:  6c ba 4c a9   ldp	x12, x14, [x19, #0xc8]
0x18798e6a0:  ce 11 0d 8b   add	x14, x14, x13, lsl #0x4
0x18798e6a4:  9f 01 0e eb   cmp	x12, x14
0x18798e6a8:  82 01 00 54   b.hs	0x18798e6d8
0x18798e6ac:  ad ed 7c d3   lsl	x13, x13, #0x4
0x18798e6b0:  ec 37 02 a9   stp	x12, x13, [sp, #0x20]
0x18798e6b4:  e8 2b 01 a9   stp	x8, x10, [sp, #0x10]
0x18798e6b8:  e0 24 00 d0   adrp	x0, 0x187e2c000
0x18798e6bc:  00 18 3b 91   add	x0, x0, #0xec6
0x18798e6c0:  e9 2f 00 a9   stp	x9, x11, [sp]
0x18798e6c4:  e2 28 00 f0   adrp	x2, 0x187ead000
0x18798e6c8:  42 f0 39 91   add	x2, x2, #0xe7c
0x18798e6cc:  41 2d 80 52   mov	w1, #0x16a
0x18798e6d0:  20 09 fd 97   bl	0x1878d0b50
0x18798e6d4:  c6 00 00 14   b	0x18798e9ec
0x18798e6d8:  75 1e 40 f9   ldr	x21, [x19, #0x38]
0x18798e6dc:  e0 83 02 91   add	x0, sp, #0xa0
0x18798e6e0:  81 00 80 52   mov	w1, #0x4
0x18798e6e4:  f2 ca fc 97   bl	0x1878c12ac
0x18798e6e8:  88 6d 2c d0   adrp	x8, 0x1e0740000
0x18798e6ec:  08 a1 2c 91   add	x8, x8, #0xb28
0x18798e6f0:  02 01 40 f9   ldr	x2, [x8]
0x18798e6f4:  e1 83 02 91   add	x1, sp, #0xa0
0x18798e6f8:  e0 03 15 aa   mov	x0, x21
0x18798e6fc:  08 cb fc 97   bl	0x1878c131c
0x18798e700:  e0 83 02 91   add	x0, sp, #0xa0
0x18798e704:  5a d0 fc 97   bl	0x1878c286c
0x18798e708:  61 d2 41 b9   ldr	w1, [x19, #0x1d0]
0x18798e70c:  62 d6 41 b9   ldr	w2, [x19, #0x1d4]
0x18798e710:  e0 03 14 aa   mov	x0, x20
0x18798e714:  75 08 fd 97   bl	0x1878d08e8
0x18798e718:  61 de 41 b9   ldr	w1, [x19, #0x1dc]
0x18798e71c:  e0 03 14 aa   mov	x0, x20
0x18798e720:  6f 08 fd 97   bl	0x1878d08dc
0x18798e724:  61 12 48 39   ldrb	w1, [x19, #0x204]
0x18798e728:  62 16 48 39   ldrb	w2, [x19, #0x205]
0x18798e72c:  e0 03 14 aa   mov	x0, x20
0x18798e730:  66 09 fd 97   bl	0x1878d0cc8
0x18798e734:  61 e2 41 b9   ldr	w1, [x19, #0x1e0]
0x18798e738:  62 e6 41 b9   ldr	w2, [x19, #0x1e4]
0x18798e73c:  e0 03 14 aa   mov	x0, x20
0x18798e740:  6b 09 fd 97   bl	0x1878d0cec
0x18798e744:  68 42 48 39   ldrb	w8, [x19, #0x210]
0x18798e748:  1f 05 00 71   cmp	w8, #0x1
0x18798e74c:  81 01 00 54   b.ne	0x18798e77c
0x18798e750:  61 6a 40 f9   ldr	x1, [x19, #0xd0]
0x18798e754:  e0 43 01 91   add	x0, sp, #0x50
0x18798e758:  c5 f0 fc 97   bl	0x1878caa6c
0x18798e75c:  e0 43 01 91   add	x0, sp, #0x50
0x18798e760:  d9 f0 fc 97   bl	0x1878caac4
0x18798e764:  88 49 8b 52   mov	w8, #0x5a4c
0x18798e768:  c8 68 aa 72   movk	w8, #0x5346, lsl #0x10
0x18798e76c:  1f 00 08 6b   cmp	w0, w8
0x18798e770:  a1 00 00 54   b.ne	0x18798e784
0x18798e774:  75 6a 40 f9   ldr	x21, [x19, #0xd0]
0x18798e778:  07 00 00 14   b	0x18798e794
0x18798e77c:  15 02 80 52   mov	w21, #0x10
0x18798e780:  1c 00 00 14   b	0x18798e7f0
0x18798e784:  e0 43 01 91   add	x0, sp, #0x50
0x18798e788:  cf f0 fc 97   bl	0x1878caac4
0x18798e78c:  68 6a 40 f9   ldr	x8, [x19, #0xd0]
0x18798e790:  15 11 00 91   add	x21, x8, #0x4
0x18798e794:  16 b7 2f d0   adrp	x22, 0x1e7070000
0x18798e798:  d6 02 30 91   add	x22, x22, #0xc00
0x18798e79c:  c8 0a 40 39   ldrb	w8, [x22, #0x2]
0x18798e7a0:  1f 05 00 72   tst	w8, #0x3
0x18798e7a4:  60 02 00 54   b.eq	0x18798e7f0
0x18798e7a8:  40 26 00 f0   adrp	x0, 0x187e59000
0x18798e7ac:  00 74 01 91   add	x0, x0, #0x5d
0x18798e7b0:  0f e5 fe 97   bl	0x187947bec
0x18798e7b4:  c8 0a 40 39   ldrb	w8, [x22, #0x2]
0x18798e7b8:  1f 05 00 72   tst	w8, #0x3
0x18798e7bc:  a0 01 00 54   b.eq	0x18798e7f0
0x18798e7c0:  f5 03 00 f9   str	x21, [sp]
0x18798e7c4:  e0 28 00 f0   adrp	x0, 0x187ead000
0x18798e7c8:  00 cc 3c 91   add	x0, x0, #0xf33
0x18798e7cc:  08 e5 fe 97   bl	0x187947bec
0x18798e7d0:  c8 0a 40 39   ldrb	w8, [x22, #0x2]
0x18798e7d4:  1f 05 00 72   tst	w8, #0x3
0x18798e7d8:  c0 00 00 54   b.eq	0x18798e7f0
0x18798e7dc:  68 6a 40 f9   ldr	x8, [x19, #0xd0]
0x18798e7e0:  e8 03 00 f9   str	x8, [sp]
0x18798e7e4:  e0 28 00 f0   adrp	x0, 0x187ead000
0x18798e7e8:  00 64 3d 91   add	x0, x0, #0xf59
0x18798e7ec:  00 e5 fe 97   bl	0x187947bec
0x18798e7f0:  68 46 48 39   ldrb	w8, [x19, #0x211]
0x18798e7f4:  c8 08 00 37   tbnz	w8, #0, 0x18798e90c
0x18798e7f8:  e0 43 01 91   add	x0, sp, #0x50
0x18798e7fc:  e1 03 15 aa   mov	x1, x21
0x18798e800:  9b f0 fc 97   bl	0x1878caa6c
0x18798e804:  e0 43 01 91   add	x0, sp, #0x50
0x18798e808:  af f0 fc 97   bl	0x1878caac4
0x18798e80c:  88 49 8b 52   mov	w8, #0x5a4c
0x18798e810:  c8 68 aa 72   movk	w8, #0x5346, lsl #0x10
0x18798e814:  1f 00 08 6b   cmp	w0, w8
0x18798e818:  a1 07 00 54   b.ne	0x18798e90c
0x18798e81c:  e0 03 14 aa   mov	x0, x20
0x18798e820:  21 00 80 52   mov	w1, #0x1
0x18798e824:  78 6b 05 94   bl	0x187ae9604
0x18798e828:  ff a3 00 b9   str	wzr, [sp, #0xa0]
0x18798e82c:  b6 12 00 91   add	x22, x21, #0x4
0x18798e830:  e0 43 01 91   add	x0, sp, #0x50
0x18798e834:  e1 83 02 91   add	x1, sp, #0xa0
0x18798e838:  e2 03 16 aa   mov	x2, x22
0x18798e83c:  83 00 80 52   mov	w3, #0x4
0x18798e840:  0a fd ff 97   bl	0x18798dc68
0x18798e844:  e1 a3 40 b9   ldr	w1, [sp, #0xa0]
0x18798e848:  e0 03 14 aa   mov	x0, x20
0x18798e84c:  72 6b 05 94   bl	0x187ae9614
0x18798e850:  b5 22 00 91   add	x21, x21, #0x8
0x18798e854:  e1 03 15 2a   mov	w1, w21
0x18798e858:  e0 03 14 aa   mov	x0, x20
0x18798e85c:  83 2e 05 94   bl	0x187ada268
0x18798e860:  17 b7 2f d0   adrp	x23, 0x1e7070000
0x18798e864:  f7 02 30 91   add	x23, x23, #0xc00
0x18798e868:  e8 0a 40 39   ldrb	w8, [x23, #0x2]
0x18798e86c:  1f 05 00 72   tst	w8, #0x3
0x18798e870:  a0 01 00 54   b.eq	0x18798e8a4
0x18798e874:  e8 a3 40 b9   ldr	w8, [sp, #0xa0]
0x18798e878:  e8 03 00 f9   str	x8, [sp]
0x18798e87c:  e0 28 00 f0   adrp	x0, 0x187ead000
0x18798e880:  00 14 3e 91   add	x0, x0, #0xf85
0x18798e884:  da e4 fe 97   bl	0x187947bec
0x18798e888:  e8 0a 40 39   ldrb	w8, [x23, #0x2]
0x18798e88c:  1f 05 00 72   tst	w8, #0x3
0x18798e890:  a0 00 00 54   b.eq	0x18798e8a4
0x18798e894:  f5 03 00 f9   str	x21, [sp]
0x18798e898:  e0 28 00 f0   adrp	x0, 0x187ead000
0x18798e89c:  00 a8 3e 91   add	x0, x0, #0xfaa
0x18798e8a0:  d3 e4 fe 97   bl	0x187947bec
0x18798e8a4:  e8 a3 40 b9   ldr	w8, [sp, #0xa0]
0x18798e8a8:  1f 25 00 71   cmp	w8, #0x9
0x18798e8ac:  03 03 00 54   b.lo	0x18798e90c
0x18798e8b0:  bf 03 16 b8   stur	wzr, [fp, #-0xa0]
0x18798e8b4:  ff 4b 00 b9   str	wzr, [sp, #0x48]
0x18798e8b8:  e0 43 01 91   add	x0, sp, #0x50
0x18798e8bc:  a1 83 02 d1   sub	x1, fp, #0xa0
0x18798e8c0:  e2 03 15 aa   mov	x2, x21
0x18798e8c4:  83 00 80 52   mov	w3, #0x4
0x18798e8c8:  e8 fc ff 97   bl	0x18798dc68
0x18798e8cc:  e8 a3 40 b9   ldr	w8, [sp, #0xa0]
0x18798e8d0:  e0 43 01 91   add	x0, sp, #0x50
0x18798e8d4:  e1 23 01 91   add	x1, sp, #0x48
0x18798e8d8:  c2 02 08 8b   add	x2, x22, x8
0x18798e8dc:  83 00 80 52   mov	w3, #0x4
0x18798e8e0:  e2 fc ff 97   bl	0x18798dc68
0x18798e8e4:  a9 03 56 b8   ldur	w9, [fp, #-0xa0]
0x18798e8e8:  48 cc 8e 52   mov	w8, #0x7662
0x18798e8ec:  08 4f a6 72   movk	w8, #0x3278, lsl #0x10
0x18798e8f0:  3f 01 08 6b   cmp	w9, w8
0x18798e8f4:  c1 0e 00 54   b.ne	0x18798eacc
0x18798e8f8:  e8 4b 40 b9   ldr	w8, [sp, #0x48]
0x18798e8fc:  4a cc 8e 52   mov	w10, #0x7662
0x18798e900:  0a 8f a4 72   movk	w10, #0x2478, lsl #0x10
0x18798e904:  1f 01 0a 6b   cmp	w8, w10
0x18798e908:  21 0e 00 54   b.ne	0x18798eacc
0x18798e90c:  75 12 48 39   ldrb	w21, [x19, #0x204]
0x18798e910:  76 16 48 39   ldrb	w22, [x19, #0x205]
0x18798e914:  77 1a 48 39   ldrb	w23, [x19, #0x206]
0x18798e918:  a8 36 00 51   sub	w8, w21, #0xd
0x18798e91c:  1f 29 00 31   cmn	w8, #0xa
0x18798e920:  63 05 00 54   b.lo	0x18798e9cc
0x18798e924:  c8 36 00 51   sub	w8, w22, #0xd
0x18798e928:  1f 29 00 31   cmn	w8, #0xa
0x18798e92c:  03 05 00 54   b.lo	0x18798e9cc
0x18798e930:  ff 0e 00 71   cmp	w23, #0x3
0x18798e934:  e4 3a 41 7a   ccmp	w23, #0x1, #0x4, cc
0x18798e938:  e8 07 9f 1a   cset	w8, ne
0x18798e93c:  ff 32 00 71   cmp	w23, #0xc
0x18798e940:  68 04 00 54   b.hi	0x18798e9cc
0x18798e944:  48 04 00 35   cbnz	w8, 0x18798e9cc
0x18798e948:  e8 33 40 f9   ldr	x8, [sp, #0x60]
0x18798e94c:  69 6a 40 f9   ldr	x9, [x19, #0xd0]
0x18798e950:  18 01 09 eb   subs	x24, x8, x9
0x18798e954:  24 09 00 54   b.mi	0x18798ea78
0x18798e958:  7a d2 41 b9   ldr	w26, [x19, #0x1d0]
0x18798e95c:  79 d6 41 b9   ldr	w25, [x19, #0x1d4]
0x18798e960:  e0 03 14 aa   mov	x0, x20
0x18798e964:  d7 02 00 94   bl	0x18798f4c0
0x18798e968:  a8 02 1a 8b   add	x8, x21, x26
0x18798e96c:  08 05 00 d1   sub	x8, x8, #0x1
0x18798e970:  08 09 d5 9a   udiv	x8, x8, x21
0x18798e974:  c9 02 19 8b   add	x9, x22, x25
0x18798e978:  29 05 00 d1   sub	x9, x9, #0x1
0x18798e97c:  29 09 d6 9a   udiv	x9, x9, x22
0x18798e980:  08 7d 09 9b   mul	x8, x8, x9
0x18798e984:  08 ed 7c d3   lsl	x8, x8, #0x4
0x18798e988:  1f 01 18 eb   cmp	x8, x24
0x18798e98c:  09 84 9f 1a   csinc	w9, w0, wzr, hi
0x18798e990:  49 08 00 36   tbz	w9, #0, 0x18798ea98
0x18798e994:  68 36 08 91   add	x8, x19, #0x20d
0x18798e998:  08 01 40 79   ldrh	w8, [x8]
0x18798e99c:  69 3e 48 39   ldrb	w9, [x19, #0x20f]
0x18798e9a0:  08 41 09 2a   orr	w8, w8, w9, lsl #0x10
0x18798e9a4:  1f 09 00 71   cmp	w8, #0x2
0x18798e9a8:  43 0a 00 54   b.lo	0x18798eaf0
0x18798e9ac:  e0 24 00 d0   adrp	x0, 0x187e2c000
0x18798e9b0:  00 18 3b 91   add	x0, x0, #0xec6
0x18798e9b4:  e8 03 00 f9   str	x8, [sp]
0x18798e9b8:  02 29 00 90   adrp	x2, 0x187eae000
0x18798e9bc:  42 54 03 91   add	x2, x2, #0xd5
0x18798e9c0:  c1 54 80 52   mov	w1, #0x2a6
0x18798e9c4:  63 08 fd 97   bl	0x1878d0b50
0x18798e9c8:  09 00 00 14   b	0x18798e9ec
0x18798e9cc:  f6 df 00 a9   stp	x22, x23, [sp, #0x8]
0x18798e9d0:  e0 24 00 d0   adrp	x0, 0x187e2c000
0x18798e9d4:  00 18 3b 91   add	x0, x0, #0xec6
0x18798e9d8:  f5 03 00 f9   str	x21, [sp]
0x18798e9dc:  02 29 00 90   adrp	x2, 0x187eae000
0x18798e9e0:  42 a4 00 91   add	x2, x2, #0x29
0x18798e9e4:  a1 50 80 52   mov	w1, #0x285
0x18798e9e8:  5a 08 fd 97   bl	0x1878d0b50
0x18798e9ec:  62 de 40 b9   ldr	w2, [x19, #0xdc]
0x18798e9f0:  00 18 80 52   mov	w0, #0xc0
0x18798e9f4:  c0 6b a5 72   movk	w0, #0x2b5e, lsl #0x10
0x18798e9f8:  a1 01 80 52   mov	w1, #0xd
0x18798e9fc:  23 06 80 92   mov	x3, #0xffffffffffffffce
0x18798ea00:  04 00 80 d2   mov	x4, #0
0x18798ea04:  53 b1 1e 94   bl	0x18813af50
0x18798ea08:  34 06 80 12   mov	w20, #0xffffffce
0x18798ea0c:  e0 43 01 91   add	x0, sp, #0x50
0x18798ea10:  b8 f0 fc 97   bl	0x1878cacf0
0x18798ea14:  a8 83 5a f8   ldur	x8, [fp, #-0x58]
0x18798ea18:  e9 3e 2c 90   adrp	x9, 0x1e016a000
0x18798ea1c:  29 95 47 f9   ldr	x9, [x9, #0xf28]
0x18798ea20:  29 01 40 f9   ldr	x9, [x9]
0x18798ea24:  3f 01 08 eb   cmp	x9, x8
0x18798ea28:  c1 2b 00 54   b.ne	0x18798efa0
0x18798ea2c:  e0 03 14 aa   mov	x0, x20
0x18798ea30:  fd 7b 59 a9   ldp	fp, lr, [sp, #0x190]
0x18798ea34:  f4 4f 58 a9   ldp	x20, x19, [sp, #0x180]
0x18798ea38:  f6 57 57 a9   ldp	x22, x21, [sp, #0x170]
0x18798ea3c:  f8 5f 56 a9   ldp	x24, x23, [sp, #0x160]
0x18798ea40:  fa 67 55 a9   ldp	x26, x25, [sp, #0x150]
0x18798ea44:  fc 6f 54 a9   ldp	x28, x27, [sp, #0x140]
0x18798ea48:  ff 83 06 91   add	sp, sp, #0x1a0
0x18798ea4c:  ff 0f 5f d6   retab
0x18798ea50:  6a 1a 48 39   ldrb	w10, [x19, #0x206]
0x18798ea54:  e9 ab 00 a9   stp	x9, x10, [sp, #0x8]
0x18798ea58:  e0 24 00 d0   adrp	x0, 0x187e2c000
0x18798ea5c:  00 18 3b 91   add	x0, x0, #0xec6
0x18798ea60:  e8 03 00 f9   str	x8, [sp]
0x18798ea64:  e2 28 00 f0   adrp	x2, 0x187ead000
0x18798ea68:  42 fc 38 91   add	x2, x2, #0xe3f
0x18798ea6c:  a1 2a 80 52   mov	w1, #0x155
0x18798ea70:  98 ed fd 97   bl	0x18790a0d0
0x18798ea74:  de ff ff 17   b	0x18798e9ec
0x18798ea78:  e0 24 00 d0   adrp	x0, 0x187e2c000
0x18798ea7c:  00 18 3b 91   add	x0, x0, #0xec6
0x18798ea80:  e9 23 00 a9   stp	x9, x8, [sp]
0x18798ea84:  02 29 00 90   adrp	x2, 0x187eae000
0x18798ea88:  42 70 01 91   add	x2, x2, #0x5c
0x18798ea8c:  a1 51 80 52   mov	w1, #0x28d
0x18798ea90:  30 08 fd 97   bl	0x1878d0b50
0x18798ea94:  d6 ff ff 17   b	0x18798e9ec
0x18798ea98:  69 d2 41 b9   ldr	w9, [x19, #0x1d0]
0x18798ea9c:  6a d6 41 b9   ldr	w10, [x19, #0x1d4]
0x18798eaa0:  f8 a3 02 a9   stp	x24, x8, [sp, #0x28]
0x18798eaa4:  e9 ab 01 a9   stp	x9, x10, [sp, #0x18]
0x18798eaa8:  e0 24 00 d0   adrp	x0, 0x187e2c000
0x18798eaac:  00 18 3b 91   add	x0, x0, #0xec6
0x18798eab0:  02 29 00 90   adrp	x2, 0x187eae000
0x18798eab4:  42 08 02 91   add	x2, x2, #0x82
0x18798eab8:  f6 df 00 a9   stp	x22, x23, [sp, #0x8]
0x18798eabc:  f5 03 00 f9   str	x21, [sp]
0x18798eac0:  21 53 80 52   mov	w1, #0x299
0x18798eac4:  23 08 fd 97   bl	0x1878d0b50
0x18798eac8:  c9 ff ff 17   b	0x18798e9ec
0x18798eacc:  20 7d 18 13   asr	w0, w9, #0x18
0x18798ead0:  1f fc 01 71   cmp	w0, #0x7f
0x18798ead4:  49 03 00 54   b.ls	0x18798eb3c
0x18798ead8:  81 00 a0 52   mov	w1, #0x40000
0x18798eadc:  15 ae 1e 94   bl	0x18813a330
0x18798eae0:  e8 03 00 aa   mov	x8, x0
0x18798eae4:  a9 03 56 b8   ldur	w9, [fp, #-0xa0]
0x18798eae8:  20 7d 18 13   asr	w0, w9, #0x18
0x18798eaec:  19 00 00 14   b	0x18798eb50
0x18798eaf0:  68 1e 08 91   add	x8, x19, #0x207
0x18798eaf4:  08 01 40 79   ldrh	w8, [x8]
0x18798eaf8:  69 26 48 39   ldrb	w9, [x19, #0x209]
0x18798eafc:  16 41 09 2a   orr	w22, w8, w9, lsl #0x10
0x18798eb00:  68 16 44 79   ldrh	w8, [x19, #0x20a]
0x18798eb04:  69 32 48 39   ldrb	w9, [x19, #0x20c]
0x18798eb08:  08 41 09 2a   orr	w8, w8, w9, lsl #0x10
0x18798eb0c:  96 12 00 34   cbz	w22, 0x18798ed5c
0x18798eb10:  c9 7e a8 9b   umull	x9, w22, w8
0x18798eb14:  3f 7d 60 f2   tst	x9, #0xffffffff00000000
0x18798eb18:  20 12 00 54   b.eq	0x18798ed5c
0x18798eb1c:  e0 24 00 d0   adrp	x0, 0x187e2c000
0x18798eb20:  00 18 3b 91   add	x0, x0, #0xec6
0x18798eb24:  f6 23 00 a9   stp	x22, x8, [sp]
0x18798eb28:  02 29 00 90   adrp	x2, 0x187eae000
0x18798eb2c:  42 bc 03 91   add	x2, x2, #0xef
0x18798eb30:  81 55 80 52   mov	w1, #0x2ac
0x18798eb34:  07 08 fd 97   bl	0x1878d0b50
0x18798eb38:  ad ff ff 17   b	0x18798e9ec
0x18798eb3c:  e8 3e 2c 90   adrp	x8, 0x1e016a000
0x18798eb40:  08 91 47 f9   ldr	x8, [x8, #0xf20]
0x18798eb44:  08 f1 00 91   add	x8, x8, #0x3c
0x18798eb48:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x18798eb4c:  08 01 0e 12   and	w8, w8, #0x40000
0x18798eb50:  1f 01 00 71   cmp	w8, #0
0x18798eb54:  c8 05 80 52   mov	w8, #0x2e
0x18798eb58:  15 01 80 1a   csel	w21, w8, w0, eq
0x18798eb5c:  20 5d 10 13   sbfx	w0, w9, #0x10, #0x8
0x18798eb60:  1f fc 01 71   cmp	w0, #0x7f
0x18798eb64:  e9 00 00 54   b.ls	0x18798eb80
0x18798eb68:  81 00 a0 52   mov	w1, #0x40000
0x18798eb6c:  f1 ad 1e 94   bl	0x18813a330
0x18798eb70:  e8 03 00 aa   mov	x8, x0
0x18798eb74:  a9 03 56 b8   ldur	w9, [fp, #-0xa0]
0x18798eb78:  20 5d 10 13   sbfx	w0, w9, #0x10, #0x8
0x18798eb7c:  06 00 00 14   b	0x18798eb94
0x18798eb80:  e8 3e 2c 90   adrp	x8, 0x1e016a000
0x18798eb84:  08 91 47 f9   ldr	x8, [x8, #0xf20]
0x18798eb88:  08 f1 00 91   add	x8, x8, #0x3c
0x18798eb8c:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x18798eb90:  08 01 0e 12   and	w8, w8, #0x40000
0x18798eb94:  1f 01 00 71   cmp	w8, #0
0x18798eb98:  c8 05 80 52   mov	w8, #0x2e
0x18798eb9c:  16 01 80 1a   csel	w22, w8, w0, eq
0x18798eba0:  20 3d 08 13   sbfx	w0, w9, #0x8, #0x8
0x18798eba4:  1f fc 01 71   cmp	w0, #0x7f
0x18798eba8:  e9 00 00 54   b.ls	0x18798ebc4
0x18798ebac:  81 00 a0 52   mov	w1, #0x40000
0x18798ebb0:  e0 ad 1e 94   bl	0x18813a330
0x18798ebb4:  e8 03 00 aa   mov	x8, x0
0x18798ebb8:  a9 03 56 b8   ldur	w9, [fp, #-0xa0]
0x18798ebbc:  20 3d 08 13   sbfx	w0, w9, #0x8, #0x8
0x18798ebc0:  06 00 00 14   b	0x18798ebd8
0x18798ebc4:  e8 3e 2c 90   adrp	x8, 0x1e016a000
0x18798ebc8:  08 91 47 f9   ldr	x8, [x8, #0xf20]
0x18798ebcc:  08 f1 00 91   add	x8, x8, #0x3c
0x18798ebd0:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x18798ebd4:  08 01 0e 12   and	w8, w8, #0x40000
0x18798ebd8:  1f 01 00 71   cmp	w8, #0
0x18798ebdc:  c8 05 80 52   mov	w8, #0x2e
0x18798ebe0:  17 01 80 1a   csel	w23, w8, w0, eq
0x18798ebe4:  20 1d 00 13   sxtb	w0, w9
0x18798ebe8:  1f fc 01 71   cmp	w0, #0x7f
0x18798ebec:  c9 00 00 54   b.ls	0x18798ec04
0x18798ebf0:  81 00 a0 52   mov	w1, #0x40000
0x18798ebf4:  cf ad 1e 94   bl	0x18813a330
0x18798ebf8:  e8 03 00 aa   mov	x8, x0
0x18798ebfc:  a0 03 d6 38   ldursb	w0, [fp, #-0xa0]
0x18798ec00:  06 00 00 14   b	0x18798ec18
0x18798ec04:  e8 3e 2c 90   adrp	x8, 0x1e016a000
0x18798ec08:  08 91 47 f9   ldr	x8, [x8, #0xf20]
0x18798ec0c:  08 f1 00 91   add	x8, x8, #0x3c
0x18798ec10:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x18798ec14:  08 01 0e 12   and	w8, w8, #0x40000
0x18798ec18:  1f 01 00 71   cmp	w8, #0
0x18798ec1c:  c8 05 80 52   mov	w8, #0x2e
0x18798ec20:  18 01 80 1a   csel	w24, w8, w0, eq
0x18798ec24:  fa 4b 40 b9   ldr	w26, [sp, #0x48]
0x18798ec28:  40 7f 18 13   asr	w0, w26, #0x18
0x18798ec2c:  1f fc 01 71   cmp	w0, #0x7f
0x18798ec30:  e9 00 00 54   b.ls	0x18798ec4c
0x18798ec34:  81 00 a0 52   mov	w1, #0x40000
0x18798ec38:  be ad 1e 94   bl	0x18813a330
0x18798ec3c:  e8 03 00 aa   mov	x8, x0
0x18798ec40:  fa 4b 40 b9   ldr	w26, [sp, #0x48]
0x18798ec44:  40 7f 18 13   asr	w0, w26, #0x18
0x18798ec48:  06 00 00 14   b	0x18798ec60
0x18798ec4c:  e8 3e 2c 90   adrp	x8, 0x1e016a000
0x18798ec50:  08 91 47 f9   ldr	x8, [x8, #0xf20]
0x18798ec54:  08 f1 00 91   add	x8, x8, #0x3c
0x18798ec58:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x18798ec5c:  08 01 0e 12   and	w8, w8, #0x40000
0x18798ec60:  1f 01 00 71   cmp	w8, #0
0x18798ec64:  c8 05 80 52   mov	w8, #0x2e
0x18798ec68:  19 01 80 1a   csel	w25, w8, w0, eq
0x18798ec6c:  40 5f 10 13   sbfx	w0, w26, #0x10, #0x8
0x18798ec70:  1f fc 01 71   cmp	w0, #0x7f
0x18798ec74:  e9 00 00 54   b.ls	0x18798ec90
0x18798ec78:  81 00 a0 52   mov	w1, #0x40000
0x18798ec7c:  ad ad 1e 94   bl	0x18813a330
0x18798ec80:  e8 03 00 aa   mov	x8, x0
0x18798ec84:  fa 4b 40 b9   ldr	w26, [sp, #0x48]
0x18798ec88:  40 5f 10 13   sbfx	w0, w26, #0x10, #0x8
0x18798ec8c:  06 00 00 14   b	0x18798eca4
0x18798ec90:  e8 3e 2c 90   adrp	x8, 0x1e016a000
0x18798ec94:  08 91 47 f9   ldr	x8, [x8, #0xf20]
0x18798ec98:  08 f1 00 91   add	x8, x8, #0x3c
0x18798ec9c:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x18798eca0:  08 01 0e 12   and	w8, w8, #0x40000
0x18798eca4:  1f 01 00 71   cmp	w8, #0
0x18798eca8:  c8 05 80 52   mov	w8, #0x2e
0x18798ecac:  1b 01 80 1a   csel	w27, w8, w0, eq
0x18798ecb0:  40 3f 08 13   sbfx	w0, w26, #0x8, #0x8
0x18798ecb4:  1f fc 01 71   cmp	w0, #0x7f
0x18798ecb8:  c9 00 00 54   b.ls	0x18798ecd0
0x18798ecbc:  81 00 a0 52   mov	w1, #0x40000
0x18798ecc0:  9c ad 1e 94   bl	0x18813a330
0x18798ecc4:  f4 03 00 aa   mov	x20, x0
0x18798ecc8:  fa 4b 40 b9   ldr	w26, [sp, #0x48]
0x18798eccc:  06 00 00 14   b	0x18798ece4
0x18798ecd0:  e8 3e 2c 90   adrp	x8, 0x1e016a000
0x18798ecd4:  08 91 47 f9   ldr	x8, [x8, #0xf20]
0x18798ecd8:  08 f1 00 91   add	x8, x8, #0x3c
0x18798ecdc:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x18798ece0:  14 01 0e 12   and	w20, w8, #0x40000
0x18798ece4:  40 1f 00 13   sxtb	w0, w26
0x18798ece8:  1f fc 01 71   cmp	w0, #0x7f
0x18798ecec:  c9 00 00 54   b.ls	0x18798ed04
0x18798ecf0:  81 00 a0 52   mov	w1, #0x40000
0x18798ecf4:  8f ad 1e 94   bl	0x18813a330
0x18798ecf8:  e8 03 00 aa   mov	x8, x0
0x18798ecfc:  e0 23 c1 39   ldrsb	w0, [sp, #0x48]
0x18798ed00:  06 00 00 14   b	0x18798ed18
0x18798ed04:  e8 3e 2c 90   adrp	x8, 0x1e016a000
0x18798ed08:  08 91 47 f9   ldr	x8, [x8, #0xf20]
0x18798ed0c:  08 f1 00 91   add	x8, x8, #0x3c
0x18798ed10:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x18798ed14:  08 01 0e 12   and	w8, w8, #0x40000
0x18798ed18:  49 3f 08 13   sbfx	w9, w26, #0x8, #0x8
0x18798ed1c:  9f 02 00 71   cmp	w20, #0
0x18798ed20:  ca 05 80 52   mov	w10, #0x2e
0x18798ed24:  49 01 89 1a   csel	w9, w10, w9, eq
0x18798ed28:  1f 01 00 71   cmp	w8, #0
0x18798ed2c:  48 01 80 1a   csel	w8, w10, w0, eq
0x18798ed30:  f9 6f 02 a9   stp	x25, x27, [sp, #0x20]
0x18798ed34:  f7 63 01 a9   stp	x23, x24, [sp, #0x10]
0x18798ed38:  e0 24 00 d0   adrp	x0, 0x187e2c000
0x18798ed3c:  00 18 3b 91   add	x0, x0, #0xec6
0x18798ed40:  e2 28 00 f0   adrp	x2, 0x187ead000
0x18798ed44:  42 40 3f 91   add	x2, x2, #0xfd0
0x18798ed48:  f5 5b 00 a9   stp	x21, x22, [sp]
0x18798ed4c:  e9 23 03 a9   stp	x9, x8, [sp, #0x30]
0x18798ed50:  81 4e 80 52   mov	w1, #0x274
0x18798ed54:  7f 07 fd 97   bl	0x1878d0b50
0x18798ed58:  25 ff ff 17   b	0x18798e9ec
0x18798ed5c:  76 a2 1e 29   stp	w22, w8, [x19, #0xf4]
0x18798ed60:  08 01 80 52   mov	w8, #0x8
0x18798ed64:  08 04 a0 72   movk	w8, #0x20, lsl #0x10
0x18798ed68:  68 02 01 b9   str	w8, [x19, #0x100]
0x18798ed6c:  88 00 80 52   mov	w8, #0x4
0x18798ed70:  68 0a 02 79   strh	w8, [x19, #0x104]
0x18798ed74:  08 44 88 52   mov	w8, #0x4220
0x18798ed78:  e8 48 aa 72   movk	w8, #0x5247, lsl #0x10
0x18798ed7c:  68 56 01 b9   str	w8, [x19, #0x154]
0x18798ed80:  68 4e 48 39   ldrb	w8, [x19, #0x213]
0x18798ed84:  09 11 00 12   and	w9, w8, #0x1f
0x18798ed88:  1f fd 03 71   cmp	w8, #0xff
0x18798ed8c:  68 00 80 52   mov	w8, #0x3
0x18798ed90:  08 01 89 1a   csel	w8, w8, w9, eq
0x18798ed94:  68 1a 04 39   strb	w8, [x19, #0x106]
0x18798ed98:  7f 52 00 f9   str	xzr, [x19, #0xa0]
0x18798ed9c:  68 4a 48 39   ldrb	w8, [x19, #0x212]
0x18798eda0:  1f 11 00 f1   cmp	x8, #0x4
0x18798eda4:  e8 00 00 54   b.hi	0x18798edc0
0x18798eda8:  a9 6f 2c f0   adrp	x9, 0x1e0785000
0x18798edac:  29 21 06 91   add	x9, x9, #0x188
0x18798edb0:  28 79 68 f8   ldr	x8, [x9, x8, lsl #0x3]
0x18798edb4:  00 01 40 f9   ldr	x0, [x8]
0x18798edb8:  2e fd 1e 94   bl	0x18814e270
0x18798edbc:  60 52 00 f9   str	x0, [x19, #0xa0]
0x18798edc0:  c8 76 1e 53   lsl	w8, w22, #0x2
0x18798edc4:  68 fe 00 b9   str	w8, [x19, #0xfc]
0x18798edc8:  7f da 05 39   strb	wzr, [x19, #0x176]
0x18798edcc:  68 0e 40 f9   ldr	x8, [x19, #0x18]
0x18798edd0:  e8 0a 00 b4   cbz	x8, 0x18798ef2c
0x18798edd4:  e0 03 14 aa   mov	x0, x20
0x18798edd8:  ba 01 00 94   bl	0x18798f4c0
0x18798eddc:  80 0a 00 37   tbnz	w0, #0, 0x18798ef2c
0x18798ede0:  e0 03 14 aa   mov	x0, x20
0x18798ede4:  bc 06 fd 97   bl	0x1878d08d4
0x18798ede8:  20 0a 00 37   tbnz	w0, #0, 0x18798ef2c
0x18798edec:  68 4e 48 39   ldrb	w8, [x19, #0x213]
0x18798edf0:  1f fd 03 71   cmp	w8, #0xff
0x18798edf4:  c1 09 00 54   b.ne	0x18798ef2c
0x18798edf8:  68 4a 48 39   ldrb	w8, [x19, #0x212]
0x18798edfc:  1f fd 03 71   cmp	w8, #0xff
0x18798ee00:  61 09 00 54   b.ne	0x18798ef2c
0x18798ee04:  68 46 48 39   ldrb	w8, [x19, #0x211]
0x18798ee08:  28 09 00 37   tbnz	w8, #0, 0x18798ef2c
0x18798ee0c:  ff 7f 0a a9   stp	xzr, xzr, [sp, #0xa0]
0x18798ee10:  75 0e 40 f9   ldr	x21, [x19, #0x18]
0x18798ee14:  e0 03 14 aa   mov	x0, x20
0x18798ee18:  dc 0e fd 97   bl	0x1878d2988
0x18798ee1c:  e2 03 00 aa   mov	x2, x0
0x18798ee20:  e1 83 02 91   add	x1, sp, #0xa0
0x18798ee24:  e0 03 15 aa   mov	x0, x21
0x18798ee28:  03 02 80 52   mov	w3, #0x10
0x18798ee2c:  e0 b3 fd 97   bl	0x1878fbdac
0x18798ee30:  1f 40 00 f1   cmp	x0, #0x10
0x18798ee34:  c1 07 00 54   b.ne	0x18798ef2c
0x18798ee38:  e8 a3 40 b9   ldr	w8, [sp, #0xa0]
0x18798ee3c:  09 21 00 12   and	w9, w8, #0x1ff
0x18798ee40:  3f f1 07 71   cmp	w9, #0x1fc
0x18798ee44:  41 05 00 54   b.ne	0x18798eeec
0x18798ee48:  e8 53 40 f9   ldr	x8, [sp, #0xa0]
0x18798ee4c:  01 25 49 d3   ubfx	x1, x8, #0x9, #0x1
0x18798ee50:  e0 03 14 aa   mov	x0, x20
0x18798ee54:  ee 69 05 94   bl	0x187ae960c
0x18798ee58:  35 00 00 14   b	0x18798ef2c
0x18798ee5c:  e2 27 00 90   adrp	x2, 0x187e8a000
0x18798ee60:  42 44 19 91   add	x2, x2, #0x651
0x18798ee64:  e1 3d 80 52   mov	w1, #0x1ef
0x18798ee68:  10 00 00 14   b	0x18798eea8
0x18798ee6c:  e2 27 00 90   adrp	x2, 0x187e8a000
0x18798ee70:  42 00 1a 91   add	x2, x2, #0x680
0x18798ee74:  01 3e 80 52   mov	w1, #0x1f0
0x18798ee78:  0c 00 00 14   b	0x18798eea8
0x18798ee7c:  e2 27 00 90   adrp	x2, 0x187e8a000
0x18798ee80:  42 8c 1a 91   add	x2, x2, #0x6a3
0x18798ee84:  21 3e 80 52   mov	w1, #0x1f1
0x18798ee88:  08 00 00 14   b	0x18798eea8
0x18798ee8c:  e2 27 00 90   adrp	x2, 0x187e8a000
0x18798ee90:  42 18 1b 91   add	x2, x2, #0x6c6
0x18798ee94:  41 3e 80 52   mov	w1, #0x1f2
0x18798ee98:  04 00 00 14   b	0x18798eea8
0x18798ee9c:  e2 27 00 90   adrp	x2, 0x187e8a000
0x18798eea0:  42 a4 1b 91   add	x2, x2, #0x6e9
0x18798eea4:  61 3e 80 52   mov	w1, #0x1f3
0x18798eea8:  e8 03 00 f9   str	x8, [sp]
0x18798eeac:  e0 24 00 d0   adrp	x0, 0x187e2c000
0x18798eeb0:  00 18 3b 91   add	x0, x0, #0xec6
0x18798eeb4:  27 07 fd 97   bl	0x1878d0b50
0x18798eeb8:  cd fe ff 17   b	0x18798e9ec
0x18798eebc:  e2 27 00 90   adrp	x2, 0x187e8a000
0x18798eec0:  42 30 1c 91   add	x2, x2, #0x70c
0x18798eec4:  81 3e 80 52   mov	w1, #0x1f4
0x18798eec8:  04 00 00 14   b	0x18798eed8
0x18798eecc:  e2 27 00 90   adrp	x2, 0x187e8a000
0x18798eed0:  42 c0 1c 91   add	x2, x2, #0x730
0x18798eed4:  a1 3e 80 52   mov	w1, #0x1f5
0x18798eed8:  e8 03 00 f9   str	x8, [sp]
0x18798eedc:  e0 24 00 d0   adrp	x0, 0x187e2c000
0x18798eee0:  00 18 3b 91   add	x0, x0, #0xec6
0x18798eee4:  1b 07 fd 97   bl	0x1878d0b50
0x18798eee8:  c1 fe ff 17   b	0x18798e9ec
0x18798eeec:  09 41 0d 53   ubfx	w9, w8, #0xd, #0x4
0x18798eef0:  0a 71 17 53   ubfx	w10, w8, #0x17, #0x6
0x18798eef4:  1f 05 15 72   tst	w8, #0x1800
0x18798eef8:  29 01 8a 1a   csel	w9, w9, w10, eq
0x18798eefc:  28 11 1f 12   and	w8, w9, #0x3e
0x18798ef00:  1f 39 00 71   cmp	w8, #0xe
0x18798ef04:  e0 00 00 54   b.eq	0x18798ef20
0x18798ef08:  3f 2d 00 71   cmp	w9, #0xb
0x18798ef0c:  a0 00 00 54   b.eq	0x18798ef20
0x18798ef10:  3f 1d 00 71   cmp	w9, #0x7
0x18798ef14:  60 00 00 54   b.eq	0x18798ef20
0x18798ef18:  1f 09 00 71   cmp	w8, #0x2
0x18798ef1c:  81 00 00 54   b.ne	0x18798ef2c
0x18798ef20:  e0 03 14 aa   mov	x0, x20
0x18798ef24:  21 00 80 52   mov	w1, #0x1
0x18798ef28:  b9 69 05 94   bl	0x187ae960c
0x18798ef2c:  e0 03 14 aa   mov	x0, x20
0x18798ef30:  66 01 00 94   bl	0x18798f4c8
0x18798ef34:  e0 01 00 34   cbz	w0, 0x18798ef70
0x18798ef38:  28 00 80 52   mov	w8, #0x1
0x18798ef3c:  68 d6 05 39   strb	w8, [x19, #0x175]
0x18798ef40:  09 02 80 52   mov	w9, #0x10
0x18798ef44:  09 08 a0 72   movk	w9, #0x40, lsl #0x10
0x18798ef48:  ca 72 1d 53   lsl	w10, w22, #0x3
0x18798ef4c:  6a a6 1f 29   stp	w10, w9, [x19, #0xfc]
0x18798ef50:  68 1e 04 39   strb	w8, [x19, #0x107]
0x18798ef54:  68 52 40 f9   ldr	x8, [x19, #0xa0]
0x18798ef58:  c8 00 00 b5   cbnz	x8, 0x18798ef70
0x18798ef5c:  c8 3a 2c b0   adrp	x8, 0x1e00e7000
0x18798ef60:  08 f1 40 f9   ldr	x8, [x8, #0x1e0]
0x18798ef64:  00 01 40 f9   ldr	x0, [x8]
0x18798ef68:  c2 fc 1e 94   bl	0x18814e270
0x18798ef6c:  60 52 00 f9   str	x0, [x19, #0xa0]
0x18798ef70:  40 26 00 b0   adrp	x0, 0x187e57000
0x18798ef74:  00 64 18 91   add	x0, x0, #0x619
0x18798ef78:  0e a5 1e 94   bl	0x1881383b0
0x18798ef7c:  60 00 00 b4   cbz	x0, 0x18798ef88
0x18798ef80:  00 e8 1e 94   bl	0x188148f80
0x18798ef84:  60 00 00 34   cbz	w0, 0x18798ef90
0x18798ef88:  a8 01 80 52   mov	w8, #0xd
0x18798ef8c:  02 00 00 14   b	0x18798ef94
0x18798ef90:  28 00 80 52   mov	w8, #0x1
0x18798ef94:  14 00 80 52   mov	w20, #0
0x18798ef98:  68 32 03 79   strh	w8, [x19, #0x198]
0x18798ef9c:  9c fe ff 17   b	0x18798ea0c
0x18798efa0:  64 a4 1e 94   bl	0x188138130
0x18798efa4:  16 00 00 14   b	0x18798effc
0x18798efa8:  15 00 00 14   b	0x18798effc
0x18798efac:  14 00 00 14   b	0x18798effc
0x18798efb0:  13 00 00 14   b	0x18798effc
0x18798efb4:  05 00 00 14   b	0x18798efc8
0x18798efb8:  11 00 00 14   b	0x18798effc
0x18798efbc:  10 00 00 14   b	0x18798effc
0x18798efc0:  0f 00 00 14   b	0x18798effc
0x18798efc4:  0e 00 00 14   b	0x18798effc
0x18798efc8:  f3 03 00 aa   mov	x19, x0
0x18798efcc:  e0 83 02 91   add	x0, sp, #0xa0
0x18798efd0:  27 ce fc 97   bl	0x1878c286c
0x18798efd4:  0b 00 00 14   b	0x18798f000
0x18798efd8:  09 00 00 14   b	0x18798effc
0x18798efdc:  08 00 00 14   b	0x18798effc
0x18798efe0:  07 00 00 14   b	0x18798effc
0x18798efe4:  06 00 00 14   b	0x18798effc
0x18798efe8:  05 00 00 14   b	0x18798effc
0x18798efec:  04 00 00 14   b	0x18798effc
0x18798eff0:  03 00 00 14   b	0x18798effc
0x18798eff4:  f3 03 00 aa   mov	x19, x0
0x18798eff8:  04 00 00 14   b	0x18798f008
0x18798effc:  f3 03 00 aa   mov	x19, x0
0x18798f000:  e0 43 01 91   add	x0, sp, #0x50
0x18798f004:  3b ef fc 97   bl	0x1878cacf0
0x18798f008:  e0 03 13 aa   mov	x0, x19
0x18798f00c:  1d a4 1e 94   bl	0x188138080

