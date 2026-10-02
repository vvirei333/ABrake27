## ptpd

> `/usr/libexec/ptpd`

### Sections with Same Size but Changed Content

- `__TEXT.__objc_methlist`
- `__TEXT.__gcc_except_tab`
- `__TEXT.__unwind_info`
- `__DATA_CONST.__const`
- `__DATA_CONST.__cfstring`
- `__DATA_CONST.__objc_intobj`
- `__DATA.__objc_const`
- `__DATA.__objc_selrefs`
- `__DATA.__data`

```diff

-2118.0.0.0.0
-  __TEXT.__text: 0x22918
+2118.1.0.0.0
+  __TEXT.__text: 0x22874
   __TEXT.__auth_stubs: 0xa10
   __TEXT.__objc_stubs: 0x41c0
   __TEXT.__objc_methlist: 0x1a80

   __TEXT.__ustring: 0xc32
   __TEXT.__objc_classname: 0xef
   __TEXT.__objc_methtype: 0x8a3
-  __TEXT.__info_plist: 0x52e
+  __TEXT.__info_plist: 0x531
   __TEXT.__unwind_info: 0x5d0
   __DATA_CONST.__const: 0x408
   __DATA_CONST.__cfstring: 0x3260

   - /usr/lib/libSystem.B.dylib
   - /usr/lib/liblockdown.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 616
+  Functions: 615
   Symbols:   240
   CStrings:  1589
 
Functions:
~ sub_100017bf8 : 300 -> 236
- sub_100017d24
```
