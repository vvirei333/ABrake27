## SpringBoardHome

> `/System/Library/PrivateFrameworks/SpringBoardHome.framework/SpringBoardHome`

```diff

-226.0.7.102.0
-  __TEXT.__text: 0x38cff4
-  __TEXT.__objc_methlist: 0x3ebf4
-  __TEXT.__const: 0x8004
-  __TEXT.__cstring: 0x18b23
-  __TEXT.__gcc_except_tab: 0x435c
-  __TEXT.__oslogstring: 0xf320
+226.2.7.201.0
+  __TEXT.__text: 0x393d78
+  __TEXT.__objc_methlist: 0x3edfc
+  __TEXT.__const: 0x7fd4
+  __TEXT.__cstring: 0x18cd3
+  __TEXT.__gcc_except_tab: 0x43a4
+  __TEXT.__oslogstring: 0xf710
   __TEXT.__dlopen_cstrs: 0xb84
   __TEXT.__ustring: 0x476
-  __TEXT.__swift5_typeref: 0x657e
-  __TEXT.__constg_swiftt: 0x126c
-  __TEXT.__swift5_reflstr: 0xb2a
-  __TEXT.__swift5_fieldmd: 0xc08
+  __TEXT.__constg_swiftt: 0x12e8
+  __TEXT.__swift5_typeref: 0x6664
   __TEXT.__swift5_builtin: 0x1cc
+  __TEXT.__swift5_reflstr: 0xc9a
+  __TEXT.__swift5_fieldmd: 0xcd4
   __TEXT.__swift5_assocty: 0x510
   __TEXT.__swift5_proto: 0x160
-  __TEXT.__swift5_types: 0xfc
-  __TEXT.__swift5_capture: 0x1598
-  __TEXT.__unwind_info: 0xf890
-  __TEXT.__eh_frame: 0xc48
+  __TEXT.__swift5_types: 0x108
+  __TEXT.__swift5_capture: 0x16f8
+  __TEXT.__swift_as_entry: 0x10
+  __TEXT.__swift_as_ret: 0x8
+  __TEXT.__swift_as_cont: 0xc
+  __TEXT.__unwind_info: 0xfa60
+  __TEXT.__eh_frame: 0xeb0
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x9ec8
-  __DATA_CONST.__objc_classlist: 0x1310
+  __DATA_CONST.__const: 0x9ed0
+  __DATA_CONST.__objc_classlist: 0x1320
   __DATA_CONST.__objc_catlist: 0x120
-  __DATA_CONST.__objc_protolist: 0xba8
+  __DATA_CONST.__objc_protolist: 0xbc0
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x1cb70
-  __DATA_CONST.__objc_protorefs: 0x198
+  __DATA_CONST.__objc_selrefs: 0x1cc38
+  __DATA_CONST.__objc_protorefs: 0x1a8
   __DATA_CONST.__objc_superrefs: 0xe90
   __DATA_CONST.__objc_arraydata: 0x6e0
   __DATA_CONST.__got: 0x2478
-  __AUTH_CONST.__const: 0x7528
-  __AUTH_CONST.__cfstring: 0x16ea0
-  __AUTH_CONST.__objc_const: 0x58dc8
+  __AUTH_CONST.__const: 0x7960
+  __AUTH_CONST.__cfstring: 0x16f60
+  __AUTH_CONST.__objc_const: 0x59120
   __AUTH_CONST.__objc_intobj: 0x648
   __AUTH_CONST.__objc_doubleobj: 0xf0
   __AUTH_CONST.__objc_arrayobj: 0x258
   __AUTH_CONST.__objc_dictobj: 0x140
-  __AUTH_CONST.__auth_got: 0x1d88
-  __AUTH_CONST.__auth_ptr: 0x808
-  __AUTH.__objc_data: 0xb7e0
-  __AUTH.__data: 0xc58
-  __DATA.__objc_ivar: 0x3db4
-  __DATA.__data: 0x9628
-  __DATA.__bss: 0x3828
-  __DATA.__common: 0x70
-  __DATA_DIRTY.__objc_data: 0x1590
-  __DATA_DIRTY.__data: 0x60
+  __AUTH_CONST.__auth_got: 0x1da8
+  __AUTH_CONST.__auth_ptr: 0x818
+  __AUTH.__objc_data: 0xb670
+  __AUTH.__data: 0xc80
+  __DATA.__objc_ivar: 0x3dc8
+  __DATA.__data: 0x9788
+  __DATA.__bss: 0x3838
+  __DATA.__common: 0x78
+  __DATA_DIRTY.__objc_data: 0x18b0
+  __DATA_DIRTY.__data: 0x80
   __DATA_DIRTY.__bss: 0x18
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/CoreGraphics.framework/CoreGraphics

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 24689
-  Symbols:   33637
-  CStrings:  4579
+  Functions: 24840
+  Symbols:   33718
+  CStrings:  4598
 
Symbols:
+ +[SBFolderView _pageIndexForOffset:minimumPage:maximumPage:pageCount:pageWidth:pageSpacing:displayScale:userInterfaceLayoutDirection:behavior:fractionOfDistanceThroughPage:]
+ +[SBFolderView _pageOffsetForOffset:behavior:pageWidth:pageSpacing:displayScale:pageCount:userInterfaceLayoutDirection:fractionOfDistanceThroughPage:]
+ +[SBRootFolderController pageStateTransitionSnapshotForScrollOffset:pageWidth:pageSpacing:displayScale:pages:pageCount:userInterfaceLayoutDirection:currentPageState:currentPageOffset:scrollingDirection:]
+ -[NSString(SBHStringUtilities) sbh_stringByClampingToLength:]
+ -[SBFolderIconImageView _lastRealPageIndex]
+ -[SBFolderIconImageView _updateMiniGridTreatmentsForContainedIcon:]
+ -[SBFolderView _displayScale]
+ -[SBFolderView _lastOffsetOfPageStartingAtOffset:width:]
+ -[SBHIconLibraryTableViewController _tableView:previewForContextMenuConfiguration:highlighted:]
+ -[SBHIconViewApplicationShortcutsContextMenuProvider _paletteMenuWithElements:identifier:]
+ -[SBHTodayIconListLayoutDelegate iconListView:fullRectForCellAtIconCoordinate:proposedRect:]
+ -[SBHTodayViewController additionalListLayoutInsets]
+ -[SBHTodayViewController setAdditionalListLayoutInsets:]
+ -[SBIconDragContext addIconHiddenForDropAnimation:]
+ -[SBIconDragContext isIconHiddenForDropAnimation:]
+ -[SBIconDragInfo allowsExternalSuggestions]
+ -[SBIconDragInfo allowsSuggestions]
+ -[SBIconDragInfo init]
+ -[SBIconDragInfo setAllowsExternalSuggestions:]
+ -[SBIconDragInfo setAllowsSuggestions:]
+ -[SBIconDragManager _sourceIconViewForDragItem:inDragContext:primaryIconView:]
+ -[SBIconDragManager configureIconView:forIcon:]
+ -[SBIconImageView delayedImageUpdateDueToDisabledUpdates]
+ -[SBIconImageView setDelayedImageUpdateDueToDisabledUpdates:]
+ -[SBIconListModel hierarchyRootNode]
+ -[SBIconView _updateAttributedApp]
+ -[SBIconView leafIcon:didChangeActiveDataSource:]
+ -[SBRootFolderController _shouldExcludeIconsObscuredBySearchForOptions:]
+ -[SBRootFolderController firstIconViewWithOptions:iconPassingTest:]
+ -[SBRotatedIconListModel hierarchyRootNode]
+ GCC_except_table1005
+ GCC_except_table1066
+ GCC_except_table1119
+ GCC_except_table1122
+ GCC_except_table1138
+ GCC_except_table1145
+ GCC_except_table174
+ GCC_except_table195
+ GCC_except_table198
+ GCC_except_table199
+ GCC_except_table203
+ GCC_except_table210
+ GCC_except_table218
+ GCC_except_table251
+ GCC_except_table255
+ GCC_except_table257
+ GCC_except_table262
+ GCC_except_table270
+ GCC_except_table273
+ GCC_except_table282
+ GCC_except_table306
+ GCC_except_table333
+ GCC_except_table335
+ GCC_except_table339
+ GCC_except_table345
+ GCC_except_table352
+ GCC_except_table362
+ GCC_except_table366
+ GCC_except_table373
+ GCC_except_table386
+ GCC_except_table392
+ GCC_except_table422
+ GCC_except_table489
+ GCC_except_table495
+ GCC_except_table498
+ GCC_except_table501
+ GCC_except_table504
+ GCC_except_table513
+ GCC_except_table535
+ GCC_except_table546
+ GCC_except_table551
+ GCC_except_table569
+ GCC_except_table571
+ GCC_except_table580
+ GCC_except_table585
+ GCC_except_table607
+ GCC_except_table633
+ GCC_except_table637
+ GCC_except_table661
+ GCC_except_table664
+ GCC_except_table705
+ GCC_except_table77
+ GCC_except_table777
+ GCC_except_table787
+ GCC_except_table790
+ GCC_except_table808
+ GCC_except_table817
+ GCC_except_table822
+ GCC_except_table825
+ GCC_except_table828
+ GCC_except_table831
+ GCC_except_table935
+ GCC_except_table989
+ _MGGetProductType
+ _OBJC_CLASS_$_SBHAppIconsGlass
+ _OBJC_CLASS_$__TtC15SpringBoardHome23HiddenApplicationsCache
+ _OBJC_IVAR_$_SBHIconManager._appPredictionViewControllersForLayoutOptions
+ _OBJC_IVAR_$_SBHTodayViewController._additionalListLayoutInsets
+ _OBJC_IVAR_$_SBIconDragContext._iconsHiddenForDropAnimation
+ _OBJC_IVAR_$_SBIconDragInfo._allowsExternalSuggestions
+ _OBJC_IVAR_$_SBIconDragInfo._allowsSuggestions
+ _OBJC_IVAR_$_SBIconImageView._delayedImageUpdateDueToDisabledUpdates
+ _OBJC_METACLASS_$_SBHAppIconsGlass
+ _OBJC_METACLASS_$__TtC15SpringBoardHome23HiddenApplicationsCache
+ _SBHIsRunningInCarPlay
+ _SBHIsRunningInCarPlay.onceToken
+ _SBHIsRunningInCarPlay.runningInCarPlay
+ _SBIconMaximumDisplayNameLength
+ _UIAccessibilityDarkerSystemColorsEnabled
+ _UIViewGlassGetTintAmount
+ __CLASS_METHODS_SBHAppIconsGlass
+ __DATA_SBHAppIconsGlass
+ __DATA__TtC15SpringBoardHome23HiddenApplicationsCache
+ __INSTANCE_METHODS_SBHAppIconsGlass
+ __IVARS__TtC15SpringBoardHome23HiddenApplicationsCache
+ __METACLASS_DATA_SBHAppIconsGlass
+ __METACLASS_DATA__TtC15SpringBoardHome23HiddenApplicationsCache
+ __OBJC_$_INSTANCE_METHODS__TtC15SpringBoardHome23HiddenApplicationsCache(SpringBoardHome)
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_APSubjectMonitorSubscription
+ __OBJC_$_PROTOCOL_METHOD_TYPES_APSubjectMonitorSubscription
+ __OBJC_$_PROTOCOL_REFS_APSubjectMonitorSubscription
+ __OBJC_CLASS_PROTOCOLS_$__TtC15SpringBoardHome23HiddenApplicationsCache(SpringBoardHome)
+ __OBJC_LABEL_PROTOCOL_$_APSubjectMonitorSubscription
+ __OBJC_PROTOCOL_$_APSubjectMonitorSubscription
+ ___106-[SBHIconManager updateAppPredictionViewControllersWithListLayoutProvider:oldListLayoutProvider:animated:]_block_invoke_2
+ ___47-[SBIconDragManager configureIconView:forIcon:]_block_invoke
+ ___47-[SBIconDragManager configureIconView:forIcon:]_block_invoke_2
+ ___49-[SBHIconManager _dumpRootFolderForStateCapture:]_block_invoke_2
+ ___49-[SBHIconManager _dumpRootFolderForStateCapture:]_block_invoke_3
+ ___69-[SBIconDragManager iconView:item:willAnimateDragCancelWithAnimator:]_block_invoke_7
+ ___78-[SBIconDragManager _sourceIconViewForDragItem:inDragContext:primaryIconView:]_block_invoke
+ ___SBHIsRunningInCarPlay_block_invoke
+ ___block_descriptor_32_e25_16?0"SBIconListModel"8l
+ ___block_descriptor_40_e8_32r_e30_B16?0"<SBIconViewQuerying>"8lr32l8
+ ___block_descriptor_41_e8_32s_e46_v32?0"NSNumber"8"NSMutableDictionary"16^B24ls32l8
+ ___block_descriptor_48_e8_32bs40r_e33_B24?0"<SBIconViewQuerying>"8Q16lr40l8s32l8
+ ___block_descriptor_56_e8_32s40s48r_e30_B16?0"<SBIconViewQuerying>"8lr48l8s32l8s40l8
+ ___block_descriptor_56_e8_32s40s48r_e33_B24?0"<SBIconViewQuerying>"8Q16lr48l8s32l8s40l8
+ ___block_descriptor_64_e8_32s40w48w_e18_v16?0"NSString"8lw40l8w48l8s32l8
+ ___block_descriptor_88_e8_32s40s48s_e30_B16?0"_SBFolderPageElement"8ls32l8s40l8s48l8
+ ___swift_async_cont_functlets
+ ___swift_async_entry_functlets
+ ___swift_async_ret_functlets
+ ___swift_memcpy40_8
+ _flat unique So28APSubjectMonitorSubscription_p
+ _swift_task_alloc
+ _swift_task_create
+ _swift_task_dealloc
+ _swift_task_switch
+ _symbolic SDySS_____G So12SBHIconModelC15SpringBoardHomeE16IconListLocation33_294E8E30CF4CC42333D2CCC80E9D9C81LLV
+ _symbolic SayyShySSGcG
+ _symbolic ScPSg
+ _symbolic ShySSGIegg_
+ _symbolic ShySSGSg
+ _symbolic So12SBHIconModelCSgXwz_Xx
+ _symbolic _____ 15SpringBoardHome13AppIconsGlassC
+ _symbolic _____ 15SpringBoardHome23HiddenApplicationsCacheC
+ _symbolic _____ So12SBHIconModelC15SpringBoardHomeE16IconListLocation33_294E8E30CF4CC42333D2CCC80E9D9C81LLV
+ _symbolic _____XDXMT 15SpringBoardHome23HiddenApplicationsCacheC
+ _symbolic ______pSg So28APSubjectMonitorSubscriptionP
+ _symbolic _____ySS_____G s17_NativeDictionaryV So16SBHIconGridRangeV
+ _symbolic _____ySS_____G s18_DictionaryStorageC So12SBHIconModelC15SpringBoardHomeE16IconListLocation33_294E8E30CF4CC42333D2CCC80E9D9C81LLV
+ _symbolic _____ySS_____G s18_DictionaryStorageC So16SBHIconGridRangeV
+ _symbolic _____yyShySSGcG s23_ContiguousArrayStorageC
+ _symbolic ytIeAgHr_
+ _type_layout_string So12SBHIconModelC15SpringBoardHomeE16IconListLocation33_294E8E30CF4CC42333D2CCC80E9D9C81LLV
- +[SBFolderView _pageIndexForOffset:minimumPage:maximumPage:pageCount:pageWidth:pageSpacing:userInterfaceLayoutDirection:behavior:fractionOfDistanceThroughPage:]
- +[SBFolderView _pageOffsetForOffset:behavior:pageWidth:pageSpacing:pageCount:userInterfaceLayoutDirection:fractionOfDistanceThroughPage:]
- +[SBRootFolderController pageStateTransitionSnapshotForScrollOffset:pageWidth:pageSpacing:pages:pageCount:userInterfaceLayoutDirection:currentPageState:currentPageOffset:scrollingDirection:]
- -[SBHIconLibraryTableViewController _tableView:previewForContextMenuConfiguration:]
- -[SBIconDragManager configureIconView:]
- GCC_except_table1003
- GCC_except_table1064
- GCC_except_table1117
- GCC_except_table1118
- GCC_except_table1136
- GCC_except_table1143
- GCC_except_table173
- GCC_except_table194
- GCC_except_table197
- GCC_except_table202
- GCC_except_table217
- GCC_except_table227
- GCC_except_table250
- GCC_except_table252
- GCC_except_table256
- GCC_except_table261
- GCC_except_table268
- GCC_except_table271
- GCC_except_table281
- GCC_except_table292
- GCC_except_table305
- GCC_except_table330
- GCC_except_table331
- GCC_except_table334
- GCC_except_table338
- GCC_except_table340
- GCC_except_table351
- GCC_except_table359
- GCC_except_table363
- GCC_except_table371
- GCC_except_table384
- GCC_except_table391
- GCC_except_table420
- GCC_except_table439
- GCC_except_table488
- GCC_except_table493
- GCC_except_table497
- GCC_except_table499
- GCC_except_table503
- GCC_except_table512
- GCC_except_table534
- GCC_except_table545
- GCC_except_table550
- GCC_except_table568
- GCC_except_table570
- GCC_except_table579
- GCC_except_table584
- GCC_except_table606
- GCC_except_table632
- GCC_except_table636
- GCC_except_table660
- GCC_except_table663
- GCC_except_table704
- GCC_except_table76
- GCC_except_table776
- GCC_except_table786
- GCC_except_table789
- GCC_except_table798
- GCC_except_table809
- GCC_except_table820
- GCC_except_table823
- GCC_except_table826
- GCC_except_table829
- GCC_except_table933
- GCC_except_table987
- GCC_except_table99
- _OBJC_IVAR_$_SBHIconManager._appPredictionViewControllersForUniqueIdentifier
- _SBIconViewQueryingEnumerateIconViewQueryable
- ___39-[SBIconDragManager configureIconView:]_block_invoke
- ___51-[SBIconDragManager iconViewWillBeginDrag:session:]_block_invoke_3
- ___66-[SBHIconManager openFolderIcon:location:animated:withCompletion:]_block_invoke_2
- ___SBIconViewQueryingOptionalMethodImplementation_block_invoke
- ___block_descriptor_56_e8_32s40s48r_e5_v8?0lr48l8s32l8s40l8
- ___block_descriptor_56_e8_32s40s48s_e33_v24?0"<SBIconDragPreview>"8^B16ls32l8s40l8s48l8
- ___block_descriptor_64_e8_32s40bs48r_e30_B16?0"<SBIconViewQuerying>"8lr48l8s32l8s40l8
- ___block_descriptor_64_e8_32s40s48r_e30_B16?0"<SBIconViewQuerying>"8lr48l8s32l8s40l8
- ___block_descriptor_64_e8_32s40s48s56r_e5_v8?0lr56l8s32l8s40l8s48l8
- ___block_descriptor_72_e8_32s40s48s56r_e30_B16?0"<SBIconViewQuerying>"8lr56l8s32l8s40l8s48l8
- ___block_descriptor_72_e8_32s40s48w56w_e18_v16?0"NSString"8lw48l8w56l8s32l8s40l8
- ___block_descriptor_80_e8_32s40s_e30_B16?0"_SBFolderPageElement"8ls32l8s40l8
CStrings:
+ "%@: showing %@ but calculated %@"
+ "@16@?0@\"SBIconListModel\"8"
+ "Built %lu folder page elements (%lu reused) for folder icon: %@"
+ "Clamping folder icon current page index %lu to last real page %lu (element count: %lu, folder icon: %@)"
+ "Delivering an image update that was deferred while updates were disabled (icon=%@)"
+ "Discarding the desired icon state because it has diverged from the current layout (%f)"
+ "IGNORING. Icon %@ is no longer displayed in location %{public}@"
+ "Icon image cache group %{public}@ exceeded its memory budget at %llu bytes (budget %llu); purged %ld of %ld caches, now estimated at %llu bytes"
+ "Page visibility changing: list %{public}@ hidden %{public}d -> %{public}d, byUser: %{public}d, hiddenDate: %{public}@"
+ "PlatterCancelAnimation"
+ "PlatterDropAnimation"
+ "Skipping image update while updates are disabled (icon=%@, animatingIconImageInfoChange=%{BOOL}d, animatingListLayoutProviderChange=%{BOOL}d, disableAssertionCount=%lu)"
+ "SpringBoardHome/AppIconsGlass.swift"
+ "[%@] Focus %{public}@ does not require feature introduction"
+ "[%@] skipping donated focus mode %{public}@; it was superseded by %{public}@ before scrolling ended"
+ "[%@] updating page visibility for focus mode %{public}@ across %{public}lu lists; customizedHomeScreenPagesEnabled: %{public}d"
+ "currentPageIconCount"
+ "currentPageIsRealPage"
+ "delayedImageUpdateDueToContentVisibility"
+ "delayedImageUpdateDueToDisabledUpdates"
+ "folders with stale badges"
+ "icons not supporting badges"
+ "lists"
+ "pageElementCount"
+ "reapplying dropping state to recycled icon view %p for icon %{public}@"
+ "\xf0\xf0\xf0A"
- "D76"
- "D77"
- "[%@] Focus does not require feature introduction"
- "com.apple.SiriApp"
- "iPhone XX (D76)"
- "iPhone XX (D77)"
- "\xf0\xf0\xf01"
```
