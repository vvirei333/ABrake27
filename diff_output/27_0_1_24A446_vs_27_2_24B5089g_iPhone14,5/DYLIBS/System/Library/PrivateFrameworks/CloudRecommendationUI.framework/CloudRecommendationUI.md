## CloudRecommendationUI

> `/System/Library/PrivateFrameworks/CloudRecommendationUI.framework/CloudRecommendationUI`

```diff

-301.24.0.6.0
-  __TEXT.__text: 0xaa688
+301.24.1.4.0
+  __TEXT.__text: 0xad4ec
   __TEXT.__objc_methlist: 0x8b4
-  __TEXT.__const: 0x72e4
+  __TEXT.__const: 0x7334
   __TEXT.__gcc_except_tab: 0x64
-  __TEXT.__cstring: 0x2054
+  __TEXT.__cstring: 0x20b4
   __TEXT.__dlopen_cstrs: 0x15c
-  __TEXT.__constg_swiftt: 0x27e8
-  __TEXT.__swift5_typeref: 0x8dfe
-  __TEXT.__swift5_reflstr: 0x1b94
-  __TEXT.__swift5_fieldmd: 0x19fc
+  __TEXT.__constg_swiftt: 0x2860
+  __TEXT.__swift5_typeref: 0x8e06
+  __TEXT.__swift5_reflstr: 0x1c54
+  __TEXT.__swift5_fieldmd: 0x1a20
   __TEXT.__swift5_builtin: 0x78
   __TEXT.__swift5_assocty: 0x558
-  __TEXT.__oslogstring: 0x2913
-  __TEXT.__swift5_capture: 0x12ec
+  __TEXT.__oslogstring: 0x2a73
+  __TEXT.__swift5_capture: 0x1340
   __TEXT.__swift5_proto: 0x330
   __TEXT.__swift5_types: 0x1ac
-  __TEXT.__swift_as_entry: 0x1f8
-  __TEXT.__swift_as_cont: 0x30c
+  __TEXT.__swift_as_entry: 0x1fc
+  __TEXT.__swift_as_cont: 0x310
   __TEXT.__swift_as_ret: 0x20c
   __TEXT.__swift5_protos: 0x8
   __TEXT.__swift5_mpenum: 0x14
-  __TEXT.__unwind_info: 0x2688
-  __TEXT.__eh_frame: 0x4a50
+  __TEXT.__unwind_info: 0x2700
+  __TEXT.__eh_frame: 0x4b98
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x1c0
+  __DATA_CONST.__const: 0x1d0
   __DATA_CONST.__objc_classlist: 0x178
   __DATA_CONST.__objc_protolist: 0xb0
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0xb90
+  __DATA_CONST.__objc_selrefs: 0xb80
   __DATA_CONST.__objc_protorefs: 0x58
   __DATA_CONST.__objc_superrefs: 0x18
-  __DATA_CONST.__got: 0xb40
-  __AUTH_CONST.__const: 0x48b0
-  __AUTH_CONST.__objc_const: 0x4f48
-  __AUTH_CONST.__auth_got: 0x16d8
-  __AUTH_CONST.__auth_ptr: 0xe18
+  __DATA_CONST.__got: 0xb50
+  __AUTH_CONST.__const: 0x4928
+  __AUTH_CONST.__objc_const: 0x4fa8
+  __AUTH_CONST.__auth_got: 0x16f0
+  __AUTH_CONST.__auth_ptr: 0xe10
   __AUTH.__objc_data: 0x1260
-  __AUTH.__data: 0x2ed8
+  __AUTH.__data: 0x2f68
   __DATA.__objc_ivar: 0x20
-  __DATA.__data: 0x24d0
-  __DATA.__bss: 0x6868
-  __DATA.__common: 0x138
+  __DATA.__data: 0x24f0
+  __DATA.__bss: 0x6878
+  __DATA.__common: 0x150
   - /System/Library/Frameworks/Accounts.framework/Accounts
   - /System/Library/Frameworks/Combine.framework/Combine
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation

   - /System/Library/PrivateFrameworks/LiftUI.framework/LiftUI
   - /System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration
   - /System/Library/PrivateFrameworks/NetworkServiceProxy.framework/NetworkServiceProxy
+  - /System/Library/PrivateFrameworks/OctagonTrust.framework/OctagonTrust
   - /System/Library/PrivateFrameworks/PhotoLibraryServices.framework/PhotoLibraryServices
   - /System/Library/PrivateFrameworks/SoftLinking.framework/SoftLinking
   - /System/Library/PrivateFrameworks/_IconServices_SwiftUI.framework/_IconServices_SwiftUI

   - /usr/lib/swift/libswift_StringProcessing.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 3077
-  Symbols:   1631
-  CStrings:  413
+  Functions: 3112
+  Symbols:   1636
+  CStrings:  419
 
Symbols:
+ _CFPreferencesCopyValue
+ _CFPreferencesSetValue
+ _CFPreferencesSynchronize
+ _OBJC_CLASS_$_NSByteCountFormatter
+ _OTUserControllableViewStatusChanged
+ ___swift_closure_destructor.301Tm
+ ___swift_closure_destructor.325Tm
+ _kCFPreferencesAnyUser
+ _kCFPreferencesCurrentHost
+ _symbolic So20NSByteCountFormatterC
+ _symbolic _____yShySSGG 2os21OSAllocatedUnfairLockV
+ _symbolic _____yShySSG_____G s13ManagedBufferCsRi__rlE So16os_unfair_lock_sV
- _OBJC_CLASS_$_NSMeasurementFormatter
- _OBJC_CLASS_$_NSUserDefaults
- ___swift_closure_destructor.275Tm
- ___swift_closure_destructor.299Tm
- ___swift_closure_destructor.405Tm
- _symbolic So17NSNumberFormatterC
- _symbolic So22NSMeasurementFormatterC
CStrings:
+ "%s Client filter bypass is set. Force rendering %ld dropped client donated recommendations: %s"
+ "%s No server rule for forced client card %s. Completing it on device with the donor supplied copy."
+ "CLIENT_DONATED_DEBUG"
+ "Client Donated (Internal)"
+ "Could not fetch client donated recommendations from the plugin loader %@"
+ "OTUserControllableViewStatusChanged notification received!"
+ "assembleRecommendationSection(shouldSendDisplayedStatus:shouldRefreshBreakout:droppedClientRecommendations:)"
- "assembleRecommendationSection(shouldSendDisplayedStatus:shouldRefreshBreakout:)"
```
