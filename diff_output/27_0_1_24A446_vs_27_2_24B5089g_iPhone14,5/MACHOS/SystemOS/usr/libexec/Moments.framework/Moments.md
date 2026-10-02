## Moments

> `/usr/libexec/Moments.framework/Moments`

### Sections with Same Size but Changed Content

- `__TEXT.__swift5_builtin`
- `__TEXT.__swift5_assocty`
- `__TEXT.__swift5_proto`
- `__TEXT.__swift5_mpenum`
- `__TEXT.__swift5_protos`
- `__DATA_CONST.__objc_catlist`
- `__DATA_CONST.__objc_arraydata`
- `__AUTH_CONST.__objc_arrayobj`
- `__AUTH_CONST.__objc_intobj`
- `__AUTH_CONST.__objc_dictobj`

```diff

-417.0.0.0.0
-  __TEXT.__text: 0x75b4c
-  __TEXT.__objc_methlist: 0x682c
-  __TEXT.__cstring: 0xe38f
-  __TEXT.__const: 0xfe8
-  __TEXT.__oslogstring: 0x55ce
+502.0.8.0.0
+  __TEXT.__text: 0x796ec
+  __TEXT.__objc_methlist: 0x6db4
+  __TEXT.__cstring: 0xe69e
+  __TEXT.__const: 0x1048
+  __TEXT.__oslogstring: 0x5664
   __TEXT.__gcc_except_tab: 0x430
-  __TEXT.__swift5_typeref: 0x2ca
-  __TEXT.__constg_swiftt: 0x390
-  __TEXT.__swift5_reflstr: 0x47c
-  __TEXT.__swift5_fieldmd: 0x568
+  __TEXT.__swift5_typeref: 0x2fd
+  __TEXT.__constg_swiftt: 0x410
+  __TEXT.__swift5_reflstr: 0x4c0
+  __TEXT.__swift5_fieldmd: 0x5c4
   __TEXT.__swift5_builtin: 0x3c
   __TEXT.__swift5_assocty: 0x90
   __TEXT.__swift5_proto: 0x5c
-  __TEXT.__swift5_types: 0x48
+  __TEXT.__swift5_types: 0x50
   __TEXT.__swift5_mpenum: 0x8
   __TEXT.__swift5_protos: 0x4
-  __TEXT.__unwind_info: 0x18e8
-  __TEXT.__eh_frame: 0x9c8
-  __TEXT.__objc_stubs: 0x88a0
-  __TEXT.__auth_stubs: 0x12a0
-  __TEXT.__objc_classname: 0xa48
-  __TEXT.__objc_methname: 0xf762
-  __TEXT.__objc_methtype: 0x1b06
-  __DATA_CONST.__const: 0x3438
-  __DATA_CONST.__objc_classlist: 0x300
+  __TEXT.__unwind_info: 0x19f8
+  __TEXT.__eh_frame: 0xb10
+  __TEXT.__objc_stubs: 0x8a20
+  __TEXT.__auth_stubs: 0x12b0
+  __TEXT.__objc_classname: 0xacd
+  __TEXT.__objc_methname: 0x106bd
+  __TEXT.__objc_methtype: 0x1b95
+  __DATA_CONST.__const: 0x3470
+  __DATA_CONST.__objc_classlist: 0x328
   __DATA_CONST.__objc_catlist: 0x38
-  __DATA_CONST.__objc_protolist: 0x68
+  __DATA_CONST.__objc_protolist: 0x78
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x3258
-  __DATA_CONST.__objc_protorefs: 0x40
-  __DATA_CONST.__objc_superrefs: 0x270
+  __DATA_CONST.__objc_selrefs: 0x34e8
+  __DATA_CONST.__objc_protorefs: 0x50
+  __DATA_CONST.__objc_superrefs: 0x288
   __DATA_CONST.__objc_arraydata: 0x470
-  __DATA_CONST.__got: 0x840
-  __AUTH_CONST.__const: 0x7e0
-  __AUTH_CONST.__cfstring: 0x10920
-  __AUTH_CONST.__objc_const: 0xaec0
+  __DATA_CONST.__got: 0x858
+  __AUTH_CONST.__const: 0x820
+  __AUTH_CONST.__cfstring: 0x10cc0
+  __AUTH_CONST.__objc_const: 0xb8f0
   __AUTH_CONST.__objc_arrayobj: 0xd8
   __AUTH_CONST.__objc_intobj: 0x570
   __AUTH_CONST.__objc_dictobj: 0x28
-  __AUTH_CONST.__auth_got: 0x960
-  __AUTH_CONST.__auth_ptr: 0x210
-  __AUTH.__objc_data: 0x1eb8
-  __AUTH.__data: 0x288
-  __DATA.__objc_ivar: 0x7c4
-  __DATA.__data: 0xeb8
+  __AUTH_CONST.__auth_got: 0x968
+  __AUTH_CONST.__auth_ptr: 0x218
+  __AUTH.__objc_data: 0x1a68
+  __AUTH.__data: 0x2e0
+  __DATA.__objc_ivar: 0x844
+  __DATA.__data: 0xed8
   __DATA.__bss: 0xc70
   __DATA.__common: 0x18
-  __DATA_DIRTY.__objc_data: 0x3c0
-  __DATA_DIRTY.__data: 0x30
-  __DATA_DIRTY.__bss: 0x20
+  __DATA_DIRTY.__objc_data: 0xaa0
+  __DATA_DIRTY.__data: 0x60
+  __DATA_DIRTY.__bss: 0x24
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/CoreLocation.framework/CoreLocation
   - /System/Library/Frameworks/CoreServices.framework/CoreServices

   - /usr/lib/swift/libswift_DarwinFoundation1.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 2924
-  Symbols:   7921
-  CStrings:  5190
+  Functions: 3071
+  Symbols:   8213
+  CStrings:  5356
 
Symbols:
+ +[MOEventCalendarContext supportsSecureCoding]
+ +[MOEventMessageContext supportsSecureCoding]
+ +[MOEventPhotoContext supportsSecureCoding]
+ +[MOFilePersistenceManager configSnapshotWithEventRetentionSeconds:]
+ -[MOEvent calendarContextEvent]
+ -[MOEvent messageContextEvent]
+ -[MOEvent photoContextEvent]
+ -[MOEvent setCalendarContextEvent:]
+ -[MOEvent setMessageContextEvent:]
+ -[MOEvent setPhotoContextEvent:]
+ -[MOEventBundle enrichedNLString]
+ -[MOEventBundle enrichmentRationale]
+ -[MOEventBundle eventForWorkoutPlaceID:]
+ -[MOEventBundle originalNLString]
+ -[MOEventBundle setEnrichedNLString:]
+ -[MOEventBundle setEnrichmentRationale:]
+ -[MOEventBundle setOriginalNLString:]
+ -[MOEventBundle setSourceSuggestionID:]
+ -[MOEventBundle setWorkoutPlaceAssociationKind:]
+ -[MOEventBundle setWorkoutPlaceDestinationID:]
+ -[MOEventBundle setWorkoutPlaceEncompassingID:]
+ -[MOEventBundle setWorkoutPlaceOriginID:]
+ -[MOEventBundle sourceSuggestionID]
+ -[MOEventBundle workoutPlaceAssociationKind]
+ -[MOEventBundle workoutPlaceDestinationID]
+ -[MOEventBundle workoutPlaceDestination]
+ -[MOEventBundle workoutPlaceEncompassingID]
+ -[MOEventBundle workoutPlaceEncompassing]
+ -[MOEventBundle workoutPlaceOriginID]
+ -[MOEventBundle workoutPlaceOrigin]
+ -[MOEventBundleFetchOptions allowedInterfaceTypes]
+ -[MOEventBundleFetchOptions excludeEnrichmentDedupIneligible]
+ -[MOEventBundleFetchOptions excludedInterfaceTypes]
+ -[MOEventBundleFetchOptions initWithDateInterval:ascending:limit:includeDeletedBundles:skipRanking:allowedInterfaceTypes:excludedInterfaceTypes:]
+ -[MOEventBundleFetchOptions rehydrated]
+ -[MOEventBundleFetchOptions setExcludeEnrichmentDedupIneligible:]
+ -[MOEventBundleFetchOptions setRehydrated:]
+ -[MOEventBundleFetchOptions setSuggestionIDs:]
+ -[MOEventBundleFetchOptions suggestionIDs]
+ -[MOEventCalendarContext .cxx_destruct]
+ -[MOEventCalendarContext calendarEndDate]
+ -[MOEventCalendarContext calendarEventIdentifier]
+ -[MOEventCalendarContext calendarIsAllDay]
+ -[MOEventCalendarContext calendarLocation]
+ -[MOEventCalendarContext calendarParticipationStatus]
+ -[MOEventCalendarContext calendarStartDate]
+ -[MOEventCalendarContext calendarTitle]
+ -[MOEventCalendarContext calendarType]
+ -[MOEventCalendarContext copyWithZone:]
+ -[MOEventCalendarContext description]
+ -[MOEventCalendarContext encodeWithCoder:]
+ -[MOEventCalendarContext initWithCoder:]
+ -[MOEventCalendarContext init]
+ -[MOEventCalendarContext setCalendarEndDate:]
+ -[MOEventCalendarContext setCalendarEventIdentifier:]
+ -[MOEventCalendarContext setCalendarIsAllDay:]
+ -[MOEventCalendarContext setCalendarLocation:]
+ -[MOEventCalendarContext setCalendarParticipationStatus:]
+ -[MOEventCalendarContext setCalendarStartDate:]
+ -[MOEventCalendarContext setCalendarTitle:]
+ -[MOEventCalendarContext setCalendarType:]
+ -[MOEventMessageContext .cxx_destruct]
+ -[MOEventMessageContext copyWithZone:]
+ -[MOEventMessageContext description]
+ -[MOEventMessageContext encodeWithCoder:]
+ -[MOEventMessageContext initWithCoder:]
+ -[MOEventMessageContext messageBody]
+ -[MOEventMessageContext messageDate]
+ -[MOEventMessageContext messageIdentifier]
+ -[MOEventMessageContext messageSenderName]
+ -[MOEventMessageContext setMessageBody:]
+ -[MOEventMessageContext setMessageDate:]
+ -[MOEventMessageContext setMessageIdentifier:]
+ -[MOEventMessageContext setMessageSenderName:]
+ -[MOEventPhotoContext .cxx_destruct]
+ -[MOEventPhotoContext copyWithZone:]
+ -[MOEventPhotoContext description]
+ -[MOEventPhotoContext encodeWithCoder:]
+ -[MOEventPhotoContext initWithCoder:]
+ -[MOEventPhotoContext init]
+ -[MOEventPhotoContext photoIdentifier]
+ -[MOEventPhotoContext photoIsScreenshot]
+ -[MOEventPhotoContext photoTextRepresentation]
+ -[MOEventPhotoContext setPhotoIdentifier:]
+ -[MOEventPhotoContext setPhotoIsScreenshot:]
+ -[MOEventPhotoContext setPhotoTextRepresentation:]
+ -[MOEventWorkout setWorkoutSwimmingLocationType:]
+ -[MOEventWorkout workoutSwimmingLocationType]
+ -[MOFilePersistenceManager donateEventBundles:events:prediction:configSnapshot:error:]
+ -[MOFilePersistenceManager persistEventBundles:events:prediction:configSnapshot:error:]
+ -[MOPromptManager fetchEffectiveDoubleValueForKey:withHandler:]
+ -[MOPromptManager runEnrichmentWithLimit:handler:]
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/Moments/install/TempContent/Objects/Moments.build/Moments.build/Objects-normal/arm64e/MOConfigSnapshot.o
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/Moments/install/TempContent/Objects/Moments.build/Moments.build/Objects-normal/arm64e/MODonationWriteSession.o
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/Moments/install/TempContent/Objects/Moments.build/Moments.build/Objects-normal/arm64e/MOEventCalendarContext.o
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/Moments/install/TempContent/Objects/Moments.build/Moments.build/Objects-normal/arm64e/MOEventMessageContext.o
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/Moments/install/TempContent/Objects/Moments.build/Moments.build/Objects-normal/arm64e/MOEventPhotoContext.o
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/Moments/install/TempContent/Objects/Moments.build/Moments.build/Objects-normal/arm64e/RTLocation+MOExtensions-3a88ec90e47d0e093faa78c19a1bc47c.o
+ GCC_except_table113
+ MOConfigSnapshot.swift
+ MODonationWriteSession.swift
+ MOEventCalendarContext.m
+ MOEventMessageContext.m
+ MOEventPhotoContext.m
+ OBJC_IVAR_$_MOEvent._calendarContextEvent
+ OBJC_IVAR_$_MOEvent._messageContextEvent
+ OBJC_IVAR_$_MOEvent._photoContextEvent
+ OBJC_IVAR_$_MOEventBundle._enrichedNLString
+ OBJC_IVAR_$_MOEventBundle._enrichmentRationale
+ OBJC_IVAR_$_MOEventBundle._originalNLString
+ OBJC_IVAR_$_MOEventBundle._sourceSuggestionID
+ OBJC_IVAR_$_MOEventBundle._workoutPlaceAssociationKind
+ OBJC_IVAR_$_MOEventBundle._workoutPlaceDestinationID
+ OBJC_IVAR_$_MOEventBundle._workoutPlaceEncompassingID
+ OBJC_IVAR_$_MOEventBundle._workoutPlaceOriginID
+ OBJC_IVAR_$_MOEventBundleFetchOptions._allowedInterfaceTypes
+ OBJC_IVAR_$_MOEventBundleFetchOptions._excludeEnrichmentDedupIneligible
+ OBJC_IVAR_$_MOEventBundleFetchOptions._excludedInterfaceTypes
+ OBJC_IVAR_$_MOEventBundleFetchOptions._rehydrated
+ OBJC_IVAR_$_MOEventBundleFetchOptions._suggestionIDs
+ OBJC_IVAR_$_MOEventCalendarContext._calendarEndDate
+ OBJC_IVAR_$_MOEventCalendarContext._calendarEventIdentifier
+ OBJC_IVAR_$_MOEventCalendarContext._calendarIsAllDay
+ OBJC_IVAR_$_MOEventCalendarContext._calendarLocation
+ OBJC_IVAR_$_MOEventCalendarContext._calendarParticipationStatus
+ OBJC_IVAR_$_MOEventCalendarContext._calendarStartDate
+ OBJC_IVAR_$_MOEventCalendarContext._calendarTitle
+ OBJC_IVAR_$_MOEventCalendarContext._calendarType
+ OBJC_IVAR_$_MOEventMessageContext._messageBody
+ OBJC_IVAR_$_MOEventMessageContext._messageDate
+ OBJC_IVAR_$_MOEventMessageContext._messageIdentifier
+ OBJC_IVAR_$_MOEventMessageContext._messageSenderName
+ OBJC_IVAR_$_MOEventPhotoContext._photoIdentifier
+ OBJC_IVAR_$_MOEventPhotoContext._photoIsScreenshot
+ OBJC_IVAR_$_MOEventPhotoContext._photoTextRepresentation
+ OBJC_IVAR_$_MOEventWorkout._workoutSwimmingLocationType
+ _$s7Moments11MOTLVWriterC11transferred33_9DB782766A4C3AE6AE3E210C72ADFBB8LLSbvpWvd
+ _$s7Moments11MOTLVWriterC20createUnlinkedWriter15protectionClassACSo20NSFileProtectionTypea_tKFZTf4nd_n
+ _$s7Moments16MOConfigSnapshotC20supportsSecureCodingSbvgZ
+ _$s7Moments16MOConfigSnapshotC20supportsSecureCodingSbvgZTo
+ _$s7Moments16MOConfigSnapshotC20supportsSecureCodingSbvpZMV
+ _$s7Moments16MOConfigSnapshotC21eventRetentionSecondsACSd_tcfC
+ _$s7Moments16MOConfigSnapshotC21eventRetentionSecondsACSd_tcfCTj
+ _$s7Moments16MOConfigSnapshotC21eventRetentionSecondsACSd_tcfCTq
+ _$s7Moments16MOConfigSnapshotC21eventRetentionSecondsACSd_tcfc
+ _$s7Moments16MOConfigSnapshotC21eventRetentionSecondsACSd_tcfcTo
+ _$s7Moments16MOConfigSnapshotC21eventRetentionSecondsSdvg
+ _$s7Moments16MOConfigSnapshotC21eventRetentionSecondsSdvgTo
+ _$s7Moments16MOConfigSnapshotC21eventRetentionSecondsSdvpMV
+ _$s7Moments16MOConfigSnapshotC21eventRetentionSecondsSdvpWvd
+ _$s7Moments16MOConfigSnapshotC4hashSivg
+ _$s7Moments16MOConfigSnapshotC4hashSivgTo
+ _$s7Moments16MOConfigSnapshotC5coderACSgSo7NSCoderC_tcfC
+ _$s7Moments16MOConfigSnapshotC5coderACSgSo7NSCoderC_tcfCTj
+ _$s7Moments16MOConfigSnapshotC5coderACSgSo7NSCoderC_tcfCTq
+ _$s7Moments16MOConfigSnapshotC5coderACSgSo7NSCoderC_tcfc
+ _$s7Moments16MOConfigSnapshotC5coderACSgSo7NSCoderC_tcfcTo
+ _$s7Moments16MOConfigSnapshotC6encode4withySo7NSCoderC_tF
+ _$s7Moments16MOConfigSnapshotC6encode4withySo7NSCoderC_tFTo
+ _$s7Moments16MOConfigSnapshotC7isEqualySbypSgF
+ _$s7Moments16MOConfigSnapshotC7isEqualySbypSgFTo
+ _$s7Moments16MOConfigSnapshotCACycfC
+ _$s7Moments16MOConfigSnapshotCACycfc
+ _$s7Moments16MOConfigSnapshotCACycfcTo
+ _$s7Moments16MOConfigSnapshotCMF
+ _$s7Moments16MOConfigSnapshotCMa
+ _$s7Moments16MOConfigSnapshotCMf
+ _$s7Moments16MOConfigSnapshotCMn
+ _$s7Moments16MOConfigSnapshotCMo
+ _$s7Moments16MOConfigSnapshotCMu
+ _$s7Moments16MOConfigSnapshotCN
+ _$s7Moments16MOConfigSnapshotCfD
+ _$s7Moments18MOTLVRecordBuilderC14appendOptional_2aty10Foundation4DateVSg_xtAA15MOTLVFieldIndexRzlFAA015MODonationFieldJ0O_TB5
+ _$s7Moments18MOTLVRecordBuilderC14appendOptional_2aty10Foundation4UUIDVSg_xtAA15MOTLVFieldIndexRzlFAA015MODonationFieldJ0O_TB5
+ _$s7Moments22MODonationWriteSessionC10assertOpen33_851E244E6A6886B58B01382E3B42F443LLyyKF
+ _$s7Moments22MODonationWriteSessionC11appendEventyySo7MOEventCKF
+ _$s7Moments22MODonationWriteSessionC11appendEventyySo7MOEventCKFTo
+ _$s7Moments22MODonationWriteSessionC11appendEventyySo7MOEventCKFToTm
+ _$s7Moments22MODonationWriteSessionC12appendBundleyySo07MOEventF0CKF
+ _$s7Moments22MODonationWriteSessionC12appendBundleyySo07MOEventF0CKFTo
+ _$s7Moments22MODonationWriteSessionC16appendPredictionyySo022MOAvailabilityDowntimeF0CKF
+ _$s7Moments22MODonationWriteSessionC16appendPredictionyySo022MOAvailabilityDowntimeF0CKFTo
+ _$s7Moments22MODonationWriteSessionC6createACyKFZ
+ _$s7Moments22MODonationWriteSessionC6createACyKFZTf4d_n
+ _$s7Moments22MODonationWriteSessionC6createACyKFZTo
+ _$s7Moments22MODonationWriteSessionC6finishSo12NSFileHandleCyKF
+ _$s7Moments22MODonationWriteSessionC6finishSo12NSFileHandleCyKFTo
+ _$s7Moments22MODonationWriteSessionC6writer33_851E244E6A6886B58B01382E3B42F443LLAA0B6WriterCvpWvd
+ _$s7Moments22MODonationWriteSessionC7abandonyyF
+ _$s7Moments22MODonationWriteSessionC7abandonyyFTo
+ _$s7Moments22MODonationWriteSessionC8finished33_851E244E6A6886B58B01382E3B42F443LLSbvpWvd
+ _$s7Moments22MODonationWriteSessionC9abandoned33_851E244E6A6886B58B01382E3B42F443LLSbvpWvd
+ _$s7Moments22MODonationWriteSessionCACycfC
+ _$s7Moments22MODonationWriteSessionCACycfc
+ _$s7Moments22MODonationWriteSessionCACycfcTo
+ _$s7Moments22MODonationWriteSessionCMF
+ _$s7Moments22MODonationWriteSessionCMa
+ _$s7Moments22MODonationWriteSessionCMf
+ _$s7Moments22MODonationWriteSessionCMn
+ _$s7Moments22MODonationWriteSessionCMo
+ _$s7Moments22MODonationWriteSessionCMu
+ _$s7Moments22MODonationWriteSessionCN
+ _$s7Moments22MODonationWriteSessionCfD
+ _$s7Moments22MODonationWriteSessionCfETo
+ _$sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n
+ _$sSS_yptMR
+ _$sSS_yptMd
+ _$sSd9hashValueSivg
+ _$ss18_DictionaryStorageCySSypGMR
+ _$ss18_DictionaryStorageCySSypGMd
+ _$ss23_ContiguousArrayStorageCySS_yptGMR
+ _$ss23_ContiguousArrayStorageCySS_yptGMd
+ _$sypSgMR
+ _$sypSgMd
+ _$sypSgWOc
+ _$sypSgWOh
+ _MOEventBundleSubTypeStringDwellAtHome
+ _MOEventBundleSubTypeStringDwellAtHomeSummary
+ _MOEventBundleTypeEnrichment
+ _MOEventBundleTypeWorkoutPlace
+ _OBJC_CLASS_$_MOConfigSnapshot
+ _OBJC_CLASS_$_MOEventCalendarContext
+ _OBJC_CLASS_$_MOEventMessageContext
+ _OBJC_CLASS_$_MOEventPhotoContext
+ _OBJC_CLASS_$__TtC7Moments22MODonationWriteSession
+ _OBJC_METACLASS_$_MOConfigSnapshot
+ _OBJC_METACLASS_$_MOEventCalendarContext
+ _OBJC_METACLASS_$_MOEventMessageContext
+ _OBJC_METACLASS_$_MOEventPhotoContext
+ _OBJC_METACLASS_$__TtC7Moments22MODonationWriteSession
+ _PROTOCOLS_MOConfigSnapshot
+ __50-[MOPromptManager runEnrichmentWithLimit:handler:]_block_invoke
+ __63-[MOPromptManager fetchEffectiveDoubleValueForKey:withHandler:]_block_invoke
+ __CLASS_METHODS_MOConfigSnapshot
+ __CLASS_METHODS__TtC7Moments22MODonationWriteSession
+ __CLASS_PROPERTIES_MOConfigSnapshot
+ __DATA_MOConfigSnapshot
+ __DATA__TtC7Moments22MODonationWriteSession
+ __INSTANCE_METHODS_MOConfigSnapshot
+ __INSTANCE_METHODS__TtC7Moments22MODonationWriteSession
+ __IVARS_MOConfigSnapshot
+ __IVARS__TtC7Moments22MODonationWriteSession
+ __METACLASS_DATA_MOConfigSnapshot
+ __METACLASS_DATA__TtC7Moments22MODonationWriteSession
+ __OBJC_$_CLASS_METHODS_MOEventCalendarContext
+ __OBJC_$_CLASS_METHODS_MOEventMessageContext
+ __OBJC_$_CLASS_METHODS_MOEventPhotoContext
+ __OBJC_$_CLASS_METHODS_MOFilePersistenceManager
+ __OBJC_$_CLASS_PROP_LIST_MOEventCalendarContext
+ __OBJC_$_CLASS_PROP_LIST_MOEventMessageContext
+ __OBJC_$_CLASS_PROP_LIST_MOEventPhotoContext
+ __OBJC_$_INSTANCE_METHODS_MOEventCalendarContext
+ __OBJC_$_INSTANCE_METHODS_MOEventMessageContext
+ __OBJC_$_INSTANCE_METHODS_MOEventPhotoContext
+ __OBJC_$_INSTANCE_VARIABLES_MOEventCalendarContext
+ __OBJC_$_INSTANCE_VARIABLES_MOEventMessageContext
+ __OBJC_$_INSTANCE_VARIABLES_MOEventPhotoContext
+ __OBJC_$_PROP_LIST_MOEventCalendarContext
+ __OBJC_$_PROP_LIST_MOEventMessageContext
+ __OBJC_$_PROP_LIST_MOEventPhotoContext
+ __OBJC_CLASS_PROTOCOLS_$_MOEventCalendarContext
+ __OBJC_CLASS_PROTOCOLS_$_MOEventMessageContext
+ __OBJC_CLASS_PROTOCOLS_$_MOEventPhotoContext
+ __OBJC_CLASS_RO_$_MOEventCalendarContext
+ __OBJC_CLASS_RO_$_MOEventMessageContext
+ __OBJC_CLASS_RO_$_MOEventPhotoContext
+ __OBJC_METACLASS_RO_$_MOEventCalendarContext
+ __OBJC_METACLASS_RO_$_MOEventMessageContext
+ __OBJC_METACLASS_RO_$_MOEventPhotoContext
+ __PROPERTIES_MOConfigSnapshot
+ __PROTOCOLS_MOConfigSnapshot
+ ___50-[MOPromptManager runEnrichmentWithLimit:handler:]_block_invoke
+ ___50-[MOPromptManager runEnrichmentWithLimit:handler:]_block_invoke_2
+ ___63-[MOPromptManager fetchEffectiveDoubleValueForKey:withHandler:]_block_invoke
+ ___63-[MOPromptManager fetchEffectiveDoubleValueForKey:withHandler:]_block_invoke_2
+ _kActionMediaMetaDataDominantBundleID
+ _kMOEnrichedInfoKeyEnrichedNL
+ _kMOEnrichedInfoKeyOriginalNL
+ _kMOEnrichedInfoKeyRationale
+ _kMOMediaGeneralNameValue
+ _objc_msgSend$bundleWithIdentifier:
+ _objc_msgSend$caseInsensitiveCompare:
+ _objc_msgSend$donateEventBundles:events:prediction:configSnapshot:error:
+ _objc_msgSend$eventForWorkoutPlaceID:
+ _objc_msgSend$fetchEffectiveDoubleValueForKey:withHandler:
+ _objc_msgSend$initWithEventRetentionSeconds:
+ _objc_msgSend$persistEventBundles:events:prediction:configSnapshot:error:
+ _objc_msgSend$runEnrichmentWithContext:limit:andHandler:
+ _objc_msgSend$sourceSuggestionID
+ _objc_msgSend$workoutPlaceAssociationKind
+ _objc_msgSend$workoutPlaceDestinationID
+ _objc_msgSend$workoutPlaceEncompassingID
+ _objc_msgSend$workoutPlaceOriginID
+ _swift_deletedMethodError
+ _symbolic SS_ypt
+ _symbolic _____ 7Moments16MOConfigSnapshotC
+ _symbolic _____ 7Moments22MODonationWriteSessionC
+ _symbolic _____ySS_yptG s23_ContiguousArrayStorageC
+ _symbolic _____ySSypG s18_DictionaryStorageC
+ _symbolic ypSg
- -[MOPromptManager fetchMFeatureEnabledWithHandler:]
- /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/Moments/install/TempContent/Objects/Moments.build/Moments.build/Objects-normal/arm64e/RTLocation+MOExtensions-7e1a45f4f90ca3312d0526f55c247da1.o
- GCC_except_table109
- __51-[MOPromptManager fetchMFeatureEnabledWithHandler:]_block_invoke
- ___51-[MOPromptManager fetchMFeatureEnabledWithHandler:]_block_invoke
- ___51-[MOPromptManager fetchMFeatureEnabledWithHandler:]_block_invoke_2
- ___block_descriptor_48_e8_32bs40bs_e20_v20?0B8"NSError"12ls32l8s40l8
- _objc_msgSend$fetchMFeatureEnabledWithHandler:
CStrings:
+ "@\"MOEventCalendarContext\""
+ "@\"MOEventMessageContext\""
+ "@\"MOEventPhotoContext\""
+ "@56@0:8@16@24@32@40^@48"
+ "@60@0:8@16B24@28B36B40@44@52"
+ "B32@0:8@16^@24"
+ "B56@0:8@16@24@32@40^@48"
+ "Enriched"
+ "Enriched Evidence"
+ "Failed to append config snapshot: %@"
+ "MOConfigSnapshot"
+ "MOEventCalendarContext"
+ "MOEventMessageContext"
+ "MOEventPhotoContext"
+ "MediaActionMetaDataDominantBundleID"
+ "Moments.MOConfigSnapshot"
+ "Moments.MODonationWriteSession"
+ "T@\"MOEventCalendarContext\",&,N,V_calendarContextEvent"
+ "T@\"MOEventMessageContext\",&,N,V_messageContextEvent"
+ "T@\"MOEventPhotoContext\",&,N,V_photoContextEvent"
+ "T@\"NSArray\",&,N,V_suggestionIDs"
+ "T@\"NSArray\",R,N,V_allowedInterfaceTypes"
+ "T@\"NSArray\",R,N,V_excludedInterfaceTypes"
+ "T@\"NSDate\",C,N,V_calendarEndDate"
+ "T@\"NSDate\",C,N,V_calendarStartDate"
+ "T@\"NSDate\",C,N,V_messageDate"
+ "T@\"NSString\",&,N,V_enrichedNLString"
+ "T@\"NSString\",&,N,V_enrichmentRationale"
+ "T@\"NSString\",&,N,V_originalNLString"
+ "T@\"NSString\",&,N,V_sourceSuggestionID"
+ "T@\"NSString\",C,N,V_calendarEventIdentifier"
+ "T@\"NSString\",C,N,V_calendarLocation"
+ "T@\"NSString\",C,N,V_calendarTitle"
+ "T@\"NSString\",C,N,V_messageBody"
+ "T@\"NSString\",C,N,V_messageIdentifier"
+ "T@\"NSString\",C,N,V_messageSenderName"
+ "T@\"NSString\",C,N,V_photoIdentifier"
+ "T@\"NSString\",C,N,V_photoTextRepresentation"
+ "T@\"NSUUID\",&,N,V_workoutPlaceDestinationID"
+ "T@\"NSUUID\",&,N,V_workoutPlaceEncompassingID"
+ "T@\"NSUUID\",&,N,V_workoutPlaceOriginID"
+ "TB,N,R"
+ "TB,N,V_calendarIsAllDay"
+ "TB,N,V_excludeEnrichmentDedupIneligible"
+ "TB,N,V_photoIsScreenshot"
+ "TB,N,V_rehydrated"
+ "TQ,N,V_workoutPlaceAssociationKind"
+ "TQ,N,V_workoutSwimmingLocationType"
+ "Td,N,R,VeventRetentionSeconds"
+ "Tq,N,R"
+ "Tq,N,V_calendarParticipationStatus"
+ "Tq,N,V_calendarType"
+ "_TtC7Moments22MODonationWriteSession"
+ "_allowedInterfaceTypes"
+ "_calendarContextEvent"
+ "_calendarEndDate"
+ "_calendarEventIdentifier"
+ "_calendarIsAllDay"
+ "_calendarLocation"
+ "_calendarParticipationStatus"
+ "_calendarStartDate"
+ "_calendarTitle"
+ "_calendarType"
+ "_enrichedNLString"
+ "_enrichmentRationale"
+ "_excludeEnrichmentDedupIneligible"
+ "_excludedInterfaceTypes"
+ "_messageBody"
+ "_messageContextEvent"
+ "_messageDate"
+ "_messageIdentifier"
+ "_messageSenderName"
+ "_originalNLString"
+ "_photoContextEvent"
+ "_photoIdentifier"
+ "_photoIsScreenshot"
+ "_photoTextRepresentation"
+ "_rehydrated"
+ "_sourceSuggestionID"
+ "_suggestionIDs"
+ "_workoutPlaceAssociationKind"
+ "_workoutPlaceDestinationID"
+ "_workoutPlaceEncompassingID"
+ "_workoutPlaceOriginID"
+ "_workoutSwimmingLocationType"
+ "abandon"
+ "abandoned"
+ "allowedInterfaceTypes"
+ "appendBundle:error:"
+ "appendEvent:error:"
+ "appendPrediction:error:"
+ "bundleWithIdentifier:"
+ "calendar event title, %@"
+ "calendarContextEvent"
+ "calendarEndDate"
+ "calendarEventIdentifier"
+ "calendarIsAllDay"
+ "calendarLocation"
+ "calendarParticipationStatus"
+ "calendarStartDate"
+ "calendarTitle"
+ "calendarType"
+ "calling fetchEffectiveDoubleValueForKey completed"
+ "calling fetchEffectiveDoubleValueForKey: %@"
+ "calling runEnrichmentWithContext completed"
+ "calling runEnrichmentWithContext, limit %lu"
+ "caseInsensitiveCompare:"
+ "configSnapshotWithEventRetentionSeconds:"
+ "createAndReturnError:"
+ "donateEventBundles:events:prediction:configSnapshot:error:"
+ "dwell_at_home"
+ "dwell_at_home_summary"
+ "enrichedNL"
+ "enrichedNLString"
+ "enrichment"
+ "enrichmentRationale"
+ "eventForWorkoutPlaceID:"
+ "eventRetentionSeconds"
+ "excludeEnrichmentDedupIneligible"
+ "excludedInterfaceTypes"
+ "fetchEffectiveDoubleValueForKey:withHandler:"
+ "finishAndReturnError:"
+ "finished"
+ "initWithDateInterval:ascending:limit:includeDeletedBundles:skipRanking:allowedInterfaceTypes:excludedInterfaceTypes:"
+ "initWithEventRetentionSeconds:"
+ "message from, %@"
+ "messageBody"
+ "messageContextEvent"
+ "messageDate"
+ "messageIdentifier"
+ "messageSenderName"
+ "momentsConfig"
+ "originalNL"
+ "originalNLString"
+ "persistEventBundles:events:prediction:configSnapshot:error:"
+ "photo context, %@"
+ "photoContextEvent"
+ "photoIdentifier"
+ "photoIsScreenshot"
+ "photoTextRepresentation"
+ "rationale"
+ "rehydrated"
+ "runEnrichmentWithContext:limit:andHandler:"
+ "runEnrichmentWithLimit:handler:"
+ "session abandoned"
+ "session already finished"
+ "setCalendarContextEvent:"
+ "setCalendarEndDate:"
+ "setCalendarEventIdentifier:"
+ "setCalendarIsAllDay:"
+ "setCalendarLocation:"
+ "setCalendarParticipationStatus:"
+ "setCalendarStartDate:"
+ "setCalendarTitle:"
+ "setCalendarType:"
+ "setEnrichedNLString:"
+ "setEnrichmentRationale:"
+ "setExcludeEnrichmentDedupIneligible:"
+ "setMessageBody:"
+ "setMessageContextEvent:"
+ "setMessageDate:"
+ "setMessageIdentifier:"
+ "setMessageSenderName:"
+ "setOriginalNLString:"
+ "setPhotoContextEvent:"
+ "setPhotoIdentifier:"
+ "setPhotoIsScreenshot:"
+ "setPhotoTextRepresentation:"
+ "setRehydrated:"
+ "setSourceSuggestionID:"
+ "setSuggestionIDs:"
+ "setWorkoutPlaceAssociationKind:"
+ "setWorkoutPlaceDestinationID:"
+ "setWorkoutPlaceEncompassingID:"
+ "setWorkoutPlaceOriginID:"
+ "setWorkoutSwimmingLocationType:"
+ "sourceSuggestionID"
+ "suggestionIDs"
+ "transferred"
+ "workoutPlaceAssociationKind"
+ "workoutPlaceDestination"
+ "workoutPlaceDestinationID"
+ "workoutPlaceEncompassing"
+ "workoutPlaceEncompassingID"
+ "workoutPlaceOrigin"
+ "workoutPlaceOriginID"
+ "workoutSwimmingLocationType"
+ "workout_place"
- "MOAction.m"
- "MOAppEngagementReporter.m"
- "MOConnectionManager.m"
- "MODefaultsManager.m"
- "MODictionaryEncoder.m"
- "MOEvent.m"
- "MOEventBundle.m"
- "MOEventBundleLabelCondition.m"
- "MOEventBundleLabelFormat.m"
- "MOEventBundleLabelLocalizer.m"
- "MOEventBundleLabelTemplate.m"
- "MOEventExtendedAtrributes.m"
- "MOInteraction.m"
- "MOMediaPlaySession.m"
- "MOPlace.m"
- "MOResource.m"
- "MOTime.m"
- "MOXPCContext.m"
- "calling fetchMFeatureEnabled"
- "calling fetchMFeatureEnabled completed"
- "fetchMFeatureEnabledWithHandler:"
- "v24@0:8@?<v@?B@\"NSError\">16"
```
