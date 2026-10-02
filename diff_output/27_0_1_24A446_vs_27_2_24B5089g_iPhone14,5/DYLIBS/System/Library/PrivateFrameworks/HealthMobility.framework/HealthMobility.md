## HealthMobility

> `/System/Library/PrivateFrameworks/HealthMobility.framework/HealthMobility`

```diff

-7027.0.72.2.8
-  __TEXT.__text: 0x75e0
-  __TEXT.__objc_methlist: 0xc74
+7027.1.45.2.4
+  __TEXT.__text: 0x5b8c
+  __TEXT.__objc_methlist: 0xb3c
   __TEXT.__const: 0x88
-  __TEXT.__cstring: 0xe30
-  __TEXT.__oslogstring: 0x40b
+  __TEXT.__cstring: 0xdcc
+  __TEXT.__oslogstring: 0x3ce
   __TEXT.__gcc_except_tab: 0x8c
-  __TEXT.__unwind_info: 0x2b8
+  __TEXT.__unwind_info: 0x270
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x480
-  __DATA_CONST.__objc_classlist: 0x78
+  __DATA_CONST.__const: 0x440
+  __DATA_CONST.__objc_classlist: 0x68
   __DATA_CONST.__objc_catlist: 0x10
   __DATA_CONST.__objc_protolist: 0x48
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x900
+  __DATA_CONST.__objc_selrefs: 0x750
   __DATA_CONST.__objc_protorefs: 0x10
   __DATA_CONST.__objc_superrefs: 0x50
-  __DATA_CONST.__got: 0x190
-  __AUTH_CONST.__const: 0xc0
+  __DATA_CONST.__got: 0x108
+  __AUTH_CONST.__const: 0x40
   __AUTH_CONST.__cfstring: 0xba0
-  __AUTH_CONST.__objc_const: 0x16f8
+  __AUTH_CONST.__objc_const: 0x15d8
   __AUTH_CONST.__objc_intobj: 0xa8
   __AUTH_CONST.__auth_got: 0x0
-  __AUTH.__objc_data: 0x280
+  __AUTH.__objc_data: 0x230
   __DATA.__objc_ivar: 0xbc
   __DATA.__data: 0x370
   __DATA.__bss: 0x80
-  __DATA_DIRTY.__objc_data: 0x230
+  __DATA_DIRTY.__objc_data: 0x1e0
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/Foundation.framework/Foundation
   - /System/Library/Frameworks/HealthKit.framework/HealthKit

   - /System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 254
-  Symbols:   624
-  CStrings:  140
+  Functions: 226
+  Symbols:   565
+  CStrings:  137
 
Symbols:
- +[HKMobilityNotificationRequestManager postWalkingSteadinessNotificationWithHealthStore:category:completion:]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _advertisableFeature]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _backgroundDelivery]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _classification]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _eventSubmission]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _featureIdentifier]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _notInPregnancyMode]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _notOnboardedHealthChecklist]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _notificationSettingsVisibility]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _onboardedHealthChecklist]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _onboardingInitiation]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _pregnancyAdjustmentEligibility]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _promotionFeatureTag]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _promotion]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _requirementIdentifiersForRequirements:]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements backgroundDeliveryIdentifiers]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements classificationGeneration]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements eventSubmission]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements notInPregnancyModeRequirementIdentifiers]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements notificationSettingsVisibility]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements onboardingInitiationRequirementIdentifiers]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements promotionFeatureTagRequirementIdentifiers]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements promotionRequirementIdentifiers]
- +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements requirementSet]
- _HKFeatureAvailabilityContextAdvertisableFeature
- _HKFeatureAvailabilityContextBackgroundDelivery
- _HKFeatureAvailabilityContextOmitPregnancyContent
- _HKFeatureAvailabilityContextOnboardingInitiation
- _HKFeatureAvailabilityContextOnboardingPromotion
- _HKFeatureAvailabilityContextPregnancyAdjustmentEligibility
- _HKFeatureAvailabilityRequirementIdentifierFeatureIsOn
- _HKFeatureAvailabilityRequirementIdentifierOnboardingNotAcknowledged
- _HKFeatureAvailabilityRequirementIdentifierOnboardingRecordIsPresent
- _HKFeatureIdentifierWalkingSteadinessClassifications
- _OBJC_CLASS_$_HKFeatureAvailabilityRequirementSet
- _OBJC_CLASS_$_HKFeatureAvailabilityRequirements
- _OBJC_CLASS_$_HKFeatureStatusManager
- _OBJC_CLASS_$_HKMobilityNotificationRequestManager
- _OBJC_CLASS_$_HKMobilityWalkingSteadinessFeatureAvailabilityRequirements
- _OBJC_CLASS_$_HKNotificationStore
- _OBJC_CLASS_$_NSDictionary
- _OBJC_METACLASS_$_HKMobilityNotificationRequestManager
- _OBJC_METACLASS_$_HKMobilityWalkingSteadinessFeatureAvailabilityRequirements
- __OBJC_$_CLASS_METHODS_HKMobilityNotificationRequestManager
- __OBJC_$_CLASS_METHODS_HKMobilityWalkingSteadinessFeatureAvailabilityRequirements
- __OBJC_CLASS_RO_$_HKMobilityNotificationRequestManager
- __OBJC_CLASS_RO_$_HKMobilityWalkingSteadinessFeatureAvailabilityRequirements
- __OBJC_METACLASS_RO_$_HKMobilityNotificationRequestManager
- __OBJC_METACLASS_RO_$_HKMobilityWalkingSteadinessFeatureAvailabilityRequirements
- ___101+[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _requirementIdentifiersForRequirements:]_block_invoke
- ___82+[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _advertisableFeature]_block_invoke
- ___93+[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _notificationSettingsVisibility]_block_invoke
- ___93+[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements _pregnancyAdjustmentEligibility]_block_invoke
- ___block_descriptor_32_e44_B16?0"<HKFeatureAvailabilityRequirement>"8l
- ___block_descriptor_32_e54_"NSString"16?0"<HKFeatureAvailabilityRequirement>"8l
- _kHKAgeGatingKeyEnableWalkingSteadiness
- _kHKHealthAppBundleIdentifier
- _objc_release_x27
- _objc_release_x28
CStrings:
- "@\"NSString\"16@?0@\"<HKFeatureAvailabilityRequirement>\"8"
- "B16@?0@\"<HKFeatureAvailabilityRequirement>\"8"
- "[%{public}@]: Unable to get featureStatus. error: %{public}@"
```
