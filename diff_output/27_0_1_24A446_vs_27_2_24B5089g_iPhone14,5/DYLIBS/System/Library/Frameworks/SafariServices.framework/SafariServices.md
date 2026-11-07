## SafariServices

> `/System/Library/Frameworks/SafariServices.framework/SafariServices`

```diff

-625.1.29.10.33
-  __TEXT.__text: 0x183bc0
-  __TEXT.__objc_methlist: 0x1bd4c
-  __TEXT.__const: 0x2eb4
-  __TEXT.__cstring: 0xd470
-  __TEXT.__gcc_except_tab: 0xfc84
+625.2.5.10.1
+  __TEXT.__text: 0x1857f0
+  __TEXT.__objc_methlist: 0x1bde4
+  __TEXT.__const: 0x2ec4
+  __TEXT.__cstring: 0xd640
+  __TEXT.__gcc_except_tab: 0xfe60
   __TEXT.__dlopen_cstrs: 0xb7f
-  __TEXT.__oslogstring: 0x81d7
+  __TEXT.__oslogstring: 0x83a7
   __TEXT.__ustring: 0x3774
-  __TEXT.__swift5_typeref: 0x6ac
-  __TEXT.__swift5_capture: 0x47c
+  __TEXT.__swift5_typeref: 0x6b0
+  __TEXT.__swift5_capture: 0x49c
   __TEXT.__constg_swiftt: 0x218
   __TEXT.__swift5_reflstr: 0x108
   __TEXT.__swift5_fieldmd: 0x148

   __TEXT.__swift_as_entry: 0x70
   __TEXT.__swift_as_ret: 0x7c
   __TEXT.__swift_as_cont: 0xfc
-  __TEXT.__unwind_info: 0x9210
+  __TEXT.__unwind_info: 0x9280
   __TEXT.__eh_frame: 0x1208
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0

   __DATA_CONST.__const: 0x7818
   __DATA_CONST.__objc_classlist: 0xa50
   __DATA_CONST.__objc_catlist: 0x100
-  __DATA_CONST.__objc_protolist: 0x8e8
+  __DATA_CONST.__objc_protolist: 0x8e0
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x12328
+  __DATA_CONST.__objc_selrefs: 0x123a8
   __DATA_CONST.__objc_protorefs: 0x160
   __DATA_CONST.__objc_superrefs: 0x858
-  __DATA_CONST.__objc_arraydata: 0x588
-  __DATA_CONST.__got: 0x2710
-  __AUTH_CONST.__const: 0x2220
-  __AUTH_CONST.__cfstring: 0xc3e0
-  __AUTH_CONST.__objc_const: 0x2c6a8
+  __DATA_CONST.__objc_arraydata: 0x5a8
+  __DATA_CONST.__got: 0x2728
+  __AUTH_CONST.__const: 0x2270
+  __AUTH_CONST.__cfstring: 0xc640
+  __AUTH_CONST.__objc_const: 0x2c718
   __AUTH_CONST.__weak_auth_got: 0x10
   __AUTH_CONST.__objc_intobj: 0xca8
   __AUTH_CONST.__objc_arrayobj: 0x4f8
   __AUTH_CONST.__objc_doubleobj: 0xc0
   __AUTH_CONST.__objc_dictobj: 0xa0
-  __AUTH_CONST.__auth_got: 0x1488
+  __AUTH_CONST.__auth_got: 0x14a8
   __AUTH_CONST.__auth_ptr: 0x0
-  __AUTH.__objc_data: 0x5e98
-  __AUTH.__data: 0x2e0
-  __DATA.__objc_ivar: 0x1f24
-  __DATA.__data: 0x69b0
+  __AUTH.__objc_data: 0x5ec0
+  __AUTH.__data: 0x2b0
+  __DATA.__objc_ivar: 0x1f34
+  __DATA.__data: 0x6950
   __DATA.__bss: 0xb90
-  __DATA_DIRTY.__objc_data: 0xb40
+  __DATA_DIRTY.__objc_data: 0xb18
+  __DATA_DIRTY.__data: 0x30
   __DATA_DIRTY.__bss: 0x10
   - /System/Library/Frameworks/AVFoundation.framework/AVFoundation
   - /System/Library/Frameworks/AuthenticationServices.framework/AuthenticationServices

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 9284
-  Symbols:   17525
-  CStrings:  2549
+  Functions: 9311
+  Symbols:   17547
+  CStrings:  2573
 
Symbols:
+ -[SFWebViewController performPageLevelAutoFillWithoutAuthentication:options:generatedPassword:earliestOneTimeCodeDate:staleOneTimeCodeThresholdDate:watchdogTimeout:completionHandler:]
+ -[_SFBrowserContentViewController _automaticPasswordChangeInitialLoadDidFailWithError:]
+ -[_SFBrowserContentViewController _logAutomaticPasswordChangeNavigationMilestone:navigation:error:]
+ -[_SFBrowserContentViewController _updateOverlayStateForDigitalHealthTracking:]
+ -[_SFBrowserContentViewController bannerLayoutMargins]
+ -[_SFDynamicBarAnimator synchronizedValueForHiddenValue:shownValue:]
+ -[_SFFormAutoFillController performPageLevelAutoFillWithoutAuthentication:options:generatedPassword:earliestOneTimeCodeDate:staleOneTimeCodeThresholdDate:watchdogTimeout:completionHandler:]
+ -[_SFNavigationBar _tabBarHeightContribution]
+ -[_SFNavigationBar defaultHeightExcludingTabBar]
+ -[_SFWebAppServiceViewController _guidedBrowsingReportingTabForViewController:]
+ -[_SFWebAppServiceViewController _reportBlockedGuidedBrowsingNavigationAction:isMainFrameNavigation:inViewController:]
+ -[_SFWebAppServiceViewController _reportGuidedBrowsingCurrentURLForViewController:]
+ -[_SFWebAppServiceViewController _reportGuidedBrowsingNavigationEventWithURL:httpMethod:statusCode:wasBlocked:forTab:]
+ -[_SFWebAppServiceViewController _reportGuidedBrowsingSameDocumentNavigationForViewController:]
+ -[_SFWebAppServiceViewController webViewController:decidePolicyForNavigationResponse:decisionHandler:]
+ -[_SFWebAppServiceViewController webViewController:didCommitNavigation:]
+ -[_SFWebAppServiceViewController webViewController:didSameDocumentNavigation:ofType:]
+ -[_SFWebAppTab pendingHTTPMethod]
+ -[_SFWebAppTab pendingStatusCode]
+ -[_SFWebAppTab setPendingHTTPMethod:]
+ -[_SFWebAppTab setPendingStatusCode:]
+ GCC_except_table169
+ GCC_except_table220
+ GCC_except_table239
+ GCC_except_table264
+ GCC_except_table267
+ GCC_except_table269
+ GCC_except_table271
+ GCC_except_table275
+ GCC_except_table279
+ GCC_except_table285
+ GCC_except_table294
+ GCC_except_table299
+ GCC_except_table310
+ GCC_except_table314
+ GCC_except_table322
+ GCC_except_table326
+ GCC_except_table331
+ GCC_except_table333
+ GCC_except_table338
+ GCC_except_table340
+ GCC_except_table344
+ GCC_except_table348
+ GCC_except_table353
+ GCC_except_table359
+ GCC_except_table371
+ GCC_except_table375
+ GCC_except_table377
+ GCC_except_table381
+ GCC_except_table384
+ GCC_except_table393
+ GCC_except_table399
+ GCC_except_table402
+ GCC_except_table404
+ GCC_except_table416
+ GCC_except_table419
+ GCC_except_table426
+ GCC_except_table443
+ GCC_except_table449
+ GCC_except_table451
+ GCC_except_table453
+ GCC_except_table456
+ GCC_except_table461
+ GCC_except_table464
+ GCC_except_table466
+ GCC_except_table474
+ GCC_except_table484
+ GCC_except_table491
+ GCC_except_table493
+ GCC_except_table507
+ GCC_except_table519
+ GCC_except_table525
+ GCC_except_table529
+ GCC_except_table537
+ GCC_except_table544
+ GCC_except_table547
+ GCC_except_table550
+ GCC_except_table554
+ GCC_except_table559
+ GCC_except_table569
+ GCC_except_table571
+ GCC_except_table573
+ GCC_except_table576
+ GCC_except_table578
+ GCC_except_table580
+ GCC_except_table583
+ GCC_except_table587
+ GCC_except_table590
+ GCC_except_table591
+ GCC_except_table599
+ GCC_except_table606
+ GCC_except_table607
+ GCC_except_table614
+ GCC_except_table620
+ GCC_except_table625
+ GCC_except_table629
+ GCC_except_table634
+ GCC_except_table638
+ GCC_except_table641
+ GCC_except_table645
+ GCC_except_table650
+ GCC_except_table651
+ GCC_except_table657
+ GCC_except_table662
+ GCC_except_table664
+ GCC_except_table671
+ GCC_except_table672
+ GCC_except_table673
+ GCC_except_table674
+ _OBJC_CLASS_$_SFStrongPasswordGenerator
+ _OBJC_CLASS_$_WBSUsageRetentionDonationManager
+ _OBJC_IVAR_$__SFBrowserContentViewController._currentAutomaticPasswordChangeNavigationDidRenderVisibleContent
+ _OBJC_IVAR_$__SFBrowserContentViewController._hasCompletedAutomaticPasswordChangeNavigation
+ _OBJC_IVAR_$__SFFormAutoFillController._pageLevelAutoFillStaleOneTimeCodeThresholdDate
+ _OBJC_IVAR_$__SFWebAppTab._pendingHTTPMethod
+ _OBJC_IVAR_$__SFWebAppTab._pendingStatusCode
+ _WBSEnableGraphicIconsInCompletionListKey
+ _WBSEnableRecentSearchesStartPageModuleAtTopOfStartPageKey
+ ___189-[_SFFormAutoFillController performPageLevelAutoFillWithoutAuthentication:options:generatedPassword:earliestOneTimeCodeDate:staleOneTimeCodeThresholdDate:watchdogTimeout:completionHandler:]_block_invoke
+ ___189-[_SFFormAutoFillController performPageLevelAutoFillWithoutAuthentication:options:generatedPassword:earliestOneTimeCodeDate:staleOneTimeCodeThresholdDate:watchdogTimeout:completionHandler:]_block_invoke_2
+ ___79-[_SFBrowserContentViewController _updateOverlayStateForDigitalHealthTracking:]_block_invoke
+ ___79-[_SFBrowserContentViewController _updateOverlayStateForDigitalHealthTracking:]_block_invoke_2
+ ___block_descriptor_72_ea8_32s40s48s56bs_e28_v20?0"WBSFormMetadata"8B16ls32l8s40l8s48l8s56l8
+ _swift_isEscapingClosureAtFileLocation
+ _swift_retain_x22
+ _symbolic Ig_
- -[SFWebViewController _webView:requestPresentingViewControllerWithCompletionHandler:]
- -[SFWebViewController _webViewDidExitElementFullscreen:]
- -[SFWebViewController performPageLevelAutoFillWithoutAuthentication:options:generatedPassword:earliestOneTimeCodeDate:watchdogTimeout:completionHandler:]
- -[_SFFormAutoFillController performPageLevelAutoFillWithoutAuthentication:options:generatedPassword:earliestOneTimeCodeDate:watchdogTimeout:completionHandler:]
- GCC_except_table116
- GCC_except_table133
- GCC_except_table179
- GCC_except_table233
- GCC_except_table235
- GCC_except_table243
- GCC_except_table266
- GCC_except_table270
- GCC_except_table272
- GCC_except_table276
- GCC_except_table286
- GCC_except_table298
- GCC_except_table300
- GCC_except_table302
- GCC_except_table307
- GCC_except_table311
- GCC_except_table316
- GCC_except_table318
- GCC_except_table323
- GCC_except_table330
- GCC_except_table332
- GCC_except_table336
- GCC_except_table339
- GCC_except_table343
- GCC_except_table347
- GCC_except_table349
- GCC_except_table354
- GCC_except_table368
- GCC_except_table374
- GCC_except_table376
- GCC_except_table378
- GCC_except_table382
- GCC_except_table385
- GCC_except_table395
- GCC_except_table400
- GCC_except_table403
- GCC_except_table415
- GCC_except_table418
- GCC_except_table421
- GCC_except_table427
- GCC_except_table448
- GCC_except_table450
- GCC_except_table452
- GCC_except_table454
- GCC_except_table460
- GCC_except_table462
- GCC_except_table465
- GCC_except_table473
- GCC_except_table483
- GCC_except_table490
- GCC_except_table492
- GCC_except_table506
- GCC_except_table517
- GCC_except_table523
- GCC_except_table527
- GCC_except_table532
- GCC_except_table542
- GCC_except_table545
- GCC_except_table549
- GCC_except_table551
- GCC_except_table557
- GCC_except_table568
- GCC_except_table570
- GCC_except_table572
- GCC_except_table575
- GCC_except_table577
- GCC_except_table579
- GCC_except_table582
- GCC_except_table585
- GCC_except_table589
- GCC_except_table595
- GCC_except_table600
- GCC_except_table603
- GCC_except_table612
- GCC_except_table618
- GCC_except_table621
- GCC_except_table627
- GCC_except_table628
- GCC_except_table635
- GCC_except_table636
- GCC_except_table640
- GCC_except_table643
- GCC_except_table649
- GCC_except_table654
- GCC_except_table655
- GCC_except_table659
- GCC_except_table666
- GCC_except_table668
- _OBJC_CLASS_$_SFAutoFillHelperProxy
- _OBJC_IVAR_$__SFBrowserContentViewController._hasStartedAutomaticPasswordChange
- __OBJC_$_PROTOCOL_INSTANCE_METHODS_OPT__WKFullscreenDelegate
- __OBJC_$_PROTOCOL_METHOD_TYPES__WKFullscreenDelegate
- __OBJC_$_PROTOCOL_REFS__WKFullscreenDelegate
- __OBJC_LABEL_PROTOCOL_$__WKFullscreenDelegate
- __OBJC_PROTOCOL_$__WKFullscreenDelegate
- ___159-[_SFFormAutoFillController performPageLevelAutoFillWithoutAuthentication:options:generatedPassword:earliestOneTimeCodeDate:watchdogTimeout:completionHandler:]_block_invoke
- ___159-[_SFFormAutoFillController performPageLevelAutoFillWithoutAuthentication:options:generatedPassword:earliestOneTimeCodeDate:watchdogTimeout:completionHandler:]_block_invoke_2
- ___63-[_SFBrowserContentViewController _updateDigitalHealthTracking]_block_invoke_2
- ___63-[_SFBrowserContentViewController _updateDigitalHealthTracking]_block_invoke_3
- ___block_descriptor_56_ea8_32s40s48bs_e28_v20?0"WBSFormMetadata"8B16ls32l8s40l8s48l8
CStrings:
+ "&appid=aaplw_r"
+ "&enriched=1"
+ "<nil>"
+ "<none>"
+ "Failed to load change password page: %@"
+ "Initial page load did not finish within %.0f seconds, but the page rendered visible content; starting password change anyways"
+ "Initial page load failed after %.2f seconds: %{public}@"
+ "Navigating: %{public}@ at %.2fs (navigation %p, URL <%{private}@>, error %{public}@)"
+ "Navigating: decidePolicyForNavigationResponse for main frame (HTTP status %{public}ld, MIME type %{public}@, URL <%{private}@>)"
+ "Navigating: willPerformClientRedirect to <%{private}@> after %.2fs delay"
+ "com.bing.www"
+ "com.yahoo.www"
+ "didCancelClientRedirect"
+ "didCommitNavigation"
+ "didFailNavigation"
+ "didFailProvisionalNavigation"
+ "didFinishDocumentLoad"
+ "didFinishNavigation"
+ "didFirstVisuallyNonEmptyLayout"
+ "didReceiveServerRedirectForProvisionalNavigation"
+ "didStartProvisionalNavigation"
+ "loadRequest (not deferred)"
+ "loadRequest (resolved to fallback URL)"
+ "loadRequest (resolved, unchanged)"
```
