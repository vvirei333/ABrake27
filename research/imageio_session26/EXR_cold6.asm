
__ZN13EXRReadPlugin19decodeBlockAppleEXREPvm.cold.6:
0x187cf6be4:  7f 23 03 d5   pacibsp
0x187cf6be8:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x187cf6bec:  fd 03 00 91   mov	fp, sp
0x187cf6bf0:  c1 35 ed 97   bl	_OUTLINED_FUNCTION_2
0x187cf6bf4:  22 08 00 90   adrp	x2, 0x187dfa000
0x187cf6bf8:  42 24 33 91   add	x2, x2, #0xcc9 ; "*** axr_decoder_create failed\n"
0x187cf6bfc:  21 38 80 52   mov	w1, #0x1c1
0x187cf6c00:  17 6d ed 97   bl	__Z8LogErrorPKciS0_z
0x187cf6c04:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x187cf6c08:  ff 0f 5f d6   retab

