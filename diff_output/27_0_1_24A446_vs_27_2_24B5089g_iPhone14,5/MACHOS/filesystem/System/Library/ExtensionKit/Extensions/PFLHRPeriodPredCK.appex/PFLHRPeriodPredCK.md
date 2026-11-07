## PFLHRPeriodPredCK

> `/System/Library/ExtensionKit/Extensions/PFLHRPeriodPredCK.appex/PFLHRPeriodPredCK`

### Sections with Same Size but Changed Content

- `__TEXT.__const`
- `__TEXT.__swift5_typeref`
- `__TEXT.__unwind_info`

```diff

-42.0.0.0.0
+46.0.0.0.0
   __TEXT.__text: 0x1378
   __TEXT.__auth_stubs: 0x2b0
   __TEXT.__const: 0x172

   __TEXT.__swift_as_cont: 0xc
   __TEXT.__unwind_info: 0xc0
   __TEXT.__eh_frame: 0xe0
-  __DATA_CONST.__const: 0xe8
+  __DATA_CONST.__const: 0xf8
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__auth_got: 0x158
   __DATA_CONST.__got: 0x58

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
   Functions: 27
-  Symbols:   45
+  Symbols:   47
   CStrings:  1
 
Symbols:
+ __swift_FORCE_LOAD_$_swiftMetalKit
+ __swift_FORCE_LOAD_$_swiftModelIO
```
