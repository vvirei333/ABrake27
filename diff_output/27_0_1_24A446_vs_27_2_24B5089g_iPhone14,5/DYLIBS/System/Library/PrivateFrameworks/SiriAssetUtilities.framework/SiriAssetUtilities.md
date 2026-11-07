## SiriAssetUtilities

> `/System/Library/PrivateFrameworks/SiriAssetUtilities.framework/SiriAssetUtilities`

```diff

-3600.77.1.0.0
-  __TEXT.__text: 0xf478
-  __TEXT.__objc_methlist: 0xd28
+3605.13.2.1.1
+  __TEXT.__text: 0xf68c
+  __TEXT.__objc_methlist: 0xd30
   __TEXT.__const: 0xc0
   __TEXT.__gcc_except_tab: 0x490
-  __TEXT.__cstring: 0x1b97
+  __TEXT.__cstring: 0x1bea
   __TEXT.__oslogstring: 0x231e
-  __TEXT.__unwind_info: 0x4b0
+  __TEXT.__unwind_info: 0x4b8
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__objc_classlist: 0x38
   __DATA_CONST.__objc_protolist: 0x20
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x9b8
+  __DATA_CONST.__objc_selrefs: 0x9c8
   __DATA_CONST.__objc_protorefs: 0x8
   __DATA_CONST.__objc_superrefs: 0x20
-  __DATA_CONST.__got: 0x1d0
+  __DATA_CONST.__got: 0x1e0
   __AUTH_CONST.__const: 0xe0
-  __AUTH_CONST.__cfstring: 0x520
+  __AUTH_CONST.__cfstring: 0x5c0
   __AUTH_CONST.__objc_const: 0xf58
   __AUTH_CONST.__objc_intobj: 0x78
   __AUTH_CONST.__auth_got: 0x0
   __DATA.__objc_ivar: 0xc8
   __DATA.__data: 0x188
+  __DATA.__bss: 0x8
   __DATA_DIRTY.__objc_data: 0x230
   __DATA_DIRTY.__common: 0x28
   __DATA_DIRTY.__bss: 0x10

   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
   - /usr/lib/libsqlite3.dylib
-  Functions: 335
-  Symbols:   695
-  CStrings:  313
+  Functions: 336
+  Symbols:   701
+  CStrings:  318
 
Symbols:
+ +[SAUCommonUtilities bundle]
+ _OBJC_CLASS_$_NSBundle
+ _UAFFaultCapture
+ _bundle.sSAUBundle
+ _kUAFABCXPCFallback
+ _objc_retain_x5
Functions:
+ +[SAUCommonUtilities bundle]
~ -[SAUXPCService operationWithConfig:completion:] : 444 -> 504
~ -[SAUXPCService lockLatestAtomicInstance:atomicInstance:completion:] : 408 -> 468
~ -[SAUXPCService subscriptions:subscriber:user:completion:] : 12 -> 252
~ -[SAUXPCService markAssetsExpired:completion:] : 380 -> 448
CStrings:
+ "lockLatestAtomicInstance"
+ "markAssetsExpired"
+ "operationWithConfig"
+ "proxy"
+ "subscriptions"
```
