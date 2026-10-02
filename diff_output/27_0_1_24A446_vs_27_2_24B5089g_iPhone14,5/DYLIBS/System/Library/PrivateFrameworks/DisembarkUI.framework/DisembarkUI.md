## DisembarkUI

> `/System/Library/PrivateFrameworks/DisembarkUI.framework/DisembarkUI`

```diff

-285.0.0.0.0
-  __TEXT.__text: 0x20ac0
-  __TEXT.__objc_methlist: 0x2a38
-  __TEXT.__const: 0x194
-  __TEXT.__cstring: 0x1ea4
-  __TEXT.__gcc_except_tab: 0x2a4
-  __TEXT.__oslogstring: 0x1101
+285.1.4.0.0
+  __TEXT.__text: 0x22cc8
+  __TEXT.__objc_methlist: 0x2dd0
+  __TEXT.__const: 0x1b4
+  __TEXT.__cstring: 0x20d8
+  __TEXT.__gcc_except_tab: 0x2b8
+  __TEXT.__oslogstring: 0x11cf
   __TEXT.__dlopen_cstrs: 0xc6
-  __TEXT.__swift5_typeref: 0x1c0
-  __TEXT.__swift5_capture: 0xf0
+  __TEXT.__swift5_typeref: 0x202
+  __TEXT.__swift5_capture: 0x12c
   __TEXT.__constg_swiftt: 0xb8
   __TEXT.__swift5_reflstr: 0xf
   __TEXT.__swift5_fieldmd: 0x2c

   __TEXT.__swift_as_entry: 0x8
   __TEXT.__swift_as_ret: 0xc
   __TEXT.__swift_as_cont: 0x10
-  __TEXT.__unwind_info: 0x850
-  __TEXT.__eh_frame: 0x180
+  __TEXT.__unwind_info: 0x8e8
+  __TEXT.__eh_frame: 0x188
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x1070
-  __DATA_CONST.__objc_classlist: 0x180
+  __DATA_CONST.__const: 0x10f8
+  __DATA_CONST.__objc_classlist: 0x198
   __DATA_CONST.__objc_catlist: 0x10
-  __DATA_CONST.__objc_protolist: 0xf0
+  __DATA_CONST.__objc_protolist: 0x108
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x1b20
+  __DATA_CONST.__objc_selrefs: 0x1df8
   __DATA_CONST.__objc_protorefs: 0x18
-  __DATA_CONST.__objc_superrefs: 0xc0
-  __DATA_CONST.__got: 0x4c8
-  __AUTH_CONST.__const: 0x3e0
-  __AUTH_CONST.__cfstring: 0x16c0
-  __AUTH_CONST.__objc_const: 0x50a8
+  __DATA_CONST.__objc_superrefs: 0xc8
+  __DATA_CONST.__got: 0x548
+  __AUTH_CONST.__const: 0x4d0
+  __AUTH_CONST.__cfstring: 0x1820
+  __AUTH_CONST.__objc_const: 0x55b8
   __AUTH_CONST.__objc_intobj: 0x30
-  __AUTH_CONST.__auth_got: 0x5d8
+  __AUTH_CONST.__auth_got: 0x5f0
   __AUTH_CONST.__auth_ptr: 0x0
-  __AUTH.__objc_data: 0xf98
-  __AUTH.__data: 0x140
-  __DATA.__objc_ivar: 0x2d4
-  __DATA.__data: 0xaf0
+  __AUTH.__objc_data: 0x10c8
+  __AUTH.__data: 0x190
+  __DATA.__objc_ivar: 0x2f4
+  __DATA.__data: 0xc40
   __DATA.__bss: 0x30
   - /System/Library/Frameworks/Accounts.framework/Accounts
   - /System/Library/Frameworks/AppManagedFeatures.framework/AppManagedFeatures

   - /System/Library/Frameworks/Foundation.framework/Foundation
   - /System/Library/Frameworks/Network.framework/Network
   - /System/Library/Frameworks/PassKit.framework/PassKit
+  - /System/Library/Frameworks/QuartzCore.framework/QuartzCore
   - /System/Library/Frameworks/UIKit.framework/UIKit
   - /System/Library/PrivateFrameworks/AppManagedFeaturesUI.framework/AppManagedFeaturesUI
   - /System/Library/PrivateFrameworks/AppleAccount.framework/AppleAccount

   - /System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration
   - /System/Library/PrivateFrameworks/MobileBackup.framework/MobileBackup
   - /System/Library/PrivateFrameworks/NewDeviceOutreach.framework/NewDeviceOutreach
+  - /System/Library/PrivateFrameworks/OSEligibility.framework/OSEligibility
   - /System/Library/PrivateFrameworks/OnBoardingKit.framework/OnBoardingKit
   - /System/Library/PrivateFrameworks/PassKitCore.framework/PassKitCore
   - /System/Library/PrivateFrameworks/SIMSetupSupport.framework/SIMSetupSupport

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 988
-  Symbols:   1932
-  CStrings:  384
+  Functions: 1055
+  Symbols:   2025
+  CStrings:  406
 
Symbols:
+ -[DKAnalyticsHandler pendingSanitizeStorageEligible]
+ -[DKAnalyticsHandler pendingSanitizeStorageSelected]
+ -[DKAnalyticsHandler setPendingSanitizeStorageEligible:]
+ -[DKAnalyticsHandler setPendingSanitizeStorageSelected:]
+ -[DKEraseFlow _allowAppSwitching]
+ -[DKEraseFlow _disallowAppSwitching]
+ -[DKEraseFlow _isAppSwitchingAllowedForState:]
+ -[DKEraseFlow captureButtonSuppressionAssertion]
+ -[DKEraseFlow sanitizeStorage]
+ -[DKEraseFlow setCaptureButtonSuppressionAssertion:]
+ -[DKEraseFlow setSanitizeStorage:]
+ -[DKIntroViewController _createSanitizeStorageLearnMoreView]
+ -[DKIntroViewController _createSanitizeStorageRowView]
+ -[DKIntroViewController _presentSanitizeStorageConfirmation:]
+ -[DKIntroViewController sanitizeStorageRowView]
+ -[DKIntroViewController setSanitizeStorageRowView:]
+ -[DKIntroViewController textView:primaryActionForTextItem:defaultAction:]
+ -[DKNotableUserData isEligibleForStorageSanitize]
+ -[DKNotableUserData partnerFinancingInformation]
+ -[DKNotableUserData setIsEligibleForStorageSanitize:]
+ -[DKNotableUserData setPartnerFinancingInformation:]
+ -[DKNotableUserDataProvider sanitizeStorageProvider]
+ -[DKNotableUserDataProvider setSanitizeStorageProvider:]
+ -[DKPartnerFinancingConfirmationController initWithPartnerFinancingInformation:canMakePhoneCalls:continueBlock:notNowBlock:]
+ -[DKPartnerFinancingConfirmationController partnerFinancingInformation]
+ -[DKPartnerFinancingConfirmationController setPartnerFinancingInformation:]
+ -[DKSanitizeStorageManager _determineSanitizeStorageEligibility]
+ -[DKSanitizeStorageManager initWithEligibility:]
+ -[DKSanitizeStorageManager init]
+ -[DKSanitizeStorageManager isEligible]
+ -[DKSanitizeStorageManager sanitizeStorageEligible]
+ -[DKSanitizeStorageManager setSanitizeStorageEligible:]
+ _NSFontAttributeName
+ _NSForegroundColorAttributeName
+ _NSLinkAttributeName
+ _OBJC_CLASS_$_DKPartnerFinancingInformation
+ _OBJC_CLASS_$_DKSanitizeStorageManager
+ _OBJC_CLASS_$_DKSanitizeStorageRowView
+ _OBJC_CLASS_$_NSAttributedString
+ _OBJC_CLASS_$_NSMutableAttributedString
+ _OBJC_CLASS_$_OSEligibilityQuery
+ _OBJC_CLASS_$_UIAction
+ _OBJC_CLASS_$_UISwitch
+ _OBJC_CLASS_$_UITextView
+ _OBJC_IVAR_$_DKAnalyticsHandler._pendingSanitizeStorageEligible
+ _OBJC_IVAR_$_DKAnalyticsHandler._pendingSanitizeStorageSelected
+ _OBJC_IVAR_$_DKEraseFlow._captureButtonSuppressionAssertion
+ _OBJC_IVAR_$_DKEraseFlow._sanitizeStorage
+ _OBJC_IVAR_$_DKIntroViewController._sanitizeStorageRowView
+ _OBJC_IVAR_$_DKNotableUserData._isEligibleForStorageSanitize
+ _OBJC_IVAR_$_DKNotableUserData._partnerFinancingInformation
+ _OBJC_IVAR_$_DKNotableUserDataProvider._sanitizeStorageProvider
+ _OBJC_IVAR_$_DKPartnerFinancingConfirmationController._partnerFinancingInformation
+ _OBJC_IVAR_$_DKSanitizeStorageManager._sanitizeStorageEligible
+ _OBJC_METACLASS_$_DKPartnerFinancingInformation
+ _OBJC_METACLASS_$_DKSanitizeStorageManager
+ _OBJC_METACLASS_$_DKSanitizeStorageRowView
+ _UIEdgeInsetsZero
+ _UIFontTextStyleCaption2
+ __DATA_DKPartnerFinancingInformation
+ __DATA_DKSanitizeStorageRowView
+ __INSTANCE_METHODS_DKPartnerFinancingInformation
+ __INSTANCE_METHODS_DKSanitizeStorageRowView
+ __IVARS_DKPartnerFinancingInformation
+ __IVARS_DKSanitizeStorageRowView
+ __METACLASS_DATA_DKPartnerFinancingInformation
+ __METACLASS_DATA_DKSanitizeStorageRowView
+ __OBJC_$_INSTANCE_METHODS_DKSanitizeStorageManager
+ __OBJC_$_INSTANCE_VARIABLES_DKSanitizeStorageManager
+ __OBJC_$_PROP_LIST_DKSanitizeStorageManager
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_DKSanitizeStorageProvider
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_OPT_UIScrollViewDelegate
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_OPT_UITextViewDelegate
+ __OBJC_$_PROTOCOL_METHOD_TYPES_DKSanitizeStorageProvider
+ __OBJC_$_PROTOCOL_METHOD_TYPES_UIScrollViewDelegate
+ __OBJC_$_PROTOCOL_METHOD_TYPES_UITextViewDelegate
+ __OBJC_$_PROTOCOL_REFS_DKSanitizeStorageProvider
+ __OBJC_$_PROTOCOL_REFS_UIScrollViewDelegate
+ __OBJC_$_PROTOCOL_REFS_UITextViewDelegate
+ __OBJC_CLASS_PROTOCOLS_$_DKIntroViewController
+ __OBJC_CLASS_PROTOCOLS_$_DKSanitizeStorageManager
+ __OBJC_CLASS_RO_$_DKSanitizeStorageManager
+ __OBJC_LABEL_PROTOCOL_$_DKSanitizeStorageProvider
+ __OBJC_LABEL_PROTOCOL_$_UIScrollViewDelegate
+ __OBJC_LABEL_PROTOCOL_$_UITextViewDelegate
+ __OBJC_METACLASS_RO_$_DKSanitizeStorageManager
+ __OBJC_PROTOCOL_$_DKSanitizeStorageProvider
+ __OBJC_PROTOCOL_$_UIScrollViewDelegate
+ __OBJC_PROTOCOL_$_UITextViewDelegate
+ __PROPERTIES_DKPartnerFinancingInformation
+ __PROPERTIES_DKSanitizeStorageRowView
+ ___54-[DKIntroViewController _createSanitizeStorageRowView]_block_invoke
+ ___54-[DKIntroViewController _createSanitizeStorageRowView]_block_invoke_2
+ ___61-[DKIntroViewController _presentSanitizeStorageConfirmation:]_block_invoke
+ ___61-[DKIntroViewController _presentSanitizeStorageConfirmation:]_block_invoke_2
+ ___73-[DKIntroViewController textView:primaryActionForTextItem:defaultAction:]_block_invoke
+ ___block_descriptor_32_e11_v16?0B8B12l
+ ___block_descriptor_40_e8_32s_e11_v16?0B8B12ls32l8
+ ___block_descriptor_40_e8_32s_e18_v16?0"UIAction"8ls32l8
+ ___block_descriptor_48_e8_32s40bs_e39_v16?0"DKPartnerFinancingInformation"8ls32l8s40l8
+ ___block_descriptor_56_e8_32s40s48bs_e27_v16?0"DKNotableUserData"8ls32l8s40l8s48l8
+ _kCACornerCurveContinuous
+ _keypath_get_selector_switchToggled
+ _swift_getWitnessTable
+ _swift_retain
+ _swift_retain_x1
+ _symbolic SbytIegnr_
+ _symbolic So29DKPartnerFinancingInformationCSgIegg_
+ _symbolic So29DKPartnerFinancingInformationCSgIeyBy_
- -[DKEraseFlow _allowHomeButton]
- -[DKEraseFlow _disallowHomeButton]
- -[DKEraseFlow _isHomeButtonAllowedForState:]
- -[DKNotableUserData isPartnerFinancingEnabled]
- -[DKNotableUserData setIsPartnerFinancingEnabled:]
- -[DKPartnerFinancingConfirmationController initWithPartnerFinancingProvider:canMakePhoneCalls:continueBlock:notNowBlock:]
- -[DKPartnerFinancingConfirmationController partnerFinancingProvider]
- -[DKPartnerFinancingConfirmationController setPartnerFinancingProvider:]
- _OBJC_IVAR_$_DKNotableUserData._isPartnerFinancingEnabled
- _OBJC_IVAR_$_DKPartnerFinancingConfirmationController._partnerFinancingProvider
- __IVARS_DKPartnerFinancingManager
- __OBJC_$_PROP_LIST_DKPartnerFinancingProvider
- __PROPERTIES_DKPartnerFinancingManager
- ___block_descriptor_32_e8_v12?0B8l
- ___block_descriptor_49_e8_32s40bs_e27_v16?0"DKNotableUserData"8ls32l8s40l8
- _symbolic So25DKPartnerFinancingManagerC
CStrings:
+ " "
+ "&"
+ "Allowing capture button use..."
+ "Device eligibility for sanitization: %lu"
+ "Disallowing capture button use..."
+ "DisembarkUI"
+ "DisembarkUI/DKSanitizeStorageRowView.swift"
+ "DisembarkUIModule.DKSanitizeStorageRowView"
+ "DisembarkUI_Private.DKPartnerFinancingInformation"
+ "Failed to determine Sanitize Storage eligibility: %@"
+ "No logo found for: "
+ "SANITIZE_STORAGE"
+ "SANITIZE_STORAGE_CONFIRMATION_ALERT_BUTTON"
+ "SANITIZE_STORAGE_CONFIRMATION_ALERT_MESSAGE"
+ "SANITIZE_STORAGE_CONFIRMATION_ALERT_TITLE"
+ "SANITIZE_STORAGE_LEARN_MORE"
+ "SANITIZE_STORAGE_LEARN_MORE_BODY"
+ "SANITIZE_STORAGE_LEARN_MORE_URL"
+ "Somehow attempting to show the partner financing controller with no partner financing information loaded."
+ "Successfully prepared partner financing information"
+ "init()"
+ "init(frame:)"
+ "sanitizeStorageEligible"
+ "sanitizeStorageSelected"
+ "self.sanitizeStorageProvider"
+ "v16@?0@\"DKPartnerFinancingInformation\"8"
+ "v16@?0@\"UIAction\"8"
- "\t"
- " and phone number: "
- "%"
- "Got an app managed features configuration with company: "
- "Missing company name or phone number for partner financing"
```
