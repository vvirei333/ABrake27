## IntelligencePlatformCore

> `/System/Library/PrivateFrameworks/IntelligencePlatformCore.framework/IntelligencePlatformCore`

```diff

-190.0.0.0.0
-  __TEXT.__text: 0xb41648
+194.0.0.0.0
+  __TEXT.__text: 0xb41984
   __TEXT.__objc_methlist: 0x2f1c
-  __TEXT.__const: 0x7d590
+  __TEXT.__const: 0x7d578
   __TEXT.__dlopen_cstrs: 0xc0
   __TEXT.__swift5_typeref: 0x1ea5a
-  __TEXT.__cstring: 0x311ff
+  __TEXT.__cstring: 0x311bf
   __TEXT.__constg_swiftt: 0x23568
-  __TEXT.__swift5_reflstr: 0x2654f
+  __TEXT.__swift5_reflstr: 0x2656f
   __TEXT.__swift5_fieldmd: 0x2a0e8
   __TEXT.__swift5_builtin: 0x4d8
   __TEXT.__swift5_mpenum: 0x170

   __TEXT.__swift_as_entry: 0x11f8
   __TEXT.__swift_as_ret: 0xf94
   __TEXT.__swift_as_cont: 0x13b0
-  __TEXT.__oslogstring: 0x1fc43
+  __TEXT.__oslogstring: 0x1fe0a
   __TEXT.__swift5_capture: 0x11fbc
-  __TEXT.__gcc_except_tab: 0x19c
-  __TEXT.__unwind_info: 0x29030
-  __TEXT.__eh_frame: 0x60080
+  __TEXT.__gcc_except_tab: 0x1ac
+  __TEXT.__unwind_info: 0x29018
+  __TEXT.__eh_frame: 0x60000
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__objc_classlist: 0x1218
   __DATA_CONST.__objc_protolist: 0x250
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x2e48
+  __DATA_CONST.__objc_selrefs: 0x2e50
   __DATA_CONST.__objc_protorefs: 0x120
   __DATA_CONST.__objc_superrefs: 0x80
-  __DATA_CONST.__got: 0x4610
+  __DATA_CONST.__got: 0x4620
   __AUTH_CONST.__const: 0x66f18
-  __AUTH_CONST.__cfstring: 0x360
+  __AUTH_CONST.__cfstring: 0x320
   __AUTH_CONST.__objc_const: 0x2c798
   __AUTH_CONST.__auth_got: 0x57e0
   __AUTH_CONST.__auth_ptr: 0x4248

   __AUTH.__data: 0x179e0
   __DATA.__objc_ivar: 0xc4
   __DATA.__data: 0x11328
-  __DATA.__bss: 0x86250
+  __DATA.__bss: 0x86260
   __DATA.__common: 0x19e8
   __DATA_DIRTY.__objc_data: 0x4280
   __DATA_DIRTY.__data: 0x28120
-  __DATA_DIRTY.__bss: 0x2da20
+  __DATA_DIRTY.__bss: 0x2da10
   __DATA_DIRTY.__common: 0x1838
   - /System/Library/Frameworks/Accelerate.framework/Accelerate
   - /System/Library/Frameworks/AppIntents.framework/AppIntents

   - /System/Library/PrivateFrameworks/ProactiveSupport.framework/ProactiveSupport
   - /System/Library/PrivateFrameworks/PromptKit.framework/PromptKit
   - /System/Library/PrivateFrameworks/SoftLinking.framework/SoftLinking
+  - /System/Library/PrivateFrameworks/TCC.framework/TCC
   - /System/Library/PrivateFrameworks/TextInput.framework/TextInput
   - /System/Library/PrivateFrameworks/TokenGeneration.framework/TokenGeneration
   - /System/Library/PrivateFrameworks/TokenGenerationCore.framework/TokenGenerationCore

   - /usr/lib/swift/libswift_StringProcessing.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 67694
-  Symbols:   1004
-  CStrings:  5831
+  Functions: 67596
+  Symbols:   1007
+  CStrings:  5834
 
Symbols:
+ _GDSiriCanLearnFromApp
+ _TCCAccessCopyBundleIdentifiersDisabledForService
+ _XPC_ACTIVITY_INTERVAL_5_MIN
+ _kTCCServiceSiriAccess
- _CFPreferencesCopyAppValue
CStrings:
+ "GDBiomeStreamStoreErasure: latestDeleteBookmarkForStream: tombstone bookmark for %@ can no longer be resumed, reading from the start of the substore instead. Error: %@"
+ "GDSiriCanLearnFromApp: bundleID=%{public}@ canLearn=%{public}d"
+ "Now playing progress token %f is in the future, ingesting from the start of the stream instead"
+ "ViewUpdate: %s: current bookmark is no longer valid: %@"
+ "ViewUpdate: %s: deletion bookmark is no longer valid: %@"
- "SiriCanLearnFromAppBlacklist"
- "com.apple.suggestions"
```
