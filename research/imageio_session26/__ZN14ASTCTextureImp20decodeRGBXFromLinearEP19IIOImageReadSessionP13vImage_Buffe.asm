
__ZN14ASTCTextureImp20decodeRGBXFromLinearEP19IIOImageReadSessionP13vImage_Buffer10at_alpha_t17at_block_format_t17at_texel_format_t:
0x187a3363c:  7f 23 03 d5   pacibsp
0x187a33640:  ff 83 03 d1   sub	sp, sp, #0xe0
0x187a33644:  fc 6f 08 a9   stp	x28, x27, [sp, #0x80]
0x187a33648:  fa 67 09 a9   stp	x26, x25, [sp, #0x90]
0x187a3364c:  f8 5f 0a a9   stp	x24, x23, [sp, #0xa0]
0x187a33650:  f6 57 0b a9   stp	x22, x21, [sp, #0xb0]
0x187a33654:  f4 4f 0c a9   stp	x20, x19, [sp, #0xc0]
0x187a33658:  fd 7b 0d a9   stp	fp, lr, [sp, #0xd0]
0x187a3365c:  fd 43 03 91   add	fp, sp, #0xd0
0x187a33660:  f9 03 05 aa   mov	x25, x5
0x187a33664:  f7 03 04 aa   mov	x23, x4
0x187a33668:  f5 03 03 aa   mov	x21, x3
0x187a3366c:  f8 03 02 aa   mov	x24, x2
0x187a33670:  f3 03 01 aa   mov	x19, x1
0x187a33674:  fb 03 00 aa   mov	x27, x0
0x187a33678:  bf 83 1a f8   stur	xzr, [fp, #-0x58]
0x187a3367c:  a1 63 01 d1   sub	x1, fp, #0x58
0x187a33680:  e0 03 13 aa   mov	x0, x19
0x187a33684:  02 00 80 52   mov	w2, #0
0x187a33688:  98 7a f7 97   bl	__ZN19IIOImageReadSession17retainBytePointerEPPvb
0x187a3368c:  f4 03 00 aa   mov	x20, x0
0x187a33690:  e0 03 13 aa   mov	x0, x19
0x187a33694:  47 77 f7 97   bl	__ZN19IIOImageReadSession7getSizeEv
0x187a33698:  fa 03 1b aa   mov	x26, x27
0x187a3369c:  49 8f 46 f8   ldr	x9, [x26, #0x68]!
0x187a336a0:  16 00 09 cb   sub	x22, x0, x9
0x187a336a4:  df 02 00 f1   cmp	x22, #0
0x187a336a8:  ed 13 00 54   b.le	loc_187a33924 ; ⤵ 0x27c
0x187a336ac:  68 5f 40 b9   ldr	w8, [x27, #0x5c]
0x187a336b0:  0a 41 40 51   sub	w10, w8, #0x10, lsl #0xc
0x187a336b4:  5f 41 40 31   cmn	w10, #0x10, lsl #0xc
0x187a336b8:  e9 13 00 54   b.ls	loc_187a33934 ; ⤵ 0x27c
0x187a336bc:  6a 63 40 b9   ldr	w10, [x27, #0x60]
0x187a336c0:  4b 41 40 51   sub	w11, w10, #0x10, lsl #0xc
0x187a336c4:  7f 41 40 31   cmn	w11, #0x10, lsl #0xc
0x187a336c8:  49 14 00 54   b.ls	loc_187a33950 ; ⤵ 0x288
0x187a336cc:  4b 7d 08 1b   mul	w11, w10, w8
0x187a336d0:  61 01 23 1e   ucvtf	s1, w11
0x187a336d4:  60 1f 40 bd   ldr	s0, [x27, #0x1c]
0x187a336d8:  01 08 21 1e   fmul	s1, s0, s1
0x187a336dc:  02 10 28 1e   fmov	s2, #0.12500000
0x187a336e0:  21 08 22 1e   fmul	s1, s1, s2
0x187a336e4:  2b 00 39 9e   fcvtzu	x11, s1
0x187a336e8:  df 02 0b eb   cmp	x22, x11
0x187a336ec:  03 14 00 54   b.lo	loc_187a3396c ; ⤵ 0x280
0x187a336f0:  14 01 00 b4   cbz	x20, loc_187a33710 ; ⤵ 0x20
0x187a336f4:  9b 02 09 8b   add	x27, x20, x9
0x187a336f8:  7f 0f 40 f2   tst	x27, #0xf
0x187a336fc:  c0 02 00 54   b.eq	loc_187a33754 ; ⤵ 0x58
0x187a33700:  a1 83 5a f8   ldur	x1, [fp, #-0x58]
0x187a33704:  e0 03 13 aa   mov	x0, x19
0x187a33708:  27 7d f7 97   bl	__ZN19IIOImageReadSession18releaseBytePointerEPv
0x187a3370c:  bf 83 1a f8   stur	xzr, [fp, #-0x58]
0x187a33710:  ; loc_187a33710
0x187a33710:  81 24 89 d2   mov	x1, #0x4924
0x187a33714:  e1 ee ae f2   movk	x1, #0x7777, lsl #0x10
0x187a33718:  01 08 c0 f2   movk	x1, #0x40, lsl #0x20
0x187a3371c:  01 20 e0 f2   movk	x1, #0x100, lsl #0x30
0x187a33720:  e0 03 16 aa   mov	x0, x22
0x187a33724:  53 13 1c 94   bl	_malloc_type_malloc_stub
0x187a33728:  80 13 00 b4   cbz	x0, loc_187a33998 ; ⤵ 0x270
0x187a3372c:  f4 03 00 aa   mov	x20, x0
0x187a33730:  42 03 40 f9   ldr	x2, [x26]
0x187a33734:  e0 03 13 aa   mov	x0, x19
0x187a33738:  e1 03 14 aa   mov	x1, x20
0x187a3373c:  e3 03 16 aa   mov	x3, x22
0x187a33740:  75 41 f8 97   bl	__ZN19IIOImageReadSession16getBytesAtOffsetEPvmm
0x187a33744:  df 02 00 eb   cmp	x22, x0
0x187a33748:  a1 13 00 54   b.ne	loc_187a339bc ; ⤵ 0x274
0x187a3374c:  fb 03 14 aa   mov	x27, x20
0x187a33750:  02 00 00 14   b	loc_187a33758 ; ⤵ 0x8
0x187a33754:  ; loc_187a33754
0x187a33754:  14 00 80 d2   mov	x20, #0
0x187a33758:  ; loc_187a33758
0x187a33758:  e0 03 19 aa   mov	x0, x25
0x187a3375c:  e1 03 15 aa   mov	x1, x21
0x187a33760:  e2 03 17 aa   mov	x2, x23
0x187a33764:  e3 03 15 aa   mov	x3, x21
0x187a33768:  04 00 80 d2   mov	x4, #0
0x187a3376c:  fd c8 1c 94   bl	_at_encoder_create_stub
0x187a33770:  e0 09 00 b4   cbz	x0, loc_187a338ac ; ⤵ 0x13c
0x187a33774:  f5 03 00 aa   mov	x21, x0
0x187a33778:  ff 27 00 f9   str	xzr, [sp, #0x48]
0x187a3377c:  38 0c 00 b4   cbz	x24, loc_187a33900 ; ⤵ 0x184
0x187a33780:  0b 03 40 f9   ldr	x11, [x24]
0x187a33784:  eb 0b 00 b4   cbz	x11, loc_187a33900 ; ⤵ 0x17c
0x187a33788:  09 a3 40 a9   ldp	x9, x8, [x24, #0x8]
0x187a3378c:  e8 0b 00 b4   cbz	x8, loc_187a33908 ; ⤵ 0x17c
0x187a33790:  c9 0b 00 b4   cbz	x9, loc_187a33908 ; ⤵ 0x178
0x187a33794:  0a 0f 40 f9   ldr	x10, [x24, #0x18]
0x187a33798:  5f 09 08 eb   cmp	x10, x8, lsl #0x2
0x187a3379c:  43 12 00 54   b.lo	loc_187a339e4 ; ⤵ 0x248
0x187a337a0:  eb 1f 00 f9   str	x11, [sp, #0x38]
0x187a337a4:  e8 27 08 29   stp	w8, w9, [sp, #0x40]
0x187a337a8:  28 00 80 52   mov	w8, #0x1
0x187a337ac:  e8 4b 00 b9   str	w8, [sp, #0x48]
0x187a337b0:  ea 7f 05 a9   stp	x10, xzr, [sp, #0x50]
0x187a337b4:  f8 23 40 f9   ldr	x24, [sp, #0x40]
0x187a337b8:  e0 03 15 aa   mov	x0, x21
0x187a337bc:  e1 03 18 aa   mov	x1, x24
0x187a337c0:  22 00 80 52   mov	w2, #0x1
0x187a337c4:  ef c8 1c 94   bl	_at_encoder_get_block_counts_stub
0x187a337c8:  f9 03 00 aa   mov	x25, x0
0x187a337cc:  1a fc 60 d3   lsr	x26, x0, #0x20
0x187a337d0:  fb 33 00 f9   str	x27, [sp, #0x60]
0x187a337d4:  e0 03 15 aa   mov	x0, x21
0x187a337d8:  ee c8 1c 94   bl	_at_encoder_get_block_size_stub
0x187a337dc:  fc 03 19 2a   mov	w28, w25
0x187a337e0:  1b 7c 1c 9b   mul	x27, x0, x28
0x187a337e4:  fb 37 00 f9   str	x27, [sp, #0x68]
0x187a337e8:  e0 03 15 aa   mov	x0, x21
0x187a337ec:  e9 c8 1c 94   bl	_at_encoder_get_block_size_stub
0x187a337f0:  48 7f bc 9b   umull	x8, w26, w28
0x187a337f4:  08 7d 00 9b   mul	x8, x8, x0
0x187a337f8:  e8 3b 00 f9   str	x8, [sp, #0x70]
0x187a337fc:  68 10 00 b4   cbz	x8, loc_187a33a08 ; ⤵ 0x20c
0x187a33800:  5b 10 00 b4   cbz	x27, loc_187a33a08 ; ⤵ 0x208
0x187a33804:  df 02 08 eb   cmp	x22, x8
0x187a33808:  e3 04 00 54   b.lo	loc_187a338a4 ; ⤵ 0x9c
0x187a3380c:  ff 1b 00 f9   str	xzr, [sp, #0x30]
0x187a33810:  e1 83 01 91   add	x1, sp, #0x60
0x187a33814:  e5 c3 00 91   add	x5, sp, #0x30
0x187a33818:  e0 03 17 aa   mov	x0, x23
0x187a3381c:  e2 03 18 aa   mov	x2, x24
0x187a33820:  23 00 80 52   mov	w3, #0x1
0x187a33824:  e4 03 16 aa   mov	x4, x22
0x187a33828:  86 00 80 52   mov	w6, #0x4
0x187a3382c:  c5 c8 1c 94   bl	_at_block_get_features_stub
0x187a33830:  e8 1b 40 f9   ldr	x8, [sp, #0x30]
0x187a33834:  1f 01 16 eb   cmp	x8, x22
0x187a33838:  a9 01 00 54   b.ls	loc_187a3386c ; ⤵ 0x34
0x187a3383c:  e8 37 40 f9   ldr	x8, [sp, #0x68]
0x187a33840:  28 0f 00 b4   cbz	x8, loc_187a33a24 ; ⤵ 0x1e4
0x187a33844:  09 ff 60 d3   lsr	x9, x24, #0x20
0x187a33848:  c8 0a c8 9a   udiv	x8, x22, x8
0x187a3384c:  0a 84 56 d3   ubfx	x10, x0, #0x16, #0xc
0x187a33850:  08 7d 0a 9b   mul	x8, x8, x10
0x187a33854:  0a 00 80 12   mov	w10, #0xffffffff
0x187a33858:  1f 01 0a eb   cmp	x8, x10
0x187a3385c:  08 31 8a 9a   csel	x8, x8, x10, cc
0x187a33860:  1f 01 09 6b   cmp	w8, w9
0x187a33864:  08 31 89 1a   csel	w8, w8, w9, cc
0x187a33868:  e8 47 00 b9   str	w8, [sp, #0x44]
0x187a3386c:  ; loc_187a3386c
0x187a3386c:  e1 83 01 91   add	x1, sp, #0x60
0x187a33870:  e2 e3 00 91   add	x2, sp, #0x38
0x187a33874:  e0 03 15 aa   mov	x0, x21
0x187a33878:  83 00 80 52   mov	w3, #0x4
0x187a3387c:  bd c8 1c 94   bl	_at_encoder_decompress_texels_stub
0x187a33880:  c0 01 00 b4   cbz	x0, loc_187a338b8 ; ⤵ 0x38
0x187a33884:  28 1d 00 b0   adrp	x8, 0x187dd8000
0x187a33888:  08 15 05 91   add	x8, x8, #0x145 ; "decodeRGBXFromLinear"
0x187a3388c:  e0 03 00 f9   str	x0, [sp]
0x187a33890:  82 1b 00 b0   adrp	x2, 0x187da4000
0x187a33894:  42 64 26 91   add	x2, x2, #0x999 ; "at_encoder_decompress_texels returned: %ld\n"
0x187a33898:  e0 03 08 aa   mov	x0, x8
0x187a3389c:  01 a4 80 52   mov	w1, #0x520
0x187a338a0:  ; loc_187a338a0
0x187a338a0:  ef 79 f8 97   bl	__Z8LogErrorPKciS0_z
0x187a338a4:  ; loc_187a338a4
0x187a338a4:  36 06 80 12   mov	w22, #0xffffffce
0x187a338a8:  05 00 00 14   b	loc_187a338bc ; ⤵ 0x14
0x187a338ac:  ; loc_187a338ac
0x187a338ac:  36 06 80 12   mov	w22, #0xffffffce
0x187a338b0:  b4 00 00 b5   cbnz	x20, loc_187a338c4 ; ⤵ 0x14
0x187a338b4:  06 00 00 14   b	loc_187a338cc ; ⤵ 0x18
0x187a338b8:  ; loc_187a338b8
0x187a338b8:  16 00 80 52   mov	w22, #0
0x187a338bc:  ; loc_187a338bc
0x187a338bc:  cd 1e 1c 94   bl	_objc_release_x21_stub
0x187a338c0:  74 00 00 b4   cbz	x20, loc_187a338cc ; ⤵ 0xc
0x187a338c4:  ; loc_187a338c4
0x187a338c4:  e0 03 14 aa   mov	x0, x20
0x187a338c8:  b2 12 1c 94   bl	j__free
0x187a338cc:  ; loc_187a338cc
0x187a338cc:  a1 83 5a f8   ldur	x1, [fp, #-0x58]
0x187a338d0:  61 00 00 b4   cbz	x1, loc_187a338dc ; ⤵ 0xc
0x187a338d4:  e0 03 13 aa   mov	x0, x19
0x187a338d8:  b3 7c f7 97   bl	__ZN19IIOImageReadSession18releaseBytePointerEPv
0x187a338dc:  ; loc_187a338dc
0x187a338dc:  e0 03 16 aa   mov	x0, x22
0x187a338e0:  fd 7b 4d a9   ldp	fp, lr, [sp, #0xd0]
0x187a338e4:  f4 4f 4c a9   ldp	x20, x19, [sp, #0xc0]
0x187a338e8:  f6 57 4b a9   ldp	x22, x21, [sp, #0xb0]
0x187a338ec:  f8 5f 4a a9   ldp	x24, x23, [sp, #0xa0]
0x187a338f0:  fa 67 49 a9   ldp	x26, x25, [sp, #0x90]
0x187a338f4:  fc 6f 48 a9   ldp	x28, x27, [sp, #0x80]
0x187a338f8:  ff 83 03 91   add	sp, sp, #0xe0
0x187a338fc:  ff 0f 5f d6   retab
0x187a33900:  ; loc_187a33900
0x187a33900:  2d e9 0a 94   bl	__ZN14ASTCTextureImp20decodeRGBXFromLinearEP19IIOImageReadSessionP13vImage_Buffer10at_alpha_t17at_block_format_t17at_texel_format_t.cold.2
0x187a33904:  e8 ff ff 17   b	loc_187a338a4 ; ⤴ -0x60
0x187a33908:  ; loc_187a33908
0x187a33908:  20 1d 00 b0   adrp	x0, 0x187dd8000
0x187a3390c:  00 14 05 91   add	x0, x0, #0x145 ; "decodeRGBXFromLinear"
0x187a33910:  e8 27 00 a9   stp	x8, x9, [sp]
0x187a33914:  22 1d 00 b0   adrp	x2, 0x187dd8000
0x187a33918:  42 98 0a 91   add	x2, x2, #0x2a6 ; "*** ERROR: invalid dimensions %zux%zu\n"
0x187a3391c:  61 9e 80 52   mov	w1, #0x4f3
0x187a33920:  38 00 00 14   b	loc_187a33a00 ; ⤵ 0xe0
0x187a33924:  ; loc_187a33924
0x187a33924:  e0 03 13 aa   mov	x0, x19
0x187a33928:  e1 03 1a aa   mov	x1, x26
0x187a3392c:  2d e9 0a 94   bl	__ZN14ASTCTextureImp20decodeRGBXFromLinearEP19IIOImageReadSessionP13vImage_Buffer10at_alpha_t17at_block_format_t17at_texel_format_t.cold.3
0x187a33930:  21 00 00 14   b	loc_187a339b4 ; ⤵ 0x84
0x187a33934:  ; loc_187a33934
0x187a33934:  20 1d 00 b0   adrp	x0, 0x187dd8000
0x187a33938:  00 14 05 91   add	x0, x0, #0x145 ; "decodeRGBXFromLinear"
0x187a3393c:  e8 03 00 f9   str	x8, [sp]
0x187a33940:  22 1d 00 b0   adrp	x2, 0x187dd8000
0x187a33944:  42 74 06 91   add	x2, x2, #0x19d ; "*** ERROR: invalid texture width: %d\n"
0x187a33948:  21 99 80 52   mov	w1, #0x4c9
0x187a3394c:  19 00 00 14   b	loc_187a339b0 ; ⤵ 0x64
0x187a33950:  ; loc_187a33950
0x187a33950:  20 1d 00 b0   adrp	x0, 0x187dd8000
0x187a33954:  00 14 05 91   add	x0, x0, #0x145 ; "decodeRGBXFromLinear"
0x187a33958:  ea 03 00 f9   str	x10, [sp]
0x187a3395c:  22 1d 00 b0   adrp	x2, 0x187dd8000
0x187a33960:  42 0c 07 91   add	x2, x2, #0x1c3 ; "*** ERROR: invalid texture height: %d\n"
0x187a33964:  41 99 80 52   mov	w1, #0x4ca
0x187a33968:  12 00 00 14   b	loc_187a339b0 ; ⤵ 0x48
0x187a3396c:  ; loc_187a3396c
0x187a3396c:  00 c0 22 1e   fcvt	d0, s0
0x187a33970:  e0 13 00 fd   str	d0, [sp, #0x20]
0x187a33974:  e8 2b 01 a9   stp	x8, x10, [sp, #0x10]
0x187a33978:  20 1d 00 b0   adrp	x0, 0x187dd8000
0x187a3397c:  00 14 05 91   add	x0, x0, #0x145 ; "decodeRGBXFromLinear"
0x187a33980:  f6 2f 00 a9   stp	x22, x11, [sp]
0x187a33984:  22 1d 00 b0   adrp	x2, 0x187dd8000
0x187a33988:  42 a8 07 91   add	x2, x2, #0x1ea ; "*** bad input data (input size: %zu  bytesNeeded: %zu  (%d x %d) bpp: %g)\n"
0x187a3398c:  c1 99 80 52   mov	w1, #0x4ce
0x187a33990:  34 94 f7 97   bl	__cg_jpeg_mem_term
0x187a33994:  08 00 00 14   b	loc_187a339b4 ; ⤵ 0x20
0x187a33998:  ; loc_187a33998
0x187a33998:  20 1d 00 b0   adrp	x0, 0x187dd8000
0x187a3399c:  00 14 05 91   add	x0, x0, #0x145 ; "decodeRGBXFromLinear"
0x187a339a0:  f6 03 00 f9   str	x22, [sp]
0x187a339a4:  22 1d 00 b0   adrp	x2, 0x187dd8000
0x187a339a8:  42 d4 08 91   add	x2, x2, #0x235 ; "*** ERROR: MALLOC failed for %zu bytes\n"
0x187a339ac:  21 9c 80 52   mov	w1, #0x4e1
0x187a339b0:  ; loc_187a339b0
0x187a339b0:  ab 79 f8 97   bl	__Z8LogErrorPKciS0_z
0x187a339b4:  ; loc_187a339b4
0x187a339b4:  36 06 80 12   mov	w22, #0xffffffce
0x187a339b8:  c5 ff ff 17   b	loc_187a338cc ; ⤴ -0xec
0x187a339bc:  ; loc_187a339bc
0x187a339bc:  28 1d 00 b0   adrp	x8, 0x187dd8000
0x187a339c0:  08 15 05 91   add	x8, x8, #0x145 ; "decodeRGBXFromLinear"
0x187a339c4:  e0 5b 00 a9   stp	x0, x22, [sp]
0x187a339c8:  22 1d 00 b0   adrp	x2, 0x187dd8000
0x187a339cc:  42 74 09 91   add	x2, x2, #0x25d ; "got: %zu expected: %zu\n"
0x187a339d0:  e0 03 08 aa   mov	x0, x8
0x187a339d4:  81 9c 80 52   mov	w1, #0x4e4
0x187a339d8:  22 94 f7 97   bl	__cg_jpeg_mem_term
0x187a339dc:  36 06 80 12   mov	w22, #0xffffffce
0x187a339e0:  b9 ff ff 17   b	loc_187a338c4 ; ⤴ -0x11c
0x187a339e4:  ; loc_187a339e4
0x187a339e4:  08 f5 7e d3   lsl	x8, x8, #0x2
0x187a339e8:  20 1d 00 b0   adrp	x0, 0x187dd8000
0x187a339ec:  00 14 05 91   add	x0, x0, #0x145 ; "decodeRGBXFromLinear"
0x187a339f0:  ea 23 00 a9   stp	x10, x8, [sp]
0x187a339f4:  22 1d 00 b0   adrp	x2, 0x187dd8000
0x187a339f8:  42 34 0b 91   add	x2, x2, #0x2cd ; "*** ERROR: rowBytes %zu < width*4 (%zu)\n"
0x187a339fc:  81 9e 80 52   mov	w1, #0x4f4
0x187a33a00:  ; loc_187a33a00
0x187a33a00:  18 94 f7 97   bl	__cg_jpeg_mem_term
0x187a33a04:  a8 ff ff 17   b	loc_187a338a4 ; ⤴ -0x160
0x187a33a08:  ; loc_187a33a08
0x187a33a08:  20 1d 00 b0   adrp	x0, 0x187dd8000
0x187a33a0c:  00 14 05 91   add	x0, x0, #0x145 ; "decodeRGBXFromLinear"
0x187a33a10:  f9 6b 00 a9   stp	x25, x26, [sp]
0x187a33a14:  22 1d 00 b0   adrp	x2, 0x187dd8000
0x187a33a18:  42 d8 0b 91   add	x2, x2, #0x2f6 ; "*** ERROR: Integer overflow in buffer size calculation (blockDim: %ux%u)\n"
0x187a33a1c:  e1 a0 80 52   mov	w1, #0x507
0x187a33a20:  a0 ff ff 17   b	loc_187a338a0 ; ⤴ -0x180
0x187a33a24:  ; loc_187a33a24
0x187a33a24:  d9 e8 0a 94   bl	__ZN14ASTCTextureImp20decodeRGBXFromLinearEP19IIOImageReadSessionP13vImage_Buffer10at_alpha_t17at_block_format_t17at_texel_format_t.cold.1
0x187a33a28:  9f ff ff 17   b	loc_187a338a4 ; ⤴ -0x184

