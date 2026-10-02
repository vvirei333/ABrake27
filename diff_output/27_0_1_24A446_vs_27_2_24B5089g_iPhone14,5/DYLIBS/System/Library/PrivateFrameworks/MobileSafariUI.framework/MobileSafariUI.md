## MobileSafariUI

> `/System/Library/PrivateFrameworks/MobileSafariUI.framework/MobileSafariUI`

```diff

-625.1.29.10.33
-  __TEXT.__text: 0x2ee354
-  __TEXT.__objc_methlist: 0x24d7c
-  __TEXT.__const: 0x4e50
-  __TEXT.__gcc_except_tab: 0x1f478
-  __TEXT.__cstring: 0x10ab4
+625.2.5.10.1
+  __TEXT.__text: 0x2f1504
+  __TEXT.__objc_methlist: 0x24e9c
+  __TEXT.__const: 0x5010
+  __TEXT.__gcc_except_tab: 0x1f6d0
+  __TEXT.__cstring: 0x10b14
   __TEXT.__dlopen_cstrs: 0x7e6
-  __TEXT.__oslogstring: 0xb21f
+  __TEXT.__oslogstring: 0xb26f
   __TEXT.__ustring: 0x11da
-  __TEXT.__swift5_typeref: 0x6499
-  __TEXT.__constg_swiftt: 0x1f38
-  __TEXT.__swift5_reflstr: 0x1100
-  __TEXT.__swift5_fieldmd: 0x1000
+  __TEXT.__swift5_typeref: 0x6607
+  __TEXT.__constg_swiftt: 0x20f0
+  __TEXT.__swift5_reflstr: 0x1130
+  __TEXT.__swift5_fieldmd: 0x10c0
   __TEXT.__swift5_builtin: 0x1cc
   __TEXT.__swift5_assocty: 0x560
-  __TEXT.__swift5_capture: 0x2508
-  __TEXT.__swift5_proto: 0x200
-  __TEXT.__swift5_types: 0x160
+  __TEXT.__swift5_capture: 0x2538
+  __TEXT.__swift5_proto: 0x210
+  __TEXT.__swift5_types: 0x174
   __TEXT.__swift_as_entry: 0x110
   __TEXT.__swift_as_ret: 0x150
   __TEXT.__swift_as_cont: 0x2ac
   __TEXT.__swift5_mpenum: 0x8
-  __TEXT.__swift5_protos: 0xc
-  __TEXT.__unwind_info: 0x10288
+  __TEXT.__swift5_protos: 0x1c
+  __TEXT.__unwind_info: 0x10338
   __TEXT.__eh_frame: 0x3834
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x9910
-  __DATA_CONST.__objc_classlist: 0xa20
+  __DATA_CONST.__const: 0x9938
+  __DATA_CONST.__objc_classlist: 0xa40
   __DATA_CONST.__objc_catlist: 0xb0
   __DATA_CONST.__objc_protolist: 0xbe8
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x186f8
+  __DATA_CONST.__objc_selrefs: 0x18830
   __DATA_CONST.__objc_protorefs: 0x1f0
   __DATA_CONST.__objc_superrefs: 0x690
   __DATA_CONST.__objc_arraydata: 0x368
-  __DATA_CONST.__got: 0x37f8
-  __AUTH_CONST.__const: 0x88e0
-  __AUTH_CONST.__cfstring: 0xdd60
-  __AUTH_CONST.__objc_const: 0x33460
+  __DATA_CONST.__got: 0x3820
+  __AUTH_CONST.__const: 0x8a40
+  __AUTH_CONST.__cfstring: 0xdd80
+  __AUTH_CONST.__objc_const: 0x33808
   __AUTH_CONST.__weak_auth_got: 0x18
-  __AUTH_CONST.__objc_intobj: 0x4c8
+  __AUTH_CONST.__objc_intobj: 0x498
   __AUTH_CONST.__objc_dictobj: 0xc8
   __AUTH_CONST.__objc_arrayobj: 0x2b8
   __AUTH_CONST.__objc_doubleobj: 0x80
-  __AUTH_CONST.__auth_got: 0x2df0
-  __AUTH_CONST.__auth_ptr: 0xdc0
-  __AUTH.__objc_data: 0x3330
-  __AUTH.__data: 0x1160
-  __DATA.__objc_ivar: 0x20dc
-  __DATA.__data: 0x9be8
+  __AUTH_CONST.__auth_got: 0x2e10
+  __AUTH_CONST.__auth_ptr: 0xde8
+  __AUTH.__objc_data: 0x3350
+  __AUTH.__data: 0x1180
+  __DATA.__objc_ivar: 0x20e4
+  __DATA.__data: 0x9c28
   __DATA.__objc_stublist: 0x10
-  __DATA.__bss: 0x3ae0
+  __DATA.__bss: 0x39c0
   __DATA.__common: 0xa1
-  __DATA_DIRTY.__objc_data: 0x4640
-  __DATA_DIRTY.__data: 0x12e8
-  __DATA_DIRTY.__bss: 0xb90
+  __DATA_DIRTY.__objc_data: 0x46e0
+  __DATA_DIRTY.__data: 0x15d8
+  __DATA_DIRTY.__bss: 0xca0
   __DATA_DIRTY.__common: 0x48
   - /System/Library/Frameworks/Accounts.framework/Accounts
   - /System/Library/Frameworks/BrowserKit.framework/BrowserKit

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 16271
-  Symbols:   23029
-  CStrings:  3285
+  Functions: 16332
+  Symbols:   23092
+  CStrings:  3287
 
Symbols:
+ -[Application _scheduleUsageRetentionSettingsSnapshot]
+ -[BrowserController foregroundReturnAnalyticsTracker]
+ -[BrowserRootViewController isUsingTopCapsule]
+ -[BrowserWindowController _persistLocalTabGroupUUID:forSceneID:]
+ -[BrowserWindowController _persistedLocalTabGroupUUIDForSceneID:]
+ -[BrowserWindowController _removePersistedLocalTabGroupUUIDForSceneID:]
+ -[SearchSuggestionProvider getKeyForQueryString:isCFSearch:]
+ -[SearchSuggestionProvider previousCommittedQuery]
+ -[SearchSuggestionProvider setPreviousCommittedQuery:]
+ -[TabDocument URLFromSafariSpecificScheme]
+ -[TabDocument _clearNavigationSourceForNavigationURL:]
+ -[TabDocument _donateUsageRetentionEventsForExtensionsRunningOnURL:]
+ -[TabDocument _enableEnhancedSecurityIfRequiredForWebpagePreferences:isForMainFrameNavigation:]
+ -[TabDocument _webViewDidCompleteApplePayPayment:]
+ -[TabDocument setURLFromSafariSpecificScheme:]
+ -[URLCompletionProvider _doUpdateForPrefix:completionQuery:withSearchParameters:]
+ GCC_except_table1014
+ GCC_except_table1016
+ GCC_except_table1021
+ GCC_except_table1230
+ GCC_except_table1437
+ GCC_except_table428
+ GCC_except_table483
+ GCC_except_table531
+ GCC_except_table537
+ GCC_except_table541
+ GCC_except_table579
+ GCC_except_table588
+ GCC_except_table600
+ GCC_except_table622
+ GCC_except_table623
+ GCC_except_table626
+ GCC_except_table654
+ GCC_except_table662
+ GCC_except_table696
+ GCC_except_table709
+ GCC_except_table710
+ GCC_except_table716
+ GCC_except_table718
+ GCC_except_table762
+ GCC_except_table784
+ GCC_except_table808
+ GCC_except_table817
+ GCC_except_table827
+ GCC_except_table835
+ GCC_except_table850
+ GCC_except_table852
+ GCC_except_table887
+ GCC_except_table914
+ GCC_except_table919
+ GCC_except_table945
+ GCC_except_table946
+ GCC_except_table947
+ GCC_except_table956
+ GCC_except_table962
+ GCC_except_table966
+ GCC_except_table982
+ GCC_except_table991
+ _OBJC_CLASS_$_ForegroundReturnAnalyticsTracker
+ _OBJC_CLASS_$_WBSAppleAccountInformationProvider
+ _OBJC_CLASS_$_WBSSearchSuggestionsCacheKey
+ _OBJC_IVAR_$_BrowserController._foregroundReturnAnalyticsTracker
+ _OBJC_IVAR_$_CompletionProvider._completionsCache
+ _OBJC_IVAR_$_SearchSuggestionProvider._previousCommittedQuery
+ _OBJC_IVAR_$_TabDocument._URLFromSafariSpecificScheme
+ _OBJC_METACLASS_$_ForegroundReturnAnalyticsTracker
+ _WBSPrefixNavigationalIntentThreshold
+ __DATA_ForegroundReturnAnalyticsTracker
+ __DATA__TtC14MobileSafariUIP33_931067328ED9C6352E1E8EF25122437F17PendingResolution
+ __DATA__TtC14MobileSafariUIP33_931067328ED9C6352E1E8EF25122437F34DefaultForegroundReturnRateLimiter
+ __DATA__TtCE14MobileSafariUICSo32ForegroundReturnAnalyticsTrackerP33_931067328ED9C6352E1E8EF25122437F23DefaultOutcomeScheduler
+ __INSTANCE_METHODS_ForegroundReturnAnalyticsTracker
+ __IVARS_ForegroundReturnAnalyticsTracker
+ __IVARS__TtC14MobileSafariUIP33_931067328ED9C6352E1E8EF25122437F17PendingResolution
+ __IVARS__TtC14MobileSafariUIP33_931067328ED9C6352E1E8EF25122437F34DefaultForegroundReturnRateLimiter
+ __METACLASS_DATA_ForegroundReturnAnalyticsTracker
+ __METACLASS_DATA__TtC14MobileSafariUIP33_931067328ED9C6352E1E8EF25122437F17PendingResolution
+ __METACLASS_DATA__TtC14MobileSafariUIP33_931067328ED9C6352E1E8EF25122437F34DefaultForegroundReturnRateLimiter
+ __METACLASS_DATA__TtCE14MobileSafariUICSo32ForegroundReturnAnalyticsTrackerP33_931067328ED9C6352E1E8EF25122437F23DefaultOutcomeScheduler
+ __PROTOCOLS_ForegroundReturnAnalyticsTracker
+ __SFLocalTabGroupUUIDsBySceneIDDefaultsKey
+ ___109-[TabController _closeTabs:animated:allowAddingToRecentlyClosedTabs:keepWebViewAlive:showAutoCloseTabsAlert:]_block_invoke_3
+ ___29-[TabController _detachTabs:]_block_invoke
+ ___54-[Application _scheduleUsageRetentionSettingsSnapshot]_block_invoke
+ ___78-[TabController _updateContextKitSuggestionsForTabGroupWithCompletionHandler:]_block_invoke_4
+ ___block_descriptor_64_e8_32s40s48s56bs_e5_v8?0ls32l8s40l8s56l8s48l8
+ _symbolic $s14MobileSafariUI19CurrentDateProviderP
+ _symbolic $s14MobileSafariUI28ForegroundReturnEventLoggingP
+ _symbolic $s14MobileSafariUI28ForegroundReturnRateLimitingP
+ _symbolic $sSo32ForegroundReturnAnalyticsTrackerC14MobileSafariUIE17OutcomeSchedulingP
+ _symbolic So32ForegroundReturnAnalyticsTrackerC
+ _symbolic So32ForegroundReturnAnalyticsTrackerCSgXw
+ _symbolic _____ 14MobileSafariUI17PendingResolution33_931067328ED9C6352E1E8EF25122437FLLC
+ _symbolic _____ 14MobileSafariUI26DefaultCurrentDateProvider33_931067328ED9C6352E1E8EF25122437FLLV
+ _symbolic _____ 14MobileSafariUI34DefaultForegroundReturnRateLimiter33_931067328ED9C6352E1E8EF25122437FLLC
+ _symbolic _____ 14MobileSafariUI35DefaultForegroundReturnEventLogging33_931067328ED9C6352E1E8EF25122437FLLV
+ _symbolic _____ 8Dispatch0A8WorkItemC
+ _symbolic _____ So32ForegroundReturnAnalyticsTrackerC14MobileSafariUIE23DefaultOutcomeScheduler33_931067328ED9C6352E1E8EF25122437FLLC
+ _symbolic ______pSg 14MobileSafariUI19CurrentDateProviderP
+ _symbolic ______pSg 14MobileSafariUI28ForegroundReturnEventLoggingP
+ _symbolic ______pSg 14MobileSafariUI28ForegroundReturnRateLimitingP
- -[BrowserRootViewController usesLoweredBar]
- -[TabDocument _clearNavigationSource]
- -[URLCompletionProvider _doUpdateForPrefix:filterResultsUsingProfileIdentifier:withSearchParameters:]
- GCC_except_table1225
- GCC_except_table1436
- GCC_except_table368
- GCC_except_table427
- GCC_except_table479
- GCC_except_table533
- GCC_except_table542
- GCC_except_table565
- GCC_except_table577
- GCC_except_table583
- GCC_except_table592
- GCC_except_table602
- GCC_except_table611
- GCC_except_table624
- GCC_except_table625
- GCC_except_table634
- GCC_except_table657
- GCC_except_table699
- GCC_except_table708
- GCC_except_table749
- GCC_except_table763
- GCC_except_table770
- GCC_except_table790
- GCC_except_table816
- GCC_except_table822
- GCC_except_table833
- GCC_except_table868
- GCC_except_table889
- GCC_except_table921
- GCC_except_table959
- _OBJC_CLASS_$_SFExperimentTriggeredFeedback
- _OBJC_IVAR_$_CompletionProvider._completionsByString
- _OBJC_IVAR_$_URLCompletionProvider._bookmarkProvider
- ___45-[StartPageController _resumeBrowsingSection]_block_invoke_10
- ___75+[TabMenuProvider menuForClusterWithID:title:tabCount:location:dataSource:]_block_invoke_9
CStrings:
+ "Creating new window: uuid = %{public}@, sceneID = %{public}@, reconnected local tab group = %{public}@, retained persisted local tab group = %{public}@"
+ "ForegroundReturnAnalyticsTracker.lastLoggedDate"
+ "LastUsageRetentionSettingsSnapshotTime"
- "Creating new window: uuid = %{public}@, sceneID = %{public}@"
```
