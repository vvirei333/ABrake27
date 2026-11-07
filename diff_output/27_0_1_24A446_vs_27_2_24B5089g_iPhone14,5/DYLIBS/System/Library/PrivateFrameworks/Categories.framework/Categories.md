## Categories

> `/System/Library/PrivateFrameworks/Categories.framework/Categories`

```diff

-58.0.1.0.0
-  __TEXT.__text: 0xb798
-  __TEXT.__objc_methlist: 0x82c
-  __TEXT.__const: 0xb0
-  __TEXT.__gcc_except_tab: 0x41c
-  __TEXT.__cstring: 0x2e04
-  __TEXT.__oslogstring: 0x676
+58.1.4.0.0
+  __TEXT.__text: 0xb364
+  __TEXT.__objc_methlist: 0x84c
+  __TEXT.__const: 0xb8
+  __TEXT.__gcc_except_tab: 0x3e4
+  __TEXT.__cstring: 0x3004
+  __TEXT.__oslogstring: 0x6db
   __TEXT.__unwind_info: 0x3b0
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x6e8
+  __DATA_CONST.__const: 0x6c0
   __DATA_CONST.__objc_classlist: 0x40
   __DATA_CONST.__objc_protolist: 0x28
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x720
+  __DATA_CONST.__objc_selrefs: 0x738
   __DATA_CONST.__objc_protorefs: 0x8
   __DATA_CONST.__objc_superrefs: 0x28
-  __DATA_CONST.__objc_arraydata: 0xab8
+  __DATA_CONST.__objc_arraydata: 0xb80
   __DATA_CONST.__got: 0x100
-  __AUTH_CONST.__const: 0x140
-  __AUTH_CONST.__cfstring: 0x3780
+  __AUTH_CONST.__const: 0x160
+  __AUTH_CONST.__cfstring: 0x38e0
   __AUTH_CONST.__objc_const: 0xca0
-  __AUTH_CONST.__objc_arrayobj: 0x990
+  __AUTH_CONST.__objc_intobj: 0xa8
+  __AUTH_CONST.__objc_arrayobj: 0x9f0
   __AUTH_CONST.__objc_dictobj: 0x50
   __AUTH_CONST.__auth_got: 0x0
-  __AUTH.__objc_data: 0x50
   __DATA.__objc_ivar: 0x50
   __DATA.__data: 0x1e8
-  __DATA.__bss: 0x60
-  __DATA_DIRTY.__objc_data: 0x230
+  __DATA.__bss: 0x70
+  __DATA_DIRTY.__objc_data: 0x280
   __DATA_DIRTY.__bss: 0x98
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/Foundation.framework/Foundation

   - /usr/lib/libMobileGestalt.dylib
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 221
+  Functions: 222
   Symbols:   526
-  CStrings:  508
+  CStrings:  522
 
Symbols:
+ +[CTCategory _equivalentBundleIDForDestinationScheme:fromBundleID:sourceScheme:]
+ +[CTCategory bundleIDForDeviceFamily:fromBundleID:fromDeviceFamily:]
+ +[CTCategory currentDeviceFamily]
+ +[CTCategory deviceFamilyForPlatform:]
+ +[CTCategory schemeStringForDeviceFamily:]
+ -[CTCategories bundleIDForDeviceFamily:fromBundleID:fromDeviceFamily:]
+ GCC_except_table22
+ GCC_except_table26
+ GCC_except_table35
+ GCC_except_table41
+ GCC_except_table43
+ GCC_except_table69
+ GCC_except_table94
+ _OBJC_CLASS_$_NSConstantIntegerNumber
+ ___33+[CTCategory currentDeviceFamily]_block_invoke
+ ___80+[CTCategory _equivalentBundleIDForDestinationScheme:fromBundleID:sourceScheme:]_block_invoke
+ _currentDeviceFamily.deviceFamily
+ _currentDeviceFamily.onceToken
+ _objc_retain_x4
- +[CTCategories currentIOSDevice]
- +[CTCategory itemWith:platform:array:]
- +[CTCategory schemeStringForPlatform:]
- GCC_except_table21
- GCC_except_table24
- GCC_except_table32
- GCC_except_table36
- GCC_except_table40
- GCC_except_table42
- GCC_except_table66
- GCC_except_table78
- GCC_except_table95
- ___38+[CTCategory itemWith:platform:array:]_block_invoke
- ___38+[CTCategory itemWith:platform:array:]_block_invoke_2
- ___38+[CTCategory itemWith:platform:array:]_block_invoke_3
- ___38+[CTCategory itemWith:platform:array:]_block_invoke_4
- ___38+[CTCategory itemWith:platform:array:]_block_invoke_5
- ___56+[CTCategory bundleIDForPlatform:fromBundleID:platform:]_block_invoke
- ___block_descriptor_40_e8_32r_e25_v32?0"NSString"8Q16^B24lr32l8
CStrings:
+ "%s: no scheme for device family (source %ld, destination %ld); one of them is outside CTDeviceFamily"
+ "+[CTCategory bundleIDForDeviceFamily:fromBundleID:fromDeviceFamily:]"
+ "com.apple.EmojiPoster"
+ "com.apple.GradientPoster"
+ "com.apple.PridePoster"
+ "ios://com.apple.TVRemoteApp"
+ "ios://com.apple.TapToRadar"
+ "ios://com.apple.Translate"
+ "ios://com.apple.compass"
+ "q"
+ "tvos://com.apple.Fitness"
+ "tvos://com.apple.TVAppStore"
+ "tvos://com.apple.TVMusic"
+ "tvos://com.apple.TVPhotos"
+ "tvos://com.apple.TVSettings"
+ "tvos://com.apple.TVWatchList"
+ "tvos://com.apple.facetime"
+ "tvos://com.apple.podcasts"
+ "watchos://com.apple.NanoCompass.watchkitapp"
+ "watchos://com.apple.NanoNotes"
+ "watchos://com.apple.NanoTapToRadar"
+ "watchos://com.apple.NanoTranslate"
- "iPhone"
- "ios://"
- "ios://com.apple.TVRemote"
- "iosmac://"
- "macos://"
- "tvos://"
- "visionos://"
- "watchos://"
```
