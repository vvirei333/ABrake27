## HealthUtilities

> `/System/Library/PrivateFrameworks/HealthUtilities.framework/HealthUtilities`

```diff

-7027.0.72.2.8
-  __TEXT.__text: 0xf7a8
-  __TEXT.__objc_methlist: 0x50
-  __TEXT.__swift5_typeref: 0x606
-  __TEXT.__swift5_capture: 0x80
-  __TEXT.__const: 0xee8
-  __TEXT.__constg_swiftt: 0x3a0
-  __TEXT.__swift5_reflstr: 0x238
-  __TEXT.__swift5_fieldmd: 0x170
+7027.1.45.2.4
+  __TEXT.__text: 0x24f24
+  __TEXT.__objc_methlist: 0x55c
+  __TEXT.__cstring: 0x2a2
+  __TEXT.__const: 0x15a0
+  __TEXT.__gcc_except_tab: 0x20
+  __TEXT.__ustring: 0x8
+  __TEXT.__constg_swiftt: 0x708
+  __TEXT.__swift5_typeref: 0x83e
+  __TEXT.__swift5_reflstr: 0x3c2
+  __TEXT.__swift5_fieldmd: 0x3d4
   __TEXT.__swift5_builtin: 0x14
   __TEXT.__swift5_assocty: 0x258
-  __TEXT.__cstring: 0x9c
-  __TEXT.__swift5_proto: 0xd0
-  __TEXT.__swift5_types: 0x28
-  __TEXT.__swift5_protos: 0x10
-  __TEXT.__unwind_info: 0x590
-  __TEXT.__eh_frame: 0x5e8
+  __TEXT.__swift5_proto: 0xf0
+  __TEXT.__swift5_types: 0x64
+  __TEXT.__swift_as_entry: 0x40
+  __TEXT.__swift_as_ret: 0x3c
+  __TEXT.__swift_as_cont: 0x4c
+  __TEXT.__swift5_protos: 0x1c
+  __TEXT.__swift5_capture: 0x138
+  __TEXT.__unwind_info: 0xc40
+  __TEXT.__eh_frame: 0x1100
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0xa0
-  __DATA_CONST.__objc_classlist: 0x18
+  __DATA_CONST.__const: 0x158
+  __DATA_CONST.__objc_classlist: 0x30
+  __DATA_CONST.__objc_catlist: 0x38
+  __DATA_CONST.__objc_protolist: 0x30
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0xa0
+  __DATA_CONST.__objc_selrefs: 0x698
+  __DATA_CONST.__objc_protorefs: 0x18
+  __DATA_CONST.__objc_arraydata: 0x18
   __DATA_CONST.__got: 0x0
-  __AUTH_CONST.__const: 0x3f0
-  __AUTH_CONST.__objc_const: 0x238
-  __AUTH_CONST.__auth_got: 0x7a8
-  __AUTH_CONST.__auth_ptr: 0x520
+  __AUTH_CONST.__const: 0xc70
+  __AUTH_CONST.__cfstring: 0x2c0
+  __AUTH_CONST.__objc_const: 0x7f8
+  __AUTH_CONST.__objc_arrayobj: 0x18
+  __AUTH_CONST.__auth_got: 0xef0
+  __AUTH_CONST.__auth_ptr: 0x630
   __AUTH.__objc_data: 0x48
-  __AUTH.__data: 0x88
-  __DATA.__data: 0x168
-  __DATA.__bss: 0x1400
+  __AUTH.__data: 0x120
+  __DATA.__data: 0x708
+  __DATA.__bss: 0x1580
+  __DATA.__common: 0x8
   __DATA_DIRTY.__objc_data: 0x68
-  __DATA_DIRTY.__data: 0x308
-  __DATA_DIRTY.__bss: 0x80
+  __DATA_DIRTY.__data: 0x520
+  __DATA_DIRTY.__bss: 0x290
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/Foundation.framework/Foundation
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
   - /usr/lib/swift/libswiftCore.dylib
   - /usr/lib/swift/libswiftCoreFoundation.dylib
+  - /usr/lib/swift/libswiftDarwin.dylib
   - /usr/lib/swift/libswiftDispatch.dylib
   - /usr/lib/swift/libswiftObjectiveC.dylib
   - /usr/lib/swift/libswiftObservation.dylib

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswift_StringProcessing.dylib
   - /usr/lib/swift/libswiftos.dylib
-  Functions: 472
-  Symbols:   231
-  CStrings:  7
+  Functions: 987
+  Symbols:   536
+  CStrings:  37
 
Symbols:
+ +[NSCalendar(HealthUtilities) hk_gregorianCalendarWithCupertinoTimeZone]
+ +[NSCalendar(HealthUtilities) hk_gregorianCalendarWithFirstWeekdayFromRegion]
+ +[NSCalendar(HealthUtilities) hk_gregorianCalendarWithLocalTimeZone]
+ +[NSCalendar(HealthUtilities) hk_gregorianCalendarWithUTCTimeZone]
+ +[NSCalendar(HealthUtilities) hk_gregorianCalendar]
+ +[NSDate(HealthUtilities) hk_mostRecentDate:]
+ +[NSDateComponents(HealthUtilities) hk_componentsWithDays:]
+ +[NSDateComponents(HealthUtilities) hk_componentsWithHour:minute:]
+ +[NSDateComponents(HealthUtilities) hk_dateComponentsForCalendarUnit:]
+ +[NSDateComponents(HealthUtilities) hk_oneDay]
+ +[NSDateComponents(HealthUtilities) hk_oneWeek]
+ -[NSArray(HealthUtilities) hk_firstObjectWithMaximumValueUsingEvaluationBlock:]
+ -[NSArray(HealthUtilities) hk_firstObjectWithMinimumValueUsingEvaluationBlock:]
+ -[NSCalendar(HealthUtilities) _hk_weekendDaysForDate:]
+ -[NSCalendar(HealthUtilities) hk_dateByAddingDays:toDate:]
+ -[NSCalendar(HealthUtilities) hk_dateByShiftingFromGregorianCalendarWithUTCTimeZone:]
+ -[NSCalendar(HealthUtilities) hk_dateByShiftingToGregorianCalendarWithUTCTimeZone:]
+ -[NSCalendar(HealthUtilities) hk_dateBySubtractingDays:fromDate:]
+ -[NSCalendar(HealthUtilities) hk_dateFromComponentsWithYear:month:day:hour:]
+ -[NSCalendar(HealthUtilities) hk_dateFromComponentsWithYear:month:day:hour:minute:]
+ -[NSCalendar(HealthUtilities) hk_dateFromComponentsWithYear:month:day:hour:minute:second:]
+ -[NSCalendar(HealthUtilities) hk_disambiguatedDSTDatesForComponents:]
+ -[NSCalendar(HealthUtilities) hk_firstDateWithHour:minute:afterDate:]
+ -[NSCalendar(HealthUtilities) hk_lengthOfDayForDate:]
+ -[NSCalendar(HealthUtilities) hk_nearestNoonBeforeDateOrEqualToDate:]
+ -[NSCalendar(HealthUtilities) hk_nearestStartOfDayForDate:]
+ -[NSCalendar(HealthUtilities) hk_nearestStartOfMonthForDate:]
+ -[NSCalendar(HealthUtilities) hk_nearestStartOfWeekWithFirstWeekDay:date:]
+ -[NSCalendar(HealthUtilities) hk_sixMonthPeriodContaining:dateBefore:]
+ -[NSCalendar(HealthUtilities) hk_startOfDateByAddingDays:toDate:]
+ -[NSCalendar(HealthUtilities) hk_startOfDateBySubtractingDays:fromDate:]
+ -[NSCalendar(HealthUtilities) hk_startOfHourForDate:addingHours:]
+ -[NSCalendar(HealthUtilities) hk_startOfHourForDate:moduloHours:addingModuloCount:]
+ -[NSCalendar(HealthUtilities) hk_startOfMinuteForDate:moduloMinutes:addingModuloCount:]
+ -[NSCalendar(HealthUtilities) hk_startOfMonthForDate:]
+ -[NSCalendar(HealthUtilities) hk_startOfMonthForDate:addingMonths:]
+ -[NSCalendar(HealthUtilities) hk_startOfTomorrowForDate:]
+ -[NSCalendar(HealthUtilities) hk_startOfWeekWithFirstWeekday:beforeDate:addingWeeks:]
+ -[NSCalendar(HealthUtilities) hk_startOfYearForDate:addingYears:]
+ -[NSCalendar(HealthUtilities) hk_timeIntervalSinceStartOfDayForDate:]
+ -[NSCalendar(HealthUtilities) hk_timeZoneDependentReferenceDate]
+ -[NSCalendar(HealthUtilities) hk_weekendDays]
+ -[NSCalendar(HealthUtilities) hk_weeksContainingInterval:firstWeekday:]
+ -[NSCalendar(HealthUtilities) hk_yesterdayAtNoonForDate:]
+ -[NSDate(HealthUtilities) hk_isAfterDate:]
+ -[NSDate(HealthUtilities) hk_isAfterOrEqualToDate:]
+ -[NSDate(HealthUtilities) hk_isBeforeDate:]
+ -[NSDate(HealthUtilities) hk_isBeforeOrEqualToDate:]
+ -[NSDate(HealthUtilities) hk_nearestDate:]
+ -[NSDateComponents(HealthUtilities) _hk_dateByAddingFilteredInterval:toDate:]
+ -[NSDateComponents(HealthUtilities) _hk_dateComponentsMultipliedByCount:]
+ -[NSDateComponents(HealthUtilities) hk_approximateDuration]
+ -[NSDateComponents(HealthUtilities) hk_dateByAddingInterval:toDate:]
+ -[NSDateComponents(HealthUtilities) hk_dateOptionalDescription]
+ -[NSDateComponents(HealthUtilities) hk_hourNumber]
+ -[NSDateComponents(HealthUtilities) hk_maxComponentValue]
+ -[NSDateComponents(HealthUtilities) hk_minuteNumber]
+ -[NSDateComponents(HealthUtilities) hk_negativeComponents]
+ -[NSDateComponents(HealthUtilities) hk_populatedCalendarGregorianCalendarDefault]
+ -[NSDateComponents(HealthUtilities) hk_translateDateComponentsToCalendar:calendarUnits:]
+ -[NSLocale(HealthUtilities) hk_isIn24HourTime]
+ -[NSLocale(HealthUtilities) hk_isUSLocale]
+ -[NSMutableString(HealthUtilities) hk_appendComponentsJoinedByString:container:componentGenerator:]
+ -[NSString(HealthUtilities) hk_copyNonEmptyString]
+ -[NSString(HealthUtilities) hk_firstWordCapitalizedStringWithLocale:]
+ -[NSString(HealthUtilities) hk_isBase64]
+ -[NSString(HealthUtilities) hk_isCaseInsensitiveSubstringInString:]
+ -[NSString(HealthUtilities) hk_localizedFirstWordCapitalizedString]
+ -[NSString(HealthUtilities) hk_stringByAppendingKeyPathComponent:]
+ -[NSString(HealthUtilities) hk_stringByNormalizingSpaces]
+ -[NSString(HealthUtilities) hk_stringByRemovingCharactersInSet:]
+ -[NSString(HealthUtilities) hk_stringByReplacingSpacesWithString:]
+ -[NSString(HealthUtilities) hk_stringByUnescapingJSONCharactersForDisplay]
+ -[NSString(HealthUtilities) hk_stringIndentedBy:]
+ -[NSString(HealthUtilities) hk_stringIndentedBy:prefix:]
+ -[NSString(HealthUtilities) hk_stripLeadingTrailingWhitespace]
+ -[NSString(HealthUtilities) hk_trimWhitespaceAndNewlines]
+ GCC_except_table9
+ _NSCalendarIdentifierGregorian
+ _NSInvalidArgumentException
+ _NSLocaleCalendar
+ _NSStringFromSelector
+ _OBJC_CLASS_$_NSArray
+ _OBJC_CLASS_$_NSCache
+ _OBJC_CLASS_$_NSCalendar
+ _OBJC_CLASS_$_NSCharacterSet
+ _OBJC_CLASS_$_NSConstantArray
+ _OBJC_CLASS_$_NSDate
+ _OBJC_CLASS_$_NSDateComponents
+ _OBJC_CLASS_$_NSDateComponentsFormatter
+ _OBJC_CLASS_$_NSDateInterval
+ _OBJC_CLASS_$_NSException
+ _OBJC_CLASS_$_NSLocale
+ _OBJC_CLASS_$_NSMutableSet
+ _OBJC_CLASS_$_NSMutableString
+ _OBJC_CLASS_$_NSNumber
+ _OBJC_CLASS_$_NSProcessInfo
+ _OBJC_CLASS_$_NSString
+ _OBJC_CLASS_$_NSTimeZone
+ _OBJC_CLASS_$_OS_dispatch_queue
+ _OBJC_CLASS_$_OS_dispatch_source
+ __Block_copy
+ __Block_object_dispose
+ __Block_release
+ __DATA__TtC15HealthUtilities15DependencyStore
+ __DATA__TtC15HealthUtilities20DatabaseReadExecutor
+ __DATA__TtC15HealthUtilities21TrailingEdgeDebouncer
+ __IVARS__TtC15HealthUtilities20DatabaseReadExecutor
+ __IVARS__TtC15HealthUtilities21TrailingEdgeDebouncer
+ __IVARS__TtC15HealthUtilities30CancellableCheckedContinuation
+ __IVARS__TtC15HealthUtilitiesP33_BBCF6F5A47C7CCC880F2C4105E0EF12F12FirstOutcome
+ __METACLASS_DATA__TtC15HealthUtilities15DependencyStore
+ __METACLASS_DATA__TtC15HealthUtilities20DatabaseReadExecutor
+ __METACLASS_DATA__TtC15HealthUtilities21TrailingEdgeDebouncer
+ __NSConcreteGlobalBlock
+ __NSConcreteStackBlock
+ __OBJC_$_CATEGORY_CLASS_METHODS_NSCalendar_$_HealthUtilities
+ __OBJC_$_CATEGORY_CLASS_METHODS_NSDateComponents_$_HealthUtilities
+ __OBJC_$_CATEGORY_CLASS_METHODS_NSDate_$_HealthUtilities
+ __OBJC_$_CATEGORY_INSTANCE_METHODS_NSArray_$_HealthUtilities
+ __OBJC_$_CATEGORY_INSTANCE_METHODS_NSCalendar_$_HealthUtilities
+ __OBJC_$_CATEGORY_INSTANCE_METHODS_NSDateComponents_$_HealthUtilities
+ __OBJC_$_CATEGORY_INSTANCE_METHODS_NSDate_$_HealthUtilities
+ __OBJC_$_CATEGORY_INSTANCE_METHODS_NSLocale_$_HealthUtilities
+ __OBJC_$_CATEGORY_INSTANCE_METHODS_NSMutableString_$_HealthUtilities
+ __OBJC_$_CATEGORY_INSTANCE_METHODS_NSString_$_HealthUtilities
+ __OBJC_$_CATEGORY_NSArray_$_HealthUtilities
+ __OBJC_$_CATEGORY_NSCalendar_$_HealthUtilities
+ __OBJC_$_CATEGORY_NSDateComponents_$_HealthUtilities
+ __OBJC_$_CATEGORY_NSDate_$_HealthUtilities
+ __OBJC_$_CATEGORY_NSLocale_$_HealthUtilities
+ __OBJC_$_CATEGORY_NSMutableString_$_HealthUtilities
+ __OBJC_$_CATEGORY_NSString_$_HealthUtilities
+ __OBJC_$_PROP_LIST_NSLocale_$_HealthUtilities
+ __OBJC_$_PROP_LIST_NSObject
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_NSObject
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_OPT_NSObject
+ __OBJC_$_PROTOCOL_METHOD_TYPES_NSObject
+ __OBJC_$_PROTOCOL_REFS_OS_dispatch_source
+ __OBJC_$_PROTOCOL_REFS_OS_dispatch_source_timer
+ __OBJC_LABEL_PROTOCOL_$_NSObject
+ __OBJC_LABEL_PROTOCOL_$_OS_dispatch_source
+ __OBJC_LABEL_PROTOCOL_$_OS_dispatch_source_timer
+ __OBJC_PROTOCOL_$_NSObject
+ __OBJC_PROTOCOL_$_OS_dispatch_source
+ __OBJC_PROTOCOL_$_OS_dispatch_source_timer
+ __Unwind_Resume
+ ___42-[NSDate(HealthUtilities) hk_nearestDate:]_block_invoke
+ ___45+[NSDate(HealthUtilities) hk_mostRecentDate:]_block_invoke
+ ___69-[NSString(HealthUtilities) hk_firstWordCapitalizedStringWithLocale:]_block_invoke
+ ___Block_byref_object_copy_
+ ___Block_byref_object_dispose_
+ ___CFConstantStringClassReference
+ ___NSArray0__struct
+ ___block_descriptor_32_e16_d16?0"NSDate"8l
+ ___block_descriptor_40_e8_32s_e16_d16?0"NSDate"8ls32l8
+ ___block_descriptor_48_e8_32r40r_e52_v56?0"NSString"8{_NSRange=QQ}16{_NSRange=QQ}32^B48lr32l8r40l8
+ ___block_literal_global
+ ___objc_personality_v0
+ ___stack_chk_fail
+ ___stack_chk_guard
+ ___swift__destructor
+ ___swift_allocate_boxed_opaque_existential_0
+ ___swift_allocate_boxed_opaque_existential_1
+ ___swift_allocate_value_buffer
+ ___swift_async_cont_functlets
+ ___swift_async_entry_functlets
+ ___swift_async_ret_functlets
+ ___swift_closure_destructor.19Tm
+ ___swift_memcpy65_8
+ ___swift_memcpy8_8
+ ___swift_project_value_buffer
+ ___unnamed_9
+ __swiftEmptySetSingleton
+ __swiftImmortalRefCount
+ __swift_implicitisolationactor_to_executor_cast
+ __swift_stdlib_malloc_size
+ _associated conformance 15HealthUtilities13HKResultErrorOSHAASQ
+ _associated conformance 15HealthUtilities20DatabaseReadExecutorCSchAAScF
+ _block_copy_helper
+ _block_descriptor
+ _block_destroy_helper
+ _flat unique So24OS_dispatch_source_timer_p
+ _hk_timeZoneDependentReferenceDate.__referenceDateCache
+ _hk_timeZoneDependentReferenceDate.__referenceDateCacheLock
+ _malloc_size
+ _memcpy
+ _objc_alloc
+ _objc_alloc_init
+ _objc_autoreleasePoolPop
+ _objc_autoreleasePoolPush
+ _objc_autoreleaseReturnValue
+ _objc_claimAutoreleasedReturnValue
+ _objc_enumerationMutation
+ _objc_release_x24
+ _objc_release_x26
+ _objc_release_x28
+ _objc_retainAutoreleaseReturnValue
+ _objc_retain_x19
+ _objc_retain_x2
+ _objc_retain_x21
+ _objc_retain_x22
+ _objc_retain_x3
+ _objc_retain_x4
+ _objc_storeStrong
+ _os_variant_has_internal_diagnostics
+ _swift_allocBox
+ _swift_arrayDestroy
+ _swift_arrayInitWithCopy
+ _swift_beginAccess
+ _swift_bridgeObjectRelease_n
+ _swift_bridgeObjectRetain_n
+ _swift_continuation_await
+ _swift_continuation_init
+ _swift_cvw_initEnumMetadataMultiPayloadWithLayoutString
+ _swift_cvw_initEnumMetadataSinglePayloadWithLayoutString
+ _swift_cvw_instantiateLayoutString
+ _swift_cvw_multiPayloadEnumGeneric_destructiveInjectEnumTag
+ _swift_cvw_multiPayloadEnumGeneric_getEnumTag
+ _swift_cvw_singlePayloadEnumGeneric_destructiveInjectEnumTag
+ _swift_cvw_singlePayloadEnumGeneric_getEnumTag
+ _swift_errorRelease
+ _swift_getEnumCaseMultiPayload
+ _swift_getEnumTagSinglePayloadGeneric
+ _swift_getObjCClassFromMetadata
+ _swift_getObjCClassMetadata
+ _swift_initStackObject
+ _swift_initStaticObject
+ _swift_job_run_on_task_executor
+ _swift_once
+ _swift_release_x19
+ _swift_release_x24
+ _swift_release_x25
+ _swift_release_x26
+ _swift_retain
+ _swift_retain_x19
+ _swift_retain_x2
+ _swift_retain_x21
+ _swift_retain_x22
+ _swift_retain_x23
+ _swift_retain_x24
+ _swift_retain_x25
+ _swift_retain_x27
+ _swift_setDeallocating
+ _swift_slowAlloc
+ _swift_storeEnumTagMultiPayload
+ _swift_storeEnumTagSinglePayloadGeneric
+ _swift_task_addCancellationHandler
+ _swift_task_alloc
+ _swift_task_create
+ _swift_task_dealloc
+ _swift_task_future_wait_throwing
+ _swift_task_localValueGet
+ _swift_task_localValuePop
+ _swift_task_localValuePush
+ _swift_task_removeCancellationHandler
+ _swift_task_switch
+ _swift_weakDestroy
+ _swift_weakInit
+ _swift_weakLoadStrong
+ _symbolic $s15HealthUtilities10DebouncingP
+ _symbolic $s15HealthUtilities27DiagnosticOutputConvertibleP
+ _symbolic $s15HealthUtilities35RedactedDiagnosticOutputConvertibleP
+ _symbolic G0R2_
+ _symbolic SDy_____ypG s10AnyKeyPathC
+ _symbolic SJ
+ _symbolic SayScJG
+ _symbolic Sb
+ _symbolic ScCyx______pG s5ErrorP
+ _symbolic ScJ
+ _symbolic ScTyx______pG s5ErrorP
+ _symbolic ScTyyt______pG s5ErrorP
+ _symbolic Sd
+ _symbolic Si
+ _symbolic So17OS_dispatch_queueC
+ _symbolic _____ 15HealthUtilities10DependencyV
+ _symbolic _____ 15HealthUtilities12FirstOutcome33_BBCF6F5A47C7CCC880F2C4105E0EF12FLLC
+ _symbolic _____ 15HealthUtilities12FirstOutcome33_BBCF6F5A47C7CCC880F2C4105E0EF12FLLC4NextO
+ _symbolic _____ 15HealthUtilities12FirstOutcome33_BBCF6F5A47C7CCC880F2C4105E0EF12FLLC5StateO
+ _symbolic _____ 15HealthUtilities13HKResultErrorO
+ _symbolic _____ 15HealthUtilities15DependencyStoreC
+ _symbolic _____ 15HealthUtilities17OperationTimedOutV
+ _symbolic _____ 15HealthUtilities20DatabaseReadExecutorC
+ _symbolic _____ 15HealthUtilities20DatabaseReadExecutorC5State33_CACC56B898D9F90B4A82B4659775BD9CLLV
+ _symbolic _____ 15HealthUtilities20DependencyStoreProxyV
+ _symbolic _____ 15HealthUtilities21TrailingEdgeDebouncerC
+ _symbolic _____ 15HealthUtilities23DiagnosticOutputBuilderO
+ _symbolic _____ 15HealthUtilities27DiagnosticOutputEnvironmentV
+ _symbolic _____ 15HealthUtilities29DiagnosticOutputConfigurationV
+ _symbolic _____ 15HealthUtilities30CancellableCheckedContinuationC
+ _symbolic _____ s8DurationV
+ _symbolic _____SgXw 15HealthUtilities21TrailingEdgeDebouncerC
+ _symbolic _____yScCyx______pGSgG 15Synchronization5MutexVAARi_zrlE s5ErrorP
+ _symbolic _____y_____G 15Synchronization5MutexVAARi_zrlE 15HealthUtilities20DatabaseReadExecutorC5State33_CACC56B898D9F90B4A82B4659775BD9CLLV
+ _symbolic _____y______pSgG 15Synchronization5MutexVAARi_zrlE So24OS_dispatch_source_timerP
+ _symbolic _____y_____xG s7KeyPathC 15HealthUtilities15DependencyStoreC
+ _symbolic _____y_____yx_GG 15Synchronization5MutexVAARi_zrlE 15HealthUtilities12FirstOutcome33_BBCF6F5A47C7CCC880F2C4105E0EF12FLLC5StateO
+ _symbolic _____yxG 15HealthUtilities12FirstOutcome33_BBCF6F5A47C7CCC880F2C4105E0EF12FLLC
+ _symbolic _____yx______pG s6ResultOsRi_zRi0_zrlE s5ErrorP
+ _symbolic x______pIeghHrzo_ s5ErrorP
+ _symbolic ytIeAgHr_
+ _symbolic yyYbc
+ _type_layout_string 15HealthUtilities20DatabaseReadExecutorC5State33_CACC56B898D9F90B4A82B4659775BD9CLLV
+ _type_layout_string 15HealthUtilities20DependencyStoreProxyV
+ _type_layout_string 15HealthUtilities29DiagnosticOutputConfigurationV
+ _type_layout_string s8SendableRzl15HealthUtilities10DependencyVyxG
- _objc_retain_x26
CStrings:
+ ""
+ "\n"
+ "\n%@"
+ " "
+ "%02lu:%02lu"
+ "%@%*s"
+ "%@.%@"
+ "%lu-%lu-%lu %02lu:%02lu"
+ "."
+ "/"
+ "America/Los_Angeles"
+ "Date components with negative attributes are incompatible with %@"
+ "H"
+ "HDHealthDaemonConcurrentDatabaseReadersKey"
+ "HealthUtilities/DiagnosticOutputEnvironment.swift"
+ "HealthUtilities/WithDependencies.swift"
+ "Obfuscation context unavailable"
+ "US"
+ "UTC"
+ "\\"
+ "\\/"
+ "\\\\"
+ "com.apple.HealthUtilities.DatabaseRead"
+ "d16@?0@\"NSDate\"8"
+ "j"
+ "k"
+ "v56@?0@\"NSString\"8{_NSRange=QQ}16{_NSRange=QQ}32^B48"
+ "withTimeout(_:_:)"
+ "\u00a0"
+ "\u202f"
```
