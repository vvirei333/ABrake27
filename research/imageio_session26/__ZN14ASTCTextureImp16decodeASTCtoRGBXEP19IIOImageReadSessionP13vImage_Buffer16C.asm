
__ZN14ASTCTextureImp16decodeASTCtoRGBXEP19IIOImageReadSessionP13vImage_Buffer16CGImageAlphaInfob:
0x18788d660:  7f 23 03 d5   pacibsp
0x18788d664:  ff 03 02 d1   sub	sp, sp, #0x80
0x18788d668:  fc 6f 02 a9   stp	x28, x27, [sp, #0x20]
0x18788d66c:  fa 67 03 a9   stp	x26, x25, [sp, #0x30]
0x18788d670:  f8 5f 04 a9   stp	x24, x23, [sp, #0x40]
0x18788d674:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x18788d678:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x18788d67c:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x18788d680:  fd c3 01 91   add	fp, sp, #0x70
0x18788d684:  f8 03 04 aa   mov	x24, x4
0x18788d688:  f6 03 03 aa   mov	x22, x3
0x18788d68c:  f4 03 02 aa   mov	x20, x2
0x18788d690:  f5 03 01 aa   mov	x21, x1
0x18788d694:  f3 03 00 aa   mov	x19, x0
0x18788d698:  48 31 33 b0   adrp	x8, 0x1edeb6000
0x18788d69c:  08 6d 40 f9   ldr	x8, [x8, #0xd8] ; __ZZN14ASTCTextureImp16decodeASTCtoRGBXEP19IIOImageReadSessionP13vImage_Buffer16CGImageAlphaInfobE4once
0x18788d6a0:  1f 05 00 b1   cmn	x8, #0x1
0x18788d6a4:  01 13 00 54   b.ne	loc_18788d904 ; ⤵ 0x260
0x18788d6a8:  ; loc_18788d6a8
0x18788d6a8:  df 0a 00 71   cmp	w22, #0x2
0x18788d6ac:  a8 00 00 54   b.hi	loc_18788d6c0 ; ⤵ 0x14
0x18788d6b0:  08 24 00 90   adrp	x8, 0x187d0d000
0x18788d6b4:  08 81 0d 91   add	x8, x8, #0x360
0x18788d6b8:  16 59 76 b8   ldr	w22, [x8, w22, uxtw #0x2]
0x18788d6bc:  02 00 00 14   b	loc_18788d6c4 ; ⤵ 0x8
0x18788d6c0:  ; loc_18788d6c0
0x18788d6c0:  16 00 80 52   mov	w22, #0
0x18788d6c4:  ; loc_18788d6c4
0x18788d6c4:  60 82 02 91   add	x0, x19, #0xa0
0x18788d6c8:  62 b8 22 94   bl	j__pthread_mutex_lock
0x18788d6cc:  60 52 40 39   ldrb	w0, [x19, #0x14]
0x18788d6d0:  61 62 40 39   ldrb	w1, [x19, #0x18]
0x18788d6d4:  ce 1c 00 94   bl	__ZN14ASTCTextureImp27BlockFormatForASTCBlockSizeEhh
0x18788d6d8:  f7 03 00 aa   mov	x23, x0
0x18788d6dc:  1f 03 00 71   cmp	w24, #0
0x18788d6e0:  a8 00 80 52   mov	w8, #0x5
0x18788d6e4:  18 05 88 9a   cinc	x24, x8, ne
0x18788d6e8:  68 8a 40 39   ldrb	w8, [x19, #0x22]
0x18788d6ec:  1f 05 00 71   cmp	w8, #0x1
0x18788d6f0:  a1 00 00 54   b.ne	loc_18788d704 ; ⤵ 0x14
0x18788d6f4:  e0 03 17 aa   mov	x0, x23
0x18788d6f8:  a1 96 06 94   bl	__ZN14ASTCTextureImp14HDRBlockFormatE17at_block_format_t
0x18788d6fc:  f7 03 00 aa   mov	x23, x0
0x18788d700:  58 01 80 52   mov	w24, #0xa
0x18788d704:  ; loc_18788d704
0x18788d704:  69 86 40 39   ldrb	w9, [x19, #0x21]
0x18788d708:  68 82 40 39   ldrb	w8, [x19, #0x20]
0x18788d70c:  f9 bd 31 d0   adrp	x25, 0x1eb04b000
0x18788d710:  29 01 00 36   tbz	w9, #0, loc_18788d734 ; ⤵ 0x24
0x18788d714:  88 04 00 36   tbz	w8, #0, loc_18788d7a4 ; ⤵ 0x90
0x18788d718:  40 2a 00 f0   adrp	x0, 0x187dd8000
0x18788d71c:  00 78 19 91   add	x0, x0, #0x65e ; "decodeASTCtoRGBX"
0x18788d720:  42 2a 00 d0   adrp	x2, 0x187dd7000
0x18788d724:  42 6c 3a 91   add	x2, x2, #0xe9b ; "*** pre-twiddled LZFSE compressed ASTC is not supported\n"
0x18788d728:  e1 dd 80 52   mov	w1, #0x6ef
0x18788d72c:  4c 12 ff 97   bl	__Z8LogErrorPKciS0_z
0x18788d730:  3c 00 00 14   b	loc_18788d820 ; ⤵ 0xf0
0x18788d734:  ; loc_18788d734
0x18788d734:  49 31 33 d0   adrp	x9, 0x1edeb7000
0x18788d738:  29 41 34 91   add	x9, x9, #0xd10 ; _gIIODebugFlags
0x18788d73c:  29 01 40 f9   ldr	x9, [x9]
0x18788d740:  48 07 00 36   tbz	w8, #0, loc_18788d828 ; ⤵ 0xe8
0x18788d744:  09 01 88 36   tbz	w9, #0x11, loc_18788d764 ; ⤵ 0x20
0x18788d748:  68 a6 4b 29   ldp	w8, w9, [x19, #0x5c]
0x18788d74c:  e8 a7 00 a9   stp	x8, x9, [sp, #0x8]
0x18788d750:  29 db 80 52   mov	w9, #0x6d9
0x18788d754:  e9 03 00 f9   str	x9, [sp]
0x18788d758:  40 2a 00 f0   adrp	x0, 0x187dd8000
0x18788d75c:  00 70 1a 91   add	x0, x0, #0x69c ; "♦️  'ASTC' %d: decodeRGBXFromLinearLZFSE [%d x %d]\n"
0x18788d760:  48 0a 00 94   bl	__Z10ImageIOLogPKcz
0x18788d764:  ; loc_18788d764
0x18788d764:  e0 03 13 aa   mov	x0, x19
0x18788d768:  e1 03 15 aa   mov	x1, x21
0x18788d76c:  e2 03 14 aa   mov	x2, x20
0x18788d770:  e3 03 16 aa   mov	x3, x22
0x18788d774:  e4 03 17 aa   mov	x4, x23
0x18788d778:  e5 03 18 aa   mov	x5, x24
0x18788d77c:  37 99 06 94   bl	__ZN14ASTCTextureImp25decodeRGBXFromLinearLZFSEEP19IIOImageReadSessionP13vImage_Buffer10at_alpha_t17at_block_format_t17at_texel_format_t
0x18788d780:  a0 0a 00 34   cbz	w0, loc_18788d8d4 ; ⤵ 0x154
0x18788d784:  f5 03 00 aa   mov	x21, x0
0x18788d788:  40 2a 00 f0   adrp	x0, 0x187dd8000
0x18788d78c:  00 78 19 91   add	x0, x0, #0x65e ; "decodeASTCtoRGBX"
0x18788d790:  f5 03 00 f9   str	x21, [sp]
0x18788d794:  42 2a 00 f0   adrp	x2, 0x187dd8000
0x18788d798:  42 50 1b 91   add	x2, x2, #0x6d4 ; "*** ERROR: decodeRGBXFromLinearLZFSE failed [%d]\n"
0x18788d79c:  a1 db 80 52   mov	w1, #0x6dd
0x18788d7a0:  1e 00 00 14   b	loc_18788d818 ; ⤵ 0x78
0x18788d7a4:  ; loc_18788d7a4
0x18788d7a4:  28 53 52 39   ldrb	w8, [x25, #0x494]
0x18788d7a8:  1f 05 00 71   cmp	w8, #0x1
0x18788d7ac:  a1 03 00 54   b.ne	loc_18788d820 ; ⤵ 0x74
0x18788d7b0:  48 31 33 d0   adrp	x8, 0x1edeb7000
0x18788d7b4:  08 41 34 91   add	x8, x8, #0xd10 ; _gIIODebugFlags
0x18788d7b8:  08 09 40 39   ldrb	w8, [x8, #0x2]
0x18788d7bc:  08 01 08 36   tbz	w8, #0x1, loc_18788d7dc ; ⤵ 0x20
0x18788d7c0:  68 a6 4b 29   ldp	w8, w9, [x19, #0x5c]
0x18788d7c4:  e8 a7 00 a9   stp	x8, x9, [sp, #0x8]
0x18788d7c8:  e9 dc 80 52   mov	w9, #0x6e7
0x18788d7cc:  e9 03 00 f9   str	x9, [sp]
0x18788d7d0:  40 2a 00 f0   adrp	x0, 0x187dd8000
0x18788d7d4:  00 18 1c 91   add	x0, x0, #0x706 ; "♦️  'ASTC' %d: decodeRGBXFromTwiddled [%d x %d]\n"
0x18788d7d8:  2a 0a 00 94   bl	__Z10ImageIOLogPKcz
0x18788d7dc:  ; loc_18788d7dc
0x18788d7dc:  e0 03 13 aa   mov	x0, x19
0x18788d7e0:  e1 03 15 aa   mov	x1, x21
0x18788d7e4:  e2 03 14 aa   mov	x2, x20
0x18788d7e8:  e3 03 16 aa   mov	x3, x22
0x18788d7ec:  e4 03 17 aa   mov	x4, x23
0x18788d7f0:  e5 03 18 aa   mov	x5, x24
0x18788d7f4:  bd 1c 00 94   bl	__ZN14ASTCTextureImp22decodeRGBXFromTwiddledEP19IIOImageReadSessionP13vImage_Buffer10at_alpha_t17at_block_format_t17at_texel_format_t
0x18788d7f8:  e0 06 00 34   cbz	w0, loc_18788d8d4 ; ⤵ 0xdc
0x18788d7fc:  f5 03 00 aa   mov	x21, x0
0x18788d800:  40 2a 00 f0   adrp	x0, 0x187dd8000
0x18788d804:  00 78 19 91   add	x0, x0, #0x65e ; "decodeASTCtoRGBX"
0x18788d808:  f5 03 00 f9   str	x21, [sp]
0x18788d80c:  42 2a 00 f0   adrp	x2, 0x187dd8000
0x18788d810:  42 ec 1c 91   add	x2, x2, #0x73b ; "*** ERROR: decodeRGBXFromTwiddled failed [%d]\n"
0x18788d814:  41 dd 80 52   mov	w1, #0x6ea
0x18788d818:  ; loc_18788d818
0x18788d818:  92 2c fe 97   bl	__cg_jpeg_mem_term
0x18788d81c:  1b 00 00 14   b	loc_18788d888 ; ⤵ 0x6c
0x18788d820:  ; loc_18788d820
0x18788d820:  35 06 80 12   mov	w21, #0xffffffce
0x18788d824:  19 00 00 14   b	loc_18788d888 ; ⤵ 0x64
0x18788d828:  ; loc_18788d828
0x18788d828:  09 01 88 36   tbz	w9, #0x11, loc_18788d848 ; ⤵ 0x20
0x18788d82c:  68 a6 4b 29   ldp	w8, w9, [x19, #0x5c]
0x18788d830:  e8 a7 00 a9   stp	x8, x9, [sp, #0x8]
0x18788d834:  29 da 80 52   mov	w9, #0x6d1
0x18788d838:  e9 03 00 f9   str	x9, [sp]
0x18788d83c:  40 2a 00 f0   adrp	x0, 0x187dd8000
0x18788d840:  00 ac 18 91   add	x0, x0, #0x62b ; "♦️  'ASTC' %d: decodeRGBXFromLinear [%d x %d]\n"
0x18788d844:  0f 0a 00 94   bl	__Z10ImageIOLogPKcz
0x18788d848:  ; loc_18788d848
0x18788d848:  e0 03 13 aa   mov	x0, x19
0x18788d84c:  e1 03 15 aa   mov	x1, x21
0x18788d850:  e2 03 14 aa   mov	x2, x20
0x18788d854:  e3 03 16 aa   mov	x3, x22
0x18788d858:  e4 03 17 aa   mov	x4, x23
0x18788d85c:  e5 03 18 aa   mov	x5, x24
0x18788d860:  77 97 06 94   bl	__ZN14ASTCTextureImp20decodeRGBXFromLinearEP19IIOImageReadSessionP13vImage_Buffer10at_alpha_t17at_block_format_t17at_texel_format_t
0x18788d864:  80 03 00 34   cbz	w0, loc_18788d8d4 ; ⤵ 0x70
0x18788d868:  f5 03 00 aa   mov	x21, x0
0x18788d86c:  40 2a 00 f0   adrp	x0, 0x187dd8000
0x18788d870:  00 78 19 91   add	x0, x0, #0x65e ; "decodeASTCtoRGBX"
0x18788d874:  f5 03 00 f9   str	x21, [sp]
0x18788d878:  42 2a 00 f0   adrp	x2, 0x187dd8000
0x18788d87c:  42 bc 19 91   add	x2, x2, #0x66f ; "*** ERROR: decodeRGBXFromLinear failed [%d]\n"
0x18788d880:  a1 da 80 52   mov	w1, #0x6d5
0x18788d884:  77 2c fe 97   bl	__cg_jpeg_mem_term
0x18788d888:  ; loc_18788d888
0x18788d888:  98 06 40 f9   ldr	x24, [x20, #0x8]
0x18788d88c:  d8 01 00 b4   cbz	x24, loc_18788d8c4 ; ⤵ 0x38
0x18788d890:  96 02 40 f9   ldr	x22, [x20]
0x18788d894:  9b 6a 41 a9   ldp	x27, x26, [x20, #0x10]
0x18788d898:  74 f7 7e d3   lsl	x20, x27, #0x2
0x18788d89c:  17 24 00 90   adrp	x23, 0x187d0d000
0x18788d8a0:  f7 c2 0d 91   add	x23, x23, #0x370 ; "\x80\xa0\xfc\xff\x80\xa0\xfc\xff\x80\xa0\xfc\xff\x80\xa0\xfc\xff"
0x18788d8a4:  ; loc_18788d8a4
0x18788d8a4:  bb 00 00 b4   cbz	x27, loc_18788d8b8 ; ⤵ 0x14
0x18788d8a8:  e0 03 16 aa   mov	x0, x22
0x18788d8ac:  e1 03 17 aa   mov	x1, x23
0x18788d8b0:  e2 03 14 aa   mov	x2, x20
0x18788d8b4:  57 ef 22 94   bl	__platform_memset_pattern16_stub
0x18788d8b8:  ; loc_18788d8b8
0x18788d8b8:  d6 02 1a 8b   add	x22, x22, x26
0x18788d8bc:  18 07 00 f1   subs	x24, x24, #0x1
0x18788d8c0:  21 ff ff 54   b.ne	loc_18788d8a4 ; ⤴ -0x1c
0x18788d8c4:  ; loc_18788d8c4
0x18788d8c4:  28 53 52 39   ldrb	w8, [x25, #0x494]
0x18788d8c8:  1f 01 00 71   cmp	w8, #0
0x18788d8cc:  b4 12 9f 1a   csel	w20, w21, wzr, ne
0x18788d8d0:  02 00 00 14   b	loc_18788d8d8 ; ⤵ 0x8
0x18788d8d4:  ; loc_18788d8d4
0x18788d8d4:  14 00 80 52   mov	w20, #0
0x18788d8d8:  ; loc_18788d8d8
0x18788d8d8:  60 82 02 91   add	x0, x19, #0xa0
0x18788d8dc:  e1 b7 22 94   bl	j__pthread_mutex_unlock
0x18788d8e0:  e0 03 14 aa   mov	x0, x20
0x18788d8e4:  fd 7b 47 a9   ldp	fp, lr, [sp, #0x70]
0x18788d8e8:  f4 4f 46 a9   ldp	x20, x19, [sp, #0x60]
0x18788d8ec:  f6 57 45 a9   ldp	x22, x21, [sp, #0x50]
0x18788d8f0:  f8 5f 44 a9   ldp	x24, x23, [sp, #0x40]
0x18788d8f4:  fa 67 43 a9   ldp	x26, x25, [sp, #0x30]
0x18788d8f8:  fc 6f 42 a9   ldp	x28, x27, [sp, #0x20]
0x18788d8fc:  ff 03 02 91   add	sp, sp, #0x80
0x18788d900:  ff 0f 5f d6   retab
0x18788d904:  ; loc_18788d904
0x18788d904:  02 00 00 94   bl	__ZN14ASTCTextureImp16decodeASTCtoRGBXEP19IIOImageReadSessionP13vImage_Buffer16CGImageAlphaInfob.cold.1
0x18788d908:  68 ff ff 17   b	loc_18788d6a8 ; ⤴ -0x260

