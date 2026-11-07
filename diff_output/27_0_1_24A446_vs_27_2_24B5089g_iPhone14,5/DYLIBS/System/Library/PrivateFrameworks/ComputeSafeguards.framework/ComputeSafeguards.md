## ComputeSafeguards

> `/System/Library/PrivateFrameworks/ComputeSafeguards.framework/ComputeSafeguards`

```diff

-177.0.16.0.0
-  __TEXT.__text: 0x5b188
-  __TEXT.__objc_methlist: 0x4644
+177.40.5.0.0
+  __TEXT.__text: 0x5b3b0
+  __TEXT.__objc_methlist: 0x466c
   __TEXT.__const: 0x320
-  __TEXT.__cstring: 0x6144
+  __TEXT.__cstring: 0x6155
   __TEXT.__gcc_except_tab: 0x10c4
   __TEXT.__oslogstring: 0xf3aa
-  __TEXT.__unwind_info: 0x1098
+  __TEXT.__unwind_info: 0x10a0
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__objc_catlist: 0x8
   __DATA_CONST.__objc_protolist: 0x78
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x2a28
+  __DATA_CONST.__objc_selrefs: 0x2a40
   __DATA_CONST.__objc_protorefs: 0x20
   __DATA_CONST.__objc_superrefs: 0xd8
   __DATA_CONST.__objc_arraydata: 0x21e0
   __DATA_CONST.__got: 0x328
   __AUTH_CONST.__const: 0x540
-  __AUTH_CONST.__cfstring: 0x6340
-  __AUTH_CONST.__objc_const: 0x61b0
+  __AUTH_CONST.__cfstring: 0x6360
+  __AUTH_CONST.__objc_const: 0x61e0
   __AUTH_CONST.__objc_intobj: 0x6c0
   __AUTH_CONST.__objc_dictobj: 0x550
   __AUTH_CONST.__objc_arrayobj: 0x150

   __AUTH_CONST.__auth_got: 0x4f8
   __AUTH_CONST.__auth_ptr: 0x0
   __AUTH.__objc_data: 0x4b0
-  __DATA.__objc_ivar: 0x530
+  __DATA.__objc_ivar: 0x534
   __DATA.__data: 0x5b8
   __DATA.__bss: 0xd0
   __DATA.__common: 0x48

   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
   - /usr/lib/libspindump.dylib
-  Functions: 2069
-  Symbols:   2696
-  CStrings:  1876
+  Functions: 2073
+  Symbols:   2702
+  CStrings:  1877
 
Symbols:
+ -[CSMitigationManager isMitigationInternalOnlyForRule:]
+ -[CSProcess setViolationRuleID:]
+ -[CSProcess violationRuleID]
+ GCC_except_table56
+ GCC_except_table58
+ _OBJC_IVAR_$_CSProcess._violationRuleID
+ _getCSExternalRuleMitigationPolicies
- GCC_except_table69
CStrings:
+ "InternalOnlyRule"
+ "[Q$"
- "KQ$"
```
