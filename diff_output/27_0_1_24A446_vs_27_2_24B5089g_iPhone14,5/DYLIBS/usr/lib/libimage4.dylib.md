## libimage4.dylib

> `/usr/lib/libimage4.dylib`

### Sections with Same Size but Changed Content

- `__TEXT.__cstring`

```diff

 374.0.0.0.0
-  __TEXT.__text: 0x2bc28
-  __TEXT.__const: 0x1f4d0
+  __TEXT.__text: 0x2bc38
+  __TEXT.__const: 0x1f4e0
   __TEXT.__cstring: 0x697c
   __TEXT.__oslogstring: 0x7e
-  __TEXT.__info_plist: 0x4df
+  __TEXT.__info_plist: 0x4e7
   __TEXT.__unwind_info: 0xa10
   __TEXT.__auth_stubs: 0x0
-  __DATA_CONST.__const: 0x9fd8
+  __DATA_CONST.__const: 0x9fe8
   __DATA_CONST.__image4_chp: 0x150
   __DATA_CONST.__image4_coproc: 0x48
   __DATA_CONST.__got: 0x0
   __AUTH_CONST.__const: 0x75e0
   __AUTH_CONST.__auth_got: 0x3b8
   __AUTH_CONST.__auth_ptr: 0x0
-  __AUTH.__data: 0x120
-  __DATA.__data: 0xb8
   __DATA.__bss: 0x18
   __DATA.__common: 0x8
-  __DATA_DIRTY.__data: 0x3b8
+  __DATA_DIRTY.__data: 0x590
   __DATA_DIRTY.__bss: 0xd8
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/IOKit.framework/Versions/A/IOKit
   - /usr/lib/libImage4_V2.dylib
   - /usr/lib/libSystem.B.dylib
   Functions: 1145
-  Symbols:   2702
+  Symbols:   2704
   CStrings:  869
 
Symbols:
+ __oidAppleExtendedKeyUsageSWUpdateSigning
+ _oidAppleExtendedKeyUsageSWUpdateSigning
Functions:
~ _X509ExtensionParseBasicConstraints : 208 -> 212
~ _X509ChainBuildPathPartial : 488 -> 500
CStrings:
+ "@(#)VERSION:Darwin Image4 Library Version 7.0.0: Sun Sep 13 19:56:21 PDT 2026; root:AppleImage4_libraries-374~8937/libimage4/RELEASE_ARM64E"
+ "Darwin Image4 Library Version 7.0.0: Sun Sep 13 19:56:21 PDT 2026; root:AppleImage4_libraries-374~8937/libimage4/RELEASE_ARM64E"
- "@(#)VERSION:Darwin Image4 Library Version 7.0.0: Sat Aug  8 14:20:02 PDT 2026; root:AppleImage4_libraries-374~7701/libimage4/RELEASE_ARM64E"
- "Darwin Image4 Library Version 7.0.0: Sat Aug  8 14:20:02 PDT 2026; root:AppleImage4_libraries-374~7701/libimage4/RELEASE_ARM64E"
```
