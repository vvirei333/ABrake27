## DiagnosticExtensionsDaemon

> `/System/Library/PrivateFrameworks/DiagnosticExtensionsDaemon.framework/DiagnosticExtensionsDaemon`

```diff

-222.0.0.0.0
-  __TEXT.__text: 0x75d10
-  __TEXT.__objc_methlist: 0x700c
+224.0.0.0.0
+  __TEXT.__text: 0x75f8c
+  __TEXT.__objc_methlist: 0x7054
   __TEXT.__const: 0x362
-  __TEXT.__cstring: 0x5700
+  __TEXT.__cstring: 0x56f0
   __TEXT.__gcc_except_tab: 0x1ac0
-  __TEXT.__oslogstring: 0x9828
+  __TEXT.__oslogstring: 0x9908
   __TEXT.__ustring: 0xc
   __TEXT.__constg_swiftt: 0x8c
   __TEXT.__swift5_typeref: 0x48

   __TEXT.__swift5_reflstr: 0x80
   __TEXT.__swift5_proto: 0x4
   __TEXT.__swift5_types: 0xc
-  __TEXT.__unwind_info: 0x1cd0
+  __TEXT.__unwind_info: 0x1cc8
   __TEXT.__eh_frame: 0x48
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x2180
+  __DATA_CONST.__const: 0x2188
   __DATA_CONST.__objc_classlist: 0x278
   __DATA_CONST.__objc_catlist: 0x38
   __DATA_CONST.__objc_protolist: 0xe0
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x3b98
+  __DATA_CONST.__objc_selrefs: 0x3bc8
   __DATA_CONST.__objc_protorefs: 0x28
   __DATA_CONST.__objc_superrefs: 0x1b0
   __DATA_CONST.__objc_arraydata: 0x48
   __DATA_CONST.__got: 0x6e8
   __AUTH_CONST.__const: 0xc20
   __AUTH_CONST.__cfstring: 0x5040
-  __AUTH_CONST.__objc_const: 0x13aa0
+  __AUTH_CONST.__objc_const: 0x13b30
   __AUTH_CONST.__objc_arrayobj: 0x78
   __AUTH_CONST.__objc_intobj: 0x360
   __AUTH_CONST.__objc_dictobj: 0x50

   __AUTH_CONST.__auth_ptr: 0x0
   __AUTH.__objc_data: 0x90
   __AUTH.__data: 0x90
-  __DATA.__objc_ivar: 0x5e8
+  __DATA.__objc_ivar: 0x5f4
   __DATA.__data: 0xad0
   __DATA.__bss: 0x1d0
   __DATA_DIRTY.__objc_data: 0x18e0

   - /usr/lib/swift/libswiftXPC.dylib
   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswiftos.dylib
-  Functions: 2926
-  Symbols:   4287
-  CStrings:  1789
+  Functions: 2932
+  Symbols:   4297
+  CStrings:  1791
 
Symbols:
+ -[DEDBugSessionConfiguration seedingCookieName]
+ -[DEDBugSessionConfiguration seedingFilerURL]
+ -[DEDBugSessionConfiguration seedingUsesPinning]
+ -[DEDBugSessionConfiguration setSeedingCookieName:]
+ -[DEDBugSessionConfiguration setSeedingFilerURL:]
+ -[DEDBugSessionConfiguration setSeedingUsesPinning:]
+ _DEDKeySeedingCookieName
+ _DEDKeySeedingFilerURL
+ _DEDKeySeedingUsesPinning
+ _OBJC_IVAR_$_DEDBugSessionConfiguration._seedingCookieName
+ _OBJC_IVAR_$_DEDBugSessionConfiguration._seedingFilerURL
+ _OBJC_IVAR_$_DEDBugSessionConfiguration._seedingUsesPinning
- _DEDKeySeedingEnvironment
- _DEDSeedingClientFilerURL
CStrings:
+ "Discovery returned [%lu] extensions"
+ "No cached extensions; re-running discovery"
+ "Pinning disabled by config; skipping pinning check."
+ "could not match de directory [%{public}@] to known extensions. This is only an issue if file was triggered by DE flow."
+ "could not match de directory url [%{public}@] to known extensions. This is only an issue if file was triggered by DE flow"
+ "seedingCookieName"
+ "seedingFilerURL"
+ "seedingUsesPinning"
- "FBAFilerURL"
- "Running in development mode; skipping pinning check."
- "Using user default value for filer URL"
- "_seedportal_session_uat"
- "could not match de directory [%{public}@] to known extensions"
- "seedingEnvironment"
```
