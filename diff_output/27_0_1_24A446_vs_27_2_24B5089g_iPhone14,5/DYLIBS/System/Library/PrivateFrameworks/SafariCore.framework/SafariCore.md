## SafariCore

> `/System/Library/PrivateFrameworks/SafariCore.framework/SafariCore`

```diff

-625.1.29.10.33
-  __TEXT.__text: 0x1ed910
-  __TEXT.__objc_methlist: 0xd134
-  __TEXT.__const: 0x7aa4
-  __TEXT.__gcc_except_tab: 0x77c8
-  __TEXT.__cstring: 0x17067
+625.2.5.10.1
+  __TEXT.__text: 0x1f4b08
+  __TEXT.__objc_methlist: 0xd304
+  __TEXT.__const: 0x7d74
+  __TEXT.__gcc_except_tab: 0x78c0
+  __TEXT.__cstring: 0x17137
   __TEXT.__ustring: 0x2784
-  __TEXT.__oslogstring: 0xe371
+  __TEXT.__oslogstring: 0xe651
   __TEXT.__dlopen_cstrs: 0x157
-  __TEXT.__constg_swiftt: 0x21f4
-  __TEXT.__swift5_typeref: 0x25c2
-  __TEXT.__swift5_reflstr: 0x14fb
-  __TEXT.__swift5_fieldmd: 0x1990
-  __TEXT.__swift5_builtin: 0x140
-  __TEXT.__swift5_assocty: 0x608
-  __TEXT.__swift5_proto: 0x4c8
-  __TEXT.__swift5_types: 0x210
+  __TEXT.__constg_swiftt: 0x2380
+  __TEXT.__swift5_typeref: 0x2706
+  __TEXT.__swift5_reflstr: 0x156b
+  __TEXT.__swift5_fieldmd: 0x1a30
+  __TEXT.__swift5_builtin: 0x17c
+  __TEXT.__swift5_assocty: 0x638
+  __TEXT.__swift5_proto: 0x4e0
+  __TEXT.__swift5_types: 0x224
   __TEXT.__swift5_types2: 0x4
-  __TEXT.__swift_as_entry: 0x32c
-  __TEXT.__swift_as_ret: 0x37c
+  __TEXT.__swift_as_entry: 0x328
+  __TEXT.__swift_as_ret: 0x378
   __TEXT.__swift_as_cont: 0x704
-  __TEXT.__swift5_capture: 0x1490
-  __TEXT.__swift5_protos: 0x2c
+  __TEXT.__swift5_capture: 0x154c
+  __TEXT.__swift5_protos: 0x30
   __TEXT.__swift5_mpenum: 0x10
-  __TEXT.__unwind_info: 0x9b80
-  __TEXT.__eh_frame: 0xa430
+  __TEXT.__unwind_info: 0x9d08
+  __TEXT.__eh_frame: 0xa460
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x59c0
-  __DATA_CONST.__objc_classlist: 0x6f8
+  __DATA_CONST.__const: 0x5ae0
+  __DATA_CONST.__objc_classlist: 0x708
   __DATA_CONST.__objc_catlist: 0x160
   __DATA_CONST.__objc_protolist: 0x218
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__weak_got: 0x8
-  __DATA_CONST.__objc_selrefs: 0x7610
+  __DATA_CONST.__objc_selrefs: 0x76e0
   __DATA_CONST.__objc_protorefs: 0xf8
   __DATA_CONST.__objc_superrefs: 0x4c0
   __DATA_CONST.__objc_arraydata: 0x2aa0
-  __DATA_CONST.__got: 0x13b0
-  __AUTH_CONST.__const: 0xb048
+  __DATA_CONST.__got: 0x13c8
+  __AUTH_CONST.__const: 0xb3b8
   __AUTH_CONST.__cfstring: 0x1af20
-  __AUTH_CONST.__objc_const: 0x16318
+  __AUTH_CONST.__objc_const: 0x165f0
   __AUTH_CONST.__weak_auth_got: 0x18
   __AUTH_CONST.__objc_intobj: 0x930
   __AUTH_CONST.__objc_dictobj: 0x190
   __AUTH_CONST.__objc_arrayobj: 0x5a0
   __AUTH_CONST.__auth_got: 0x21b8
-  __AUTH_CONST.__auth_ptr: 0x9c0
-  __AUTH.__objc_data: 0x2220
-  __AUTH.__data: 0x1010
-  __DATA.__objc_ivar: 0xd30
-  __DATA.__data: 0x3560
-  __DATA.__bss: 0xa420
-  __DATA.__common: 0x88
-  __DATA_DIRTY.__objc_data: 0x2980
-  __DATA_DIRTY.__data: 0xdc8
-  __DATA_DIRTY.__bss: 0x690
+  __AUTH_CONST.__auth_ptr: 0x9d0
+  __AUTH.__objc_data: 0x748
+  __AUTH.__data: 0x2c8
+  __DATA.__objc_ivar: 0xd34
+  __DATA.__data: 0x3680
+  __DATA.__bss: 0xa710
+  __DATA.__common: 0xa8
+  __DATA_DIRTY.__objc_data: 0x45e0
+  __DATA_DIRTY.__data: 0x1bb8
+  __DATA_DIRTY.__bss: 0x6b0
   __DATA_DIRTY.__common: 0x10
   - /System/Library/Frameworks/Accounts.framework/Accounts
   - /System/Library/Frameworks/AppIntents.framework/AppIntents

   - /usr/lib/swift/libswift_StringProcessing.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 11247
-  Symbols:   12027
-  CStrings:  5272
+  Functions: 11398
+  Symbols:   12097
+  CStrings:  5285
 
Symbols:
+ +[NSURLSessionConfiguration(SafariCoreExtras) safari_persistentStateSessionConfiguration]
+ +[WBSFeatureAvailability automaticPasswordChangeShouldAlwaysRecommend]
+ +[WBSFeatureAvailability isAutomaticPasswordChangeTestFestModeEnabled]
+ +[WBSFeatureAvailability setAutomaticPasswordChangeTestFestModeEnabled:]
+ +[WBSSavedAccount isDebugAccountForAutomaticPasswordChangeForDomain:]
+ +[WBSSavedAccount isUUIDHighLevelDomain:]
+ -[NSURLProtectionSpace(SafariCoreExtras) safari_getAllowsCredentialSavingWithCompletionHandler:]
+ -[WBSPasswordWarningTopFraudTargets emailProviderFraudTargets]
+ -[WBSPasswordWarningTopFraudTargets initWithHighPriorityTargets:targets:financialTargets:emailProviderFraudTargets:]
+ -[WBSSavedAccount _adoptSidecarDataFromSavedAccount:]
+ -[WBSSavedAccountStore _logSavedAccountsWithTOTPGeneratorsOnlyInPasskeySidecars:]
+ -[WBSSavedAccountStore _savedAccountConflictingWithSavedAccountOnInternalQueue:afterUpdatingUsername:password:]
+ -[WBSSavedAccountStore canSaveUser:password:forProtectionSpace:highLevelDomain:notes:customTitle:groupID:completionHandler:]
+ -[WBSSavedAccountStore canSaveUser:password:forUserTypedSite:notes:customTitle:groupID:completionHandler:]
+ GCC_except_table127
+ GCC_except_table140
+ GCC_except_table142
+ GCC_except_table182
+ GCC_except_table232
+ GCC_except_table235
+ GCC_except_table239
+ GCC_except_table313
+ GCC_except_table352
+ GCC_except_table420
+ GCC_except_table422
+ _OBJC_CLASS_$_WBSGuidedBrowsingNavigationEvent
+ _OBJC_CLASS_$_WBSRunLoopCoalescedUpdate
+ _OBJC_IVAR_$_WBSPasswordWarningTopFraudTargets._emailProviderFraudTargets
+ _OBJC_METACLASS_$_WBSGuidedBrowsingNavigationEvent
+ _OBJC_METACLASS_$_WBSRunLoopCoalescedUpdate
+ _WBSAutomaticPasswordChangeDebugLogAutoFilledDataKey
+ _WBSOSLogSearchFeatureAvailability
+ _WBSOSLogSearchFeatureAvailability.log
+ _WBSOSLogSearchFeatureAvailability.onceToken
+ __CLASS_METHODS_WBSGuidedBrowsingNavigationEvent
+ __CLASS_PROPERTIES_WBSGuidedBrowsingNavigationEvent
+ __DATA_WBSGuidedBrowsingNavigationEvent
+ __DATA_WBSRunLoopCoalescedUpdate
+ __INSTANCE_METHODS_WBSGuidedBrowsingNavigationEvent
+ __INSTANCE_METHODS_WBSRunLoopCoalescedUpdate
+ __IVARS_WBSGuidedBrowsingNavigationEvent
+ __IVARS_WBSRunLoopCoalescedUpdate
+ __IVARS__TtCE10SafariCoreV15Synchronization5MutexP33_5EB6CF0E21105A7FACDF3B64E2151CBD10SendingBox
+ __METACLASS_DATA_WBSGuidedBrowsingNavigationEvent
+ __METACLASS_DATA_WBSRunLoopCoalescedUpdate
+ __OBJC_$_INSTANCE_METHODS_WBSAnalyticsLogger(ForegroundReturnAnalyticsLogger)
+ __OBJC_$_INSTANCE_METHODS_WBSSavedAccountChangeRequest(SafariCore)
+ __PROPERTIES_WBSGuidedBrowsingNavigationEvent
+ __PROPERTIES_WBSRunLoopCoalescedUpdate
+ __PROTOCOLS_WBSGuidedBrowsingNavigationEvent
+ __ZL30configureCommonSessionSettingsP25NSURLSessionConfiguration
+ ___111-[WBSSavedAccountStore _savedAccountConflictingWithSavedAccountOnInternalQueue:afterUpdatingUsername:password:]_block_invoke
+ ___124-[WBSSavedAccountStore canSaveUser:password:forProtectionSpace:highLevelDomain:notes:customTitle:groupID:completionHandler:]_block_invoke
+ ___49-[WBSSavedAccount lastUsedDateForSite:inContext:]_block_invoke
+ ___81-[WBSSavedAccountStore _logSavedAccountsWithTOTPGeneratorsOnlyInPasskeySidecars:]_block_invoke
+ ___81-[WBSSavedAccountStore _logSavedAccountsWithTOTPGeneratorsOnlyInPasskeySidecars:]_block_invoke_2
+ ___94-[WBSSavedAccountStore canSaveUser:password:forUserTypedSite:notes:customTitle:groupID:error:]_block_invoke
+ ___96-[NSURLProtectionSpace(SafariCoreExtras) safari_getAllowsCredentialSavingWithCompletionHandler:]_block_invoke
+ ___96-[NSURLProtectionSpace(SafariCoreExtras) safari_getAllowsCredentialSavingWithCompletionHandler:]_block_invoke_2
+ ___WBSOSLogSearchFeatureAvailability_block_invoke
+ ___block_descriptor_32_e30_B16?0"WBSSavedAccountMatch"8l
+ ___block_descriptor_40_e8_32bs_e36_v16?0"WBSSavedAccountMatchResult"8ls32l8
+ ___block_descriptor_40_e8_32r_e49_v32?0q8"<WBSSavedAccountSidecarInternal>"16^B24lr32l8
+ ___block_descriptor_41_e8_32s_e46_v32?0"NSString"8"NSMutableDictionary"16^B24ls32l8
+ ___block_descriptor_48_e8_32s40r_e8_v12?0B8lr40l8s32l8
+ ___block_descriptor_56_e8_32s40r48r_e20_v20?0B8"NSError"12lr40l8r48l8s32l8
+ ___block_descriptor_56_e8_32s40s48r_e46_v32?0"NSString"8"NSMutableDictionary"16^B24lr48l8s32l8s40l8
+ ___block_descriptor_73_e8_32s40s48s56s64r_e42_v32?0"NSString"8"WBSSavedAccount"16^B24ls32l8s40l8s48l8s56l8r64l8
+ ___block_descriptor_96_e8_32s40s48s56s64s72s80s88bs_e5_v8?0ls32l8s40l8s48l8s88l8s56l8s64l8s72l8s80l8
+ ___swift_closure_destructor.125Tm
+ ___swift_closure_destructor.242Tm
+ ___swift_closure_destructor.252Tm
+ ___swift_closure_destructor.433Tm
+ ___swift_closure_destructor.491Tm
+ ___swift_closure_destructor.54Tm
+ ___swift_closure_destructor.58Tm
+ ___swift_closure_destructor.611Tm
+ ___unnamed_2
+ _associated conformance So13NSRunLoopModeaSHSCSQ
+ _associated conformance So13NSRunLoopModeas20_SwiftNewtypeWrapperSCSY
+ _associated conformance So13NSRunLoopModeas20_SwiftNewtypeWrapperSCs35_HasCustomAnyHashableRepresentation
+ _automaticPasswordChangeTestFestModeEnabled
+ _symbolic $s10SafariCore45WBSAutomaticPasswordChangeCompletionReportingP
+ _symbolic SS_So8NSObjectCt
+ _symbolic Shy_____G 10Foundation4UUIDV
+ _symbolic So25WBSRunLoopCoalescedUpdateCSgXw
+ _symbolic _____ 10SafariCore32WBSGuidedBrowsingNavigationEventC
+ _symbolic _____ 15Synchronization5MutexV10SafariCoreE10SendingBox33_5EB6CF0E21105A7FACDF3B64E2151CBDLLC
+ _symbolic _____ So13NSRunLoopModea
+ _symbolic _____ So35WBSAnalyticsForegroundReturnOutcomeV
+ _symbolic _____ So43WBSAnalyticsForegroundReturnAwayDurationBinV
+ _symbolic _____SgXwz_Xx 10SafariCore27WBSGuidedBrowsingControllerC
+ _symbolic ______pIeghg_ 10SafariCore39WBSGuidedBrowsingUIRegistrationProtocolP
+ _symbolic _____m 10SafariCore32WBSGuidedBrowsingNavigationEventC
+ _symbolic _____ySSSo8NSObjectCG s18_DictionaryStorageC
+ _symbolic _____ySS_So8NSObjectCtG s23_ContiguousArrayStorageC
+ _symbolic _____ySbG 15Synchronization6AtomicV
+ _symbolic _____yShy_____GG 15Synchronization5MutexVAARi_zrlE 10Foundation4UUIDV
+ _symbolic _____ySo15NSXPCConnectionCSgG 15Synchronization5MutexVAARi_zrlE
+ _symbolic _____y_____G s23_ContiguousArrayStorageC 10Foundation4UUIDV
+ _symbolic _____y_____G s23_ContiguousArrayStorageC So13NSRunLoopModea
+ _symbolic _____yxG 15Synchronization5MutexVAARi_zrlE
- +[WBSFeatureAvailability isAllowFavoritesInFrequentlyVisitedEnabled]
- +[WBSFeatureAvailability isAllowLogOnURLsInFrequentlyVisitedEnabled]
- +[WBSFeatureAvailability isDropOutliersInFrequentlyVisitedEnabled]
- -[WBSPasswordWarningTopFraudTargets initWithHighPriorityTargets:targets:financialTargets:]
- -[WBSWellKnownChangePasswordURLFallbackController didFinishLoad]
- GCC_except_table124
- GCC_except_table134
- GCC_except_table176
- GCC_except_table206
- GCC_except_table240
- GCC_except_table304
- GCC_except_table311
- GCC_except_table343
- GCC_except_table413
- GCC_except_table418
- _WBSEnableDropOutliersInFrequentlyVisitedKey
- _WBSFrequentlyVisitedSitesAllowLogonURLsPreferenceKey
- _WBSFrequentlyVisitedSitesAllowSitesFromFavoritesPreferenceKey
- __OBJC_$_CLASS_PROP_LIST_NSURLSessionConfiguration_$_SafariCoreExtras
- __OBJC_$_INSTANCE_METHODS_WBSAnalyticsLogger
- __OBJC_$_INSTANCE_METHODS_WBSSavedAccountChangeRequest
- ___block_descriptor_104_e8_32s40s48s56s64s72s80s88r96r_e5_v8?0ls32l8s40l8r88l8r96l8s48l8s56l8s64l8s72l8s80l8
- ___block_descriptor_48_e8_32s40s_e46_v32?0"NSString"8"NSMutableDictionary"16^B24ls32l8s40l8
- ___swift_closure_destructor.236Tm
- ___swift_closure_destructor.246Tm
- ___swift_closure_destructor.427Tm
- ___swift_closure_destructor.485Tm
- ___swift_closure_destructor.53Tm
- ___swift_closure_destructor.57Tm
- ___swift_closure_destructor.605Tm
- _symbolic So15NSXPCConnectionC
- _symbolic _____y_____G s23_ContiguousArrayStorageC 10SafariCore26WBSLocalizedPluralVariableV
CStrings:
+ "-[WBSSavedAccountStore canSaveUser:password:forUserTypedSite:notes:customTitle:groupID:error:]"
+ "Connected to broker"
+ "Error reporting navigation state to broker: %{public}s"
+ "Exceeded %.2f sec timeout while checking wheather credential saving is allowed for %{sensitive}@"
+ "Expired %.2f timeout waiting for canSaveUser:password: call to resolve"
+ "Expired %.2f timeout waiting for canSaveUser:password:forProtectionSpace: to complete"
+ "Expired timeout waiting for canSaveUser:password:forProtectionSpace: to complete"
+ "Found %lu saved account(s) with a TOTP generator in a passkey sidecar but not in a password sidecar"
+ "Found saved account for '%{sensitive}@' on %{sensitive}@ that will conflict with saved account for '%{sensitive}@' after updating username"
+ "Guided browser connection dropped during teardown; not reconnecting"
+ "PMAutomaticPasswordChangeDebugLogAutoFilledData"
+ "SafariCore.WBSGuidedBrowsingNavigationEvent"
+ "SafariCore.WBSRunLoopCoalescedUpdate"
+ "SearchFeatureAvailability"
+ "Unable to decode target URL for navigation event"
+ "WBSGuidedBrowsingNavigationEvent { targetURL (hash) = "
+ "com.apple.Safari.Foreground.DidResolveOutcome"
+ "currentURLChanged"
+ "emailProviderFraudTargets"
+ "reportNavigationEvent"
- "EnableDropOutliersInFrequentlyVisited"
- "FrequentlyVisitedSitesAllowLogonURLs"
- "FrequentlyVisitedSitesAllowSitesFromFavorites"
- "New strong password has been saved for %ld"
- "New strong passwords have been saved for %ld"
- "New strong passwords have been saved for %ld out of %ld accounts."
- "strongPasswordsMessage"
```
