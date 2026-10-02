## com.apple.sbd

> `/System/Library/PrivateFrameworks/CloudServices.framework/Helpers/com.apple.sbd`

### Sections with Same Size but Changed Content

- `__TEXT.__objc_methlist`
- `__TEXT.__const`
- `__TEXT.__gcc_except_tab`
- `__TEXT.__unwind_info`
- `__DATA_CONST.__const`
- `__DATA_CONST.__cfstring`
- `__DATA_CONST.__objc_intobj`
- `__DATA_CONST.__auth_ptr`
- `__DATA.__objc_const`
- `__DATA.__objc_selrefs`
- `__DATA.__objc_data`
- `__DATA.__data`

```diff

-747.0.6.0.0
-  __TEXT.__text: 0x4ef90
+747.40.9.0.0
+  __TEXT.__text: 0x4f028
   __TEXT.__auth_stubs: 0x1000
   __TEXT.__objc_stubs: 0x7080
   __TEXT.__objc_methlist: 0x30b8
   __TEXT.__const: 0x150
   __TEXT.__gcc_except_tab: 0x1adc
-  __TEXT.__cstring: 0x43ff
+  __TEXT.__cstring: 0x43fb
   __TEXT.__objc_methname: 0x7bf4
-  __TEXT.__oslogstring: 0x836f
+  __TEXT.__oslogstring: 0x836b
   __TEXT.__objc_classname: 0x757
   __TEXT.__objc_methtype: 0x1176
-  __TEXT.__info_plist: 0x663
+  __TEXT.__info_plist: 0x66e
   __TEXT.__unwind_info: 0xcf8
   __DATA_CONST.__const: 0x1560
   __DATA_CONST.__cfstring: 0x3d40

   __DATA_CONST.__objc_intobj: 0xf0
   __DATA_CONST.__objc_dictobj: 0x28
   __DATA_CONST.__auth_got: 0x810
-  __DATA_CONST.__got: 0x7c0
+  __DATA_CONST.__got: 0x7c8
   __DATA_CONST.__auth_ptr: 0x8
   __DATA.__objc_const: 0x5470
   __DATA.__objc_selrefs: 0x2028

   - /usr/lib/libobjc.A.dylib
   - /usr/lib/libsqlite3.dylib
   Functions: 1420
-  Symbols:   510
+  Symbols:   511
   CStrings:  2878
 
Symbols:
+ _kSecureBackupKeybagBlobSHA256Key
Functions:
~ sub_100015498 : 444 -> 396
~ sub_10003d3c0 -> sub_10003d390 : 1812 -> 2020
~ sub_10004cbac -> sub_10004cc4c : 60 -> 52
CStrings:
+ "attempt to enable backup with non-decimal digits in SMS target"
- "attempt to enable backup with non-decimal digits in SMS target: %@"
```
