## RunningBoard

> `/System/Library/PrivateFrameworks/RunningBoard.framework/RunningBoard`

```diff

-1080.0.0.0.0
-  __TEXT.__text: 0x7ada0
-  __TEXT.__objc_methlist: 0x63fc
-  __TEXT.__const: 0x1f0
-  __TEXT.__cstring: 0x7d51
-  __TEXT.__oslogstring: 0xbac5
-  __TEXT.__gcc_except_tab: 0xb84
+1084.40.6.0.0
+  __TEXT.__text: 0x7b184
+  __TEXT.__objc_methlist: 0x640c
+  __TEXT.__const: 0x1f8
+  __TEXT.__cstring: 0x7d46
+  __TEXT.__oslogstring: 0xba9e
+  __TEXT.__gcc_except_tab: 0xbac
   __TEXT.__unwind_info: 0x1e70
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0

   __DATA_CONST.__objc_catlist: 0x178
   __DATA_CONST.__objc_protolist: 0x1a0
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x2f40
+  __DATA_CONST.__objc_selrefs: 0x2f50
   __DATA_CONST.__objc_superrefs: 0x2a8
   __DATA_CONST.__objc_arraydata: 0x770
   __DATA_CONST.__got: 0x7a0
   __AUTH_CONST.__const: 0x640
   __AUTH_CONST.__cfstring: 0x6c60
-  __AUTH_CONST.__objc_const: 0xdb70
+  __AUTH_CONST.__objc_const: 0xdbb0
   __AUTH_CONST.__objc_intobj: 0x2b8
   __AUTH_CONST.__objc_dictobj: 0x488
   __AUTH_CONST.__objc_arrayobj: 0x198

   __AUTH_CONST.__auth_ptr: 0x0
   __AUTH.__objc_data: 0x190
   __AUTH.__data: 0x38
-  __DATA.__objc_ivar: 0xa60
+  __DATA.__objc_ivar: 0xa68
   __DATA.__data: 0x1388
   __DATA.__bss: 0x70
   __DATA_DIRTY.__objc_data: 0x2210

   - /usr/lib/libsp.dylib
   - /usr/lib/libsqlite3.dylib
   - /usr/lib/libtailspin.dylib
-  Functions: 2825
-  Symbols:   4890
-  CStrings:  1862
+  Functions: 2826
+  Symbols:   4895
+  CStrings:  1860
 
Symbols:
+ -[RBProcessMonitorObserver _lock_shouldSendState:forHandle:]
+ GCC_except_table27
+ GCC_except_table31
+ _OBJC_IVAR_$_RBProcessMonitorObserver._hasVisibilityOnlyConfig
+ _OBJC_IVAR_$_RBProcessMonitorObserver._lastVisibleByIdentity
+ ___45-[RBProcessMonitorObserver addConfiguration:]_block_invoke
- GCC_except_table25
Functions:
~ __addRBProperties : 1228 -> 1172
~ _RBCreateLaunchConstraintsDictionary : 1052 -> 1008
~ ___66-[RBProcessMonitorObserver processMonitor:didChangeProcessStates:]_block_invoke : 824 -> 984
~ -[RBProcessMonitorObserver addConfiguration:] : 384 -> 468
~ -[RBProcessMonitorObserver _lock_addConfigurationStatesToPending:] : 708 -> 828
~ -[RBProcessMonitorObserver _lock_rebuildConfiguration] : 496 -> 544
~ -[RBProcessMonitorObserver initWithMonitor:forProcess:connection:] : 416 -> 440
~ -[RBProcessMonitorObserver .cxx_destruct] : 160 -> 172
~ -[RBProcessMonitorObserver invalidate] : 124 -> 132
+ ___45-[RBProcessMonitorObserver addConfiguration:]_block_invoke
+ -[RBProcessMonitorObserver _lock_shouldSendState:forHandle:]
~ _RBCreateLaunchConstraintsDictionary.cold.3 : 64 -> 92
~ _RBCreateLaunchConstraintsDictionary.cold.4 : 92 -> 132
~ _RBCreateLaunchConstraintsDictionary.cold.5 : 132 -> 92
- _RBCreateLaunchConstraintsDictionary.cold.6
CStrings:
- "Built following launch constraints: %@"
- "_BundlePath"
```
