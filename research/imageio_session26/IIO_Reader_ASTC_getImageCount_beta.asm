
__ZN15IIO_Reader_ASTC13getImageCountEP19IIOImageReadSessionP13IIODictionaryP19CGImageSourceStatusPj:
0x1878d5be0:  7f 23 03 d5   pacibsp
0x1878d5be4:  ff 43 01 d1   sub	sp, sp, #0x50
0x1878d5be8:  f8 5f 01 a9   stp	x24, x23, [sp, #0x10]
0x1878d5bec:  f6 57 02 a9   stp	x22, x21, [sp, #0x20]
0x1878d5bf0:  f4 4f 03 a9   stp	x20, x19, [sp, #0x30]
0x1878d5bf4:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x1878d5bf8:  fd 03 01 91   add	fp, sp, #0x40
0x1878d5bfc:  f3 03 04 aa   mov	x19, x4
0x1878d5c00:  f4 03 03 aa   mov	x20, x3
0x1878d5c04:  f5 03 02 aa   mov	x21, x2
0x1878d5c08:  f6 03 01 aa   mov	x22, x1
0x1878d5c0c:  f7 03 00 aa   mov	x23, x0
0x1878d5c10:  44 00 00 b4   cbz	x4, loc_1878d5c18 ; ⤵ 0x8
0x1878d5c14:  7f 02 00 b9   str	wzr, [x19]
0x1878d5c18:  ; loc_1878d5c18
0x1878d5c18:  ff 0f 00 b9   str	wzr, [sp, #0xc]
0x1878d5c1c:  e1 33 00 91   add	x1, sp, #0xc
0x1878d5c20:  e0 03 16 aa   mov	x0, x22
0x1878d5c24:  02 00 80 d2   mov	x2, #0
0x1878d5c28:  83 00 80 52   mov	w3, #0x4
0x1878d5c2c:  3a b8 fd 97   bl	__ZN19IIOImageReadSession16getBytesAtOffsetEPvmm
0x1878d5c30:  1f 10 00 f1   cmp	x0, #0x4
0x1878d5c34:  61 01 00 54   b.ne	loc_1878d5c60 ; ⤵ 0x2c
0x1878d5c38:  e8 0f 40 b9   ldr	w8, [sp, #0xc]
0x1878d5c3c:  69 62 95 52   mov	w9, #0xab13
0x1878d5c40:  29 94 ab 72   movk	w9, #0x5ca1, lsl #0x10
0x1878d5c44:  1f 01 09 6b   cmp	w8, w9
0x1878d5c48:  c1 00 00 54   b.ne	loc_1878d5c60 ; ⤵ 0x18
0x1878d5c4c:  73 01 00 b4   cbz	x19, loc_1878d5c78 ; ⤵ 0x2c
0x1878d5c50:  ; loc_1878d5c50
0x1878d5c50:  00 00 80 52   mov	w0, #0
0x1878d5c54:  28 00 80 52   mov	w8, #0x1
0x1878d5c58:  68 02 00 b9   str	w8, [x19]
0x1878d5c5c:  2a 00 00 14   b	loc_1878d5d04 ; ⤵ 0xa8
0x1878d5c60:  ; loc_1878d5c60
0x1878d5c60:  e8 1a 40 b9   ldr	w8, [x23, #0x18]
0x1878d5c64:  89 6a 8a 52   mov	w9, #0x5354
0x1878d5c68:  29 88 a8 72   movk	w9, #0x4441, lsl #0x10
0x1878d5c6c:  1f 01 09 6b   cmp	w8, w9
0x1878d5c70:  81 00 00 54   b.ne	loc_1878d5c80 ; ⤵ 0x10
0x1878d5c74:  f3 fe ff b5   cbnz	x19, loc_1878d5c50 ; ⤴ -0x24
0x1878d5c78:  ; loc_1878d5c78
0x1878d5c78:  00 00 80 52   mov	w0, #0
0x1878d5c7c:  22 00 00 14   b	loc_1878d5d04 ; ⤵ 0x88
0x1878d5c80:  ; loc_1878d5c80
0x1878d5c80:  e8 06 40 f9   ldr	x8, [x23, #0x8]
0x1878d5c84:  49 73 2c 90   adrp	x9, 0x1e073d000
0x1878d5c88:  29 a1 18 91   add	x9, x9, #0x628 ; _kCGImageTypeIdentifierKTX
0x1878d5c8c:  1f 01 09 eb   cmp	x8, x9
0x1878d5c90:  60 01 00 54   b.eq	loc_1878d5cbc ; ⤵ 0x2c
0x1878d5c94:  49 73 2c 90   adrp	x9, 0x1e073d000
0x1878d5c98:  29 c1 18 91   add	x9, x9, #0x630 ; _kCGImageTypeIdentifierKTX2
0x1878d5c9c:  1f 01 09 eb   cmp	x8, x9
0x1878d5ca0:  01 03 00 54   b.ne	loc_1878d5d00 ; ⤵ 0x60
0x1878d5ca4:  16 a2 fc 97   bl	__ZN17IIO_ReaderHandler16GetReaderHandlerEv
0x1878d5ca8:  48 02 80 52   mov	w8, #0x12
0x1878d5cac:  09 04 8b 52   mov	w9, #0x5820
0x1878d5cb0:  89 6a a9 72   movk	w9, #0x4b54, lsl #0x10
0x1878d5cb4:  21 01 08 2a   orr	w1, w9, w8
0x1878d5cb8:  04 00 00 14   b	loc_1878d5cc8 ; ⤵ 0x10
0x1878d5cbc:  ; loc_1878d5cbc
0x1878d5cbc:  10 a2 fc 97   bl	__ZN17IIO_ReaderHandler16GetReaderHandlerEv
0x1878d5cc0:  01 04 8b 52   mov	w1, #0x5820
0x1878d5cc4:  81 6a a9 72   movk	w1, #0x4b54, lsl #0x10
0x1878d5cc8:  ; loc_1878d5cc8
0x1878d5cc8:  aa b6 fc 97   bl	__ZN17IIO_ReaderHandler13readerForTypeEj
0x1878d5ccc:  a0 01 00 b4   cbz	x0, loc_1878d5d00 ; ⤵ 0x34
0x1878d5cd0:  10 00 40 f9   ldr	x16, [x0]
0x1878d5cd4:  f1 03 00 aa   mov	x17, x0
0x1878d5cd8:  51 40 f6 f2   movk	x17, #0xb202, lsl #0x30
0x1878d5cdc:  30 1a c1 da   autda	x16, x17
0x1878d5ce0:  08 0e 42 f8   ldr	x8, [x16, #0x20]!
0x1878d5ce4:  e1 03 16 aa   mov	x1, x22
0x1878d5ce8:  e2 03 15 aa   mov	x2, x21
0x1878d5cec:  e3 03 14 aa   mov	x3, x20
0x1878d5cf0:  e4 03 13 aa   mov	x4, x19
0x1878d5cf4:  90 60 fe f2   movk	x16, #0xf304, lsl #0x30
0x1878d5cf8:  10 09 3f d7   blraa	x8, x16
0x1878d5cfc:  02 00 00 14   b	loc_1878d5d04 ; ⤵ 0x8
0x1878d5d00:  ; loc_1878d5d00
0x1878d5d00:  20 06 80 12   mov	w0, #0xffffffce
0x1878d5d04:  ; loc_1878d5d04
0x1878d5d04:  fd 7b 44 a9   ldp	fp, lr, [sp, #0x40]
0x1878d5d08:  f4 4f 43 a9   ldp	x20, x19, [sp, #0x30]
0x1878d5d0c:  f6 57 42 a9   ldp	x22, x21, [sp, #0x20]
0x1878d5d10:  f8 5f 41 a9   ldp	x24, x23, [sp, #0x10]
0x1878d5d14:  ff 43 01 91   add	sp, sp, #0x50
0x1878d5d18:  ff 0f 5f d6   retab

