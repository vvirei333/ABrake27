## HealthMenstrualCyclesDaemon

> `/System/Library/PrivateFrameworks/HealthMenstrualCyclesDaemon.framework/HealthMenstrualCyclesDaemon`

```diff

-7027.0.72.2.8
-  __TEXT.__text: 0x8ddd4
-  __TEXT.__objc_methlist: 0x372c
-  __TEXT.__const: 0x1cb0
-  __TEXT.__gcc_except_tab: 0xdec
-  __TEXT.__oslogstring: 0x6b0c
-  __TEXT.__cstring: 0x3901
-  __TEXT.__constg_swiftt: 0x7fc
-  __TEXT.__swift5_typeref: 0xd14
-  __TEXT.__swift5_reflstr: 0x851
-  __TEXT.__swift5_fieldmd: 0x718
-  __TEXT.__swift5_builtin: 0x50
-  __TEXT.__swift5_assocty: 0x220
-  __TEXT.__swift5_capture: 0x244
-  __TEXT.__swift5_proto: 0x11c
-  __TEXT.__swift5_types: 0x94
+7027.1.45.2.4
+  __TEXT.__text: 0x9203c
+  __TEXT.__objc_methlist: 0x37ec
+  __TEXT.__const: 0x1e30
+  __TEXT.__gcc_except_tab: 0xe28
+  __TEXT.__oslogstring: 0x6b5c
+  __TEXT.__cstring: 0x39c1
+  __TEXT.__constg_swiftt: 0x81c
+  __TEXT.__swift5_typeref: 0xd1a
+  __TEXT.__swift5_reflstr: 0x871
+  __TEXT.__swift5_fieldmd: 0x740
+  __TEXT.__swift5_builtin: 0x64
+  __TEXT.__swift5_assocty: 0x258
+  __TEXT.__swift5_capture: 0x274
+  __TEXT.__swift5_proto: 0x134
+  __TEXT.__swift5_types: 0x98
   __TEXT.__swift5_protos: 0xc
-  __TEXT.__unwind_info: 0x17d8
-  __TEXT.__eh_frame: 0xe90
+  __TEXT.__unwind_info: 0x18a0
+  __TEXT.__eh_frame: 0xed8
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x1020
+  __DATA_CONST.__const: 0x10a0
   __DATA_CONST.__objc_classlist: 0x1a8
-  __DATA_CONST.__objc_catlist: 0x88
-  __DATA_CONST.__objc_protolist: 0x240
+  __DATA_CONST.__objc_catlist: 0x90
+  __DATA_CONST.__objc_protolist: 0x280
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__weak_got: 0x8
-  __DATA_CONST.__objc_selrefs: 0x2e18
-  __DATA_CONST.__objc_protorefs: 0xc0
+  __DATA_CONST.__objc_selrefs: 0x2e58
+  __DATA_CONST.__objc_protorefs: 0xe0
   __DATA_CONST.__objc_superrefs: 0x118
   __DATA_CONST.__objc_arraydata: 0xc8
-  __DATA_CONST.__got: 0xd38
-  __AUTH_CONST.__const: 0x1260
-  __AUTH_CONST.__cfstring: 0x2420
-  __AUTH_CONST.__objc_const: 0x6928
+  __DATA_CONST.__got: 0xd48
+  __AUTH_CONST.__const: 0x12b8
+  __AUTH_CONST.__cfstring: 0x2460
+  __AUTH_CONST.__objc_const: 0x6a48
   __AUTH_CONST.__weak_auth_got: 0x10
   __AUTH_CONST.__objc_intobj: 0x258
   __AUTH_CONST.__objc_doubleobj: 0x40
   __AUTH_CONST.__objc_arrayobj: 0x78
-  __AUTH_CONST.__auth_got: 0x11b8
-  __AUTH_CONST.__auth_ptr: 0x738
+  __AUTH_CONST.__auth_got: 0x11f8
+  __AUTH_CONST.__auth_ptr: 0x758
   __AUTH.__objc_data: 0x410
   __AUTH.__data: 0x18
-  __DATA.__objc_ivar: 0x4b8
-  __DATA.__data: 0x1738
+  __DATA.__objc_ivar: 0x4bc
+  __DATA.__data: 0x18f8
   __DATA.__objc_stublist: 0x8
-  __DATA.__bss: 0x10e0
+  __DATA.__bss: 0x1260
   __DATA_DIRTY.__objc_data: 0x11c0
-  __DATA_DIRTY.__data: 0xc90
-  __DATA_DIRTY.__bss: 0x1200
+  __DATA_DIRTY.__data: 0xd20
+  __DATA_DIRTY.__bss: 0x1380
   __DATA_DIRTY.__common: 0x20
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/Foundation.framework/Foundation

   - /System/Library/PrivateFrameworks/HealthAlgorithms.framework/HealthAlgorithms
   - /System/Library/PrivateFrameworks/HealthDaemon.framework/HealthDaemon
   - /System/Library/PrivateFrameworks/HealthDaemonFoundation.framework/HealthDaemonFoundation
+  - /System/Library/PrivateFrameworks/HealthFeatures.framework/HealthFeatures
   - /System/Library/PrivateFrameworks/HealthKitOrchestrationAdditions.framework/HealthKitOrchestrationAdditions
   - /System/Library/PrivateFrameworks/HealthMenstrualCycles.framework/HealthMenstrualCycles
   - /System/Library/PrivateFrameworks/HealthOrchestration.framework/HealthOrchestration

   - /usr/lib/swift/libswiftCore.dylib
   - /usr/lib/swift/libswiftCoreAudio.dylib
   - /usr/lib/swift/libswiftCoreFoundation.dylib
+  - /usr/lib/swift/libswiftCoreImage.dylib
   - /usr/lib/swift/libswiftCoreLocation.dylib
   - /usr/lib/swift/libswiftDispatch.dylib
   - /usr/lib/swift/libswiftIntents.dylib

   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 2347
-  Symbols:   2958
-  CStrings:  827
+  Functions: 2424
+  Symbols:   3006
+  CStrings:  832
 
Symbols:
+ +[HDMCRecentBasalBodyTemperatureRangeQuery recentRangeForAnalysisWithProfile:latestEndDate:]
+ -[HDMCAnalysisManager _analysisWithAlgorithmsAnalysis:algorithmsCycles:recentSymptoms:mostRecentBasalBodyTemperature:lastLoggedDayIndex:lastMenstrualFlowDayIndex:currentDayIndex:numberOfDailySleepHeartRateStatisticsForPast100Days:numberOfDailyAwakeHeartRateStatisticsForPast100Days:featureSettings:useHeartRateInput:useWristTemperatureInput:deviationsFeatureSettings:addedCycleFactors:deletedCycleFactors:forPreview:replayingEarlierDay:]
+ -[HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:addedCycleFactors:deletedCycleFactors:mode:error:]
+ -[HDMCAnalysisManager analysisAsOfDayIndex:forceIncludeCycles:error:]
+ -[HDMCDaySummaryEnumerator initWithProfile:calendarCache:dayIndexRange:richTypeDayIndexRange:ascending:includeFactors:includeWristTemperature:]
+ -[HDMCRecentBasalBodyTemperatureRangeQuery initWithProfile:sampleLimit:upperQuantileBound:lowerQuantileBound:latestEndDate:]
+ GCC_except_table14
+ GCC_except_table19
+ GCC_except_table22
+ GCC_except_table25
+ GCC_except_table39
+ GCC_except_table50
+ GCC_except_table9
+ _HKMCAfterPeriodEndCoefficient
+ _HKMCAfterPeriodStartOffsetDays
+ _HKMCHistoricalAnalysisCategoryTypes
+ _HKMCHistoricalAnalysisQuantityTypes
+ _HKStringFromProfileType
+ _OBJC_IVAR_$_HDMCRecentBasalBodyTemperatureRangeQuery._latestEndDate
+ __CATEGORY_CLASS_METHODS_HKFeatureAvailabilityRequirementSet_$_HealthMenstrualCyclesDaemon
+ __CATEGORY_HKFeatureAvailabilityRequirementSet_$_HealthMenstrualCyclesDaemon
+ __OBJC_$_CLASS_PROP_LIST_HKFeatureAvailabilityRequirement
+ __OBJC_$_CLASS_PROP_LIST_NSSecureCoding
+ __OBJC_$_PROP_LIST_HKFeatureAvailabilityRequirement
+ __OBJC_$_PROTOCOL_CLASS_METHODS_HKFeatureAvailabilityRequirement
+ __OBJC_$_PROTOCOL_CLASS_METHODS_NSSecureCoding
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_HKFeatureAvailabilityRequirement
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_HKFeatureAvailabilityRequirementsProviding
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_NSCoding
+ __OBJC_$_PROTOCOL_METHOD_TYPES_HKFeatureAvailabilityRequirement
+ __OBJC_$_PROTOCOL_METHOD_TYPES_HKFeatureAvailabilityRequirementsProviding
+ __OBJC_$_PROTOCOL_METHOD_TYPES_NSCoding
+ __OBJC_$_PROTOCOL_METHOD_TYPES_NSSecureCoding
+ __OBJC_$_PROTOCOL_REFS_HKFeatureAvailabilityRequirement
+ __OBJC_$_PROTOCOL_REFS_NSSecureCoding
+ __OBJC_LABEL_PROTOCOL_$_HKFeatureAvailabilityRequirement
+ __OBJC_LABEL_PROTOCOL_$_HKFeatureAvailabilityRequirementsProviding
+ __OBJC_LABEL_PROTOCOL_$_NSCoding
+ __OBJC_LABEL_PROTOCOL_$_NSSecureCoding
+ __OBJC_PROTOCOL_$_HKFeatureAvailabilityRequirement
+ __OBJC_PROTOCOL_$_HKFeatureAvailabilityRequirementsProviding
+ __OBJC_PROTOCOL_$_NSCoding
+ __OBJC_PROTOCOL_$_NSSecureCoding
+ ___143-[HDMCDaySummaryEnumerator initWithProfile:calendarCache:dayIndexRange:richTypeDayIndexRange:ascending:includeFactors:includeWristTemperature:]_block_invoke
+ ___176-[HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:addedCycleFactors:deletedCycleFactors:mode:error:]_block_invoke
+ ___437-[HDMCAnalysisManager _analysisWithAlgorithmsAnalysis:algorithmsCycles:recentSymptoms:mostRecentBasalBodyTemperature:lastLoggedDayIndex:lastMenstrualFlowDayIndex:currentDayIndex:numberOfDailySleepHeartRateStatisticsForPast100Days:numberOfDailyAwakeHeartRateStatisticsForPast100Days:featureSettings:useHeartRateInput:useWristTemperatureInput:deviationsFeatureSettings:addedCycleFactors:deletedCycleFactors:forPreview:replayingEarlierDay:]_block_invoke
+ ___437-[HDMCAnalysisManager _analysisWithAlgorithmsAnalysis:algorithmsCycles:recentSymptoms:mostRecentBasalBodyTemperature:lastLoggedDayIndex:lastMenstrualFlowDayIndex:currentDayIndex:numberOfDailySleepHeartRateStatisticsForPast100Days:numberOfDailyAwakeHeartRateStatisticsForPast100Days:featureSettings:useHeartRateInput:useWristTemperatureInput:deviationsFeatureSettings:addedCycleFactors:deletedCycleFactors:forPreview:replayingEarlierDay:]_block_invoke_2
+ ___69-[HDMCAnalysisManager analysisAsOfDayIndex:forceIncludeCycles:error:]_block_invoke
+ ___69-[HDMCAnalysisManager analysisAsOfDayIndex:forceIncludeCycles:error:]_block_invoke_2
+ ___block_descriptor_174_e8_32s40s48s56s64s72s80r88r96r104r112r120r128r_e28_v24?0"HKMCDaySummary"8^B16lr80l8s32l8r88l8s40l8s48l8r96l8r104l8r112l8r120l8s56l8s64l8r128l8s72l8
+ ___block_descriptor_48_e8_32s40s_e39_v24?0"NSArray"8"HDSQLitePredicate"16ls32l8s40l8
+ ___block_descriptor_65_e8_32s40r48r_e5_v8?0ls32l8r40l8r48l8
+ ___block_descriptor_65_e8_32s40s48r_e9_B16?0^8lr48l8s32l8s40l8
+ ___swift_exist.box.addr_destructor
+ ___swift_memcpy48_8
+ __swift_FORCE_LOAD_$_swiftCoreImage
+ __swift_FORCE_LOAD_$_swiftCoreImage_$_HealthMenstrualCyclesDaemon
+ _associated conformance So28HKFeatureAvailabilityContextaSHSCSQ
+ _associated conformance So28HKFeatureAvailabilityContextas20_SwiftNewtypeWrapperSCSY
+ _associated conformance So28HKFeatureAvailabilityContextas20_SwiftNewtypeWrapperSCs35_HasCustomAnyHashableRepresentation
+ _swift_dynamicCastMetatype
+ _symbolic _____ So28HKFeatureAvailabilityContexta
+ _symbolic yt
- +[HDFeatureAvailabilityManager(HDMenstrualCycles) _hdmc_menopauseRequirementsForFeatureIdentifier:isAppleWatch:]
- -[HDMCAnalysisManager _analysisWithAlgorithmsAnalysis:algorithmsCycles:recentSymptoms:mostRecentBasalBodyTemperature:lastLoggedDayIndex:lastMenstrualFlowDayIndex:currentDayIndex:numberOfDailySleepHeartRateStatisticsForPast100Days:numberOfDailyAwakeHeartRateStatisticsForPast100Days:featureSettings:useHeartRateInput:useWristTemperatureInput:deviationsFeatureSettings:addedCycleFactors:deletedCycleFactors:forPreview:]
- -[HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:addedCycleFactors:deletedCycleFactors:forPreview:error:]
- GCC_except_table11
- GCC_except_table18
- GCC_except_table20
- GCC_except_table23
- GCC_except_table27
- GCC_except_table44
- ___182-[HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:addedCycleFactors:deletedCycleFactors:forPreview:error:]_block_invoke
- ___417-[HDMCAnalysisManager _analysisWithAlgorithmsAnalysis:algorithmsCycles:recentSymptoms:mostRecentBasalBodyTemperature:lastLoggedDayIndex:lastMenstrualFlowDayIndex:currentDayIndex:numberOfDailySleepHeartRateStatisticsForPast100Days:numberOfDailyAwakeHeartRateStatisticsForPast100Days:featureSettings:useHeartRateInput:useWristTemperatureInput:deviationsFeatureSettings:addedCycleFactors:deletedCycleFactors:forPreview:]_block_invoke
- ___417-[HDMCAnalysisManager _analysisWithAlgorithmsAnalysis:algorithmsCycles:recentSymptoms:mostRecentBasalBodyTemperature:lastLoggedDayIndex:lastMenstrualFlowDayIndex:currentDayIndex:numberOfDailySleepHeartRateStatisticsForPast100Days:numberOfDailyAwakeHeartRateStatisticsForPast100Days:featureSettings:useHeartRateInput:useWristTemperatureInput:deviationsFeatureSettings:addedCycleFactors:deletedCycleFactors:forPreview:]_block_invoke_2
- ___block_descriptor_166_e8_32s40s48s56s64s72s80r88r96r104r112r120r128r_e28_v24?0"HKMCDaySummary"8^B16lr80l8s32l8r88l8s40l8s48l8r96l8r104l8r112l8r120l8s56l8s64l8r128l8s72l8
- ___swift_memcpy24_8
- _symbolic So21CHSTimelineControllerC
CStrings:
+ "A"
+ "HDMCDaySummaryEnumerator.m"
+ "HKEqualDayIndexRanges(dayIndexRange, richTypeDayIndexRange) || HKEqualDayIndexRanges(dayIndexRange, HKDayIndexRangeZero)"
+ "[%{public}@] Skipping watch settings managers: profile is %{public}@, not primary"
+ "v24@?0@\"NSArray\"8@\"HDSQLitePredicate\"16"
```
