## AVCPlugin

> `/System/Library/ExtensionKit/Extensions/AVCPlugin.appex/AVCPlugin`

### Sections with Same Size but Changed Content

- `__TEXT.__const`
- `__TEXT.__constg_swiftt`
- `__TEXT.__swift5_typeref`
- `__TEXT.__swift_as_entry`
- `__TEXT.__swift_as_ret`
- `__TEXT.__swift_as_cont`
- `__TEXT.__swift5_entry`
- `__TEXT.__unwind_info`
- `__TEXT.__eh_frame`
- `__DATA_CONST.__auth_ptr`
- `__DATA.__objc_const`
- `__DATA.__objc_selrefs`
- `__DATA.__objc_data`
- `__DATA.__data`

```diff

-42.0.0.0.0
-  __TEXT.__text: 0x1565c
-  __TEXT.__auth_stubs: 0x1170
+46.0.0.0.0
+  __TEXT.__text: 0x1572c
+  __TEXT.__auth_stubs: 0x1190
   __TEXT.__objc_stubs: 0x1e0
   __TEXT.__const: 0xe28
   __TEXT.__objc_classname: 0x41

   __TEXT.__swift5_entry: 0x8
   __TEXT.__unwind_info: 0x608
   __TEXT.__eh_frame: 0xee0
-  __DATA_CONST.__const: 0x9b8
+  __DATA_CONST.__const: 0x9c8
   __DATA_CONST.__objc_classlist: 0x10
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__auth_got: 0x8c0
-  __DATA_CONST.__got: 0x248
+  __DATA_CONST.__auth_got: 0x8d0
+  __DATA_CONST.__got: 0x250
   __DATA_CONST.__auth_ptr: 0x310
   __DATA.__objc_const: 0x168
   __DATA.__objc_selrefs: 0x78

   - /usr/lib/swift/libswiftIntents.dylib
   - /usr/lib/swift/libswiftMLCompute.dylib
   - /usr/lib/swift/libswiftMetal.dylib
+  - /usr/lib/swift/libswiftMetalKit.dylib
+  - /usr/lib/swift/libswiftModelIO.dylib
   - /usr/lib/swift/libswiftNaturalLanguage.dylib
   - /usr/lib/swift/libswiftOSLog.dylib
   - /usr/lib/swift/libswiftObjectiveC.dylib

   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
   Functions: 394
-  Symbols:   147
+  Symbols:   150
   CStrings:  50
 
Symbols:
+ __swift_FORCE_LOAD_$_swiftMetalKit
+ __swift_FORCE_LOAD_$_swiftModelIO
+ _swift_retain_x27
Functions:
~ sub_100013040 -> sub_1000130d0 : 424 -> 516
~ sub_1000131e8 -> sub_1000132d4 : 1328 -> 1432
~ sub_1000137fc -> sub_100013950 : 240 -> 252
```
