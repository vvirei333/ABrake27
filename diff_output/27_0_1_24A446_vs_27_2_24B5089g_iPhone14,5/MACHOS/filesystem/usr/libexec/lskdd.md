## lskdd

> `/usr/libexec/lskdd`

### Sections with Same Size but Changed Content

- `__TEXT.__objc_methlist`
- `__DATA_CONST.__cfstring`
- `__DATA_CONST.__objc_classlist`
- `__DATA_CONST.__objc_protolist`
- `__DATA_CONST.__objc_protorefs`
- `__DATA_CONST.__objc_superrefs`
- `__DATA_CONST.__objc_intobj`
- `__DATA_CONST.__got`
- `__DATA_CONST.__auth_ptr`
- `__DATA.__objc_const`
- `__DATA.__objc_selrefs`
- `__DATA.__objc_data`

```diff

 0.0.0.0.0
-  __TEXT.__text: 0x10bc304
-  __TEXT.__auth_stubs: 0x270
+  __TEXT.__text: 0x10ad50c
+  __TEXT.__auth_stubs: 0x280
   __TEXT.__objc_stubs: 0x600
   __TEXT.__objc_methlist: 0x100
   __TEXT.__cstring: 0x17a
-  __TEXT.__const: 0x3d3af0
+  __TEXT.__const: 0x3d3bb0
   __TEXT.__gcc_except_tab: 0xf0
   __TEXT.__objc_methname: 0x5b4
   __TEXT.__objc_classname: 0x31
   __TEXT.__objc_methtype: 0x18b
   __TEXT.__info_plist: 0x744
-  __TEXT.__unwind_info: 0xb48
-  __TEXT.__eh_frame: 0x1e8
-  __DATA_CONST.__const: 0x50d78
+  __TEXT.__unwind_info: 0xb20
+  __TEXT.__eh_frame: 0x1f0
+  __DATA_CONST.__const: 0x50588
   __DATA_CONST.__cfstring: 0x120
   __DATA_CONST.__objc_classlist: 0x8
   __DATA_CONST.__objc_protolist: 0x8

   __DATA_CONST.__objc_protorefs: 0x8
   __DATA_CONST.__objc_superrefs: 0x8
   __DATA_CONST.__objc_intobj: 0x18
-  __DATA_CONST.__auth_got: 0x148
+  __DATA_CONST.__auth_got: 0x150
   __DATA_CONST.__got: 0x88
   __DATA_CONST.__auth_ptr: 0x28
   __DATA.__objc_const: 0x160
   __DATA.__objc_selrefs: 0x1c0
   __DATA.__objc_ivar: 0xc
   __DATA.__objc_data: 0x50
-  __DATA.__data: 0x2a58
+  __DATA.__data: 0x2a48
   __DATA.__bss: 0x58
   __DATA.__common: 0x941b4
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation

   - /usr/lib/libbsm.0.dylib
   - /usr/lib/libobjc.A.dylib
   Functions: 436
-  Symbols:   205
+  Symbols:   206
   CStrings:  105
 
Symbols:
+ _objc_retain_x8
```
