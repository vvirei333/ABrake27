## AccessibilityUIUtilities

> `/System/Library/PrivateFrameworks/AccessibilityUIUtilities.framework/AccessibilityUIUtilities`

```diff

-3240.9.0.0.0
-  __TEXT.__text: 0x618d4
-  __TEXT.__objc_methlist: 0x64cc
+3245.8.2.0.0
+  __TEXT.__text: 0x6204c
+  __TEXT.__objc_methlist: 0x6584
   __TEXT.__const: 0xd38
-  __TEXT.__dlopen_cstrs: 0x3ec
+  __TEXT.__dlopen_cstrs: 0x450
   __TEXT.__constg_swiftt: 0x848
   __TEXT.__swift5_typeref: 0xabb
   __TEXT.__swift5_builtin: 0x14

   __TEXT.__swift5_proto: 0x40
   __TEXT.__swift5_types: 0x48
   __TEXT.__swift5_capture: 0x15c
-  __TEXT.__cstring: 0x5cbc
+  __TEXT.__cstring: 0x5cf1
   __TEXT.__swift5_assocty: 0xf8
   __TEXT.__swift_as_entry: 0x30
   __TEXT.__swift_as_cont: 0x48
   __TEXT.__oslogstring: 0x1155
   __TEXT.__swift_as_ret: 0x18
-  __TEXT.__gcc_except_tab: 0x810
+  __TEXT.__gcc_except_tab: 0x838
   __TEXT.__ustring: 0x4
-  __TEXT.__unwind_info: 0x1978
+  __TEXT.__unwind_info: 0x1980
   __TEXT.__eh_frame: 0x43c
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0xdd0
+  __DATA_CONST.__const: 0xde8
   __DATA_CONST.__objc_classlist: 0x398
   __DATA_CONST.__objc_catlist: 0x38
   __DATA_CONST.__objc_protolist: 0x140
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x5160
+  __DATA_CONST.__objc_selrefs: 0x51d8
   __DATA_CONST.__objc_protorefs: 0x20
   __DATA_CONST.__objc_superrefs: 0x270
   __DATA_CONST.__objc_arraydata: 0x80
-  __DATA_CONST.__got: 0x1198
+  __DATA_CONST.__got: 0x11a0
   __AUTH_CONST.__const: 0xa38
-  __AUTH_CONST.__cfstring: 0x6a20
-  __AUTH_CONST.__objc_const: 0xa218
+  __AUTH_CONST.__cfstring: 0x6a60
+  __AUTH_CONST.__objc_const: 0xa2e8
   __AUTH_CONST.__objc_intobj: 0x228
   __AUTH_CONST.__objc_arrayobj: 0x48
   __AUTH_CONST.__objc_doubleobj: 0x10
   __AUTH_CONST.__objc_dictobj: 0x50
-  __AUTH_CONST.__auth_got: 0x11f0
+  __AUTH_CONST.__auth_got: 0x11f8
   __AUTH_CONST.__auth_ptr: 0x510
   __AUTH.__objc_data: 0x22b0
   __AUTH.__data: 0x508
-  __DATA.__objc_ivar: 0x58c
+  __DATA.__objc_ivar: 0x59c
   __DATA.__data: 0x1328
-  __DATA.__bss: 0xa50
+  __DATA.__bss: 0xa60
   __DATA.__common: 0x10
   __DATA_DIRTY.__objc_data: 0x1e0
   __DATA_DIRTY.__bss: 0x28

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 2401
-  Symbols:   4645
-  CStrings:  1073
+  Functions: 2418
+  Symbols:   4671
+  CStrings:  1077
 
Symbols:
+ -[AXUIPasscodeViewController _acquireSecureIndicatorElevation]
+ -[AXUIPasscodeViewController _acquireSystemApertureInertRestriction]
+ -[AXUIPasscodeViewController _relinquishSecureIndicatorElevation]
+ -[AXUIPasscodeViewController _relinquishSystemApertureInertRestriction]
+ -[AXUIPasscodeViewController dealloc]
+ -[AXUIPasscodeViewController secureIndicatorElevationAssertion]
+ -[AXUIPasscodeViewController setSecureIndicatorElevationAssertion:]
+ -[AXUIPasscodeViewController setSystemApertureInertAssertion:]
+ -[AXUIPasscodeViewController setSystemApertureRestrictionService:]
+ -[AXUIPasscodeViewController systemApertureInertAssertion]
+ -[AXUIPasscodeViewController systemApertureRestrictionService]
+ -[AXUIReachabilityHelper dampingRatioForPayload:]
+ -[AXUIReachabilityHelper responseForPayload:]
+ -[AXUISettingsEditableViewController .cxx_destruct]
+ -[AXUISettingsEditableViewController axOpenSwipeIndexPath]
+ -[AXUISettingsEditableViewController setAxOpenSwipeIndexPath:]
+ GCC_except_table1157
+ GCC_except_table1158
+ GCC_except_table1159
+ GCC_except_table1201
+ GCC_except_table1257
+ GCC_except_table1407
+ GCC_except_table1524
+ GCC_except_table1635
+ GCC_except_table1842
+ GCC_except_table1843
+ GCC_except_table1844
+ GCC_except_table1867
+ GCC_except_table1875
+ GCC_except_table1888
+ GCC_except_table1891
+ GCC_except_table1898
+ GCC_except_table1923
+ GCC_except_table629
+ GCC_except_table674
+ GCC_except_table679
+ GCC_except_table690
+ GCC_except_table712
+ GCC_except_table752
+ GCC_except_table753
+ GCC_except_table754
+ GCC_except_table764
+ GCC_except_table784
+ GCC_except_table786
+ GCC_except_table791
+ GCC_except_table977
+ _AXDeviceShouldShowEnhancedSiri
+ _OBJC_CLASS_$_AXSecureIndicatorElevationAssertion
+ _OBJC_IVAR_$_AXUIPasscodeViewController._secureIndicatorElevationAssertion
+ _OBJC_IVAR_$_AXUIPasscodeViewController._systemApertureInertAssertion
+ _OBJC_IVAR_$_AXUIPasscodeViewController._systemApertureRestrictionService
+ _OBJC_IVAR_$_AXUISettingsEditableViewController._axOpenSwipeIndexPath
+ __OBJC_$_INSTANCE_VARIABLES_AXUISettingsEditableViewController
+ __OBJC_$_PROP_LIST_AXUISettingsEditableViewController
+ ___getSBSSystemApertureRestrictionServiceClass_block_invoke
+ _getSBSSystemApertureRestrictionServiceClass.softClass
- -[AXUIDaemonApplication _frontMostAppOrientation]
- GCC_except_table1145
- GCC_except_table1146
- GCC_except_table1147
- GCC_except_table1189
- GCC_except_table1245
- GCC_except_table1395
- GCC_except_table1509
- GCC_except_table1620
- GCC_except_table1825
- GCC_except_table1826
- GCC_except_table1827
- GCC_except_table1850
- GCC_except_table1858
- GCC_except_table1871
- GCC_except_table1874
- GCC_except_table1881
- GCC_except_table1906
- GCC_except_table661
- GCC_except_table666
- GCC_except_table677
- GCC_except_table699
- GCC_except_table738
- GCC_except_table739
- GCC_except_table740
- GCC_except_table741
- GCC_except_table771
- GCC_except_table773
- GCC_except_table778
- GCC_except_table964
CStrings:
+ "'"
+ "AXPasscode"
+ "SBSSystemApertureRestrictionService"
+ "siri"
+ "siri.gen1"
+ "softlink:o:path:/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices"
- "$"
- "IconSiri"
```
