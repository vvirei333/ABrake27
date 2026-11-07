## SIDInferenceProvider

> `/System/Library/ExtensionKit/Extensions/SIDInferenceProvider.appex/SIDInferenceProvider`

### Sections with Same Size but Changed Content

- `__TEXT.__objc_methlist`
- `__TEXT.__const`
- `__TEXT.__swift5_typeref`
- `__TEXT.__swift5_entry`
- `__TEXT.__constg_swiftt`
- `__TEXT.__swift_as_entry`
- `__TEXT.__swift_as_ret`
- `__TEXT.__swift_as_cont`
- `__TEXT.__unwind_info`
- `__TEXT.__eh_frame`
- `__DATA_CONST.__cfstring`
- `__DATA.__objc_const`
- `__DATA.__objc_selrefs`
- `__DATA.__objc_data`
- `__DATA.__data`

```diff

-1.77.0.0.0
-  __TEXT.__text: 0x147c0
+1.78.0.0.0
+  __TEXT.__text: 0x147c8
   __TEXT.__auth_stubs: 0x10e0
   __TEXT.__objc_stubs: 0x320
   __TEXT.__objc_methlist: 0x80

   __TEXT.__swift_as_cont: 0x68
   __TEXT.__unwind_info: 0x448
   __TEXT.__eh_frame: 0xab8
-  __DATA_CONST.__const: 0x2c0
+  __DATA_CONST.__const: 0x2c8
   __DATA_CONST.__cfstring: 0x3a0
   __DATA_CONST.__objc_classlist: 0x10
   __DATA_CONST.__objc_imageinfo: 0x8

   - /usr/lib/swift/libswiftCoreAudio.dylib
   - /usr/lib/swift/libswiftCoreFoundation.dylib
   - /usr/lib/swift/libswiftCoreLocation.dylib
+  - /usr/lib/swift/libswiftCoreMIDI.dylib
   - /usr/lib/swift/libswiftDispatch.dylib
   - /usr/lib/swift/libswiftIntents.dylib
   - /usr/lib/swift/libswiftMetal.dylib

   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
   Functions: 227
-  Symbols:   199
+  Symbols:   200
   CStrings:  134
 
Symbols:
+ __swift_FORCE_LOAD_$_swiftCoreMIDI
Functions:
~ sub_1000045c8 -> sub_100004610 : 792 -> 788
~ sub_100004afc -> sub_100004b40 : 124 -> 128
~ sub_100004d00 -> sub_100004d48 : 1152 -> 1148
~ sub_100005180 -> sub_1000051c4 : 288 -> 284
~ sub_100006778 -> sub_1000067b8 : 324 -> 328
~ sub_10000d794 -> sub_10000d7d8 : 176 -> 180
~ sub_100010fa0 -> sub_100010fe8 : 7888 -> 7896
```
