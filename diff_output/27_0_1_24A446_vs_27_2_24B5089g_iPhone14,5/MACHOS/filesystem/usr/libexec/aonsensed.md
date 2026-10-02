## aonsensed

> `/usr/libexec/aonsensed`

### Sections with Same Size but Changed Content

- `__TEXT.__objc_methlist`
- `__TEXT.__const`
- `__TEXT.__swift5_typeref`
- `__TEXT.__swift5_assocty`
- `__TEXT.__swift5_entry`
- `__TEXT.__constg_swiftt`
- `__TEXT.__swift5_protos`
- `__TEXT.__swift5_proto`
- `__TEXT.__swift5_types`
- `__TEXT.__swift_as_entry`
- `__TEXT.__swift_as_ret`
- `__TEXT.__swift_as_cont`
- `__TEXT.__swift5_builtin`
- `__TEXT.__swift5_mpenum`
- `__TEXT.__eh_frame`
- `__DATA_CONST.__const`
- `__DATA_CONST.__cfstring`
- `__DATA_CONST.__objc_classlist`
- `__DATA_CONST.__objc_protolist`
- `__DATA_CONST.__objc_protorefs`
- `__DATA_CONST.__auth_ptr`
- `__DATA.__objc_const`
- `__DATA.__objc_data`

```diff

-118.0.2.0.0
-  __TEXT.__text: 0x407b44
-  __TEXT.__auth_stubs: 0x3370
-  __TEXT.__objc_stubs: 0xf40
+131.0.0.0.0
+  __TEXT.__text: 0x407f7c
+  __TEXT.__auth_stubs: 0x33b0
+  __TEXT.__objc_stubs: 0xf80
   __TEXT.__objc_methlist: 0x45c
   __TEXT.__const: 0x371e0
   __TEXT.__swift5_typeref: 0x8242
   __TEXT.__swift5_capture: 0x5b0
-  __TEXT.__cstring: 0x152ee
-  __TEXT.__oslogstring: 0x317a
-  __TEXT.__swift5_reflstr: 0xd689
+  __TEXT.__cstring: 0x1529e
+  __TEXT.__oslogstring: 0x31da
+  __TEXT.__swift5_reflstr: 0xd6a9
   __TEXT.__swift5_assocty: 0x1dd8
   __TEXT.__swift5_entry: 0x8
-  __TEXT.__swift5_fieldmd: 0xd9c4
+  __TEXT.__swift5_fieldmd: 0xd9dc
   __TEXT.__constg_swiftt: 0xc4c8
   __TEXT.__objc_classname: 0x2267
-  __TEXT.__objc_methname: 0x5d4d
+  __TEXT.__objc_methname: 0x5d8d
   __TEXT.__swift5_protos: 0x2c
   __TEXT.__swift5_proto: 0x3160
   __TEXT.__swift5_types: 0xa64

   __TEXT.__swift5_builtin: 0xb4
   __TEXT.__swift5_mpenum: 0x10
   __TEXT.__gcc_except_tab: 0x260
-  __TEXT.__info_plist: 0x573
-  __TEXT.__unwind_info: 0x11998
+  __TEXT.__info_plist: 0x577
+  __TEXT.__unwind_info: 0x119b0
   __TEXT.__eh_frame: 0x1075c
   __DATA_CONST.__const: 0xc080
   __DATA_CONST.__cfstring: 0x20

   __DATA_CONST.__objc_protolist: 0xa8
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__objc_protorefs: 0x58
-  __DATA_CONST.__auth_got: 0x19c8
-  __DATA_CONST.__got: 0x878
+  __DATA_CONST.__auth_got: 0x19e8
+  __DATA_CONST.__got: 0x888
   __DATA_CONST.__auth_ptr: 0x1c48
   __DATA.__objc_const: 0xc298
-  __DATA.__objc_selrefs: 0x598
+  __DATA.__objc_selrefs: 0x5a8
   __DATA.__objc_data: 0x1948
-  __DATA.__data: 0x1ee18
+  __DATA.__data: 0x1ee38
   __DATA.__common: 0x3060
   __DATA.__bss: 0x668e8
   - /System/Library/Frameworks/AVFoundation.framework/AVFoundation

   - /usr/lib/swift/libswift_StringProcessing.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 27120
-  Symbols:   1280
-  CStrings:  4477
+  Functions: 27125
+  Symbols:   1286
+  CStrings:  4478
 
Symbols:
+ _$s11ALDataTypes17ALBtAdvertisementV10_colorCodes5UInt8VSgvs
+ _$s11ALDataTypes17ALBtAdvertisementV17accessoryCategorys5UInt8VSgvg
+ _$s11ALDataTypes17ALBtAdvertisementV18_accessoryCategorys5UInt8VSgvs
+ _$s11ALDataTypes17ALBtAdvertisementV9colorCodes5UInt8VSgvg
+ _$s11ALDataTypes31ProximityLaunchXPCDataEventKeysO17accessoryCategoryyA2CmFWC
+ _$s11ALDataTypes31ProximityLaunchXPCDataEventKeysO9colorCodeyA2CmFWC
CStrings:
+ "#WiFi,exceptionHandling,scan aborted"
+ "Fired XPC event with btuuid: %s for client: %llu productId: %s vendorId: %s subType: %s txPower: %d ppServiceData: %s pairingCapabilities:%llu colorCode:%s accessoryCategory:%s"
+ "proximityServiceAccessoryCategory"
+ "proximityServiceColorCode"
- ", BSSID or channel missing in scan "
- "Fired XPC event with btuuid: %s for client: %llu productId: %s vendorId: %s subType: %s txPower: %d ppServiceData: %s pairingCapabilities:%llu"
- "processResultArray(_:bg:)"
```
