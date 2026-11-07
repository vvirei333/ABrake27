## FedStatsPluginDynamic

> `/System/Library/ExtensionKit/Extensions/FedStatsPluginDynamic.appex/FedStatsPluginDynamic`

### Sections with Same Size but Changed Content

- `__TEXT.__const`
- `__TEXT.__swift5_typeref`
- `__TEXT.__unwind_info`

```diff

-42.0.0.0.0
+46.0.0.0.0
   __TEXT.__text: 0x5e4
   __TEXT.__auth_stubs: 0xd0
   __TEXT.__const: 0x10a

   __TEXT.__swift_as_ret: 0xc
   __TEXT.__unwind_info: 0xa0
   __TEXT.__eh_frame: 0x98
-  __DATA_CONST.__const: 0xe8
+  __DATA_CONST.__const: 0xf8
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__auth_got: 0x68
   __DATA_CONST.__got: 0x20

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
   Functions: 15
-  Symbols:   36
+  Symbols:   38
   CStrings:  1
 
Symbols:
+ __swift_FORCE_LOAD_$_swiftMetalKit
+ __swift_FORCE_LOAD_$_swiftModelIO
```
