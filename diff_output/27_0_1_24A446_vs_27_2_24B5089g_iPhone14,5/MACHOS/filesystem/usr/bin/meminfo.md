## meminfo

> `/usr/bin/meminfo`

### Sections with Same Size but Changed Content

- `__TEXT.__const`
- `__TEXT.__swift5_entry`
- `__TEXT.__swift5_typeref`
- `__TEXT.__constg_swiftt`
- `__TEXT.__cstring`
- `__TEXT.__eh_frame`
- `__DATA_CONST.__const`
- `__DATA_CONST.__got`
- `__DATA_CONST.__auth_ptr`
- `__DATA.__objc_selrefs`
- `__DATA.__data`

```diff

-1071.0.1.0.0
-  __TEXT.__text: 0x137b4
-  __TEXT.__auth_stubs: 0xb00
+1071.40.9.0.0
+  __TEXT.__text: 0x138f0
+  __TEXT.__auth_stubs: 0xb10
   __TEXT.__objc_stubs: 0x100
   __TEXT.__const: 0x9b4
   __TEXT.__swift5_entry: 0x8

   __TEXT.__swift5_types: 0x38
   __TEXT.__swift5_protos: 0x4
   __TEXT.__objc_methname: 0x98
-  __TEXT.__unwind_info: 0x3b8
+  __TEXT.__unwind_info: 0x3c0
   __TEXT.__eh_frame: 0x4d0
   __DATA_CONST.__const: 0x8b8
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__auth_got: 0x588
+  __DATA_CONST.__auth_got: 0x590
   __DATA_CONST.__got: 0x1a8
   __DATA_CONST.__auth_ptr: 0x1b8
   __DATA.__objc_selrefs: 0x40

   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswift_DarwinFoundation2.dylib
   Functions: 351
-  Symbols:   290
+  Symbols:   291
   CStrings:  58
 
Symbols:
+ _host_info
Functions:
~ sub_1000016cc : 3160 -> 3376
~ sub_100005e98 -> sub_100005f70 : 3516 -> 3588
~ sub_100010330 -> sub_100010450 : 1000 -> 1016
~ sub_100011078 -> sub_1000111a8 : 1272 -> 1284
CStrings:
+ " requires root to expand zones; showing aggregate zone total\n"
- "meminfo: --zones requires root; showing aggregate zone total\n"
```
