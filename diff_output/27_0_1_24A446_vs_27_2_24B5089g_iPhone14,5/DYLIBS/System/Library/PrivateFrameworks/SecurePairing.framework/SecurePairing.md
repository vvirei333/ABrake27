## SecurePairing

> `/System/Library/PrivateFrameworks/SecurePairing.framework/SecurePairing`

```diff

-61.0.0.0.0
-  __TEXT.__text: 0x75b80
-  __TEXT.__const: 0xb42c
-  __TEXT.__swift5_typeref: 0x252b
-  __TEXT.__cstring: 0x11e0
-  __TEXT.__swift5_reflstr: 0x1064
-  __TEXT.__swift5_assocty: 0x4d8
-  __TEXT.__constg_swiftt: 0x2df4
-  __TEXT.__swift5_fieldmd: 0x2430
+67.5.0.0.0
+  __TEXT.__text: 0x769b4
+  __TEXT.__const: 0xb51c
+  __TEXT.__swift5_typeref: 0x25cf
+  __TEXT.__cstring: 0x1270
+  __TEXT.__swift5_reflstr: 0x10d4
+  __TEXT.__swift5_assocty: 0x538
+  __TEXT.__constg_swiftt: 0x2e04
+  __TEXT.__swift5_fieldmd: 0x2448
   __TEXT.__swift5_builtin: 0x12c
-  __TEXT.__oslogstring: 0xeb4
-  __TEXT.__swift5_proto: 0xadc
+  __TEXT.__oslogstring: 0xfd4
+  __TEXT.__swift5_proto: 0xae4
   __TEXT.__swift5_types: 0x35c
   __TEXT.__swift_as_entry: 0xbc
   __TEXT.__swift_as_ret: 0x70

   __TEXT.__swift5_mpenum: 0xd0
   __TEXT.__swift5_capture: 0x3bc
   __TEXT.__swift5_protos: 0x74
-  __TEXT.__unwind_info: 0x1f98
-  __TEXT.__eh_frame: 0x4614
+  __TEXT.__unwind_info: 0x1f80
+  __TEXT.__eh_frame: 0x460c
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__objc_selrefs: 0x18
   __DATA_CONST.__got: 0x0
-  __AUTH_CONST.__const: 0x6320
-  __AUTH_CONST.__objc_const: 0x1fe0
-  __AUTH_CONST.__auth_got: 0xbc0
-  __AUTH_CONST.__auth_ptr: 0x4f0
+  __AUTH_CONST.__const: 0x63a0
+  __AUTH_CONST.__objc_const: 0x2000
+  __AUTH_CONST.__auth_got: 0xbe0
+  __AUTH_CONST.__auth_ptr: 0x558
   __AUTH.__objc_data: 0xf0
-  __AUTH.__data: 0x2508
-  __DATA.__data: 0x1dc8
-  __DATA.__bss: 0x14500
-  __DATA.__common: 0x90
+  __AUTH.__data: 0x2328
+  __DATA.__data: 0x1958
+  __DATA.__bss: 0x11e80
+  __DATA.__common: 0x68
+  __DATA_DIRTY.__data: 0x688
+  __DATA_DIRTY.__common: 0x40
+  __DATA_DIRTY.__bss: 0x2780
   - /System/Library/Frameworks/CryptoKit.framework/CryptoKit
   - /System/Library/Frameworks/Foundation.framework/Foundation
   - /System/Library/PrivateFrameworks/AlwaysOnExclavesServices.framework/AlwaysOnExclavesServices

   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
-  Functions: 2637
-  Symbols:   1268
-  CStrings:  210
+  Functions: 2654
+  Symbols:   1278
+  CStrings:  218
 
Symbols:
+ ___swift_closure_destructor.117Tm
+ ___swift_closure_destructor.120Tm
+ ___unnamed_14
+ ___unnamed_51
+ ___unnamed_71
+ ___unnamed_73
+ _associated conformance 13SecurePairing22DarwinNotificationNameVs26ExpressibleByStringLiteralAA0hI4TypesADP_s01_fg7BuiltinhI0
+ _associated conformance 13SecurePairing22DarwinNotificationNameVs26ExpressibleByStringLiteralAAs0fg23ExtendedGraphemeClusterI0
+ _associated conformance 13SecurePairing22DarwinNotificationNameVs33ExpressibleByUnicodeScalarLiteralAA0hiJ4TypesADP_s01_fg7BuiltinhiJ0
+ _associated conformance 13SecurePairing22DarwinNotificationNameVs43ExpressibleByExtendedGraphemeClusterLiteralAA0hijK4TypesADP_s01_fg7BuiltinhijK0
+ _associated conformance 13SecurePairing22DarwinNotificationNameVs43ExpressibleByExtendedGraphemeClusterLiteralAAs0fg13UnicodeScalarK0
+ _notify_post
+ _symbolic $ss26ExpressibleByStringLiteralP
+ _symbolic $ss33ExpressibleByUnicodeScalarLiteralP
+ _symbolic $ss43ExpressibleByExtendedGraphemeClusterLiteralP
+ _symbolic _____ 13SecurePairing22DarwinNotificationNameV
+ _type_layout_string 13SecurePairing22DarwinNotificationNameV
- ___swift_closure_destructor.115Tm
- ___swift_closure_destructor.118Tm
- ___unnamed_13
- ___unnamed_50
- ___unnamed_67
- ___unnamed_69
- _symbolic _____ 13SecurePairing3FooV
CStrings:
+ "%s.%s connectionStatus=%s"
+ "%s.%s service=%s"
+ "Caching connection item for %s"
+ "aoeConnectionStatusHandler(service:connectionStatus:)"
+ "com.apple.securepairing.frequent"
+ "com.apple.securepairing.pairing-changed"
+ "invalid request to prune wrapped items for servoice=%s"
+ "last AOED connection reference for service %s dropped, disabling and releasing the cache item"
+ "pruneWrappedConnections(service:)"
+ "unexpected failure in AOED connection disable() (%@)"
+ "weak wrappers pruned, remaining count=%ld"
- "aoeConnectionErrorHandler(service:connectionStatus:)"
- "disable AOE connection for %s"
- "error disabling AOE connection: %@"
```
