## OnBoardingKit

> `/System/Library/PrivateFrameworks/OnBoardingKit.framework/OnBoardingKit`

```diff

-3977.0.23.0.0
-  __TEXT.__text: 0x48830
-  __TEXT.__objc_methlist: 0x61bc
-  __TEXT.__cstring: 0x1939
+3977.1.3.2.0
+  __TEXT.__text: 0x48f40
+  __TEXT.__objc_methlist: 0x62c4
+  __TEXT.__cstring: 0x1989
   __TEXT.__const: 0x504
   __TEXT.__oslogstring: 0x136c
   __TEXT.__ustring: 0x4

   __TEXT.__constg_swiftt: 0x50
   __TEXT.__swift5_fieldmd: 0x10
   __TEXT.__swift5_types: 0x4
-  __TEXT.__unwind_info: 0x1000
+  __TEXT.__unwind_info: 0x1040
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x708
-  __DATA_CONST.__objc_classlist: 0x2d8
+  __DATA_CONST.__const: 0x758
+  __DATA_CONST.__objc_classlist: 0x2e0
   __DATA_CONST.__objc_catlist: 0x38
   __DATA_CONST.__objc_protolist: 0x98
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x3fb0
+  __DATA_CONST.__objc_selrefs: 0x4048
   __DATA_CONST.__objc_protorefs: 0x10
-  __DATA_CONST.__objc_superrefs: 0x290
+  __DATA_CONST.__objc_superrefs: 0x298
   __DATA_CONST.__objc_arraydata: 0x90
   __DATA_CONST.__got: 0x4f8
   __AUTH_CONST.__const: 0x1c0
-  __AUTH_CONST.__cfstring: 0x2060
-  __AUTH_CONST.__objc_const: 0xdb38
-  __AUTH_CONST.__objc_intobj: 0x1f8
+  __AUTH_CONST.__cfstring: 0x2080
+  __AUTH_CONST.__objc_const: 0xdcd8
+  __AUTH_CONST.__objc_intobj: 0x228
   __AUTH_CONST.__objc_dictobj: 0x28
   __AUTH_CONST.__objc_arrayobj: 0x30
   __AUTH_CONST.__auth_got: 0x488
   __AUTH_CONST.__auth_ptr: 0x0
   __AUTH.__objc_data: 0xfa0
   __AUTH.__data: 0x98
-  __DATA.__objc_ivar: 0x684
+  __DATA.__objc_ivar: 0x69c
   __DATA.__data: 0x720
   __DATA.__bss: 0x48
   __DATA.__common: 0x60
-  __DATA_DIRTY.__objc_data: 0xc80
+  __DATA_DIRTY.__objc_data: 0xcd0
   __DATA_DIRTY.__data: 0x8
   __DATA_DIRTY.__bss: 0x58
   - /System/Library/Frameworks/Accessibility.framework/Accessibility

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 1874
-  Symbols:   3448
-  CStrings:  375
+  Functions: 1897
+  Symbols:   3484
+  CStrings:  378
 
Symbols:
+ -[OBButtonTray _updatePrivacyLinkControllerMarginConstraints]
+ -[OBHeaderBadgeLabel intrinsicContentSize]
+ -[OBPrivacyLinkButton _isLaidOutEdgeToEdgeWithWindow]
+ -[OBPrivacyLinkButton _setSafeAreaAnchoringTrustedForContentGutter:]
+ -[OBPrivacyLinkButton _textLeadingContainerConstraintForTesting]
+ -[OBSetupAssistantSpinnerController _accessibilityLayoutTopOffset]
+ -[OBSetupAssistantSpinnerController _titleTextStyle]
+ -[OBTextAccessoryButton intrinsicContentSize]
+ -[OBTextAccessoryButton lastIntrinsicContentSizeWidth]
+ -[OBTextAccessoryButton layoutSubviews]
+ -[OBTextAccessoryButton setLastIntrinsicContentSizeWidth:]
+ -[OBTextBulletedListItem dotSize]
+ -[OBTrayButton .cxx_destruct]
+ -[OBTrayButton _restoreStashedTitles]
+ -[OBTrayButton _stashTitles]
+ -[OBTrayButton setStashedAttributedTitles:]
+ -[OBTrayButton setStashedTitles:]
+ -[OBTrayButton stashedAttributedTitles]
+ -[OBTrayButton stashedTitles]
+ -[OBWelcomeController forceHeaderInLeadingColumn]
+ -[OBWelcomeController leadingColumnHeaderCenterYConstraint]
+ -[OBWelcomeController setForceHeaderInLeadingColumn:]
+ -[OBWelcomeController setLeadingColumnHeaderCenterYConstraint:]
+ _OBJC_CLASS_$_OBHeaderBadgeLabel
+ _OBJC_IVAR_$_OBPrivacyLinkButton._safeAreaAnchoringTrustedForContentGutter
+ _OBJC_IVAR_$_OBTextAccessoryButton._lastIntrinsicContentSizeWidth
+ _OBJC_IVAR_$_OBTrayButton._stashedAttributedTitles
+ _OBJC_IVAR_$_OBTrayButton._stashedTitles
+ _OBJC_IVAR_$_OBWelcomeController._forceHeaderInLeadingColumn
+ _OBJC_IVAR_$_OBWelcomeController._leadingColumnHeaderCenterYConstraint
+ _OBJC_METACLASS_$_OBHeaderBadgeLabel
+ _OBRectIsFlushHorizontally
+ __OBJC_$_INSTANCE_METHODS_OBHeaderBadgeLabel
+ __OBJC_CLASS_RO_$_OBHeaderBadgeLabel
+ __OBJC_METACLASS_RO_$_OBHeaderBadgeLabel
+ ___37-[OBTrayButton _restoreStashedTitles]_block_invoke
+ ___37-[OBTrayButton _restoreStashedTitles]_block_invoke_2
+ ___block_descriptor_40_e8_32s_e35_v32?0"NSNumber"8"NSString"16^B24ls32l8
+ ___block_descriptor_40_e8_32s_e45_v32?0"NSNumber"8"NSAttributedString"16^B24ls32l8
- -[OBPrivacyLinkButton _isLaidOutEdgeToEdgeWithSuperview]
- -[OBSetupAssistantSpinnerController _updateTextColor]
- -[OBTableWelcomeController _setAdditionalTopInsetForColumnLayout]
CStrings:
+ "-seed"
+ "v32@?0@\"NSNumber\"8@\"NSAttributedString\"16^B24"
+ "v32@?0@\"NSNumber\"8@\"NSString\"16^B24"
```
