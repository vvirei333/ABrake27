## HealthMobilityDaemon

> `/System/Library/PrivateFrameworks/HealthMobilityDaemon.framework/HealthMobilityDaemon`

```diff

-7027.0.72.2.8
-  __TEXT.__text: 0x7fb8
-  __TEXT.__objc_methlist: 0xc74
-  __TEXT.__const: 0x80
-  __TEXT.__oslogstring: 0x17fb
-  __TEXT.__cstring: 0x4c6
+7027.1.45.2.4
+  __TEXT.__text: 0x75c8
+  __TEXT.__objc_methlist: 0xbfc
+  __TEXT.__const: 0x78
+  __TEXT.__oslogstring: 0x1546
+  __TEXT.__cstring: 0x4b3
   __TEXT.__gcc_except_tab: 0x18
-  __TEXT.__unwind_info: 0x268
+  __TEXT.__unwind_info: 0x250
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x1a8
-  __DATA_CONST.__objc_classlist: 0x48
+  __DATA_CONST.__const: 0x180
+  __DATA_CONST.__objc_classlist: 0x50
   __DATA_CONST.__objc_catlist: 0x10
   __DATA_CONST.__objc_protolist: 0x90
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x8f0
+  __DATA_CONST.__objc_selrefs: 0x8b0
   __DATA_CONST.__objc_superrefs: 0x38
   __DATA_CONST.__objc_arraydata: 0x50
-  __DATA_CONST.__got: 0x288
+  __DATA_CONST.__got: 0x290
   __AUTH_CONST.__const: 0x40
   __AUTH_CONST.__cfstring: 0x300
-  __AUTH_CONST.__objc_const: 0x1180
-  __AUTH_CONST.__objc_intobj: 0xc0
+  __AUTH_CONST.__objc_const: 0x11f0
+  __AUTH_CONST.__objc_intobj: 0xa8
   __AUTH_CONST.__objc_arrayobj: 0xa8
   __AUTH_CONST.__auth_got: 0x0
   __AUTH.__objc_data: 0xa0
   __DATA.__objc_ivar: 0x7c
   __DATA.__data: 0x6c0
-  __DATA_DIRTY.__objc_data: 0x230
+  __DATA_DIRTY.__objc_data: 0x280
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/Foundation.framework/Foundation
   - /System/Library/Frameworks/HealthKit.framework/HealthKit
   - /System/Library/Frameworks/UserNotifications.framework/UserNotifications
   - /System/Library/PrivateFrameworks/HealthDaemon.framework/HealthDaemon
   - /System/Library/PrivateFrameworks/HealthDaemonFoundation.framework/HealthDaemonFoundation
+  - /System/Library/PrivateFrameworks/HealthFeatures.framework/HealthFeatures
   - /System/Library/PrivateFrameworks/HealthMobility.framework/HealthMobility
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 189
-  Symbols:   520
-  CStrings:  116
+  Functions: 179
+  Symbols:   515
+  CStrings:  104
 
Symbols:
+ +[HKMobilityWalkingSteadinessFeatureAvailabilityRequirements requirementSet]
+ _OBJC_CLASS_$_HKFeatureAvailabilityRequirementSet
+ _OBJC_METACLASS_$_HKMobilityWalkingSteadinessFeatureAvailabilityRequirements
+ __OBJC_$_CLASS_METHODS_HKMobilityWalkingSteadinessFeatureAvailabilityRequirements
+ __OBJC_CLASS_RO_$_HKMobilityWalkingSteadinessFeatureAvailabilityRequirements
+ __OBJC_METACLASS_RO_$_HKMobilityWalkingSteadinessFeatureAvailabilityRequirements
- -[HDMobilityWalkingSteadinessFeatureAvailabilityManager _determineIsSupportedWithOnboardingCompletions:regionCheckBlock:]
- -[HDMobilityWalkingSteadinessFeatureAvailabilityManager _localRegionCheckWithCountryCode:]
- -[HDMobilityWalkingSteadinessFeatureAvailabilityManager _onboardedCountryCodeSupportedStateWithError:]
- -[HDMobilityWalkingSteadinessFeatureAvailabilityManager _onboardingCompletionsForHighestVersionWithError:]
- -[HDMobilityWalkingSteadinessFeatureAvailabilityManager earliestDateLowestOnboardingVersionCompletedWithError:]
- -[HDMobilityWalkingSteadinessFeatureAvailabilityManager isCurrentOnboardingVersionCompletedWithCompletion:]
- -[HDMobilityWalkingSteadinessFeatureAvailabilityManager isCurrentOnboardingVersionCompletedWithError:]
- -[HDMobilityWalkingSteadinessFeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:]
- ___102-[HDMobilityWalkingSteadinessFeatureAvailabilityManager _onboardedCountryCodeSupportedStateWithError:]_block_invoke
- ___102-[HDMobilityWalkingSteadinessFeatureAvailabilityManager isCurrentOnboardingVersionCompletedWithError:]_block_invoke
- ___block_descriptor_40_e8_32s_e18_B16?0"NSString"8ls32l8
CStrings:
- "B16@?0@\"NSString\"8"
- "[%{public}@] Country code %{private}@ not supported"
- "[%{public}@] Country code %{private}@ supported"
- "[%{public}@] Error retrieving onboarding completions: %{public}@"
- "[%{public}@] Failed to fetch highest version of onboarding completed: %{public}@"
- "[%{public}@] No onboarding completion found"
- "[%{public}@] No onboarding completions meet the current requirements"
- "[%{public}@] Onboarded country code state: %{public}i"
- "[%{public}@] Onboarding completion found that does not satisfy region check"
- "[%{public}@] Onboarding completion found that satisfies region check"
- "[%{public}@] Onboarding completion found with no country code"
- "[%{public}@] Onboarding completion found with older version than current"
```
