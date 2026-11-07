
__ZN7GPSCopy11processDataEv:
0x187a6b920:  7f 23 03 d5   pacibsp
0x187a6b924:  ff c3 01 d1   sub	sp, sp, #0x70
0x187a6b928:  fc 6f 01 a9   stp	x28, x27, [sp, #0x10]
0x187a6b92c:  fa 67 02 a9   stp	x26, x25, [sp, #0x20]
0x187a6b930:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x187a6b934:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x187a6b938:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x187a6b93c:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x187a6b940:  fd 83 01 91   add	fp, sp, #0x60
0x187a6b944:  f3 03 00 aa   mov	x19, x0
0x187a6b948:  15 10 40 f9   ldr	x21, [x0, #0x20]
0x187a6b94c:  e1 03 15 aa   mov	x1, x21
0x187a6b950:  42 00 80 52   mov	w2, #0x2
0x187a6b954:  1c ff ff 97   bl	__ZN7GPSCopy22checkInitializedLengthEPhm
0x187a6b958:  68 62 40 39   ldrb	w8, [x19, #0x18]
0x187a6b95c:  a9 02 40 79   ldrh	w9, [x21]
0x187a6b960:  2a 09 c0 5a   rev	w10, w9
0x187a6b964:  4a 7d 10 53   lsr	w10, w10, #0x10
0x187a6b968:  1f 01 00 71   cmp	w8, #0
0x187a6b96c:  34 11 8a 1a   csel	w20, w9, w10, ne
0x187a6b970:  e0 03 13 aa   mov	x0, x19
0x187a6b974:  e1 03 15 aa   mov	x1, x21
0x187a6b978:  42 00 80 52   mov	w2, #0x2
0x187a6b97c:  06 ff ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6b980:  08 fb 9f 52   mov	w8, #0xffd8
0x187a6b984:  1f 21 34 6b   cmp	w8, w20, uxth
0x187a6b988:  e1 12 00 54   b.ne	loc_187a6bbe4 ; ⤵ 0x25c
0x187a6b98c:  a1 0a 00 91   add	x1, x21, #0x2
0x187a6b990:  e0 03 13 aa   mov	x0, x19
0x187a6b994:  42 00 80 52   mov	w2, #0x2
0x187a6b998:  0b ff ff 97   bl	__ZN7GPSCopy22checkInitializedLengthEPhm
0x187a6b99c:  68 62 40 39   ldrb	w8, [x19, #0x18]
0x187a6b9a0:  a9 06 40 79   ldrh	w9, [x21, #0x2]
0x187a6b9a4:  2a 09 c0 5a   rev	w10, w9
0x187a6b9a8:  4a 7d 10 53   lsr	w10, w10, #0x10
0x187a6b9ac:  1f 01 00 71   cmp	w8, #0
0x187a6b9b0:  34 11 8a 1a   csel	w20, w9, w10, ne
0x187a6b9b4:  a1 0a 00 91   add	x1, x21, #0x2
0x187a6b9b8:  e0 03 13 aa   mov	x0, x19
0x187a6b9bc:  42 00 80 52   mov	w2, #0x2
0x187a6b9c0:  f5 fe ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6b9c4:  28 fc 9f 52   mov	w8, #0xffe1
0x187a6b9c8:  1f 21 34 6b   cmp	w8, w20, uxth
0x187a6b9cc:  c1 10 00 54   b.ne	loc_187a6bbe4 ; ⤵ 0x218
0x187a6b9d0:  a1 12 00 91   add	x1, x21, #0x4
0x187a6b9d4:  e0 03 13 aa   mov	x0, x19
0x187a6b9d8:  42 00 80 52   mov	w2, #0x2
0x187a6b9dc:  fa fe ff 97   bl	__ZN7GPSCopy22checkInitializedLengthEPhm
0x187a6b9e0:  68 62 40 39   ldrb	w8, [x19, #0x18]
0x187a6b9e4:  a9 0a 40 79   ldrh	w9, [x21, #0x4]
0x187a6b9e8:  2a 09 c0 5a   rev	w10, w9
0x187a6b9ec:  4a 7d 10 53   lsr	w10, w10, #0x10
0x187a6b9f0:  1f 01 00 71   cmp	w8, #0
0x187a6b9f4:  38 11 8a 1a   csel	w24, w9, w10, ne
0x187a6b9f8:  a1 12 00 91   add	x1, x21, #0x4
0x187a6b9fc:  e0 03 13 aa   mov	x0, x19
0x187a6ba00:  02 01 80 52   mov	w2, #0x8
0x187a6ba04:  e4 fe ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6ba08:  a1 32 00 91   add	x1, x21, #0xc
0x187a6ba0c:  e0 03 13 aa   mov	x0, x19
0x187a6ba10:  42 00 80 52   mov	w2, #0x2
0x187a6ba14:  ec fe ff 97   bl	__ZN7GPSCopy22checkInitializedLengthEPhm
0x187a6ba18:  68 62 40 39   ldrb	w8, [x19, #0x18]
0x187a6ba1c:  a9 1a 40 79   ldrh	w9, [x21, #0xc]
0x187a6ba20:  2a 09 c0 5a   rev	w10, w9
0x187a6ba24:  4a 7d 10 53   lsr	w10, w10, #0x10
0x187a6ba28:  1f 01 00 71   cmp	w8, #0
0x187a6ba2c:  34 11 8a 1a   csel	w20, w9, w10, ne
0x187a6ba30:  a1 32 00 91   add	x1, x21, #0xc
0x187a6ba34:  e0 03 13 aa   mov	x0, x19
0x187a6ba38:  42 00 80 52   mov	w2, #0x2
0x187a6ba3c:  d6 fe ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6ba40:  88 3e 00 12   and	w8, w20, #0xffff
0x187a6ba44:  29 29 89 52   mov	w9, #0x4949
0x187a6ba48:  1f 01 09 6b   cmp	w8, w9
0x187a6ba4c:  c0 00 00 54   b.eq	loc_187a6ba64 ; ⤵ 0x18
0x187a6ba50:  a9 a9 89 52   mov	w9, #0x4d4d
0x187a6ba54:  1f 01 09 6b   cmp	w8, w9
0x187a6ba58:  61 0c 00 54   b.ne	loc_187a6bbe4 ; ⤵ 0x18c
0x187a6ba5c:  68 62 40 39   ldrb	w8, [x19, #0x18]
0x187a6ba60:  03 00 00 14   b	loc_187a6ba6c ; ⤵ 0xc
0x187a6ba64:  ; loc_187a6ba64
0x187a6ba64:  28 00 80 52   mov	w8, #0x1
0x187a6ba68:  68 62 00 39   strb	w8, [x19, #0x18]
0x187a6ba6c:  ; loc_187a6ba6c
0x187a6ba6c:  74 12 40 f9   ldr	x20, [x19, #0x20]
0x187a6ba70:  60 0a 40 f9   ldr	x0, [x19, #0x10]
0x187a6ba74:  04 01 00 12   and	w4, w8, #0x1
0x187a6ba78:  65 02 01 91   add	x5, x19, #0x40
0x187a6ba7c:  01 00 80 d2   mov	x1, #0
0x187a6ba80:  02 00 80 d2   mov	x2, #0
0x187a6ba84:  03 00 80 d2   mov	x3, #0
0x187a6ba88:  11 ce fe 97   bl	__Z36CreateGPSBufferFromPropertiesTIFFNewP13IIODictionarymmmbPm
0x187a6ba8c:  60 1e 00 f9   str	x0, [x19, #0x38]
0x187a6ba90:  c0 0a 00 b4   cbz	x0, loc_187a6bbe8 ; ⤵ 0x158
0x187a6ba94:  68 22 40 f9   ldr	x8, [x19, #0x40]
0x187a6ba98:  09 01 40 92   and	x9, x8, #0x1
0x187a6ba9c:  39 01 08 8b   add	x25, x9, x8
0x187a6baa0:  60 22 42 a9   ldp	x0, x8, [x19, #0x20]
0x187a6baa4:  08 01 19 8b   add	x8, x8, x25
0x187a6baa8:  16 31 00 91   add	x22, x8, #0xc
0x187a6baac:  e1 03 16 aa   mov	x1, x22
0x187a6bab0:  e8 32 1b 94   bl	_reallocf_stub
0x187a6bab4:  60 12 00 f9   str	x0, [x19, #0x20]
0x187a6bab8:  80 09 00 b4   cbz	x0, loc_187a6bbe8 ; ⤵ 0x130
0x187a6babc:  a8 3a 00 91   add	x8, x21, #0xe
0x187a6bac0:  08 01 14 cb   sub	x8, x8, x20
0x187a6bac4:  76 16 00 f9   str	x22, [x19, #0x28]
0x187a6bac8:  15 00 08 8b   add	x21, x0, x8
0x187a6bacc:  e0 03 13 aa   mov	x0, x19
0x187a6bad0:  e1 03 15 aa   mov	x1, x21
0x187a6bad4:  42 00 80 52   mov	w2, #0x2
0x187a6bad8:  af fe ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6badc:  a1 0a 00 91   add	x1, x21, #0x2
0x187a6bae0:  e0 03 13 aa   mov	x0, x19
0x187a6bae4:  82 00 80 52   mov	w2, #0x4
0x187a6bae8:  b7 fe ff 97   bl	__ZN7GPSCopy22checkInitializedLengthEPhm
0x187a6baec:  a1 0a 00 91   add	x1, x21, #0x2
0x187a6baf0:  e0 03 13 aa   mov	x0, x19
0x187a6baf4:  ca fe ff 97   bl	__ZN7GPSCopy15read32UncheckedEPh
0x187a6baf8:  e8 03 00 2a   mov	w8, w0
0x187a6bafc:  01 31 00 91   add	x1, x8, #0xc
0x187a6bb00:  e0 03 13 aa   mov	x0, x19
0x187a6bb04:  bc fe ff 97   bl	__ZN7GPSCopy15pointerToOffsetEm
0x187a6bb08:  f5 03 00 aa   mov	x21, x0
0x187a6bb0c:  e0 03 13 aa   mov	x0, x19
0x187a6bb10:  e1 03 15 aa   mov	x1, x21
0x187a6bb14:  42 00 80 52   mov	w2, #0x2
0x187a6bb18:  ab fe ff 97   bl	__ZN7GPSCopy22checkInitializedLengthEPhm
0x187a6bb1c:  f7 03 15 aa   mov	x23, x21
0x187a6bb20:  e8 26 40 78   ldrh	w8, [x23], #0x2
0x187a6bb24:  69 62 40 39   ldrb	w9, [x19, #0x18]
0x187a6bb28:  0a 09 c0 5a   rev	w10, w8
0x187a6bb2c:  4a 7d 10 53   lsr	w10, w10, #0x10
0x187a6bb30:  3f 01 00 71   cmp	w9, #0
0x187a6bb34:  1c 11 8a 1a   csel	w28, w8, w10, ne
0x187a6bb38:  94 3f 00 12   and	w20, w28, #0xffff
0x187a6bb3c:  e0 03 13 aa   mov	x0, x19
0x187a6bb40:  e1 03 15 aa   mov	x1, x21
0x187a6bb44:  42 00 80 52   mov	w2, #0x2
0x187a6bb48:  93 fe ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6bb4c:  d4 04 00 34   cbz	w20, loc_187a6bbe4 ; ⤵ 0x98
0x187a6bb50:  f9 07 00 f9   str	x25, [sp, #0x8]
0x187a6bb54:  f8 07 00 b9   str	w24, [sp, #0x4]
0x187a6bb58:  1a 00 80 d2   mov	x26, #0
0x187a6bb5c:  88 3f 40 92   and	x8, x28, #0xffff
0x187a6bb60:  08 f9 7f d3   lsl	x8, x8, #0x1
0x187a6bb64:  08 21 3c 8b   add	x8, x8, w28, uxth
0x187a6bb68:  18 f5 7e d3   lsl	x24, x8, #0x2
0x187a6bb6c:  1b 33 00 d1   sub	x27, x24, #0xc
0x187a6bb70:  39 ed 90 52   mov	w25, #0x8769
0x187a6bb74:  b4 04 91 52   mov	w20, #0x8825
0x187a6bb78:  f6 03 17 aa   mov	x22, x23
0x187a6bb7c:  ; loc_187a6bb7c
0x187a6bb7c:  e0 03 13 aa   mov	x0, x19
0x187a6bb80:  e1 03 16 aa   mov	x1, x22
0x187a6bb84:  82 01 80 52   mov	w2, #0xc
0x187a6bb88:  8f fe ff 97   bl	__ZN7GPSCopy22checkInitializedLengthEPhm
0x187a6bb8c:  c9 02 40 79   ldrh	w9, [x22]
0x187a6bb90:  68 62 40 39   ldrb	w8, [x19, #0x18]
0x187a6bb94:  2a 09 c0 5a   rev	w10, w9
0x187a6bb98:  4a 7d 10 53   lsr	w10, w10, #0x10
0x187a6bb9c:  1f 01 00 71   cmp	w8, #0
0x187a6bba0:  29 11 8a 1a   csel	w9, w9, w10, ne
0x187a6bba4:  29 3d 00 12   and	w9, w9, #0xffff
0x187a6bba8:  3f 01 19 6b   cmp	w9, w25
0x187a6bbac:  80 00 00 54   b.eq	loc_187a6bbbc ; ⤵ 0x10
0x187a6bbb0:  3f 01 14 6b   cmp	w9, w20
0x187a6bbb4:  81 00 00 54   b.ne	loc_187a6bbc4 ; ⤵ 0x10
0x187a6bbb8:  14 00 00 14   b	loc_187a6bc08 ; ⤵ 0x50
0x187a6bbbc:  ; loc_187a6bbbc
0x187a6bbbc:  7f 03 1a 6b   cmp	w27, w26
0x187a6bbc0:  c0 08 00 54   b.eq	loc_187a6bcd8 ; ⤵ 0x118
0x187a6bbc4:  ; loc_187a6bbc4
0x187a6bbc4:  e0 03 13 aa   mov	x0, x19
0x187a6bbc8:  e1 03 16 aa   mov	x1, x22
0x187a6bbcc:  82 01 80 52   mov	w2, #0xc
0x187a6bbd0:  71 fe ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6bbd4:  d6 32 00 91   add	x22, x22, #0xc
0x187a6bbd8:  5a 33 00 91   add	x26, x26, #0xc
0x187a6bbdc:  1f 03 1a 6b   cmp	w24, w26
0x187a6bbe0:  e1 fc ff 54   b.ne	loc_187a6bb7c ; ⤴ -0x64
0x187a6bbe4:  ; loc_187a6bbe4
0x187a6bbe4:  00 00 80 52   mov	w0, #0
0x187a6bbe8:  ; loc_187a6bbe8
0x187a6bbe8:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x187a6bbec:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x187a6bbf0:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x187a6bbf4:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x187a6bbf8:  fa 67 42 a9   ldp	x26, x25, [sp, #0x20]
0x187a6bbfc:  fc 6f 41 a9   ldp	x28, x27, [sp, #0x10]
0x187a6bc00:  ff c3 01 91   add	sp, sp, #0x70
0x187a6bc04:  ff 0f 5f d6   retab
0x187a6bc08:  ; loc_187a6bc08
0x187a6bc08:  e0 03 13 aa   mov	x0, x19
0x187a6bc0c:  e1 03 16 aa   mov	x1, x22
0x187a6bc10:  82 01 80 52   mov	w2, #0xc
0x187a6bc14:  60 fe ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6bc18:  b4 02 1a 8b   add	x20, x21, x26
0x187a6bc1c:  88 a2 40 b8   ldur	w8, [x20, #0xa]
0x187a6bc20:  69 62 40 39   ldrb	w9, [x19, #0x18]
0x187a6bc24:  0a 09 c0 5a   rev	w10, w8
0x187a6bc28:  3f 01 00 71   cmp	w9, #0
0x187a6bc2c:  15 11 8a 1a   csel	w21, w8, w10, ne
0x187a6bc30:  81 3a 00 91   add	x1, x20, #0xe
0x187a6bc34:  e0 03 13 aa   mov	x0, x19
0x187a6bc38:  82 00 80 52   mov	w2, #0x4
0x187a6bc3c:  62 fe ff 97   bl	__ZN7GPSCopy22checkInitializedLengthEPhm
0x187a6bc40:  81 3a 00 91   add	x1, x20, #0xe
0x187a6bc44:  e0 03 13 aa   mov	x0, x19
0x187a6bc48:  75 fe ff 97   bl	__ZN7GPSCopy15read32UncheckedEPh
0x187a6bc4c:  08 00 15 4b   sub	w8, w0, w21
0x187a6bc50:  e9 07 40 f9   ldr	x9, [sp, #0x8]
0x187a6bc54:  3f 01 08 eb   cmp	x9, x8
0x187a6bc58:  83 20 00 54   b.lo	loc_187a6c068 ; ⤵ 0x410
0x187a6bc5c:  a1 32 00 91   add	x1, x21, #0xc
0x187a6bc60:  e0 03 13 aa   mov	x0, x19
0x187a6bc64:  64 fe ff 97   bl	__ZN7GPSCopy15pointerToOffsetEm
0x187a6bc68:  69 62 40 39   ldrb	w9, [x19, #0x18]
0x187a6bc6c:  68 aa 43 a9   ldp	x8, x10, [x19, #0x38]
0x187a6bc70:  0b 01 40 79   ldrh	w11, [x8]
0x187a6bc74:  6c 09 c0 5a   rev	w12, w11
0x187a6bc78:  8c 7d 10 53   lsr	w12, w12, #0x10
0x187a6bc7c:  3f 01 00 71   cmp	w9, #0
0x187a6bc80:  69 11 8c 1a   csel	w9, w11, w12, ne
0x187a6bc84:  2b 3d 40 92   and	x11, x9, #0xffff
0x187a6bc88:  6b f9 7f d3   lsl	x11, x11, #0x1
0x187a6bc8c:  6b 21 29 8b   add	x11, x11, w9, uxth
0x187a6bc90:  4c 00 80 52   mov	w12, #0x2
0x187a6bc94:  8b 09 0b aa   orr	x11, x12, x11, lsl #0x2
0x187a6bc98:  7f 01 0a eb   cmp	x11, x10
0x187a6bc9c:  c8 1e 00 54   b.hi	loc_187a6c074 ; ⤵ 0x3d8
0x187a6bca0:  f4 03 00 aa   mov	x20, x0
0x187a6bca4:  01 09 00 91   add	x1, x8, #0x2
0x187a6bca8:  22 3d 00 12   and	w2, w9, #0xffff
0x187a6bcac:  e0 03 13 aa   mov	x0, x19
0x187a6bcb0:  e3 03 15 aa   mov	x3, x21
0x187a6bcb4:  69 fe ff 97   bl	__ZN7GPSCopy16adjustIFDOffsetsEP7IFDDataii
0x187a6bcb8:  62 22 40 f9   ldr	x2, [x19, #0x40]
0x187a6bcbc:  e0 03 13 aa   mov	x0, x19
0x187a6bcc0:  e1 03 14 aa   mov	x1, x20
0x187a6bcc4:  34 fe ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6bcc8:  61 8a 43 a9   ldp	x1, x2, [x19, #0x38]
0x187a6bccc:  e0 03 14 aa   mov	x0, x20
0x187a6bcd0:  00 32 1b 94   bl	j___platform_memmove
0x187a6bcd4:  e3 00 00 14   b	loc_187a6c060 ; ⤵ 0x38c
0x187a6bcd8:  ; loc_187a6bcd8
0x187a6bcd8:  bb 02 1a 8b   add	x27, x21, x26
0x187a6bcdc:  69 a3 40 b8   ldur	w9, [x27, #0xa]
0x187a6bce0:  2a 09 c0 5a   rev	w10, w9
0x187a6bce4:  1f 01 00 71   cmp	w8, #0
0x187a6bce8:  28 11 8a 1a   csel	w8, w9, w10, ne
0x187a6bcec:  01 31 00 91   add	x1, x8, #0xc
0x187a6bcf0:  e0 03 13 aa   mov	x0, x19
0x187a6bcf4:  40 fe ff 97   bl	__ZN7GPSCopy15pointerToOffsetEm
0x187a6bcf8:  f8 03 00 aa   mov	x24, x0
0x187a6bcfc:  94 07 00 11   add	w20, w28, #0x1
0x187a6bd00:  68 62 40 39   ldrb	w8, [x19, #0x18]
0x187a6bd04:  89 0a c0 5a   rev	w9, w20
0x187a6bd08:  29 7d 10 53   lsr	w9, w9, #0x10
0x187a6bd0c:  1f 01 00 71   cmp	w8, #0
0x187a6bd10:  39 05 9c 1a   csinc	w25, w9, w28, eq
0x187a6bd14:  5c 00 80 52   mov	w28, #0x2
0x187a6bd18:  e0 03 13 aa   mov	x0, x19
0x187a6bd1c:  e1 03 15 aa   mov	x1, x21
0x187a6bd20:  42 00 80 52   mov	w2, #0x2
0x187a6bd24:  1c fe ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6bd28:  b9 02 00 79   strh	w25, [x21]
0x187a6bd2c:  e0 03 13 aa   mov	x0, x19
0x187a6bd30:  e1 03 15 aa   mov	x1, x21
0x187a6bd34:  42 00 80 52   mov	w2, #0x2
0x187a6bd38:  17 fe ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6bd3c:  88 3e 40 92   and	x8, x20, #0xffff
0x187a6bd40:  08 f9 7f d3   lsl	x8, x8, #0x1
0x187a6bd44:  08 21 34 8b   add	x8, x8, w20, uxth
0x187a6bd48:  02 f5 7e d3   lsl	x2, x8, #0x2
0x187a6bd4c:  e0 03 13 aa   mov	x0, x19
0x187a6bd50:  e1 03 17 aa   mov	x1, x23
0x187a6bd54:  1c fe ff 97   bl	__ZN7GPSCopy22checkInitializedLengthEPhm
0x187a6bd58:  82 3e 00 12   and	w2, w20, #0xffff
0x187a6bd5c:  e0 03 13 aa   mov	x0, x19
0x187a6bd60:  e1 03 17 aa   mov	x1, x23
0x187a6bd64:  83 01 80 52   mov	w3, #0xc
0x187a6bd68:  3c fe ff 97   bl	__ZN7GPSCopy16adjustIFDOffsetsEP7IFDDataii
0x187a6bd6c:  e0 03 13 aa   mov	x0, x19
0x187a6bd70:  e1 03 18 aa   mov	x1, x24
0x187a6bd74:  42 00 80 52   mov	w2, #0x2
0x187a6bd78:  13 fe ff 97   bl	__ZN7GPSCopy22checkInitializedLengthEPhm
0x187a6bd7c:  68 62 40 39   ldrb	w8, [x19, #0x18]
0x187a6bd80:  f7 03 18 aa   mov	x23, x24
0x187a6bd84:  e9 26 40 78   ldrh	w9, [x23], #0x2
0x187a6bd88:  2a 09 c0 5a   rev	w10, w9
0x187a6bd8c:  4a 7d 10 53   lsr	w10, w10, #0x10
0x187a6bd90:  1f 01 00 71   cmp	w8, #0
0x187a6bd94:  34 11 8a 1a   csel	w20, w9, w10, ne
0x187a6bd98:  e0 03 13 aa   mov	x0, x19
0x187a6bd9c:  e1 03 18 aa   mov	x1, x24
0x187a6bda0:  42 00 80 52   mov	w2, #0x2
0x187a6bda4:  fc fd ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6bda8:  88 3e 40 92   and	x8, x20, #0xffff
0x187a6bdac:  08 f9 7f d3   lsl	x8, x8, #0x1
0x187a6bdb0:  08 21 34 8b   add	x8, x8, w20, uxth
0x187a6bdb4:  02 f5 7e d3   lsl	x2, x8, #0x2
0x187a6bdb8:  e0 03 13 aa   mov	x0, x19
0x187a6bdbc:  e1 03 17 aa   mov	x1, x23
0x187a6bdc0:  01 fe ff 97   bl	__ZN7GPSCopy22checkInitializedLengthEPhm
0x187a6bdc4:  82 3e 00 12   and	w2, w20, #0xffff
0x187a6bdc8:  e0 03 13 aa   mov	x0, x19
0x187a6bdcc:  e1 03 17 aa   mov	x1, x23
0x187a6bdd0:  83 01 80 52   mov	w3, #0xc
0x187a6bdd4:  21 fe ff 97   bl	__ZN7GPSCopy16adjustIFDOffsetsEP7IFDDataii
0x187a6bdd8:  e0 03 13 aa   mov	x0, x19
0x187a6bddc:  e1 03 16 aa   mov	x1, x22
0x187a6bde0:  82 01 80 52   mov	w2, #0xc
0x187a6bde4:  ec fd ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6bde8:  97 00 80 52   mov	w23, #0x4
0x187a6bdec:  61 3b 00 91   add	x1, x27, #0xe
0x187a6bdf0:  e0 03 13 aa   mov	x0, x19
0x187a6bdf4:  82 00 80 52   mov	w2, #0x4
0x187a6bdf8:  f3 fd ff 97   bl	__ZN7GPSCopy22checkInitializedLengthEPhm
0x187a6bdfc:  68 62 40 39   ldrb	w8, [x19, #0x18]
0x187a6be00:  74 a6 43 a9   ldp	x20, x9, [x19, #0x38]
0x187a6be04:  8a 02 40 79   ldrh	w10, [x20]
0x187a6be08:  4b 09 c0 5a   rev	w11, w10
0x187a6be0c:  6b 7d 10 53   lsr	w11, w11, #0x10
0x187a6be10:  1f 01 00 71   cmp	w8, #0
0x187a6be14:  58 11 8b 1a   csel	w24, w10, w11, ne
0x187a6be18:  08 3f 40 92   and	x8, x24, #0xffff
0x187a6be1c:  08 f9 7f d3   lsl	x8, x8, #0x1
0x187a6be20:  08 21 38 8b   add	x8, x8, w24, uxth
0x187a6be24:  88 0b 08 aa   orr	x8, x28, x8, lsl #0x2
0x187a6be28:  1f 01 09 eb   cmp	x8, x9
0x187a6be2c:  28 12 00 54   b.hi	loc_187a6c070 ; ⤵ 0x244
0x187a6be30:  61 3b 00 91   add	x1, x27, #0xe
0x187a6be34:  e0 03 13 aa   mov	x0, x19
0x187a6be38:  f9 fd ff 97   bl	__ZN7GPSCopy15read32UncheckedEPh
0x187a6be3c:  16 30 00 11   add	w22, w0, #0xc
0x187a6be40:  81 0a 00 91   add	x1, x20, #0x2
0x187a6be44:  02 3f 00 12   and	w2, w24, #0xffff
0x187a6be48:  e0 03 13 aa   mov	x0, x19
0x187a6be4c:  e3 03 16 aa   mov	x3, x22
0x187a6be50:  02 fe ff 97   bl	__ZN7GPSCopy16adjustIFDOffsetsEP7IFDDataii
0x187a6be54:  61 3b 00 91   add	x1, x27, #0xe
0x187a6be58:  e0 03 13 aa   mov	x0, x19
0x187a6be5c:  82 01 80 52   mov	w2, #0xc
0x187a6be60:  cd fd ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6be64:  68 12 40 f9   ldr	x8, [x19, #0x20]
0x187a6be68:  69 1a 40 f9   ldr	x9, [x19, #0x30]
0x187a6be6c:  0a 01 09 8b   add	x10, x8, x9
0x187a6be70:  48 01 15 cb   sub	x8, x10, x21
0x187a6be74:  08 01 1a cb   sub	x8, x8, x26
0x187a6be78:  15 39 00 d1   sub	x21, x8, #0xe
0x187a6be7c:  61 6b 00 91   add	x1, x27, #0x1a
0x187a6be80:  e0 03 13 aa   mov	x0, x19
0x187a6be84:  e2 03 15 aa   mov	x2, x21
0x187a6be88:  c3 fd ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6be8c:  60 6b 00 91   add	x0, x27, #0x1a
0x187a6be90:  61 3b 00 91   add	x1, x27, #0xe
0x187a6be94:  e2 03 15 aa   mov	x2, x21
0x187a6be98:  92 31 1b 94   bl	j___platform_memmove
0x187a6be9c:  68 1a 40 f9   ldr	x8, [x19, #0x30]
0x187a6bea0:  08 31 00 91   add	x8, x8, #0xc
0x187a6bea4:  69 62 40 39   ldrb	w9, [x19, #0x18]
0x187a6bea8:  3f 01 00 71   cmp	w9, #0
0x187a6beac:  09 b1 84 52   mov	w9, #0x2588
0x187a6beb0:  68 1a 00 f9   str	x8, [x19, #0x30]
0x187a6beb4:  48 fb 8e 12   mov	w8, #0xffff8825
0x187a6beb8:  14 11 89 1a   csel	w20, w8, w9, ne
0x187a6bebc:  08 80 80 52   mov	w8, #0x400
0x187a6bec0:  f5 12 88 1a   csel	w21, w23, w8, ne
0x187a6bec4:  08 20 a0 52   mov	w8, #0x1000000
0x187a6bec8:  17 05 9f 1a   csinc	w23, w8, wzr, eq
0x187a6becc:  c8 0a c0 5a   rev	w8, w22
0x187a6bed0:  d8 12 88 1a   csel	w24, w22, w8, ne
0x187a6bed4:  61 3b 00 91   add	x1, x27, #0xe
0x187a6bed8:  e0 03 13 aa   mov	x0, x19
0x187a6bedc:  82 01 80 52   mov	w2, #0xc
0x187a6bee0:  ad fd ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6bee4:  74 e3 00 78   sturh	w20, [x27, #0xe]
0x187a6bee8:  75 23 00 79   strh	w21, [x27, #0x10]
0x187a6beec:  77 23 01 b8   stur	w23, [x27, #0x12]
0x187a6bef0:  78 63 01 b8   stur	w24, [x27, #0x16]
0x187a6bef4:  61 3b 00 91   add	x1, x27, #0xe
0x187a6bef8:  e0 03 13 aa   mov	x0, x19
0x187a6befc:  82 01 80 52   mov	w2, #0xc
0x187a6bf00:  a5 fd ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6bf04:  f4 07 40 f9   ldr	x20, [sp, #0x8]
0x187a6bf08:  98 02 16 8b   add	x24, x20, x22
0x187a6bf0c:  61 6b 00 91   add	x1, x27, #0x1a
0x187a6bf10:  e0 03 13 aa   mov	x0, x19
0x187a6bf14:  82 00 80 52   mov	w2, #0x4
0x187a6bf18:  9f fd ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6bf1c:  68 62 40 39   ldrb	w8, [x19, #0x18]
0x187a6bf20:  09 0b c0 5a   rev	w9, w24
0x187a6bf24:  1f 01 00 71   cmp	w8, #0
0x187a6bf28:  08 13 89 1a   csel	w8, w24, w9, ne
0x187a6bf2c:  68 a3 01 b8   stur	w8, [x27, #0x1a]
0x187a6bf30:  c1 32 00 91   add	x1, x22, #0xc
0x187a6bf34:  e0 03 13 aa   mov	x0, x19
0x187a6bf38:  af fd ff 97   bl	__ZN7GPSCopy15pointerToOffsetEm
0x187a6bf3c:  f5 03 00 aa   mov	x21, x0
0x187a6bf40:  e0 03 13 aa   mov	x0, x19
0x187a6bf44:  e1 03 15 aa   mov	x1, x21
0x187a6bf48:  e2 03 14 aa   mov	x2, x20
0x187a6bf4c:  92 fd ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6bf50:  b6 02 14 8b   add	x22, x21, x20
0x187a6bf54:  68 12 40 f9   ldr	x8, [x19, #0x20]
0x187a6bf58:  69 1a 40 f9   ldr	x9, [x19, #0x30]
0x187a6bf5c:  0a 01 09 8b   add	x10, x8, x9
0x187a6bf60:  57 01 15 cb   sub	x23, x10, x21
0x187a6bf64:  e0 03 13 aa   mov	x0, x19
0x187a6bf68:  e1 03 16 aa   mov	x1, x22
0x187a6bf6c:  e2 03 17 aa   mov	x2, x23
0x187a6bf70:  89 fd ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6bf74:  e0 03 16 aa   mov	x0, x22
0x187a6bf78:  e1 03 15 aa   mov	x1, x21
0x187a6bf7c:  e2 03 17 aa   mov	x2, x23
0x187a6bf80:  58 31 1b 94   bl	j___platform_memmove
0x187a6bf84:  62 22 40 f9   ldr	x2, [x19, #0x40]
0x187a6bf88:  e0 03 13 aa   mov	x0, x19
0x187a6bf8c:  e1 03 15 aa   mov	x1, x21
0x187a6bf90:  81 fd ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6bf94:  61 8a 43 a9   ldp	x1, x2, [x19, #0x38]
0x187a6bf98:  e0 03 15 aa   mov	x0, x21
0x187a6bf9c:  4d 31 1b 94   bl	j___platform_memmove
0x187a6bfa0:  68 1a 40 f9   ldr	x8, [x19, #0x30]
0x187a6bfa4:  08 01 14 8b   add	x8, x8, x20
0x187a6bfa8:  68 1a 00 f9   str	x8, [x19, #0x30]
0x187a6bfac:  01 33 00 91   add	x1, x24, #0xc
0x187a6bfb0:  e0 03 13 aa   mov	x0, x19
0x187a6bfb4:  90 fd ff 97   bl	__ZN7GPSCopy15pointerToOffsetEm
0x187a6bfb8:  f5 03 00 aa   mov	x21, x0
0x187a6bfbc:  e0 03 13 aa   mov	x0, x19
0x187a6bfc0:  e1 03 15 aa   mov	x1, x21
0x187a6bfc4:  42 00 80 52   mov	w2, #0x2
0x187a6bfc8:  7f fd ff 97   bl	__ZN7GPSCopy22checkInitializedLengthEPhm
0x187a6bfcc:  68 62 40 39   ldrb	w8, [x19, #0x18]
0x187a6bfd0:  f6 03 15 aa   mov	x22, x21
0x187a6bfd4:  c9 26 40 78   ldrh	w9, [x22], #0x2
0x187a6bfd8:  2a 09 c0 5a   rev	w10, w9
0x187a6bfdc:  4a 7d 10 53   lsr	w10, w10, #0x10
0x187a6bfe0:  1f 01 00 71   cmp	w8, #0
0x187a6bfe4:  37 11 8a 1a   csel	w23, w9, w10, ne
0x187a6bfe8:  e0 03 13 aa   mov	x0, x19
0x187a6bfec:  e1 03 15 aa   mov	x1, x21
0x187a6bff0:  42 00 80 52   mov	w2, #0x2
0x187a6bff4:  68 fd ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6bff8:  e8 3e 40 92   and	x8, x23, #0xffff
0x187a6bffc:  08 f9 7f d3   lsl	x8, x8, #0x1
0x187a6c000:  08 21 37 8b   add	x8, x8, w23, uxth
0x187a6c004:  02 f5 7e d3   lsl	x2, x8, #0x2
0x187a6c008:  e0 03 13 aa   mov	x0, x19
0x187a6c00c:  e1 03 16 aa   mov	x1, x22
0x187a6c010:  6d fd ff 97   bl	__ZN7GPSCopy22checkInitializedLengthEPhm
0x187a6c014:  94 32 00 11   add	w20, w20, #0xc
0x187a6c018:  e2 3e 00 12   and	w2, w23, #0xffff
0x187a6c01c:  e0 03 13 aa   mov	x0, x19
0x187a6c020:  e1 03 16 aa   mov	x1, x22
0x187a6c024:  e3 03 14 aa   mov	x3, x20
0x187a6c028:  8c fd ff 97   bl	__ZN7GPSCopy16adjustIFDOffsetsEP7IFDDataii
0x187a6c02c:  e0 03 13 aa   mov	x0, x19
0x187a6c030:  81 00 80 52   mov	w1, #0x4
0x187a6c034:  70 fd ff 97   bl	__ZN7GPSCopy15pointerToOffsetEm
0x187a6c038:  f5 03 00 aa   mov	x21, x0
0x187a6c03c:  e0 03 13 aa   mov	x0, x19
0x187a6c040:  e1 03 15 aa   mov	x1, x21
0x187a6c044:  42 00 80 52   mov	w2, #0x2
0x187a6c048:  53 fd ff 97   bl	__ZN7GPSCopy13checkCapacityEPhm
0x187a6c04c:  e8 07 40 b9   ldr	w8, [sp, #0x4]
0x187a6c050:  88 02 08 0b   add	w8, w20, w8
0x187a6c054:  08 09 c0 5a   rev	w8, w8
0x187a6c058:  08 7d 10 53   lsr	w8, w8, #0x10
0x187a6c05c:  a8 02 00 79   strh	w8, [x21]
0x187a6c060:  ; loc_187a6c060
0x187a6c060:  20 00 80 52   mov	w0, #0x1
0x187a6c064:  e1 fe ff 17   b	loc_187a6bbe8 ; ⤴ -0x47c
0x187a6c068:  ; loc_187a6c068
0x187a6c068:  77 14 0a 94   bl	__ZN7GPSCopy11processDataEv.cold.3
0x187a6c06c:  de fe ff 17   b	loc_187a6bbe4 ; ⤴ -0x488
0x187a6c070:  ; loc_187a6c070
0x187a6c070:  6c 14 0a 94   bl	__ZN7GPSCopy13checkCapacityEPhm.cold.1
0x187a6c074:  ; loc_187a6c074
0x187a6c074:  6b 14 0a 94   bl	__ZN7GPSCopy13checkCapacityEPhm.cold.1

