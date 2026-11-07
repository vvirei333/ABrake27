## UIAccessibility

> `/System/Library/PrivateFrameworks/UIAccessibility.framework/UIAccessibility`

```diff

-3240.9.0.0.0
-  __TEXT.__text: 0x6d22c
-  __TEXT.__objc_methlist: 0x6bf4
+3245.8.2.0.0
+  __TEXT.__text: 0x6d3c8
+  __TEXT.__objc_methlist: 0x6c2c
   __TEXT.__const: 0x278
   __TEXT.__dlopen_cstrs: 0x266
-  __TEXT.__gcc_except_tab: 0xd94
-  __TEXT.__cstring: 0x7101
+  __TEXT.__gcc_except_tab: 0xda0
+  __TEXT.__cstring: 0x716a
   __TEXT.__oslogstring: 0x2ce3
   __TEXT.__ustring: 0x14
-  __TEXT.__unwind_info: 0x1b48
+  __TEXT.__unwind_info: 0x1b50
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__objc_catlist: 0xa8
   __DATA_CONST.__objc_protolist: 0x88
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x5738
+  __DATA_CONST.__objc_selrefs: 0x5768
   __DATA_CONST.__objc_protorefs: 0x28
   __DATA_CONST.__objc_superrefs: 0x110
   __DATA_CONST.__objc_arraydata: 0x128
   __DATA_CONST.__got: 0xd50
   __AUTH_CONST.__const: 0x1268
-  __AUTH_CONST.__cfstring: 0x64e0
+  __AUTH_CONST.__cfstring: 0x6520
   __AUTH_CONST.__objc_const: 0x4a10
   __AUTH_CONST.__objc_intobj: 0x4c8
   __AUTH_CONST.__objc_dictobj: 0x78
   __AUTH_CONST.__objc_arrayobj: 0x48
   __AUTH_CONST.__auth_got: 0x0
-  __AUTH.__objc_data: 0xe60
+  __AUTH.__objc_data: 0xe10
   __DATA.__objc_ivar: 0x184
   __DATA.__data: 0x748
-  __DATA.__bss: 0x4d0
+  __DATA.__bss: 0x4c8
   __DATA.__common: 0x18
-  __DATA_DIRTY.__objc_data: 0x4b0
-  __DATA_DIRTY.__bss: 0x238
+  __DATA_DIRTY.__objc_data: 0x500
+  __DATA_DIRTY.__bss: 0x240
   __DATA_DIRTY.__common: 0x264
   - /System/Library/Frameworks/Accessibility.framework/Accessibility
   - /System/Library/Frameworks/AudioToolbox.framework/AudioToolbox

   - /usr/lib/libMobileGestalt.dylib
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 2622
-  Symbols:   4586
-  CStrings:  1186
+  Functions: 2627
+  Symbols:   4593
+  CStrings:  1188
 
Symbols:
+ -[NSObject(AXPrivCategory) _accessibilityHintIsInstructional]
+ -[NSObject(AXPrivCategory) _accessibilityOverridesKeyboardObscuring]
+ -[NSObject(AXPrivCategory) _accessibilitySetOverridesKeyboardObscuring:]
+ -[NSObject(AXPrivCategory) _accessibilityStatusBarIsVerticalAlongWindowEdge]
+ -[UIWindowScene(UIAccessibilityElementTraversal) _accessibilityChildrenByAddingMultitaskingElements:]
+ GCC_except_table1014
+ GCC_except_table1025
+ GCC_except_table1060
+ GCC_except_table1068
+ GCC_except_table1073
+ GCC_except_table1109
+ GCC_except_table1126
+ GCC_except_table1233
+ GCC_except_table1336
+ GCC_except_table1344
+ GCC_except_table1346
+ GCC_except_table1348
+ GCC_except_table1359
+ GCC_except_table1371
+ GCC_except_table1404
+ GCC_except_table1414
+ GCC_except_table1416
+ GCC_except_table1494
+ GCC_except_table1562
+ GCC_except_table1584
+ GCC_except_table1624
+ GCC_except_table1636
+ GCC_except_table1639
+ GCC_except_table1653
+ GCC_except_table1689
+ GCC_except_table1719
+ GCC_except_table1731
+ GCC_except_table1741
+ GCC_except_table1763
+ GCC_except_table1766
+ GCC_except_table1768
+ GCC_except_table1773
+ GCC_except_table1780
+ GCC_except_table1876
+ GCC_except_table1938
+ GCC_except_table1993
+ GCC_except_table2011
+ GCC_except_table2165
+ GCC_except_table2212
+ GCC_except_table2218
+ GCC_except_table2226
+ GCC_except_table2227
+ GCC_except_table2441
+ GCC_except_table2460
+ GCC_except_table249
+ GCC_except_table2550
+ GCC_except_table2561
+ GCC_except_table276
+ GCC_except_table279
+ GCC_except_table294
+ GCC_except_table338
+ GCC_except_table352
+ GCC_except_table374
+ GCC_except_table382
+ GCC_except_table550
+ GCC_except_table677
+ GCC_except_table784
+ GCC_except_table949
+ GCC_except_table983
+ _AXProcessIsWidgetRendererSnapshots
+ _AXUIKeyboardVisibleInputScreenFrame
- GCC_except_table1013
- GCC_except_table1024
- GCC_except_table1057
- GCC_except_table1065
- GCC_except_table1070
- GCC_except_table1106
- GCC_except_table1123
- GCC_except_table1230
- GCC_except_table1333
- GCC_except_table1341
- GCC_except_table1343
- GCC_except_table1345
- GCC_except_table1356
- GCC_except_table1368
- GCC_except_table1401
- GCC_except_table1410
- GCC_except_table1411
- GCC_except_table1488
- GCC_except_table1556
- GCC_except_table1581
- GCC_except_table1620
- GCC_except_table1632
- GCC_except_table1635
- GCC_except_table1649
- GCC_except_table1685
- GCC_except_table1715
- GCC_except_table1727
- GCC_except_table1729
- GCC_except_table1759
- GCC_except_table1762
- GCC_except_table1764
- GCC_except_table1769
- GCC_except_table1772
- GCC_except_table1871
- GCC_except_table1933
- GCC_except_table1988
- GCC_except_table2006
- GCC_except_table2160
- GCC_except_table2207
- GCC_except_table2213
- GCC_except_table2221
- GCC_except_table2222
- GCC_except_table2436
- GCC_except_table2455
- GCC_except_table248
- GCC_except_table2545
- GCC_except_table2556
- GCC_except_table275
- GCC_except_table278
- GCC_except_table293
- GCC_except_table337
- GCC_except_table351
- GCC_except_table373
- GCC_except_table381
- GCC_except_table549
- GCC_except_table676
- GCC_except_table783
- GCC_except_table948
- GCC_except_table982
CStrings:
+ "UIAccessibilityStorageKeyOverridesKeyboardObscuring"
+ "id  _Nullable UIAccessibilityGetKeyboardLayoutStar(void)"
+ "id  _Nullable _massageNotificationDataBeforePost(UIAccessibilityNotifications, __strong id _Nullable)"
+ "statusBarOrientation"
- "id UIAccessibilityGetKeyboardLayoutStar(void)"
- "id _massageNotificationDataBeforePost(UIAccessibilityNotifications, __strong id)"
```
