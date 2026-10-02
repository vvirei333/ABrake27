## AVSystemRouting

> `/System/Library/Frameworks/AVSystemRouting.framework/AVSystemRouting`

```diff

-360.75.1.4.0
-  __TEXT.__text: 0x23394
-  __TEXT.__objc_methlist: 0xe04
+385.7.1.0.0
+  __TEXT.__text: 0x23554
+  __TEXT.__objc_methlist: 0xe24
   __TEXT.__const: 0x19d8
-  __TEXT.__gcc_except_tab: 0x2cc
+  __TEXT.__gcc_except_tab: 0x300
   __TEXT.__cstring: 0xcda
   __TEXT.__oslogstring: 0x706
   __TEXT.__swift5_typeref: 0x77c

   __TEXT.__swift_as_entry: 0xc4
   __TEXT.__swift_as_ret: 0x44
   __TEXT.__swift_as_cont: 0xbc
-  __TEXT.__unwind_info: 0xd50
+  __TEXT.__unwind_info: 0xd58
   __TEXT.__eh_frame: 0x14d8
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0

   __DATA_CONST.__got: 0x228
   __AUTH_CONST.__const: 0x14e0
   __AUTH_CONST.__cfstring: 0x9c0
-  __AUTH_CONST.__objc_const: 0x22a0
+  __AUTH_CONST.__objc_const: 0x22c8
   __AUTH_CONST.__auth_got: 0x710
   __AUTH_CONST.__auth_ptr: 0x0
   __AUTH.__objc_data: 0x470
   __AUTH.__data: 0xc50
-  __DATA.__objc_ivar: 0xbc
+  __DATA.__objc_ivar: 0xc0
   __DATA.__data: 0x670
   __DATA.__common: 0x20
   __DATA.__bss: 0xce0

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 1083
-  Symbols:   932
+  Functions: 1086
+  Symbols:   938
   CStrings:  140
 
Symbols:
+ -[AVSystemMediaSourceExtensionImpl _invalidate]
+ -[AVSystemRoute _invalidate]
+ GCC_except_table12
+ GCC_except_table15
+ GCC_except_table23
+ GCC_except_table32
+ GCC_except_table35
+ GCC_except_table39
+ GCC_except_table45
+ _OBJC_IVAR_$_AVSystemRoute._invalidated
+ _OUTLINED_FUNCTION_24
- GCC_except_table20
- GCC_except_table28
- GCC_except_table34
- GCC_except_table38
- GCC_except_table44
Functions:
~ -[AVSystemRoute addSession:] : 184 -> 192
+ -[AVSystemRoute _invalidate]
~ -[AVSystemRouteSession _invalidate] : 308 -> 328
~ -[AVSystemRoutePlaybackControl _invalidate] : 72 -> 80
+ -[AVSystemMediaSourceExtensionImpl _invalidate]
~ _OUTLINED_FUNCTION_11 : 44 -> 12
~ _OUTLINED_FUNCTION_14 : 12 -> 28
~ _OUTLINED_FUNCTION_19 : 28 -> 12
~ _OUTLINED_FUNCTION_20 : 36 -> 28
~ _OUTLINED_FUNCTION_21 : 24 -> 36
~ _OUTLINED_FUNCTION_22 : 20 -> 24
~ _OUTLINED_FUNCTION_23 : 12 -> 20
+ _OUTLINED_FUNCTION_24
~ -[AVCustomRoutingSystemControllerSystemCastingImpl _updateSystemRoutingState] : 1792 -> 1784
~ -[AVCustomRoutingSystemControllerSystemCastingImpl handleActiveClientResigned] : 292 -> 300
```
