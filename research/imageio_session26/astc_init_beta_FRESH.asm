sub_1878d61d0:
0x1878d61d0:  7f 23 03 d5   pacibsp
0x1878d61d4:  ff 43 07 d1   sub	sp, sp, #0x1d0
0x1878d61d8:  fc 6f 17 a9   stp	x28, x27, [sp, #0x170]
0x1878d61dc:  fa 67 18 a9   stp	x26, x25, [sp, #0x180]
0x1878d61e0:  f8 5f 19 a9   stp	x24, x23, [sp, #0x190]
0x1878d61e4:  f6 57 1a a9   stp	x22, x21, [sp, #0x1a0]
0x1878d61e8:  f4 4f 1b a9   stp	x20, x19, [sp, #0x1b0]
0x1878d61ec:  fd 7b 1c a9   stp	fp, lr, [sp, #0x1c0]
0x1878d61f0:  fd 03 07 91   add	fp, sp, #0x1c0
0x1878d61f4:  f3 03 00 aa   mov	x19, x0
0x1878d61f8:  68 44 2c d0   adrp	x8, 0x1e0164000
0x1878d61fc:  08 39 45 f9   ldr	x8, [x8, #0xa70]
0x1878d6200:  08 01 40 f9   ldr	x8, [x8]
0x1878d6204:  a8 83 1a f8   stur	x8, [fp, #-0x58]
0x1878d6208:  00 f8 40 f9   ldr	x0, [x0, #0x1f0]
0x1878d620c:  60 02 00 b4   cbz	x0, 0x1878d6258
0x1878d6210:  10 00 40 f9   ldr	x16, [x0]
0x1878d6214:  f1 03 00 aa   mov	x17, x0
0x1878d6218:  71 e0 fa f2   movk	x17, #0xd703, lsl #0x30
0x1878d621c:  30 1a c1 da   autda	x16, x17
0x1878d6220:  f1 03 10 aa   mov	x17, x16
0x1878d6224:  f1 47 c1 da   xpacd	x17
0x1878d6228:  1f 02 11 eb   cmp	x16, x17
0x1878d622c:  40 00 00 54   b.eq	0x1878d6234
0x1878d6230:  40 8e 38 d4   brk	#0xc472
0x1878d6234:  1f 02 40 39   ldrb	wzr, [x16]
0x1878d6238:  a1 72 2d d0   adrp	x1, 0x1e272c000
0x1878d623c:  21 80 17 91   add	x1, x1, #0x5e0
0x1878d6240:  a2 72 2d d0   adrp	x2, 0x1e272c000
0x1878d6244:  42 00 2f 91   add	x2, x2, #0xbc0
0x1878d6248:  03 00 80 d2   mov	x3, #0
0x1878d624c:  d9 db 21 94   bl	0x18814d1b0
0x1878d6250:  f4 03 00 aa   mov	x20, x0
0x1878d6254:  02 00 00 14   b	0x1878d625c
0x1878d6258:  14 00 80 d2   mov	x20, #0
0x1878d625c:  ff 4b 00 f9   str	xzr, [sp, #0x90]
0x1878d6260:  00 e4 00 6f   movi	v0.2d, #0
0x1878d6264:  e0 83 03 ad   stp	q0, q0, [sp, #0x70]
0x1878d6268:  e0 83 02 ad   stp	q0, q0, [sp, #0x50]
0x1878d626c:  61 0e 40 f9   ldr	x1, [x19, #0x18]
0x1878d6270:  e0 43 01 91   add	x0, sp, #0x50
0x1878d6274:  35 f1 fc 97   bl	0x187812748
0x1878d6278:  68 c6 45 39   ldrb	w8, [x19, #0x171]
0x1878d627c:  e8 5f 00 36   tbz	w8, #0, 0x1878d6e78
0x1878d6280:  f7 83 02 91   add	x23, sp, #0xa0
0x1878d6284:  f6 33 40 f9   ldr	x22, [sp, #0x60]
0x1878d6288:  68 de 40 b9   ldr	w8, [x19, #0xdc]
0x1878d628c:  89 6a 8a 52   mov	w9, #0x5354
0x1878d6290:  29 88 a8 72   movk	w9, #0x4441, lsl #0x10
0x1878d6294:  1f 01 09 6b   cmp	w8, w9
0x1878d6298:  41 0e 00 54   b.ne	0x1878d6460
0x1878d629c:  00 e4 00 6f   movi	v0.2d, #0
0x1878d62a0:  e0 c2 8a 3c   stur	q0, [x23, #0xac]
0x1878d62a4:  e0 82 04 ad   stp	q0, q0, [x23, #0x90]
0x1878d62a8:  e0 82 03 ad   stp	q0, q0, [x23, #0x70]
0x1878d62ac:  e0 82 02 ad   stp	q0, q0, [x23, #0x50]
0x1878d62b0:  e0 12 80 3d   str	q0, [x23, #0x40]
0x1878d62b4:  ff 7f 0a a9   stp	xzr, xzr, [sp, #0xa0]
0x1878d62b8:  ff b3 00 b9   str	wzr, [sp, #0xb0]
0x1878d62bc:  ff 4f 00 b9   str	wzr, [sp, #0x4c]
0x1878d62c0:  62 6a 40 f9   ldr	x2, [x19, #0xd0]
0x1878d62c4:  e0 43 01 91   add	x0, sp, #0x50
0x1878d62c8:  e1 33 01 91   add	x1, sp, #0x4c
0x1878d62cc:  83 00 80 52   mov	w3, #0x4
0x1878d62d0:  f7 fe ff 97   bl	0x1878d5eac
0x1878d62d4:  1f 10 00 f1   cmp	x0, #0x4
0x1878d62d8:  01 5d 00 54   b.ne	0x1878d6e78
0x1878d62dc:  e8 4f 40 b9   ldr	w8, [sp, #0x4c]
0x1878d62e0:  89 88 88 52   mov	w9, #0x4444
0x1878d62e4:  69 0a a4 72   movk	w9, #0x2053, lsl #0x10
0x1878d62e8:  1f 01 09 6b   cmp	w8, w9
0x1878d62ec:  61 5c 00 54   b.ne	0x1878d6e78
0x1878d62f0:  68 6a 40 f9   ldr	x8, [x19, #0xd0]
0x1878d62f4:  e0 43 01 91   add	x0, sp, #0x50
0x1878d62f8:  e1 83 03 91   add	x1, sp, #0xe0
0x1878d62fc:  02 11 00 91   add	x2, x8, #0x4
0x1878d6300:  83 0f 80 52   mov	w3, #0x7c
0x1878d6304:  ea fe ff 97   bl	0x1878d5eac
0x1878d6308:  1f f0 01 f1   cmp	x0, #0x7c
0x1878d630c:  61 5b 00 54   b.ne	0x1878d6e78
0x1878d6310:  e8 92 40 b9   ldr	w8, [x23, #0x90]
0x1878d6314:  89 08 8b 52   mov	w9, #0x5844
0x1878d6318:  29 06 a6 72   movk	w9, #0x3031, lsl #0x10
0x1878d631c:  1f 01 09 6b   cmp	w8, w9
0x1878d6320:  c1 5a 00 54   b.ne	0x1878d6e78
0x1878d6324:  68 6a 40 f9   ldr	x8, [x19, #0xd0]
0x1878d6328:  e0 43 01 91   add	x0, sp, #0x50
0x1878d632c:  e1 83 02 91   add	x1, sp, #0xa0
0x1878d6330:  02 01 02 91   add	x2, x8, #0x80
0x1878d6334:  83 02 80 52   mov	w3, #0x14
0x1878d6338:  dd fe ff 97   bl	0x1878d5eac
0x1878d633c:  1f 50 00 f1   cmp	x0, #0x14
0x1878d6340:  c1 59 00 54   b.ne	0x1878d6e78
0x1878d6344:  f5 a3 40 b9   ldr	w21, [sp, #0xa0]
0x1878d6348:  a8 16 02 51   sub	w8, w21, #0x85
0x1878d634c:  1f dd 00 71   cmp	w8, #0x37
0x1878d6350:  48 59 00 54   b.hi	0x1878d6e78
0x1878d6354:  09 7d 02 53   lsr	w9, w8, #0x2
0x1878d6358:  8a 22 00 f0   adrp	x10, 0x187d29000
0x1878d635c:  4a 95 2b 91   add	x10, x10, #0xae5
0x1878d6360:  48 05 09 8b   add	x8, x10, x9, lsl #0x1
0x1878d6364:  f8 4e 40 b9   ldr	w24, [x23, #0x4c]
0x1878d6368:  22 29 00 b0   adrp	x2, 0x187dfb000
0x1878d636c:  42 20 10 91   add	x2, x2, #0x408
0x1878d6370:  c1 2b 80 52   mov	w1, #0x15e
0x1878d6374:  18 7c 00 34   cbz	w24, 0x1878d72f4
0x1878d6378:  df 02 18 eb   cmp	x22, x24
0x1878d637c:  c9 7b 00 54   b.ls	0x1878d72f4
0x1878d6380:  f9 4a 40 b9   ldr	w25, [x23, #0x48]
0x1878d6384:  22 29 00 b0   adrp	x2, 0x187dfb000
0x1878d6388:  42 8c 10 91   add	x2, x2, #0x423
0x1878d638c:  e1 2b 80 52   mov	w1, #0x15f
0x1878d6390:  19 7b 00 34   cbz	w25, 0x1878d72f0
0x1878d6394:  df 02 19 eb   cmp	x22, x25
0x1878d6398:  c9 7a 00 54   b.ls	0x1878d72f0
0x1878d639c:  1a 01 40 39   ldrb	w26, [x8]
0x1878d63a0:  16 05 40 39   ldrb	w22, [x8, #0x1]
0x1878d63a4:  7f 22 04 79   strh	wzr, [x19, #0x210]
0x1878d63a8:  28 00 80 52   mov	w8, #0x1
0x1878d63ac:  68 4a 08 39   strb	w8, [x19, #0x212]
0x1878d63b0:  68 d2 05 39   strb	w8, [x19, #0x174]
0x1878d63b4:  e0 03 15 aa   mov	x0, x21
0x1878d63b8:  e3 73 05 94   bl	0x187a33344
0x1878d63bc:  60 de 01 b9   str	w0, [x19, #0x1dc]
0x1878d63c0:  c0 55 00 34   cbz	w0, 0x1878d6e78
0x1878d63c4:  7a 12 08 39   strb	w26, [x19, #0x204]
0x1878d63c8:  76 16 08 39   strb	w22, [x19, #0x205]
0x1878d63cc:  28 00 80 52   mov	w8, #0x1
0x1878d63d0:  68 1a 08 39   strb	w8, [x19, #0x206]
0x1878d63d4:  78 1e 08 39   strb	w24, [x19, #0x207]
0x1878d63d8:  09 7f 08 53   lsr	w9, w24, #0x8
0x1878d63dc:  69 22 08 39   strb	w9, [x19, #0x208]
0x1878d63e0:  09 7f 10 53   lsr	w9, w24, #0x10
0x1878d63e4:  69 26 08 39   strb	w9, [x19, #0x209]
0x1878d63e8:  79 2a 08 39   strb	w25, [x19, #0x20a]
0x1878d63ec:  29 7f 08 53   lsr	w9, w25, #0x8
0x1878d63f0:  69 2e 08 39   strb	w9, [x19, #0x20b]
0x1878d63f4:  29 7f 10 53   lsr	w9, w25, #0x10
0x1878d63f8:  69 32 08 39   strb	w9, [x19, #0x20c]
0x1878d63fc:  69 36 08 91   add	x9, x19, #0x20d
0x1878d6400:  28 01 00 79   strh	w8, [x9]
0x1878d6404:  7f 3e 08 39   strb	wzr, [x19, #0x20f]
0x1878d6408:  78 d2 01 b9   str	w24, [x19, #0x1d0]
0x1878d640c:  79 d6 01 b9   str	w25, [x19, #0x1d4]
0x1878d6410:  68 da 01 b9   str	w8, [x19, #0x1d8]
0x1878d6414:  48 03 18 8b   add	x8, x26, x24
0x1878d6418:  08 05 00 d1   sub	x8, x8, #0x1
0x1878d641c:  18 09 da 9a   udiv	x24, x8, x26
0x1878d6420:  c8 02 19 8b   add	x8, x22, x25
0x1878d6424:  08 05 00 d1   sub	x8, x8, #0x1
0x1878d6428:  78 e2 01 b9   str	w24, [x19, #0x1e0]
0x1878d642c:  16 09 d6 9a   udiv	x22, x8, x22
0x1878d6430:  76 e6 01 b9   str	w22, [x19, #0x1e4]
0x1878d6434:  88 12 80 52   mov	w8, #0x94
0x1878d6438:  68 6a 00 f9   str	x8, [x19, #0xd0]
0x1878d643c:  e0 03 14 aa   mov	x0, x20
0x1878d6440:  81 12 80 52   mov	w1, #0x94
0x1878d6444:  dc 08 fd 97   bl	0x1878187b4
0x1878d6448:  e8 03 15 4b   neg	w8, w21
0x1878d644c:  08 05 00 12   and	w8, w8, #0x3
0x1878d6450:  c8 2d 00 34   cbz	w8, 0x1878d6a08
0x1878d6454:  28 00 80 52   mov	w8, #0x1
0x1878d6458:  68 4e 08 39   strb	w8, [x19, #0x213]
0x1878d645c:  6e 01 00 14   b	0x1878d6a14
0x1878d6460:  75 02 08 91   add	x21, x19, #0x200
0x1878d6464:  62 6a 40 f9   ldr	x2, [x19, #0xd0]
0x1878d6468:  e0 43 01 91   add	x0, sp, #0x50
0x1878d646c:  e1 03 15 aa   mov	x1, x21
0x1878d6470:  03 02 80 52   mov	w3, #0x10
0x1878d6474:  8e fe ff 97   bl	0x1878d5eac
0x1878d6478:  1f 40 00 f1   cmp	x0, #0x10
0x1878d647c:  e1 4f 00 54   b.ne	0x1878d6e78
0x1878d6480:  a8 02 40 b9   ldr	w8, [x21]
0x1878d6484:  69 62 95 52   mov	w9, #0xab13
0x1878d6488:  29 94 ab 72   movk	w9, #0x5ca1, lsl #0x10
0x1878d648c:  1f 01 09 6b   cmp	w8, w9
0x1878d6490:  00 04 00 54   b.eq	0x1878d6510
0x1878d6494:  00 e4 00 6f   movi	v0.2d, #0
0x1878d6498:  e0 0e 80 3d   str	q0, [x23, #0x30]
0x1878d649c:  e0 83 05 ad   stp	q0, q0, [sp, #0xb0]
0x1878d64a0:  e0 2b 80 3d   str	q0, [sp, #0xa0]
0x1878d64a4:  62 6a 40 f9   ldr	x2, [x19, #0xd0]
0x1878d64a8:  e0 43 01 91   add	x0, sp, #0x50
0x1878d64ac:  e1 83 02 91   add	x1, sp, #0xa0
0x1878d64b0:  03 08 80 52   mov	w3, #0x40
0x1878d64b4:  7e fe ff 97   bl	0x1878d5eac
0x1878d64b8:  1f 00 01 f1   cmp	x0, #0x40
0x1878d64bc:  e1 4d 00 54   b.ne	0x1878d6e78
0x1878d64c0:  e0 83 02 91   add	x0, sp, #0xa0
0x1878d64c4:  09 04 00 94   bl	0x1878d74e8
0x1878d64c8:  80 05 00 34   cbz	w0, 0x1878d6578
0x1878d64cc:  28 00 80 52   mov	w8, #0x1
0x1878d64d0:  68 22 04 79   strh	w8, [x19, #0x210]
0x1878d64d4:  e0 83 02 91   add	x0, sp, #0xa0
0x1878d64d8:  8b fe ff 97   bl	0x1878d5f04
0x1878d64dc:  7f 9e 02 79   strh	wzr, [x19, #0x14e]
0x1878d64e0:  60 1a 40 f9   ldr	x0, [x19, #0x30]
0x1878d64e4:  28 73 2c b0   adrp	x8, 0x1e073b000
0x1878d64e8:  08 41 30 91   add	x8, x8, #0xc10
0x1878d64ec:  15 01 40 f9   ldr	x21, [x8]
0x1878d64f0:  e1 03 15 aa   mov	x1, x21
0x1878d64f4:  d2 9d fc 97   bl	0x1877fdc3c
0x1878d64f8:  e8 03 00 aa   mov	x8, x0
0x1878d64fc:  60 1a 40 f9   ldr	x0, [x19, #0x30]
0x1878d6500:  08 13 00 34   cbz	w8, 0x1878d6760
0x1878d6504:  e1 03 15 aa   mov	x1, x21
0x1878d6508:  6e c1 fc 97   bl	0x187806ac0
0x1878d650c:  a2 00 00 14   b	0x1878d6794
0x1878d6510:  7f 22 04 79   strh	wzr, [x19, #0x210]
0x1878d6514:  68 12 48 39   ldrb	w8, [x19, #0x204]
0x1878d6518:  69 16 48 39   ldrb	w9, [x19, #0x205]
0x1878d651c:  2a 21 08 2a   orr	w10, w9, w8, lsl #0x8
0x1878d6520:  5f 1d 20 71   cmp	w10, #0x807
0x1878d6524:  6c 01 00 54   b.gt	0x1878d6550
0x1878d6528:  5f 11 18 71   cmp	w10, #0x604
0x1878d652c:  ad 0f 00 54   b.le	0x1878d6720
0x1878d6530:  5f 11 20 71   cmp	w10, #0x804
0x1878d6534:  4c 13 00 54   b.gt	0x1878d679c
0x1878d6538:  5f 15 18 71   cmp	w10, #0x605
0x1878d653c:  c0 28 00 54   b.eq	0x1878d6a54
0x1878d6540:  5f 19 18 71   cmp	w10, #0x606
0x1878d6544:  c1 4d 00 54   b.ne	0x1878d6efc
0x1878d6548:  08 1a 80 52   mov	w8, #0xd0
0x1878d654c:  51 01 00 14   b	0x1878d6a90
0x1878d6550:  5f 1d 28 71   cmp	w10, #0xa07
0x1878d6554:  6d 0f 00 54   b.le	0x1878d6740
0x1878d6558:  5f 25 30 71   cmp	w10, #0xc09
0x1878d655c:  cc 12 00 54   b.gt	0x1878d67b4
0x1878d6560:  5f 21 28 71   cmp	w10, #0xa08
0x1878d6564:  c0 27 00 54   b.eq	0x1878d6a5c
0x1878d6568:  5f 29 28 71   cmp	w10, #0xa0a
0x1878d656c:  81 4c 00 54   b.ne	0x1878d6efc
0x1878d6570:  08 1b 80 52   mov	w8, #0xd8
0x1878d6574:  47 01 00 14   b	0x1878d6a90
0x1878d6578:  00 e4 00 6f   movi	v0.2d, #0
0x1878d657c:  e0 82 03 ad   stp	q0, q0, [x23, #0x70]
0x1878d6580:  e0 82 02 ad   stp	q0, q0, [x23, #0x50]
0x1878d6584:  e0 12 80 3d   str	q0, [x23, #0x40]
0x1878d6588:  62 6a 40 f9   ldr	x2, [x19, #0xd0]
0x1878d658c:  e0 43 01 91   add	x0, sp, #0x50
0x1878d6590:  e1 83 03 91   add	x1, sp, #0xe0
0x1878d6594:  03 0a 80 52   mov	w3, #0x50
0x1878d6598:  45 fe ff 97   bl	0x1878d5eac
0x1878d659c:  1f 40 01 f1   cmp	x0, #0x50
0x1878d65a0:  c1 46 00 54   b.ne	0x1878d6e78
0x1878d65a4:  e0 83 03 91   add	x0, sp, #0xe0
0x1878d65a8:  38 33 04 94   bl	0x1879e3288
0x1878d65ac:  60 46 00 34   cbz	w0, 0x1878d6e78
0x1878d65b0:  e8 62 40 b9   ldr	w8, [x23, #0x60]
0x1878d65b4:  e9 33 40 f9   ldr	x9, [sp, #0x60]
0x1878d65b8:  3f 01 08 eb   cmp	x9, x8
0x1878d65bc:  49 6b 00 54   b.ls	0x1878d7324
0x1878d65c0:  e8 72 40 b9   ldr	w8, [x23, #0x70]
0x1878d65c4:  3f 01 08 eb   cmp	x9, x8
0x1878d65c8:  69 6b 00 54   b.ls	0x1878d7334
0x1878d65cc:  e8 76 40 b9   ldr	w8, [x23, #0x74]
0x1878d65d0:  3f 01 08 eb   cmp	x9, x8
0x1878d65d4:  89 6b 00 54   b.ls	0x1878d7344
0x1878d65d8:  e8 7a 40 b9   ldr	w8, [x23, #0x78]
0x1878d65dc:  3f 01 08 eb   cmp	x9, x8
0x1878d65e0:  a9 6b 00 54   b.ls	0x1878d7354
0x1878d65e4:  e8 7e 40 b9   ldr	w8, [x23, #0x7c]
0x1878d65e8:  3f 01 08 eb   cmp	x9, x8
0x1878d65ec:  c9 6b 00 54   b.ls	0x1878d7364
0x1878d65f0:  e8 42 40 f9   ldr	x8, [x23, #0x80]
0x1878d65f4:  1f 01 09 eb   cmp	x8, x9
0x1878d65f8:  62 6c 00 54   b.hs	0x1878d7384
0x1878d65fc:  e8 46 40 f9   ldr	x8, [x23, #0x88]
0x1878d6600:  1f 01 09 eb   cmp	x8, x9
0x1878d6604:  82 6c 00 54   b.hs	0x1878d7394
0x1878d6608:  08 20 80 52   mov	w8, #0x100
0x1878d660c:  68 22 04 79   strh	w8, [x19, #0x210]
0x1878d6610:  e8 56 40 b9   ldr	w8, [x23, #0x54]
0x1878d6614:  df 02 08 eb   cmp	x22, x8
0x1878d6618:  09 43 00 54   b.ls	0x1878d6e78
0x1878d661c:  e8 5a 40 b9   ldr	w8, [x23, #0x58]
0x1878d6620:  df 02 08 eb   cmp	x22, x8
0x1878d6624:  a9 42 00 54   b.ls	0x1878d6e78
0x1878d6628:  e8 6a 40 b9   ldr	w8, [x23, #0x68]
0x1878d662c:  1f 41 00 71   cmp	w8, #0x10
0x1878d6630:  48 42 00 54   b.hi	0x1878d6e78
0x1878d6634:  e0 4e 40 b9   ldr	w0, [x23, #0x4c]
0x1878d6638:  d6 72 05 94   bl	0x187a33190
0x1878d663c:  60 de 01 b9   str	w0, [x19, #0x1dc]
0x1878d6640:  08 78 03 51   sub	w8, w0, #0xde
0x1878d6644:  1f 39 00 71   cmp	w8, #0xe
0x1878d6648:  a8 00 00 54   b.hi	0x1878d665c
0x1878d664c:  e0 03 14 aa   mov	x0, x20
0x1878d6650:  21 00 80 52   mov	w1, #0x1
0x1878d6654:  74 72 05 94   bl	0x187a33024
0x1878d6658:  60 de 41 b9   ldr	w0, [x19, #0x1dc]
0x1878d665c:  7f d2 05 39   strb	wzr, [x19, #0x174]
0x1878d6660:  f8 d6 4a 29   ldp	w24, w21, [x23, #0x54]
0x1878d6664:  78 d2 01 b9   str	w24, [x19, #0x1d0]
0x1878d6668:  75 d6 01 b9   str	w21, [x19, #0x1d4]
0x1878d666c:  28 00 80 52   mov	w8, #0x1
0x1878d6670:  68 da 01 b9   str	w8, [x19, #0x1d8]
0x1878d6674:  79 e2 40 b9   ldr	w25, [x19, #0xe0]
0x1878d6678:  ff 33 01 39   strb	wzr, [sp, #0x4c]
0x1878d667c:  ff 2f 01 39   strb	wzr, [sp, #0x4b]
0x1878d6680:  e1 33 01 91   add	x1, sp, #0x4c
0x1878d6684:  e2 2f 01 91   add	x2, sp, #0x4b
0x1878d6688:  a8 04 00 94   bl	0x1878d7928
0x1878d668c:  e8 33 41 39   ldrb	w8, [sp, #0x4c]
0x1878d6690:  48 3f 00 34   cbz	w8, 0x1878d6e78
0x1878d6694:  09 27 d9 1a   lsr	w9, w24, w25
0x1878d6698:  aa 26 d9 1a   lsr	w10, w21, w25
0x1878d669c:  68 12 08 39   strb	w8, [x19, #0x204]
0x1878d66a0:  eb 2f 41 39   ldrb	w11, [sp, #0x4b]
0x1878d66a4:  6b 16 08 39   strb	w11, [x19, #0x205]
0x1878d66a8:  2c 00 80 52   mov	w12, #0x1
0x1878d66ac:  6c 1a 08 39   strb	w12, [x19, #0x206]
0x1878d66b0:  69 1e 08 39   strb	w9, [x19, #0x207]
0x1878d66b4:  2d 7d 08 53   lsr	w13, w9, #0x8
0x1878d66b8:  6d 22 08 39   strb	w13, [x19, #0x208]
0x1878d66bc:  29 7d 10 53   lsr	w9, w9, #0x10
0x1878d66c0:  69 26 08 39   strb	w9, [x19, #0x209]
0x1878d66c4:  6a 2a 08 39   strb	w10, [x19, #0x20a]
0x1878d66c8:  49 7d 08 53   lsr	w9, w10, #0x8
0x1878d66cc:  69 2e 08 39   strb	w9, [x19, #0x20b]
0x1878d66d0:  49 7d 10 53   lsr	w9, w10, #0x10
0x1878d66d4:  69 32 08 39   strb	w9, [x19, #0x20c]
0x1878d66d8:  69 36 08 91   add	x9, x19, #0x20d
0x1878d66dc:  2c 01 00 79   strh	w12, [x9]
0x1878d66e0:  7f 3e 08 39   strb	wzr, [x19, #0x20f]
0x1878d66e4:  69 d2 41 b9   ldr	w9, [x19, #0x1d0]
0x1878d66e8:  09 01 09 0b   add	w9, w8, w9
0x1878d66ec:  29 05 00 51   sub	w9, w9, #0x1
0x1878d66f0:  29 09 c8 1a   udiv	w9, w9, w8
0x1878d66f4:  69 e2 01 b9   str	w9, [x19, #0x1e0]
0x1878d66f8:  68 d6 41 b9   ldr	w8, [x19, #0x1d4]
0x1878d66fc:  68 01 08 0b   add	w8, w11, w8
0x1878d6700:  08 05 00 51   sub	w8, w8, #0x1
0x1878d6704:  08 09 cb 1a   udiv	w8, w8, w11
0x1878d6708:  68 e6 01 b9   str	w8, [x19, #0x1e4]
0x1878d670c:  df 02 09 eb   cmp	x22, x9
0x1878d6710:  43 3b 00 54   b.lo	0x1878d6e78
0x1878d6714:  df 02 08 eb   cmp	x22, x8
0x1878d6718:  02 23 00 54   b.hs	0x1878d6b78
0x1878d671c:  d7 01 00 14   b	0x1878d6e78
0x1878d6720:  5f 11 10 71   cmp	w10, #0x404
0x1878d6724:  80 1a 00 54   b.eq	0x1878d6a74
0x1878d6728:  5f 11 14 71   cmp	w10, #0x504
0x1878d672c:  c0 1a 00 54   b.eq	0x1878d6a84
0x1878d6730:  5f 15 14 71   cmp	w10, #0x505
0x1878d6734:  41 3e 00 54   b.ne	0x1878d6efc
0x1878d6738:  c8 19 80 52   mov	w8, #0xce
0x1878d673c:  d5 00 00 14   b	0x1878d6a90
0x1878d6740:  5f 21 20 71   cmp	w10, #0x808
0x1878d6744:  c0 19 00 54   b.eq	0x1878d6a7c
0x1878d6748:  5f 15 28 71   cmp	w10, #0xa05
0x1878d674c:  00 1a 00 54   b.eq	0x1878d6a8c
0x1878d6750:  5f 19 28 71   cmp	w10, #0xa06
0x1878d6754:  41 3d 00 54   b.ne	0x1878d6efc
0x1878d6758:  c8 1a 80 52   mov	w8, #0xd6
0x1878d675c:  cd 00 00 14   b	0x1878d6a90
0x1878d6760:  28 73 2c b0   adrp	x8, 0x1e073b000
0x1878d6764:  08 c1 1c 91   add	x8, x8, #0x730
0x1878d6768:  15 01 40 f9   ldr	x21, [x8]
0x1878d676c:  e1 03 15 aa   mov	x1, x21
0x1878d6770:  33 9d fc 97   bl	0x1877fdc3c
0x1878d6774:  c0 02 00 36   tbz	w0, #0, 0x1878d67cc
0x1878d6778:  60 1a 40 f9   ldr	x0, [x19, #0x30]
0x1878d677c:  e1 03 15 aa   mov	x1, x21
0x1878d6780:  d0 c0 fc 97   bl	0x187806ac0
0x1878d6784:  80 00 00 34   cbz	w0, 0x1878d6794
0x1878d6788:  00 00 63 1e   ucvtf	d0, w0
0x1878d678c:  a9 bd 21 94   bl	0x188145e30
0x1878d6790:  00 00 78 1e   fcvtzs	w0, d0
0x1878d6794:  60 9e 02 79   strh	w0, [x19, #0x14e]
0x1878d6798:  0e 00 00 14   b	0x1878d67d0
0x1878d679c:  5f 15 20 71   cmp	w10, #0x805
0x1878d67a0:  20 16 00 54   b.eq	0x1878d6a64
0x1878d67a4:  5f 19 20 71   cmp	w10, #0x806
0x1878d67a8:  a1 3a 00 54   b.ne	0x1878d6efc
0x1878d67ac:  68 1a 80 52   mov	w8, #0xd3
0x1878d67b0:  b8 00 00 14   b	0x1878d6a90
0x1878d67b4:  5f 29 30 71   cmp	w10, #0xc0a
0x1878d67b8:  a0 15 00 54   b.eq	0x1878d6a6c
0x1878d67bc:  5f 31 30 71   cmp	w10, #0xc0c
0x1878d67c0:  e1 39 00 54   b.ne	0x1878d6efc
0x1878d67c4:  48 1b 80 52   mov	w8, #0xda
0x1878d67c8:  b2 00 00 14   b	0x1878d6a90
0x1878d67cc:  60 9e 42 79   ldrh	w0, [x19, #0x14e]
0x1878d67d0:  e8 3a 40 b9   ldr	w8, [x23, #0x38]
0x1878d67d4:  1f 21 20 6b   cmp	w8, w0, uxth
0x1878d67d8:  69 00 00 54   b.ls	0x1878d67e4
0x1878d67dc:  09 3c 00 12   and	w9, w0, #0xffff
0x1878d67e0:  04 00 00 14   b	0x1878d67f0
0x1878d67e4:  09 05 00 71   subs	w9, w8, #0x1
0x1878d67e8:  e9 33 89 1a   csel	w9, wzr, w9, cc
0x1878d67ec:  69 9e 02 79   strh	w9, [x19, #0x14e]
0x1878d67f0:  ea af 58 29   ldp	w10, w11, [sp, #0xc4]
0x1878d67f4:  4a 25 c9 1a   lsr	w10, w10, w9
0x1878d67f8:  69 25 c9 1a   lsr	w9, w11, w9
0x1878d67fc:  3f 01 00 71   cmp	w9, #0
0x1878d6800:  44 09 40 7a   ccmp	w10, #0, #0x4, eq
0x1878d6804:  29 05 9f 1a   csinc	w9, w9, wzr, eq
0x1878d6808:  6a a6 1e 29   stp	w10, w9, [x19, #0xf4]
0x1878d680c:  df 02 0a eb   cmp	x22, x10
0x1878d6810:  49 33 00 54   b.ls	0x1878d6e78
0x1878d6814:  1f 41 00 71   cmp	w8, #0x10
0x1878d6818:  08 33 00 54   b.hi	0x1878d6e78
0x1878d681c:  df 02 09 eb   cmp	x22, x9
0x1878d6820:  c9 32 00 54   b.ls	0x1878d6e78
0x1878d6824:  e8 36 40 b9   ldr	w8, [x23, #0x34]
0x1878d6828:  1f 05 00 71   cmp	w8, #0x1
0x1878d682c:  60 00 00 54   b.eq	0x1878d6838
0x1878d6830:  1f 19 00 71   cmp	w8, #0x6
0x1878d6834:  a1 0d 00 54   b.ne	0x1878d69e8
0x1878d6838:  e8 2e 40 b9   ldr	w8, [x23, #0x2c]
0x1878d683c:  1f 7d 00 71   cmp	w8, #0x1f
0x1878d6840:  c8 31 00 54   b.hi	0x1878d6e78
0x1878d6844:  e0 bf 40 b9   ldr	w0, [sp, #0xbc]
0x1878d6848:  dd 07 fd 97   bl	0x1878187bc
0x1878d684c:  60 de 01 b9   str	w0, [x19, #0x1dc]
0x1878d6850:  e8 af 40 b9   ldr	w8, [sp, #0xac]
0x1878d6854:  29 40 80 52   mov	w9, #0x201
0x1878d6858:  69 80 a0 72   movk	w9, #0x403, lsl #0x10
0x1878d685c:  1f 01 09 6b   cmp	w8, w9
0x1878d6860:  e8 17 9f 1a   cset	w8, eq
0x1878d6864:  68 d2 05 39   strb	w8, [x19, #0x174]
0x1878d6868:  78 d6 5e 29   ldp	w24, w21, [x19, #0xf4]
0x1878d686c:  78 d2 01 b9   str	w24, [x19, #0x1d0]
0x1878d6870:  75 d6 01 b9   str	w21, [x19, #0x1d4]
0x1878d6874:  28 00 80 52   mov	w8, #0x1
0x1878d6878:  68 da 01 b9   str	w8, [x19, #0x1d8]
0x1878d687c:  ff 33 01 39   strb	wzr, [sp, #0x4c]
0x1878d6880:  ff 2f 01 39   strb	wzr, [sp, #0x4b]
0x1878d6884:  e1 33 01 91   add	x1, sp, #0x4c
0x1878d6888:  e2 2f 01 91   add	x2, sp, #0x4b
0x1878d688c:  27 04 00 94   bl	0x1878d7928
0x1878d6890:  e8 33 41 39   ldrb	w8, [sp, #0x4c]
0x1878d6894:  28 2f 00 34   cbz	w8, 0x1878d6e78
0x1878d6898:  68 12 08 39   strb	w8, [x19, #0x204]
0x1878d689c:  e9 2f 41 39   ldrb	w9, [sp, #0x4b]
0x1878d68a0:  69 16 08 39   strb	w9, [x19, #0x205]
0x1878d68a4:  2a 00 80 52   mov	w10, #0x1
0x1878d68a8:  6a 1a 08 39   strb	w10, [x19, #0x206]
0x1878d68ac:  78 1e 08 39   strb	w24, [x19, #0x207]
0x1878d68b0:  0b 7f 08 53   lsr	w11, w24, #0x8
0x1878d68b4:  6b 22 08 39   strb	w11, [x19, #0x208]
0x1878d68b8:  0b 7f 10 53   lsr	w11, w24, #0x10
0x1878d68bc:  6b 26 08 39   strb	w11, [x19, #0x209]
0x1878d68c0:  75 2a 08 39   strb	w21, [x19, #0x20a]
0x1878d68c4:  ab 7e 08 53   lsr	w11, w21, #0x8
0x1878d68c8:  6b 2e 08 39   strb	w11, [x19, #0x20b]
0x1878d68cc:  ab 7e 10 53   lsr	w11, w21, #0x10
0x1878d68d0:  6b 32 08 39   strb	w11, [x19, #0x20c]
0x1878d68d4:  6b 36 08 91   add	x11, x19, #0x20d
0x1878d68d8:  6a 01 00 79   strh	w10, [x11]
0x1878d68dc:  7f 3e 08 39   strb	wzr, [x19, #0x20f]
0x1878d68e0:  6a d2 41 b9   ldr	w10, [x19, #0x1d0]
0x1878d68e4:  0a 01 0a 0b   add	w10, w8, w10
0x1878d68e8:  4a 05 00 51   sub	w10, w10, #0x1
0x1878d68ec:  4a 09 c8 1a   udiv	w10, w10, w8
0x1878d68f0:  6a e2 01 b9   str	w10, [x19, #0x1e0]
0x1878d68f4:  68 d6 41 b9   ldr	w8, [x19, #0x1d4]
0x1878d68f8:  28 01 08 0b   add	w8, w9, w8
0x1878d68fc:  08 05 00 51   sub	w8, w8, #0x1
0x1878d6900:  08 09 c9 1a   udiv	w8, w8, w9
0x1878d6904:  68 e6 01 b9   str	w8, [x19, #0x1e4]
0x1878d6908:  df 02 0a eb   cmp	x22, x10
0x1878d690c:  63 2b 00 54   b.lo	0x1878d6e78
0x1878d6910:  df 02 08 eb   cmp	x22, x8
0x1878d6914:  23 2b 00 54   b.lo	0x1878d6e78
0x1878d6918:  e1 83 02 91   add	x1, sp, #0xa0
0x1878d691c:  e0 03 13 aa   mov	x0, x19
0x1878d6920:  1b 03 00 94   bl	0x1878d758c
0x1878d6924:  a0 2a 00 34   cbz	w0, 0x1878d6e78
0x1878d6928:  61 5a 48 39   ldrb	w1, [x19, #0x216]
0x1878d692c:  3f fc 03 71   cmp	w1, #0xff
0x1878d6930:  80 01 00 54   b.eq	0x1878d6960
0x1878d6934:  75 1e 40 f9   ldr	x21, [x19, #0x38]
0x1878d6938:  e0 83 03 91   add	x0, sp, #0xe0
0x1878d693c:  a2 ca fc 97   bl	0x1878093c4
0x1878d6940:  28 73 2c d0   adrp	x8, 0x1e073c000
0x1878d6944:  08 a1 00 91   add	x8, x8, #0x28
0x1878d6948:  02 01 40 f9   ldr	x2, [x8]
0x1878d694c:  e1 83 03 91   add	x1, sp, #0xe0
0x1878d6950:  e0 03 15 aa   mov	x0, x21
0x1878d6954:  b8 ca fc 97   bl	0x187809434
0x1878d6958:  e0 83 03 91   add	x0, sp, #0xe0
0x1878d695c:  0a d0 fc 97   bl	0x18780a984
0x1878d6960:  e8 3e 40 b9   ldr	w8, [x23, #0x3c]
0x1878d6964:  02 01 01 91   add	x2, x8, #0x40
0x1878d6968:  62 6a 00 f9   str	x2, [x19, #0xd0]
0x1878d696c:  e1 83 02 91   add	x1, sp, #0xa0
0x1878d6970:  e0 03 13 aa   mov	x0, x19
0x1878d6974:  41 5b 07 94   bl	0x187aad678
0x1878d6978:  60 6a 00 f9   str	x0, [x19, #0xd0]
0x1878d697c:  e1 03 00 2a   mov	w1, w0
0x1878d6980:  e0 03 14 aa   mov	x0, x20
0x1878d6984:  8c 07 fd 97   bl	0x1878187b4
0x1878d6988:  68 56 48 39   ldrb	w8, [x19, #0x215]
0x1878d698c:  68 0f 00 35   cbnz	w8, 0x1878d6b78
0x1878d6990:  68 e2 41 b9   ldr	w8, [x19, #0x1e0]
0x1878d6994:  69 e6 41 b9   ldr	w9, [x19, #0x1e4]
0x1878d6998:  09 7d a9 9b   umull	x9, w8, w9
0x1878d699c:  68 aa 4c a9   ldp	x8, x10, [x19, #0xc8]
0x1878d69a0:  4a 11 09 8b   add	x10, x10, x9, lsl #0x4
0x1878d69a4:  1f 01 0a eb   cmp	x8, x10
0x1878d69a8:  82 0e 00 54   b.hs	0x1878d6b78
0x1878d69ac:  29 ed 7c d3   lsl	x9, x9, #0x4
0x1878d69b0:  6a 12 48 39   ldrb	w10, [x19, #0x204]
0x1878d69b4:  6b 16 48 39   ldrb	w11, [x19, #0x205]
0x1878d69b8:  6c d2 41 b9   ldr	w12, [x19, #0x1d0]
0x1878d69bc:  6d d6 41 b9   ldr	w13, [x19, #0x1d4]
0x1878d69c0:  e8 27 02 a9   stp	x8, x9, [sp, #0x20]
0x1878d69c4:  ec 37 01 a9   stp	x12, x13, [sp, #0x10]
0x1878d69c8:  00 25 00 f0   adrp	x0, 0x187d79000
0x1878d69cc:  00 58 3f 91   add	x0, x0, #0xfd6
0x1878d69d0:  ea 2f 00 a9   stp	x10, x11, [sp]
0x1878d69d4:  22 29 00 b0   adrp	x2, 0x187dfb000
0x1878d69d8:  42 f8 14 91   add	x2, x2, #0x53e
0x1878d69dc:  21 49 80 52   mov	w1, #0x249
0x1878d69e0:  20 08 fd 97   bl	0x187818a60
0x1878d69e4:  25 01 00 14   b	0x1878d6e78
0x1878d69e8:  00 25 00 f0   adrp	x0, 0x187d79000
0x1878d69ec:  00 58 3f 91   add	x0, x0, #0xfd6
0x1878d69f0:  e8 03 00 f9   str	x8, [sp]
0x1878d69f4:  22 29 00 b0   adrp	x2, 0x187dfb000
0x1878d69f8:  42 5c 14 91   add	x2, x2, #0x517
0x1878d69fc:  c1 40 80 52   mov	w1, #0x206
0x1878d6a00:  18 08 fd 97   bl	0x187818a60
0x1878d6a04:  1d 01 00 14   b	0x1878d6e78
0x1878d6a08:  e0 03 14 aa   mov	x0, x20
0x1878d6a0c:  21 00 80 52   mov	w1, #0x1
0x1878d6a10:  85 71 05 94   bl	0x187a33024
0x1878d6a14:  c8 7e 18 9b   mul	x8, x22, x24
0x1878d6a18:  09 fd 7c d3   lsr	x9, x8, #0x3c
0x1878d6a1c:  69 47 00 b5   cbnz	x9, 0x1878d7308
0x1878d6a20:  08 ed 7c d3   lsl	x8, x8, #0x4
0x1878d6a24:  69 aa 4c a9   ldp	x9, x10, [x19, #0xc8]
0x1878d6a28:  4a 01 08 8b   add	x10, x10, x8
0x1878d6a2c:  3f 01 0a eb   cmp	x9, x10
0x1878d6a30:  42 0a 00 54   b.hs	0x1878d6b78
0x1878d6a34:  00 25 00 f0   adrp	x0, 0x187d79000
0x1878d6a38:  00 58 3f 91   add	x0, x0, #0xfd6
0x1878d6a3c:  e8 03 00 f9   str	x8, [sp]
0x1878d6a40:  22 29 00 b0   adrp	x2, 0x187dfb000
0x1878d6a44:  42 a0 11 91   add	x2, x2, #0x468
0x1878d6a48:  41 33 80 52   mov	w1, #0x19a
0x1878d6a4c:  05 08 fd 97   bl	0x187818a60
0x1878d6a50:  0a 01 00 14   b	0x1878d6e78
0x1878d6a54:  e8 19 80 52   mov	w8, #0xcf
0x1878d6a58:  0e 00 00 14   b	0x1878d6a90
0x1878d6a5c:  e8 1a 80 52   mov	w8, #0xd7
0x1878d6a60:  0c 00 00 14   b	0x1878d6a90
0x1878d6a64:  48 1a 80 52   mov	w8, #0xd2
0x1878d6a68:  0a 00 00 14   b	0x1878d6a90
0x1878d6a6c:  28 1b 80 52   mov	w8, #0xd9
0x1878d6a70:  08 00 00 14   b	0x1878d6a90
0x1878d6a74:  88 19 80 52   mov	w8, #0xcc
0x1878d6a78:  06 00 00 14   b	0x1878d6a90
0x1878d6a7c:  88 1a 80 52   mov	w8, #0xd4
0x1878d6a80:  04 00 00 14   b	0x1878d6a90
0x1878d6a84:  a8 19 80 52   mov	w8, #0xcd
0x1878d6a88:  02 00 00 14   b	0x1878d6a90
0x1878d6a8c:  a8 1a 80 52   mov	w8, #0xd5
0x1878d6a90:  68 de 01 b9   str	w8, [x19, #0x1dc]
0x1878d6a94:  08 02 80 52   mov	w8, #0x10
0x1878d6a98:  68 6a 00 f9   str	x8, [x19, #0xd0]
0x1878d6a9c:  e0 03 14 aa   mov	x0, x20
0x1878d6aa0:  01 02 80 52   mov	w1, #0x10
0x1878d6aa4:  44 07 fd 97   bl	0x1878187b4
0x1878d6aa8:  68 1e 08 91   add	x8, x19, #0x207
0x1878d6aac:  08 01 40 79   ldrh	w8, [x8]
0x1878d6ab0:  69 26 48 39   ldrb	w9, [x19, #0x209]
0x1878d6ab4:  08 41 09 2a   orr	w8, w8, w9, lsl #0x10
0x1878d6ab8:  68 d2 01 b9   str	w8, [x19, #0x1d0]
0x1878d6abc:  69 16 44 79   ldrh	w9, [x19, #0x20a]
0x1878d6ac0:  6a 32 48 39   ldrb	w10, [x19, #0x20c]
0x1878d6ac4:  2a 41 0a 2a   orr	w10, w9, w10, lsl #0x10
0x1878d6ac8:  6a d6 01 b9   str	w10, [x19, #0x1d4]
0x1878d6acc:  69 36 08 91   add	x9, x19, #0x20d
0x1878d6ad0:  29 01 40 79   ldrh	w9, [x9]
0x1878d6ad4:  6b 3e 48 39   ldrb	w11, [x19, #0x20f]
0x1878d6ad8:  29 41 0b 2a   orr	w9, w9, w11, lsl #0x10
0x1878d6adc:  69 da 01 b9   str	w9, [x19, #0x1d8]
0x1878d6ae0:  69 12 48 39   ldrb	w9, [x19, #0x204]
0x1878d6ae4:  0b 01 09 0b   add	w11, w8, w9
0x1878d6ae8:  6b 05 00 51   sub	w11, w11, #0x1
0x1878d6aec:  6c 09 c9 1a   udiv	w12, w11, w9
0x1878d6af0:  6c e2 01 b9   str	w12, [x19, #0x1e0]
0x1878d6af4:  6b 16 48 39   ldrb	w11, [x19, #0x205]
0x1878d6af8:  4d 01 0b 0b   add	w13, w10, w11
0x1878d6afc:  ad 05 00 51   sub	w13, w13, #0x1
0x1878d6b00:  ad 09 cb 1a   udiv	w13, w13, w11
0x1878d6b04:  6d e6 01 b9   str	w13, [x19, #0x1e4]
0x1878d6b08:  8d 7d ad 9b   umull	x13, w12, w13
0x1878d6b0c:  6c ba 4c a9   ldp	x12, x14, [x19, #0xc8]
0x1878d6b10:  ce 11 0d 8b   add	x14, x14, x13, lsl #0x4
0x1878d6b14:  9f 01 0e eb   cmp	x12, x14
0x1878d6b18:  82 01 00 54   b.hs	0x1878d6b48
0x1878d6b1c:  ad ed 7c d3   lsl	x13, x13, #0x4
0x1878d6b20:  ec 37 02 a9   stp	x12, x13, [sp, #0x20]
0x1878d6b24:  e8 2b 01 a9   stp	x8, x10, [sp, #0x10]
0x1878d6b28:  00 25 00 f0   adrp	x0, 0x187d79000
0x1878d6b2c:  00 58 3f 91   add	x0, x0, #0xfd6
0x1878d6b30:  e9 2f 00 a9   stp	x9, x11, [sp]
0x1878d6b34:  22 29 00 b0   adrp	x2, 0x187dfb000
0x1878d6b38:  42 44 13 91   add	x2, x2, #0x4d1
0x1878d6b3c:  81 3a 80 52   mov	w1, #0x1d4
0x1878d6b40:  c8 07 fd 97   bl	0x187818a60
0x1878d6b44:  cd 00 00 14   b	0x1878d6e78
0x1878d6b48:  75 1e 40 f9   ldr	x21, [x19, #0x38]
0x1878d6b4c:  e0 83 03 91   add	x0, sp, #0xe0
0x1878d6b50:  81 00 80 52   mov	w1, #0x4
0x1878d6b54:  1c ca fc 97   bl	0x1878093c4
0x1878d6b58:  28 73 2c d0   adrp	x8, 0x1e073c000
0x1878d6b5c:  08 a1 00 91   add	x8, x8, #0x28
0x1878d6b60:  02 01 40 f9   ldr	x2, [x8]
0x1878d6b64:  e1 83 03 91   add	x1, sp, #0xe0
0x1878d6b68:  e0 03 15 aa   mov	x0, x21
0x1878d6b6c:  32 ca fc 97   bl	0x187809434
0x1878d6b70:  e0 83 03 91   add	x0, sp, #0xe0
0x1878d6b74:  84 cf fc 97   bl	0x18780a984
0x1878d6b78:  61 d2 41 b9   ldr	w1, [x19, #0x1d0]
0x1878d6b7c:  62 d6 41 b9   ldr	w2, [x19, #0x1d4]
0x1878d6b80:  e0 03 14 aa   mov	x0, x20
0x1878d6b84:  1d 07 fd 97   bl	0x1878187f8
0x1878d6b88:  61 de 41 b9   ldr	w1, [x19, #0x1dc]
0x1878d6b8c:  e0 03 14 aa   mov	x0, x20
0x1878d6b90:  17 07 fd 97   bl	0x1878187ec
0x1878d6b94:  61 12 48 39   ldrb	w1, [x19, #0x204]
0x1878d6b98:  62 16 48 39   ldrb	w2, [x19, #0x205]
0x1878d6b9c:  e0 03 14 aa   mov	x0, x20
0x1878d6ba0:  0e 08 fd 97   bl	0x187818bd8
0x1878d6ba4:  61 e2 41 b9   ldr	w1, [x19, #0x1e0]
0x1878d6ba8:  62 e6 41 b9   ldr	w2, [x19, #0x1e4]
0x1878d6bac:  e0 03 14 aa   mov	x0, x20
0x1878d6bb0:  13 08 fd 97   bl	0x187818bfc
0x1878d6bb4:  68 42 48 39   ldrb	w8, [x19, #0x210]
0x1878d6bb8:  1f 05 00 71   cmp	w8, #0x1
0x1878d6bbc:  81 01 00 54   b.ne	0x1878d6bec
0x1878d6bc0:  61 6a 40 f9   ldr	x1, [x19, #0xd0]
0x1878d6bc4:  e0 43 01 91   add	x0, sp, #0x50
0x1878d6bc8:  58 ef fc 97   bl	0x187812928
0x1878d6bcc:  e0 43 01 91   add	x0, sp, #0x50
0x1878d6bd0:  6c ef fc 97   bl	0x187812980
0x1878d6bd4:  88 49 8b 52   mov	w8, #0x5a4c
0x1878d6bd8:  c8 68 aa 72   movk	w8, #0x5346, lsl #0x10
0x1878d6bdc:  1f 00 08 6b   cmp	w0, w8
0x1878d6be0:  41 01 00 54   b.ne	0x1878d6c08
0x1878d6be4:  75 6a 40 f9   ldr	x21, [x19, #0xd0]
0x1878d6be8:  0c 00 00 14   b	0x1878d6c18
0x1878d6bec:  68 4a 48 39   ldrb	w8, [x19, #0x212]
0x1878d6bf0:  1f 05 00 71   cmp	w8, #0x1
0x1878d6bf4:  61 00 00 54   b.ne	0x1878d6c00
0x1878d6bf8:  75 6a 40 f9   ldr	x21, [x19, #0xd0]
0x1878d6bfc:  1e 00 00 14   b	0x1878d6c74
0x1878d6c00:  15 02 80 52   mov	w21, #0x10
0x1878d6c04:  1c 00 00 14   b	0x1878d6c74
0x1878d6c08:  e0 43 01 91   add	x0, sp, #0x50
0x1878d6c0c:  5d ef fc 97   bl	0x187812980
0x1878d6c10:  68 6a 40 f9   ldr	x8, [x19, #0xd0]
0x1878d6c14:  15 11 00 91   add	x21, x8, #0x4
0x1878d6c18:  16 2f 33 b0   adrp	x22, 0x1edeb7000
0x1878d6c1c:  d6 42 34 91   add	x22, x22, #0xd10
0x1878d6c20:  c8 0a 40 39   ldrb	w8, [x22, #0x2]
0x1878d6c24:  1f 05 00 72   tst	w8, #0x3
0x1878d6c28:  60 02 00 54   b.eq	0x1878d6c74
0x1878d6c2c:  80 26 00 90   adrp	x0, 0x187da6000
0x1878d6c30:  00 ec 0c 91   add	x0, x0, #0x33b
0x1878d6c34:  13 e5 fe 97   bl	0x187890080
0x1878d6c38:  c8 0a 40 39   ldrb	w8, [x22, #0x2]
0x1878d6c3c:  1f 05 00 72   tst	w8, #0x3
0x1878d6c40:  a0 01 00 54   b.eq	0x1878d6c74
0x1878d6c44:  f5 03 00 f9   str	x21, [sp]
0x1878d6c48:  20 29 00 b0   adrp	x0, 0x187dfb000
0x1878d6c4c:  00 20 16 91   add	x0, x0, #0x588
0x1878d6c50:  0c e5 fe 97   bl	0x187890080
0x1878d6c54:  c8 0a 40 39   ldrb	w8, [x22, #0x2]
0x1878d6c58:  1f 05 00 72   tst	w8, #0x3
0x1878d6c5c:  c0 00 00 54   b.eq	0x1878d6c74
0x1878d6c60:  68 6a 40 f9   ldr	x8, [x19, #0xd0]
0x1878d6c64:  e8 03 00 f9   str	x8, [sp]
0x1878d6c68:  20 29 00 b0   adrp	x0, 0x187dfb000
0x1878d6c6c:  00 b8 16 91   add	x0, x0, #0x5ae
0x1878d6c70:  04 e5 fe 97   bl	0x187890080
0x1878d6c74:  68 46 48 39   ldrb	w8, [x19, #0x211]
0x1878d6c78:  08 09 00 37   tbnz	w8, #0, 0x1878d6d98
0x1878d6c7c:  68 4a 48 39   ldrb	w8, [x19, #0x212]
0x1878d6c80:  c8 08 00 37   tbnz	w8, #0, 0x1878d6d98
0x1878d6c84:  e0 43 01 91   add	x0, sp, #0x50
0x1878d6c88:  e1 03 15 aa   mov	x1, x21
0x1878d6c8c:  27 ef fc 97   bl	0x187812928
0x1878d6c90:  e0 43 01 91   add	x0, sp, #0x50
0x1878d6c94:  3b ef fc 97   bl	0x187812980
0x1878d6c98:  88 49 8b 52   mov	w8, #0x5a4c
0x1878d6c9c:  c8 68 aa 72   movk	w8, #0x5346, lsl #0x10
0x1878d6ca0:  1f 00 08 6b   cmp	w0, w8
0x1878d6ca4:  a1 07 00 54   b.ne	0x1878d6d98
0x1878d6ca8:  e0 03 14 aa   mov	x0, x20
0x1878d6cac:  21 00 80 52   mov	w1, #0x1
0x1878d6cb0:  db 70 05 94   bl	0x187a3301c
0x1878d6cb4:  ff 42 00 b9   str	wzr, [x23, #0x40]
0x1878d6cb8:  b6 12 00 91   add	x22, x21, #0x4
0x1878d6cbc:  e0 43 01 91   add	x0, sp, #0x50
0x1878d6cc0:  e1 83 03 91   add	x1, sp, #0xe0
0x1878d6cc4:  e2 03 16 aa   mov	x2, x22
0x1878d6cc8:  83 00 80 52   mov	w3, #0x4
0x1878d6ccc:  78 fc ff 97   bl	0x1878d5eac
0x1878d6cd0:  e1 42 40 b9   ldr	w1, [x23, #0x40]
0x1878d6cd4:  e0 03 14 aa   mov	x0, x20
0x1878d6cd8:  d5 70 05 94   bl	0x187a3302c
0x1878d6cdc:  b5 22 00 91   add	x21, x21, #0x8
0x1878d6ce0:  e1 03 15 2a   mov	w1, w21
0x1878d6ce4:  e0 03 14 aa   mov	x0, x20
0x1878d6ce8:  92 33 05 94   bl	0x187a23b30
0x1878d6cec:  18 2f 33 b0   adrp	x24, 0x1edeb7000
0x1878d6cf0:  18 43 34 91   add	x24, x24, #0xd10
0x1878d6cf4:  08 0b 40 39   ldrb	w8, [x24, #0x2]
0x1878d6cf8:  1f 05 00 72   tst	w8, #0x3
0x1878d6cfc:  a0 01 00 54   b.eq	0x1878d6d30
0x1878d6d00:  e8 42 40 b9   ldr	w8, [x23, #0x40]
0x1878d6d04:  e8 03 00 f9   str	x8, [sp]
0x1878d6d08:  20 29 00 b0   adrp	x0, 0x187dfb000
0x1878d6d0c:  00 68 17 91   add	x0, x0, #0x5da
0x1878d6d10:  dc e4 fe 97   bl	0x187890080
0x1878d6d14:  08 0b 40 39   ldrb	w8, [x24, #0x2]
0x1878d6d18:  1f 05 00 72   tst	w8, #0x3
0x1878d6d1c:  a0 00 00 54   b.eq	0x1878d6d30
0x1878d6d20:  f5 03 00 f9   str	x21, [sp]
0x1878d6d24:  20 29 00 b0   adrp	x0, 0x187dfb000
0x1878d6d28:  00 fc 17 91   add	x0, x0, #0x5ff
0x1878d6d2c:  d5 e4 fe 97   bl	0x187890080
0x1878d6d30:  e8 42 40 b9   ldr	w8, [x23, #0x40]
0x1878d6d34:  1f 25 00 71   cmp	w8, #0x9
0x1878d6d38:  03 03 00 54   b.lo	0x1878d6d98
0x1878d6d3c:  ff a3 00 b9   str	wzr, [sp, #0xa0]
0x1878d6d40:  ff 4f 00 b9   str	wzr, [sp, #0x4c]
0x1878d6d44:  e0 43 01 91   add	x0, sp, #0x50
0x1878d6d48:  e1 83 02 91   add	x1, sp, #0xa0
0x1878d6d4c:  e2 03 15 aa   mov	x2, x21
0x1878d6d50:  83 00 80 52   mov	w3, #0x4
0x1878d6d54:  56 fc ff 97   bl	0x1878d5eac
0x1878d6d58:  e8 42 40 b9   ldr	w8, [x23, #0x40]
0x1878d6d5c:  e0 43 01 91   add	x0, sp, #0x50
0x1878d6d60:  e1 33 01 91   add	x1, sp, #0x4c
0x1878d6d64:  c2 02 08 8b   add	x2, x22, x8
0x1878d6d68:  83 00 80 52   mov	w3, #0x4
0x1878d6d6c:  50 fc ff 97   bl	0x1878d5eac
0x1878d6d70:  e9 a3 40 b9   ldr	w9, [sp, #0xa0]
0x1878d6d74:  48 cc 8e 52   mov	w8, #0x7662
0x1878d6d78:  08 4f a6 72   movk	w8, #0x3278, lsl #0x10
0x1878d6d7c:  3f 01 08 6b   cmp	w9, w8
0x1878d6d80:  21 11 00 54   b.ne	0x1878d6fa4
0x1878d6d84:  e8 4f 40 b9   ldr	w8, [sp, #0x4c]
0x1878d6d88:  4a cc 8e 52   mov	w10, #0x7662
0x1878d6d8c:  0a 8f a4 72   movk	w10, #0x2478, lsl #0x10
0x1878d6d90:  1f 01 0a 6b   cmp	w8, w10
0x1878d6d94:  81 10 00 54   b.ne	0x1878d6fa4
0x1878d6d98:  75 12 48 39   ldrb	w21, [x19, #0x204]
0x1878d6d9c:  76 16 48 39   ldrb	w22, [x19, #0x205]
0x1878d6da0:  78 1a 48 39   ldrb	w24, [x19, #0x206]
0x1878d6da4:  a8 36 00 51   sub	w8, w21, #0xd
0x1878d6da8:  1f 29 00 31   cmn	w8, #0xa
0x1878d6dac:  63 05 00 54   b.lo	0x1878d6e58
0x1878d6db0:  c8 36 00 51   sub	w8, w22, #0xd
0x1878d6db4:  1f 29 00 31   cmn	w8, #0xa
0x1878d6db8:  03 05 00 54   b.lo	0x1878d6e58
0x1878d6dbc:  1f 0f 00 71   cmp	w24, #0x3
0x1878d6dc0:  04 3b 41 7a   ccmp	w24, #0x1, #0x4, cc
0x1878d6dc4:  e8 07 9f 1a   cset	w8, ne
0x1878d6dc8:  1f 33 00 71   cmp	w24, #0xc
0x1878d6dcc:  68 04 00 54   b.hi	0x1878d6e58
0x1878d6dd0:  48 04 00 35   cbnz	w8, 0x1878d6e58
0x1878d6dd4:  e8 33 40 f9   ldr	x8, [sp, #0x60]
0x1878d6dd8:  69 6a 40 f9   ldr	x9, [x19, #0xd0]
0x1878d6ddc:  19 01 09 eb   subs	x25, x8, x9
0x1878d6de0:  e4 07 00 54   b.mi	0x1878d6edc
0x1878d6de4:  7b d2 41 b9   ldr	w27, [x19, #0x1d0]
0x1878d6de8:  7a d6 41 b9   ldr	w26, [x19, #0x1d4]
0x1878d6dec:  e0 03 14 aa   mov	x0, x20
0x1878d6df0:  ea 02 00 94   bl	0x1878d7998
0x1878d6df4:  a8 02 1b 8b   add	x8, x21, x27
0x1878d6df8:  08 05 00 d1   sub	x8, x8, #0x1
0x1878d6dfc:  08 09 d5 9a   udiv	x8, x8, x21
0x1878d6e00:  c9 02 1a 8b   add	x9, x22, x26
0x1878d6e04:  29 05 00 d1   sub	x9, x9, #0x1
0x1878d6e08:  29 09 d6 9a   udiv	x9, x9, x22
0x1878d6e0c:  08 7d 09 9b   mul	x8, x8, x9
0x1878d6e10:  08 ed 7c d3   lsl	x8, x8, #0x4
0x1878d6e14:  1f 01 19 eb   cmp	x8, x25
0x1878d6e18:  09 84 9f 1a   csinc	w9, w0, wzr, hi
0x1878d6e1c:  49 08 00 36   tbz	w9, #0, 0x1878d6f24
0x1878d6e20:  68 36 08 91   add	x8, x19, #0x20d
0x1878d6e24:  08 01 40 79   ldrh	w8, [x8]
0x1878d6e28:  69 3e 48 39   ldrb	w9, [x19, #0x20f]
0x1878d6e2c:  08 41 09 2a   orr	w8, w8, w9, lsl #0x10
0x1878d6e30:  1f 09 00 71   cmp	w8, #0x2
0x1878d6e34:  23 09 00 54   b.lo	0x1878d6f58
0x1878d6e38:  00 25 00 f0   adrp	x0, 0x187d79000
0x1878d6e3c:  00 58 3f 91   add	x0, x0, #0xfd6
0x1878d6e40:  e8 03 00 f9   str	x8, [sp]
0x1878d6e44:  22 29 00 b0   adrp	x2, 0x187dfb000
0x1878d6e48:  42 a8 1c 91   add	x2, x2, #0x72a
0x1878d6e4c:  c1 62 80 52   mov	w1, #0x316
0x1878d6e50:  04 07 fd 97   bl	0x187818a60
0x1878d6e54:  09 00 00 14   b	0x1878d6e78
0x1878d6e58:  f6 e3 00 a9   stp	x22, x24, [sp, #0x8]
0x1878d6e5c:  00 25 00 f0   adrp	x0, 0x187d79000
0x1878d6e60:  00 58 3f 91   add	x0, x0, #0xfd6
0x1878d6e64:  f5 03 00 f9   str	x21, [sp]
0x1878d6e68:  22 29 00 b0   adrp	x2, 0x187dfb000
0x1878d6e6c:  42 f8 19 91   add	x2, x2, #0x67e
0x1878d6e70:  a1 5e 80 52   mov	w1, #0x2f5
0x1878d6e74:  fb 06 fd 97   bl	0x187818a60
0x1878d6e78:  62 de 40 b9   ldr	w2, [x19, #0xdc]
0x1878d6e7c:  00 18 80 52   mov	w0, #0xc0
0x1878d6e80:  c0 6b a5 72   movk	w0, #0x2b5e, lsl #0x10
0x1878d6e84:  a1 01 80 52   mov	w1, #0xd
0x1878d6e88:  23 06 80 92   mov	x3, #0xffffffffffffffce
0x1878d6e8c:  04 00 80 d2   mov	x4, #0
0x1878d6e90:  30 90 21 94   bl	0x18813af50
0x1878d6e94:  34 06 80 12   mov	w20, #0xffffffce
0x1878d6e98:  e0 43 01 91   add	x0, sp, #0x50
0x1878d6e9c:  44 ef fc 97   bl	0x187812bac
0x1878d6ea0:  a8 83 5a f8   ldur	x8, [fp, #-0x58]
0x1878d6ea4:  69 44 2c d0   adrp	x9, 0x1e0164000
0x1878d6ea8:  29 39 45 f9   ldr	x9, [x9, #0xa70]
0x1878d6eac:  29 01 40 f9   ldr	x9, [x9]
0x1878d6eb0:  3f 01 08 eb   cmp	x9, x8
0x1878d6eb4:  a1 2d 00 54   b.ne	0x1878d7468
0x1878d6eb8:  e0 03 14 aa   mov	x0, x20
0x1878d6ebc:  fd 7b 5c a9   ldp	fp, lr, [sp, #0x1c0]
0x1878d6ec0:  f4 4f 5b a9   ldp	x20, x19, [sp, #0x1b0]
0x1878d6ec4:  f6 57 5a a9   ldp	x22, x21, [sp, #0x1a0]
0x1878d6ec8:  f8 5f 59 a9   ldp	x24, x23, [sp, #0x190]
0x1878d6ecc:  fa 67 58 a9   ldp	x26, x25, [sp, #0x180]
0x1878d6ed0:  fc 6f 57 a9   ldp	x28, x27, [sp, #0x170]
0x1878d6ed4:  ff 43 07 91   add	sp, sp, #0x1d0
0x1878d6ed8:  ff 0f 5f d6   retab
0x1878d6edc:  00 25 00 f0   adrp	x0, 0x187d79000
0x1878d6ee0:  00 58 3f 91   add	x0, x0, #0xfd6
0x1878d6ee4:  e9 23 00 a9   stp	x9, x8, [sp]
0x1878d6ee8:  22 29 00 b0   adrp	x2, 0x187dfb000
0x1878d6eec:  42 c4 1a 91   add	x2, x2, #0x6b1
0x1878d6ef0:  a1 5f 80 52   mov	w1, #0x2fd
0x1878d6ef4:  db 06 fd 97   bl	0x187818a60
0x1878d6ef8:  e0 ff ff 17   b	0x1878d6e78
0x1878d6efc:  6a 1a 48 39   ldrb	w10, [x19, #0x206]
0x1878d6f00:  e9 ab 00 a9   stp	x9, x10, [sp, #0x8]
0x1878d6f04:  00 25 00 f0   adrp	x0, 0x187d79000
0x1878d6f08:  00 58 3f 91   add	x0, x0, #0xfd6
0x1878d6f0c:  e8 03 00 f9   str	x8, [sp]
0x1878d6f10:  22 29 00 b0   adrp	x2, 0x187dfb000
0x1878d6f14:  42 50 12 91   add	x2, x2, #0x494
0x1878d6f18:  e1 37 80 52   mov	w1, #0x1bf
0x1878d6f1c:  50 ec fd 97   bl	0x18785205c
0x1878d6f20:  d6 ff ff 17   b	0x1878d6e78
0x1878d6f24:  69 d2 41 b9   ldr	w9, [x19, #0x1d0]
0x1878d6f28:  6a d6 41 b9   ldr	w10, [x19, #0x1d4]
0x1878d6f2c:  f9 a3 02 a9   stp	x25, x8, [sp, #0x28]
0x1878d6f30:  e9 ab 01 a9   stp	x9, x10, [sp, #0x18]
0x1878d6f34:  00 25 00 f0   adrp	x0, 0x187d79000
0x1878d6f38:  00 58 3f 91   add	x0, x0, #0xfd6
0x1878d6f3c:  22 29 00 b0   adrp	x2, 0x187dfb000
0x1878d6f40:  42 5c 1b 91   add	x2, x2, #0x6d7
0x1878d6f44:  f6 e3 00 a9   stp	x22, x24, [sp, #0x8]
0x1878d6f48:  f5 03 00 f9   str	x21, [sp]
0x1878d6f4c:  21 61 80 52   mov	w1, #0x309
0x1878d6f50:  c4 06 fd 97   bl	0x187818a60
0x1878d6f54:  c9 ff ff 17   b	0x1878d6e78
0x1878d6f58:  68 1e 08 91   add	x8, x19, #0x207
0x1878d6f5c:  08 01 40 79   ldrh	w8, [x8]
0x1878d6f60:  69 26 48 39   ldrb	w9, [x19, #0x209]
0x1878d6f64:  16 41 09 2a   orr	w22, w8, w9, lsl #0x10
0x1878d6f68:  68 16 44 79   ldrh	w8, [x19, #0x20a]
0x1878d6f6c:  69 32 48 39   ldrb	w9, [x19, #0x20c]
0x1878d6f70:  08 41 09 2a   orr	w8, w8, w9, lsl #0x10
0x1878d6f74:  b6 02 00 34   cbz	w22, 0x1878d6fc8
0x1878d6f78:  c9 7e a8 9b   umull	x9, w22, w8
0x1878d6f7c:  3f 7d 60 f2   tst	x9, #0xffffffff00000000
0x1878d6f80:  40 02 00 54   b.eq	0x1878d6fc8
0x1878d6f84:  00 25 00 f0   adrp	x0, 0x187d79000
0x1878d6f88:  00 58 3f 91   add	x0, x0, #0xfd6
0x1878d6f8c:  f6 23 00 a9   stp	x22, x8, [sp]
0x1878d6f90:  22 29 00 b0   adrp	x2, 0x187dfb000
0x1878d6f94:  42 10 1d 91   add	x2, x2, #0x744
0x1878d6f98:  81 63 80 52   mov	w1, #0x31c
0x1878d6f9c:  b1 06 fd 97   bl	0x187818a60
0x1878d6fa0:  b6 ff ff 17   b	0x1878d6e78
0x1878d6fa4:  20 7d 18 13   asr	w0, w9, #0x18
0x1878d6fa8:  1f fc 01 71   cmp	w0, #0x7f
0x1878d6fac:  29 09 00 54   b.ls	0x1878d70d0
0x1878d6fb0:  81 00 a0 52   mov	w1, #0x40000
0x1878d6fb4:  df 8c 21 94   bl	0x18813a330
0x1878d6fb8:  e8 03 00 aa   mov	x8, x0
0x1878d6fbc:  e9 a3 40 b9   ldr	w9, [sp, #0xa0]
0x1878d6fc0:  20 7d 18 13   asr	w0, w9, #0x18
0x1878d6fc4:  48 00 00 14   b	0x1878d70e4
0x1878d6fc8:  76 a2 1e 29   stp	w22, w8, [x19, #0xf4]
0x1878d6fcc:  08 01 80 52   mov	w8, #0x8
0x1878d6fd0:  08 04 a0 72   movk	w8, #0x20, lsl #0x10
0x1878d6fd4:  68 02 01 b9   str	w8, [x19, #0x100]
0x1878d6fd8:  88 00 80 52   mov	w8, #0x4
0x1878d6fdc:  68 0a 02 79   strh	w8, [x19, #0x104]
0x1878d6fe0:  08 44 88 52   mov	w8, #0x4220
0x1878d6fe4:  e8 48 aa 72   movk	w8, #0x5247, lsl #0x10
0x1878d6fe8:  68 56 01 b9   str	w8, [x19, #0x154]
0x1878d6fec:  68 52 48 39   ldrb	w8, [x19, #0x214]
0x1878d6ff0:  09 11 00 12   and	w9, w8, #0x1f
0x1878d6ff4:  1f fd 03 71   cmp	w8, #0xff
0x1878d6ff8:  68 00 80 52   mov	w8, #0x3
0x1878d6ffc:  08 01 89 1a   csel	w8, w8, w9, eq
0x1878d7000:  68 1a 04 39   strb	w8, [x19, #0x106]
0x1878d7004:  7f 52 00 f9   str	xzr, [x19, #0xa0]
0x1878d7008:  68 4e 48 39   ldrb	w8, [x19, #0x213]
0x1878d700c:  1f 11 00 f1   cmp	x8, #0x4
0x1878d7010:  e8 00 00 54   b.hi	0x1878d702c
0x1878d7014:  49 75 2c b0   adrp	x9, 0x1e0780000
0x1878d7018:  29 21 1a 91   add	x9, x9, #0x688
0x1878d701c:  28 79 68 f8   ldr	x8, [x9, x8, lsl #0x3]
0x1878d7020:  00 01 40 f9   ldr	x0, [x8]
0x1878d7024:  13 dc 21 94   bl	0x18814e070
0x1878d7028:  60 52 00 f9   str	x0, [x19, #0xa0]
0x1878d702c:  c8 76 1e 53   lsl	w8, w22, #0x2
0x1878d7030:  68 fe 00 b9   str	w8, [x19, #0xfc]
0x1878d7034:  7f da 05 39   strb	wzr, [x19, #0x176]
0x1878d7038:  68 0e 40 f9   ldr	x8, [x19, #0x18]
0x1878d703c:  c8 1d 00 b4   cbz	x8, 0x1878d73f4
0x1878d7040:  e0 03 14 aa   mov	x0, x20
0x1878d7044:  55 02 00 94   bl	0x1878d7998
0x1878d7048:  60 1d 00 37   tbnz	w0, #0, 0x1878d73f4
0x1878d704c:  e0 03 14 aa   mov	x0, x20
0x1878d7050:  e5 05 fd 97   bl	0x1878187e4
0x1878d7054:  00 1d 00 37   tbnz	w0, #0, 0x1878d73f4
0x1878d7058:  68 52 48 39   ldrb	w8, [x19, #0x214]
0x1878d705c:  1f fd 03 71   cmp	w8, #0xff
0x1878d7060:  a1 1c 00 54   b.ne	0x1878d73f4
0x1878d7064:  68 4e 48 39   ldrb	w8, [x19, #0x213]
0x1878d7068:  1f fd 03 71   cmp	w8, #0xff
0x1878d706c:  41 1c 00 54   b.ne	0x1878d73f4
0x1878d7070:  68 46 48 39   ldrb	w8, [x19, #0x211]
0x1878d7074:  08 1c 00 37   tbnz	w8, #0, 0x1878d73f4
0x1878d7078:  68 4a 48 39   ldrb	w8, [x19, #0x212]
0x1878d707c:  c8 1b 00 37   tbnz	w8, #0, 0x1878d73f4
0x1878d7080:  ff 7e 04 a9   stp	xzr, xzr, [x23, #0x40]
0x1878d7084:  75 0e 40 f9   ldr	x21, [x19, #0x18]
0x1878d7088:  e0 03 14 aa   mov	x0, x20
0x1878d708c:  15 0e fd 97   bl	0x18781a8e0
0x1878d7090:  e2 03 00 aa   mov	x2, x0
0x1878d7094:  e1 83 03 91   add	x1, sp, #0xe0
0x1878d7098:  e0 03 15 aa   mov	x0, x21
0x1878d709c:  03 02 80 52   mov	w3, #0x10
0x1878d70a0:  1d b3 fd 97   bl	0x187843d14
0x1878d70a4:  1f 40 00 f1   cmp	x0, #0x10
0x1878d70a8:  61 1a 00 54   b.ne	0x1878d73f4
0x1878d70ac:  e8 42 40 b9   ldr	w8, [x23, #0x40]
0x1878d70b0:  09 21 00 12   and	w9, w8, #0x1ff
0x1878d70b4:  3f f1 07 71   cmp	w9, #0x1fc
0x1878d70b8:  e1 17 00 54   b.ne	0x1878d73b4
0x1878d70bc:  e8 22 40 f9   ldr	x8, [x23, #0x40]
0x1878d70c0:  01 25 49 d3   ubfx	x1, x8, #0x9, #0x1
0x1878d70c4:  e0 03 14 aa   mov	x0, x20
0x1878d70c8:  d7 6f 05 94   bl	0x187a33024
0x1878d70cc:  ca 00 00 14   b	0x1878d73f4
0x1878d70d0:  68 44 2c b0   adrp	x8, 0x1e0164000
0x1878d70d4:  08 35 45 f9   ldr	x8, [x8, #0xa68]
0x1878d70d8:  08 f1 00 91   add	x8, x8, #0x3c
0x1878d70dc:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x1878d70e0:  08 01 0e 12   and	w8, w8, #0x40000
0x1878d70e4:  1f 01 00 71   cmp	w8, #0
0x1878d70e8:  c8 05 80 52   mov	w8, #0x2e
0x1878d70ec:  15 01 80 1a   csel	w21, w8, w0, eq
0x1878d70f0:  20 5d 10 13   sbfx	w0, w9, #0x10, #0x8
0x1878d70f4:  1f fc 01 71   cmp	w0, #0x7f
0x1878d70f8:  e9 00 00 54   b.ls	0x1878d7114
0x1878d70fc:  81 00 a0 52   mov	w1, #0x40000
0x1878d7100:  8c 8c 21 94   bl	0x18813a330
0x1878d7104:  e8 03 00 aa   mov	x8, x0
0x1878d7108:  e9 a3 40 b9   ldr	w9, [sp, #0xa0]
0x1878d710c:  20 5d 10 13   sbfx	w0, w9, #0x10, #0x8
0x1878d7110:  06 00 00 14   b	0x1878d7128
0x1878d7114:  68 44 2c b0   adrp	x8, 0x1e0164000
0x1878d7118:  08 35 45 f9   ldr	x8, [x8, #0xa68]
0x1878d711c:  08 f1 00 91   add	x8, x8, #0x3c
0x1878d7120:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x1878d7124:  08 01 0e 12   and	w8, w8, #0x40000
0x1878d7128:  1f 01 00 71   cmp	w8, #0
0x1878d712c:  c8 05 80 52   mov	w8, #0x2e
0x1878d7130:  16 01 80 1a   csel	w22, w8, w0, eq
0x1878d7134:  20 3d 08 13   sbfx	w0, w9, #0x8, #0x8
0x1878d7138:  1f fc 01 71   cmp	w0, #0x7f
0x1878d713c:  e9 00 00 54   b.ls	0x1878d7158
0x1878d7140:  81 00 a0 52   mov	w1, #0x40000
0x1878d7144:  7b 8c 21 94   bl	0x18813a330
0x1878d7148:  e8 03 00 aa   mov	x8, x0
0x1878d714c:  e9 a3 40 b9   ldr	w9, [sp, #0xa0]
0x1878d7150:  20 3d 08 13   sbfx	w0, w9, #0x8, #0x8
0x1878d7154:  06 00 00 14   b	0x1878d716c
0x1878d7158:  68 44 2c b0   adrp	x8, 0x1e0164000
0x1878d715c:  08 35 45 f9   ldr	x8, [x8, #0xa68]
0x1878d7160:  08 f1 00 91   add	x8, x8, #0x3c
0x1878d7164:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x1878d7168:  08 01 0e 12   and	w8, w8, #0x40000
0x1878d716c:  1f 01 00 71   cmp	w8, #0
0x1878d7170:  c8 05 80 52   mov	w8, #0x2e
0x1878d7174:  17 01 80 1a   csel	w23, w8, w0, eq
0x1878d7178:  20 1d 00 13   sxtb	w0, w9
0x1878d717c:  1f fc 01 71   cmp	w0, #0x7f
0x1878d7180:  c9 00 00 54   b.ls	0x1878d7198
0x1878d7184:  81 00 a0 52   mov	w1, #0x40000
0x1878d7188:  6a 8c 21 94   bl	0x18813a330
0x1878d718c:  e8 03 00 aa   mov	x8, x0
0x1878d7190:  e0 83 c2 39   ldrsb	w0, [sp, #0xa0]
0x1878d7194:  06 00 00 14   b	0x1878d71ac
0x1878d7198:  68 44 2c b0   adrp	x8, 0x1e0164000
0x1878d719c:  08 35 45 f9   ldr	x8, [x8, #0xa68]
0x1878d71a0:  08 f1 00 91   add	x8, x8, #0x3c
0x1878d71a4:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x1878d71a8:  08 01 0e 12   and	w8, w8, #0x40000
0x1878d71ac:  1f 01 00 71   cmp	w8, #0
0x1878d71b0:  c8 05 80 52   mov	w8, #0x2e
0x1878d71b4:  18 01 80 1a   csel	w24, w8, w0, eq
0x1878d71b8:  fa 4f 40 b9   ldr	w26, [sp, #0x4c]
0x1878d71bc:  40 7f 18 13   asr	w0, w26, #0x18
0x1878d71c0:  1f fc 01 71   cmp	w0, #0x7f
0x1878d71c4:  e9 00 00 54   b.ls	0x1878d71e0
0x1878d71c8:  81 00 a0 52   mov	w1, #0x40000
0x1878d71cc:  59 8c 21 94   bl	0x18813a330
0x1878d71d0:  e8 03 00 aa   mov	x8, x0
0x1878d71d4:  fa 4f 40 b9   ldr	w26, [sp, #0x4c]
0x1878d71d8:  40 7f 18 13   asr	w0, w26, #0x18
0x1878d71dc:  06 00 00 14   b	0x1878d71f4
0x1878d71e0:  68 44 2c b0   adrp	x8, 0x1e0164000
0x1878d71e4:  08 35 45 f9   ldr	x8, [x8, #0xa68]
0x1878d71e8:  08 f1 00 91   add	x8, x8, #0x3c
0x1878d71ec:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x1878d71f0:  08 01 0e 12   and	w8, w8, #0x40000
0x1878d71f4:  1f 01 00 71   cmp	w8, #0
0x1878d71f8:  c8 05 80 52   mov	w8, #0x2e
0x1878d71fc:  19 01 80 1a   csel	w25, w8, w0, eq
0x1878d7200:  40 5f 10 13   sbfx	w0, w26, #0x10, #0x8
0x1878d7204:  1f fc 01 71   cmp	w0, #0x7f
0x1878d7208:  e9 00 00 54   b.ls	0x1878d7224
0x1878d720c:  81 00 a0 52   mov	w1, #0x40000
0x1878d7210:  48 8c 21 94   bl	0x18813a330
0x1878d7214:  e8 03 00 aa   mov	x8, x0
0x1878d7218:  fa 4f 40 b9   ldr	w26, [sp, #0x4c]
0x1878d721c:  40 5f 10 13   sbfx	w0, w26, #0x10, #0x8
0x1878d7220:  06 00 00 14   b	0x1878d7238
0x1878d7224:  68 44 2c b0   adrp	x8, 0x1e0164000
0x1878d7228:  08 35 45 f9   ldr	x8, [x8, #0xa68]
0x1878d722c:  08 f1 00 91   add	x8, x8, #0x3c
0x1878d7230:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x1878d7234:  08 01 0e 12   and	w8, w8, #0x40000
0x1878d7238:  1f 01 00 71   cmp	w8, #0
0x1878d723c:  c8 05 80 52   mov	w8, #0x2e
0x1878d7240:  1b 01 80 1a   csel	w27, w8, w0, eq
0x1878d7244:  40 3f 08 13   sbfx	w0, w26, #0x8, #0x8
0x1878d7248:  1f fc 01 71   cmp	w0, #0x7f
0x1878d724c:  c9 00 00 54   b.ls	0x1878d7264
0x1878d7250:  81 00 a0 52   mov	w1, #0x40000
0x1878d7254:  37 8c 21 94   bl	0x18813a330
0x1878d7258:  f4 03 00 aa   mov	x20, x0
0x1878d725c:  fa 4f 40 b9   ldr	w26, [sp, #0x4c]
0x1878d7260:  06 00 00 14   b	0x1878d7278
0x1878d7264:  68 44 2c b0   adrp	x8, 0x1e0164000
0x1878d7268:  08 35 45 f9   ldr	x8, [x8, #0xa68]
0x1878d726c:  08 f1 00 91   add	x8, x8, #0x3c
0x1878d7270:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x1878d7274:  14 01 0e 12   and	w20, w8, #0x40000
0x1878d7278:  40 1f 00 13   sxtb	w0, w26
0x1878d727c:  1f fc 01 71   cmp	w0, #0x7f
0x1878d7280:  c9 00 00 54   b.ls	0x1878d7298
0x1878d7284:  81 00 a0 52   mov	w1, #0x40000
0x1878d7288:  2a 8c 21 94   bl	0x18813a330
0x1878d728c:  e8 03 00 aa   mov	x8, x0
0x1878d7290:  e0 33 c1 39   ldrsb	w0, [sp, #0x4c]
0x1878d7294:  06 00 00 14   b	0x1878d72ac
0x1878d7298:  68 44 2c b0   adrp	x8, 0x1e0164000
0x1878d729c:  08 35 45 f9   ldr	x8, [x8, #0xa68]
0x1878d72a0:  08 f1 00 91   add	x8, x8, #0x3c
0x1878d72a4:  08 59 60 b8   ldr	w8, [x8, w0, uxtw #0x2]
0x1878d72a8:  08 01 0e 12   and	w8, w8, #0x40000
0x1878d72ac:  49 3f 08 13   sbfx	w9, w26, #0x8, #0x8
0x1878d72b0:  9f 02 00 71   cmp	w20, #0
0x1878d72b4:  ca 05 80 52   mov	w10, #0x2e
0x1878d72b8:  49 01 89 1a   csel	w9, w10, w9, eq
0x1878d72bc:  1f 01 00 71   cmp	w8, #0
0x1878d72c0:  48 01 80 1a   csel	w8, w10, w0, eq
0x1878d72c4:  f9 6f 02 a9   stp	x25, x27, [sp, #0x20]
0x1878d72c8:  f7 63 01 a9   stp	x23, x24, [sp, #0x10]
0x1878d72cc:  00 25 00 d0   adrp	x0, 0x187d79000
0x1878d72d0:  00 58 3f 91   add	x0, x0, #0xfd6
0x1878d72d4:  22 29 00 90   adrp	x2, 0x187dfb000
0x1878d72d8:  42 94 18 91   add	x2, x2, #0x625
0x1878d72dc:  f5 5b 00 a9   stp	x21, x22, [sp]
0x1878d72e0:  e9 23 03 a9   stp	x9, x8, [sp, #0x30]
0x1878d72e4:  81 5c 80 52   mov	w1, #0x2e4
0x1878d72e8:  de 05 fd 97   bl	0x187818a60
0x1878d72ec:  e3 fe ff 17   b	0x1878d6e78
0x1878d72f0:  f8 03 19 aa   mov	x24, x25
0x1878d72f4:  f8 03 00 f9   str	x24, [sp]
0x1878d72f8:  00 25 00 d0   adrp	x0, 0x187d79000
0x1878d72fc:  00 58 3f 91   add	x0, x0, #0xfd6
0x1878d7300:  d8 05 fd 97   bl	0x187818a60
0x1878d7304:  dd fe ff 17   b	0x1878d6e78
0x1878d7308:  00 25 00 d0   adrp	x0, 0x187d79000
0x1878d730c:  00 58 3f 91   add	x0, x0, #0xfd6
0x1878d7310:  22 29 00 90   adrp	x2, 0x187dfb000
0x1878d7314:  42 fc 10 91   add	x2, x2, #0x43f
0x1878d7318:  01 33 80 52   mov	w1, #0x198
0x1878d731c:  d1 05 fd 97   bl	0x187818a60
0x1878d7320:  d6 fe ff 17   b	0x1878d6e78
0x1878d7324:  02 28 00 90   adrp	x2, 0x187dd7000
0x1878d7328:  42 78 28 91   add	x2, x2, #0xa1e
0x1878d732c:  21 4b 80 52   mov	w1, #0x259
0x1878d7330:  10 00 00 14   b	0x1878d7370
0x1878d7334:  02 28 00 90   adrp	x2, 0x187dd7000
0x1878d7338:  42 34 29 91   add	x2, x2, #0xa4d
0x1878d733c:  41 4b 80 52   mov	w1, #0x25a
0x1878d7340:  0c 00 00 14   b	0x1878d7370
0x1878d7344:  02 28 00 90   adrp	x2, 0x187dd7000
0x1878d7348:  42 c0 29 91   add	x2, x2, #0xa70
0x1878d734c:  61 4b 80 52   mov	w1, #0x25b
0x1878d7350:  08 00 00 14   b	0x1878d7370
0x1878d7354:  02 28 00 90   adrp	x2, 0x187dd7000
0x1878d7358:  42 4c 2a 91   add	x2, x2, #0xa93
0x1878d735c:  81 4b 80 52   mov	w1, #0x25c
0x1878d7360:  04 00 00 14   b	0x1878d7370
0x1878d7364:  02 28 00 90   adrp	x2, 0x187dd7000
0x1878d7368:  42 d8 2a 91   add	x2, x2, #0xab6
0x1878d736c:  a1 4b 80 52   mov	w1, #0x25d
0x1878d7370:  e8 03 00 f9   str	x8, [sp]
0x1878d7374:  00 25 00 d0   adrp	x0, 0x187d79000
0x1878d7378:  00 58 3f 91   add	x0, x0, #0xfd6
0x1878d737c:  b9 05 fd 97   bl	0x187818a60
0x1878d7380:  be fe ff 17   b	0x1878d6e78
0x1878d7384:  02 28 00 90   adrp	x2, 0x187dd7000
0x1878d7388:  42 64 2b 91   add	x2, x2, #0xad9
0x1878d738c:  c1 4b 80 52   mov	w1, #0x25e
0x1878d7390:  04 00 00 14   b	0x1878d73a0
0x1878d7394:  02 28 00 90   adrp	x2, 0x187dd7000
0x1878d7398:  42 f4 2b 91   add	x2, x2, #0xafd
0x1878d739c:  e1 4b 80 52   mov	w1, #0x25f
0x1878d73a0:  e8 03 00 f9   str	x8, [sp]
0x1878d73a4:  00 25 00 d0   adrp	x0, 0x187d79000
0x1878d73a8:  00 58 3f 91   add	x0, x0, #0xfd6
0x1878d73ac:  ad 05 fd 97   bl	0x187818a60
0x1878d73b0:  b2 fe ff 17   b	0x1878d6e78
0x1878d73b4:  09 41 0d 53   ubfx	w9, w8, #0xd, #0x4
0x1878d73b8:  0a 71 17 53   ubfx	w10, w8, #0x17, #0x6
0x1878d73bc:  1f 05 15 72   tst	w8, #0x1800
0x1878d73c0:  29 01 8a 1a   csel	w9, w9, w10, eq
0x1878d73c4:  28 11 1f 12   and	w8, w9, #0x3e
0x1878d73c8:  1f 39 00 71   cmp	w8, #0xe
0x1878d73cc:  e0 00 00 54   b.eq	0x1878d73e8
0x1878d73d0:  3f 2d 00 71   cmp	w9, #0xb
0x1878d73d4:  a0 00 00 54   b.eq	0x1878d73e8
0x1878d73d8:  3f 1d 00 71   cmp	w9, #0x7
0x1878d73dc:  60 00 00 54   b.eq	0x1878d73e8
0x1878d73e0:  1f 09 00 71   cmp	w8, #0x2
0x1878d73e4:  81 00 00 54   b.ne	0x1878d73f4
0x1878d73e8:  e0 03 14 aa   mov	x0, x20
0x1878d73ec:  21 00 80 52   mov	w1, #0x1
0x1878d73f0:  0d 6f 05 94   bl	0x187a33024
0x1878d73f4:  e0 03 14 aa   mov	x0, x20
0x1878d73f8:  6a 01 00 94   bl	0x1878d79a0
0x1878d73fc:  e0 01 00 34   cbz	w0, 0x1878d7438
0x1878d7400:  28 00 80 52   mov	w8, #0x1
0x1878d7404:  68 d6 05 39   strb	w8, [x19, #0x175]
0x1878d7408:  09 02 80 52   mov	w9, #0x10
0x1878d740c:  09 08 a0 72   movk	w9, #0x40, lsl #0x10
0x1878d7410:  ca 72 1d 53   lsl	w10, w22, #0x3
0x1878d7414:  6a a6 1f 29   stp	w10, w9, [x19, #0xfc]
0x1878d7418:  68 1e 04 39   strb	w8, [x19, #0x107]
0x1878d741c:  68 52 40 f9   ldr	x8, [x19, #0xa0]
0x1878d7420:  c8 00 00 b5   cbnz	x8, 0x1878d7438
0x1878d7424:  48 40 2c 90   adrp	x8, 0x1e00df000
0x1878d7428:  08 45 41 f9   ldr	x8, [x8, #0x288]
0x1878d742c:  00 01 40 f9   ldr	x0, [x8]
0x1878d7430:  10 db 21 94   bl	0x18814e070
0x1878d7434:  60 52 00 f9   str	x0, [x19, #0xa0]
0x1878d7438:  60 26 00 b0   adrp	x0, 0x187da4000
0x1878d743c:  00 34 23 91   add	x0, x0, #0x8cd
0x1878d7440:  dc 83 21 94   bl	0x1881383b0
0x1878d7444:  60 00 00 b4   cbz	x0, 0x1878d7450
0x1878d7448:  56 c6 21 94   bl	0x188148da0
0x1878d744c:  60 00 00 34   cbz	w0, 0x1878d7458
0x1878d7450:  a8 01 80 52   mov	w8, #0xd
0x1878d7454:  02 00 00 14   b	0x1878d745c
0x1878d7458:  28 00 80 52   mov	w8, #0x1
0x1878d745c:  14 00 80 52   mov	w20, #0
0x1878d7460:  68 32 03 79   strh	w8, [x19, #0x198]
0x1878d7464:  8d fe ff 17   b	0x1878d6e98
0x1878d7468:  32 83 21 94   bl	0x188138130
0x1878d746c:  1a 00 00 14   b	0x1878d74d4
0x1878d7470:  19 00 00 14   b	0x1878d74d4
0x1878d7474:  18 00 00 14   b	0x1878d74d4
0x1878d7478:  17 00 00 14   b	0x1878d74d4
0x1878d747c:  09 00 00 14   b	0x1878d74a0
0x1878d7480:  15 00 00 14   b	0x1878d74d4
0x1878d7484:  14 00 00 14   b	0x1878d74d4
0x1878d7488:  13 00 00 14   b	0x1878d74d4
0x1878d748c:  12 00 00 14   b	0x1878d74d4
0x1878d7490:  11 00 00 14   b	0x1878d74d4
0x1878d7494:  10 00 00 14   b	0x1878d74d4
0x1878d7498:  0f 00 00 14   b	0x1878d74d4
0x1878d749c:  0e 00 00 14   b	0x1878d74d4
0x1878d74a0:  f3 03 00 aa   mov	x19, x0
0x1878d74a4:  e0 83 03 91   add	x0, sp, #0xe0
0x1878d74a8:  37 cd fc 97   bl	0x18780a984
0x1878d74ac:  0b 00 00 14   b	0x1878d74d8
0x1878d74b0:  09 00 00 14   b	0x1878d74d4
0x1878d74b4:  08 00 00 14   b	0x1878d74d4
0x1878d74b8:  07 00 00 14   b	0x1878d74d4
0x1878d74bc:  06 00 00 14   b	0x1878d74d4
0x1878d74c0:  05 00 00 14   b	0x1878d74d4
0x1878d74c4:  04 00 00 14   b	0x1878d74d4
0x1878d74c8:  03 00 00 14   b	0x1878d74d4
0x1878d74cc:  f3 03 00 aa   mov	x19, x0
0x1878d74d0:  04 00 00 14   b	0x1878d74e0
0x1878d74d4:  f3 03 00 aa   mov	x19, x0
0x1878d74d8:  e0 43 01 91   add	x0, sp, #0x50
0x1878d74dc:  b4 ed fc 97   bl	0x187812bac
0x1878d74e0:  e0 03 13 aa   mov	x0, x19
0x1878d74e4:  e7 82 21 94   bl	0x188138080

