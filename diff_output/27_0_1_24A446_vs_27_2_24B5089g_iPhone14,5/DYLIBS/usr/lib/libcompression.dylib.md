## libcompression.dylib

> `/usr/lib/libcompression.dylib`

```diff

-212.0.1.0.0
-  __TEXT.__text: 0x64e0c
-  __TEXT.__const: 0x76e91
+212.40.2.0.0
+  __TEXT.__text: 0x64688
+  __TEXT.__const: 0x76ec1
   __TEXT.__cstring: 0x2ec
   __TEXT.__unwind_info: 0x710
   __TEXT.__eh_frame: 0x450

   __DATA.__common: 0x1200
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/liblzma.5.dylib
-  Functions: 547
-  Symbols:   719
+  Functions: 548
+  Symbols:   720
   CStrings:  49
 
Symbols:
+ _getDecoderTable
Functions:
~ _lzvnDecode : 1136 -> 1132
~ _lzfseDecode : 5032 -> 5040
~ _zlibDecodeBufferSafe : 2596 -> 1824
~ _zlibDecodeBuffer : 2352 -> 1580
~ _readHuffmanTable : 2052 -> 1036
~ _zlib_stream_get_encode_state_size : 52 -> 48
~ _lzbitmap_decode : 2224 -> 2372
~ _lzbitmap_decode_buffer : 52 -> 60
+ _getDecoderTable
~ _msh_decode_buffer : 3660 -> 3760
~ _lz24_decode_buffer : 696 -> 712
~ _smb_lznt1_decode_buffer : 524 -> 516
~ _lzfse_decode_buffer_output_size : 504 -> 500
~ _lzfse_decode_buffer_iboot : 2956 -> 2968
~ _lzfse_decode_lzvn_block_iboot : 460 -> 456
~ _smb_lz77h_decode_buffer : 1308 -> 1300
~ _lzbitmap_fast_decode : 1528 -> 1376
~ _lzbitmap_fast_decode_buffer : 52 -> 60
~ _smb_lz77_decode_buffer : 476 -> 468
~ _lzx_decode_buffer : 2292 -> 2300
~ _lzma_stream_end : 56 -> 60
```
