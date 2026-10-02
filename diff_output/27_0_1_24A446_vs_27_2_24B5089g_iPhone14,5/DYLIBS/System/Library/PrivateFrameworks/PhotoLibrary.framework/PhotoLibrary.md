## PhotoLibrary

> `/System/Library/PrivateFrameworks/PhotoLibrary.framework/PhotoLibrary`

```diff

-912.1.131.0.0
-  __TEXT.__text: 0x3d5cc
-  __TEXT.__objc_methlist: 0x58a4
-  __TEXT.__const: 0x460
+916.45.110.0.0
+  __TEXT.__text: 0x36d50
+  __TEXT.__objc_methlist: 0x4f6c
+  __TEXT.__const: 0x378
   __TEXT.__dlopen_cstrs: 0x1f4
-  __TEXT.__gcc_except_tab: 0x30c
-  __TEXT.__cstring: 0x29b7
-  __TEXT.__oslogstring: 0x99c
-  __TEXT.__unwind_info: 0x1240
+  __TEXT.__gcc_except_tab: 0x310
+  __TEXT.__cstring: 0x261c
+  __TEXT.__oslogstring: 0x90d
+  __TEXT.__unwind_info: 0x1098
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x9e8
-  __DATA_CONST.__objc_classlist: 0x1b0
-  __DATA_CONST.__objc_catlist: 0x28
-  __DATA_CONST.__objc_protolist: 0xa8
+  __DATA_CONST.__const: 0xa18
+  __DATA_CONST.__objc_classlist: 0x198
+  __DATA_CONST.__objc_catlist: 0x20
+  __DATA_CONST.__objc_protolist: 0xa0
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x4480
-  __DATA_CONST.__objc_superrefs: 0x1a0
-  __DATA_CONST.__objc_arraydata: 0x78
-  __DATA_CONST.__got: 0x9d0
-  __AUTH_CONST.__const: 0x140
-  __AUTH_CONST.__cfstring: 0x2140
-  __AUTH_CONST.__objc_const: 0x85c0
-  __AUTH_CONST.__objc_doubleobj: 0x20
-  __AUTH_CONST.__objc_dictobj: 0x50
+  __DATA_CONST.__objc_selrefs: 0x3d50
+  __DATA_CONST.__objc_superrefs: 0x188
+  __DATA_CONST.__objc_arraydata: 0x58
+  __DATA_CONST.__got: 0x978
+  __AUTH_CONST.__const: 0x120
+  __AUTH_CONST.__cfstring: 0x1d00
+  __AUTH_CONST.__objc_const: 0x7d90
   __AUTH_CONST.__objc_arrayobj: 0x48
+  __AUTH_CONST.__objc_dictobj: 0x28
   __AUTH_CONST.__objc_intobj: 0x18
   __AUTH_CONST.__auth_got: 0x0
-  __AUTH.__objc_data: 0xc30
-  __DATA.__objc_ivar: 0x8f0
-  __DATA.__data: 0x830
-  __DATA.__bss: 0x260
+  __AUTH.__objc_data: 0xb40
+  __DATA.__objc_ivar: 0x87c
+  __DATA.__data: 0x7d0
+  __DATA.__bss: 0x240
   __DATA.__common: 0x8
   __DATA_DIRTY.__objc_data: 0x4b0
   - /System/Library/Frameworks/AVFAudio.framework/AVFAudio

   - /usr/lib/libMobileGestalt.dylib
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 1830
-  Symbols:   3716
-  CStrings:  433
+  Functions: 1635
+  Symbols:   3439
+  CStrings:  396
 
Symbols:
+ GCC_except_table1048
+ GCC_except_table1053
+ GCC_except_table106
+ GCC_except_table1071
+ GCC_except_table1074
+ GCC_except_table1075
+ GCC_except_table1076
+ GCC_except_table1077
+ GCC_except_table1078
+ GCC_except_table1284
+ GCC_except_table1297
+ GCC_except_table1359
+ GCC_except_table1465
+ GCC_except_table1530
+ GCC_except_table511
+ GCC_except_table512
+ GCC_except_table605
+ GCC_except_table621
+ GCC_except_table734
+ GCC_except_table870
+ GCC_except_table927
- +[PLCommentsFontCache sharedCache]
- +[PLExpandableImageView imageBorderWidth]
- +[PLImageView shouldDrawShadows]
- +[PLPhotoTileViewController tvOutTileSize]
- +[PLPublishingAgent publishingAgentForBundleNamed:toPublishMedia:]
- +[UIView(PLVideoOverlayButton) pl_videoOverlayButtonSize]
- -[PLAssetContainerDataSource _indexOfNextNonEmptyAssetContainerAfterContainerIndex:wrap:]
- -[PLAssetContainerDataSource _indexOfPreviousNonEmptyAssetContainerBeforeContainerIndex:wrap:]
- -[PLAssetContainerDataSource _updateCachedCount:forContainerAtContainerIndex:]
- -[PLAssetContainerDataSource _updateCachedValues]
- -[PLAssetContainerDataSource allAssetsCount]
- -[PLAssetContainerDataSource assetAtGlobalIndex:]
- -[PLAssetContainerDataSource assetAtIndexPath:]
- -[PLAssetContainerDataSource assetCollectionsFetchResult]
- -[PLAssetContainerDataSource assetContainerAtIndex:]
- -[PLAssetContainerDataSource assetContainerForAsset:]
- -[PLAssetContainerDataSource assetContainerForAssetGlobalIndex:]
- -[PLAssetContainerDataSource assetCountForContainer:]
- -[PLAssetContainerDataSource assetCountForContainerAtIndex:]
- -[PLAssetContainerDataSource assetInAssetContainer:atIndex:]
- -[PLAssetContainerDataSource assetWithObjectID:]
- -[PLAssetContainerDataSource assetsInAssetCollection:]
- -[PLAssetContainerDataSource assetsInAssetCollectionAtIndex:]
- -[PLAssetContainerDataSource dealloc]
- -[PLAssetContainerDataSource decrementAssetIndexPath:insideCurrentAssetContainer:andWrap:]
- -[PLAssetContainerDataSource decrementGlobalIndex:insideCurrentAssetContainer:andWrap:]
- -[PLAssetContainerDataSource description]
- -[PLAssetContainerDataSource findNearestIndexPath:preferNext:]
- -[PLAssetContainerDataSource firstAssetIndexPath]
- -[PLAssetContainerDataSource globalIndexForIndexPath:]
- -[PLAssetContainerDataSource globalIndexOfAsset:]
- -[PLAssetContainerDataSource hasAssetAtIndexPath:]
- -[PLAssetContainerDataSource incrementAssetIndexPath:insideCurrentAssetContainer:andWrap:]
- -[PLAssetContainerDataSource incrementGlobalIndex:insideCurrentAssetContainer:andWrap:]
- -[PLAssetContainerDataSource indexOfContainer:]
- -[PLAssetContainerDataSource indexOffsetForAssetContainerAtAssetIndex:]
- -[PLAssetContainerDataSource indexPathForGlobalIndex:]
- -[PLAssetContainerDataSource indexPathOfAsset:]
- -[PLAssetContainerDataSource initWithAssetCollectionsFetchResult:collectionsAssetsFetchResults:]
- -[PLAssetContainerDataSource lastAssetIndexPath]
- -[PLAssetContainerDataSource newAssetsFetchResults]
- -[PLAssetContainerDataSource pl_fetchAllAssets]
- -[PLAssetContainerDataSource viewControllerPhotoLibraryDidChange:]
- -[PLCommentsFontCache _bodyFontDescriptor]
- -[PLCommentsFontCache _contentSizesDidChange:]
- -[PLCommentsFontCache _emphasizedBodyFontDescriptor]
- -[PLCommentsFontCache _emphasizedShortCaptionFontDescriptor]
- -[PLCommentsFontCache _invalidateCache]
- -[PLCommentsFontCache _shortBodyFontDescriptor]
- -[PLCommentsFontCache _shortCaptionFontDescriptor]
- -[PLCommentsFontCache _shortSubheadlineFontDescriptor]
- -[PLCommentsFontCache commentAttributionDateFont]
- -[PLCommentsFontCache commentAttributionNameFont]
- -[PLCommentsFontCache commentEntryFont]
- -[PLCommentsFontCache commentSendButtonFont]
- -[PLCommentsFontCache commentTextFont]
- -[PLCommentsFontCache dealloc]
- -[PLCommentsFontCache init]
- -[PLCommentsFontCache likeFont]
- -[PLCommentsFontCache youLikeFont]
- -[PLContactPhotoOverlay beginAvatarTrackingFromImageView:]
- -[PLContactPhotoOverlay endAvatarTracking]
- -[PLCropOverlay _tappedBottomBarMotionToggle]
- -[PLCropOverlay _tappedBottomBarSetBothButton]
- -[PLCropOverlay _tappedBottomBarSetHomeButton]
- -[PLCropOverlay _tappedBottomBarSetLockButton]
- -[PLCropOverlay _updateMotionToggle]
- -[PLCropOverlay _updateWallpaperBottomBarSettingButtons]
- -[PLCropOverlay bottomBarFrame]
- -[PLCropOverlay insertIrisView:]
- -[PLCropOverlay isEditingHomeScreen]
- -[PLCropOverlay isEditingLockScreen]
- -[PLCropOverlay isWallpaperUIMode:]
- -[PLCropOverlay motionToggleHidden]
- -[PLCropOverlay motionToggleIsOn]
- -[PLCropOverlay removeProgress]
- -[PLCropOverlay setIsEditingHomeScreen:]
- -[PLCropOverlay setIsEditingLockScreen:]
- -[PLCropOverlay setMotionToggleHidden:]
- -[PLCropOverlay setMotionToggleIsOn:]
- -[PLCropOverlay setTitle:okButtonTitle:]
- -[PLCropOverlay setTitleHidden:animationDuration:]
- -[PLCropOverlay titleRect]
- -[PLCropOverlay wallpaperBottomBar]
- -[PLCropOverlayBottomBar setWallpaperBottomBar:]
- -[PLCropOverlayBottomBar wallpaperBottomBar]
- -[PLCropOverlayWallpaperBottomBar _commonPLCropOverlayWallpaperBottomBarInitializationPad]
- -[PLCropOverlayWallpaperBottomBar _commonPLCropOverlayWallpaperBottomBarInitializationPhone]
- -[PLCropOverlayWallpaperBottomBar _commonPLCropOverlayWallpaperBottomBarInitialization]
- -[PLCropOverlayWallpaperBottomBar _layoutSubviewsPad]
- -[PLCropOverlayWallpaperBottomBar _layoutSubviewsPhone]
- -[PLCropOverlayWallpaperBottomBar _sizeForString:]
- -[PLCropOverlayWallpaperBottomBar backdropView]
- -[PLCropOverlayWallpaperBottomBar dealloc]
- -[PLCropOverlayWallpaperBottomBar doCancelButton]
- -[PLCropOverlayWallpaperBottomBar doSetBothScreenButton]
- -[PLCropOverlayWallpaperBottomBar doSetButton]
- -[PLCropOverlayWallpaperBottomBar doSetHomeScreenButton]
- -[PLCropOverlayWallpaperBottomBar doSetLockScreenButton]
- -[PLCropOverlayWallpaperBottomBar initWithCoder:]
- -[PLCropOverlayWallpaperBottomBar initWithFrame:]
- -[PLCropOverlayWallpaperBottomBar layoutSubviews]
- -[PLCropOverlayWallpaperBottomBar maxToggleWidth]
- -[PLCropOverlayWallpaperBottomBar motionToggleHidden]
- -[PLCropOverlayWallpaperBottomBar motionToggle]
- -[PLCropOverlayWallpaperBottomBar separatorLine]
- -[PLCropOverlayWallpaperBottomBar setBackdropView:]
- -[PLCropOverlayWallpaperBottomBar setMaxToggleWidth:]
- -[PLCropOverlayWallpaperBottomBar setMotionToggleHidden:]
- -[PLCropOverlayWallpaperBottomBar setSeparatorLine:]
- -[PLCropOverlayWallpaperBottomBar setShouldOnlyShowHomeScreenButton:]
- -[PLCropOverlayWallpaperBottomBar setShouldOnlyShowLockScreenButton:]
- -[PLCropOverlayWallpaperBottomBar setText:]
- -[PLCropOverlayWallpaperBottomBar setTitleLabel:]
- -[PLCropOverlayWallpaperBottomBar shouldOnlyShowHomeScreenButton]
- -[PLCropOverlayWallpaperBottomBar shouldOnlyShowLockScreenButton]
- -[PLCropOverlayWallpaperBottomBar sizeThatFits:]
- -[PLCropOverlayWallpaperBottomBar titleLabel]
- -[PLCropOverlayWallpaperBottomBar updateForChangedSettings:]
- -[PLCropOverlayWallpaperBottomBar widthForToggleText]
- -[PLExpandableImageView imageRotationAngle]
- -[PLExpandableView canCollapse]
- -[PLExpandableView canceledPinch:]
- -[PLExpandableView collapseWithAnimation:completion:]
- -[PLExpandableView continuedPinch:]
- -[PLExpandableView expandWithAnimation:completion:]
- -[PLExpandableView finishedPinch:]
- -[PLExpandableView startedPinch:]
- -[PLImageView parentDidLayout]
- -[PLImageView textBadgeString]
- -[PLMoviePlayerController pauseDueToInsufficientData]
- -[PLPhotoTileViewController currentToDefaultZoomRatio]
- -[PLPhotoTileViewController currentToMinZoomRatio]
- -[PLPhotoTileViewController didLoadImage]
- -[PLPhotoTileViewController expandableImageView]
- -[PLPhotoTileViewController forceZoomingGesturesEnabled]
- -[PLPhotoTileViewController hasFullSizeImage]
- -[PLPhotoTileViewController hideContentView]
- -[PLPhotoTileViewController installVideoOverlay:]
- -[PLPhotoTileViewController refreshTileWithFullScreenImage:modelPhoto:]
- -[PLPhotoTileViewController resetZoom]
- -[PLPhotoTileViewController setAllowsZoomToFill:]
- -[PLPhotoTileViewController setAvalancheBadgesHidden:]
- -[PLPhotoTileViewController setClientIsWallpaper:]
- -[PLPhotoTileViewController setLockedUnderCropOverlay:]
- -[PLPhotoTileViewController showContentView]
- -[PLPhotoTileViewController showErrorPlaceholderView]
- -[PLPhotoTileViewController updateAfterCollapse]
- -[PLPhotoTileViewController updateCenterOverlay]
- -[PLPhotoTileViewController updateForVisibleOverlays:]
- -[PLPhotoTileViewController userDidAdjustWallpaper]
- -[PLPhotoTileViewController zoomToFitScale]
- -[PLPhotoTileViewController zoomToScale:animated:completionBlock:]
- -[PLPhotosDefaults musicCollection]
- -[PLPhotosDefaults setMusicCollection:]
- -[PLPhotosDefaults setShouldPlayMusic:]
- -[PLPhotosDefaults shouldPlayMusic]
- -[PLPhotosDefaults summarizeMomentSections]
- -[PLPhotosDefaults transitionForAnimationMovingForward:]
- -[PLPublishingAgent cancelButtonClicked]
- -[PLPublishingAgent doneButtonClicked]
- -[PLPublishingAgent maximumVideoDuration]
- -[PLPublishingAgent presentModalSheetInViewController:]
- -[PLPublishingAgent resignPublishingSheetResponders]
- -[PLPublishingAgent setTotalBytesWritten:totalBytes:]
- -[PLPublishingAgent setTrimStartTime:andEndTime:]
- -[PLPublishingAgent willDismiss]
- -[PLTiledLayer flushCache]
- -[PLUIEditImageViewController setImageSavingOptions:]
- -[PLUIEditVideoViewController setViewClass:]
- -[PLUIImageViewController setCropOverlayDone]
- -[PLVideoView applicationWillResignActive]
- -[PLVideoView newPreviewImageData:]
- -[PLVideoView notifyOfChange:shouldReloadBlock:]
- -[PLVideoView notifyRequiredResourcesDownloaded]
- -[PLVideoView playingToVideoOut]
- -[PLVideoView prepareMoviePlayer]
- -[UITableView(PhotoLibraryAdditions) pl_indexPathForLastRow]
- -[UITableView(PhotoLibraryAdditions) pl_lastRowIsVisible]
- -[UITableView(PhotoLibraryAdditions) pl_resetContentOffsetFromContentInsets]
- -[UITableView(PhotoLibraryAdditions) pl_scrollToBottom:]
- -[UITableView(PhotoLibraryAdditions) pl_scrollToTop:]
- -[UITableView(PhotoLibraryAdditions) pl_scrollToVisibleRowAtIndexPath:animated:]
- -[UIView(PhotoLibraryAdditions) pl_drawBorderWithColor:width:]
- -[UIViewController(PLNavigationControllerInterface) uiipc_filterForMediaTypes:]
- GCC_except_table1046
- GCC_except_table1104
- GCC_except_table1225
- GCC_except_table1230
- GCC_except_table1249
- GCC_except_table1252
- GCC_except_table1253
- GCC_except_table1254
- GCC_except_table1255
- GCC_except_table1256
- GCC_except_table1466
- GCC_except_table1479
- GCC_except_table1541
- GCC_except_table1653
- GCC_except_table1718
- GCC_except_table186
- GCC_except_table649
- GCC_except_table650
- GCC_except_table751
- GCC_except_table767
- GCC_except_table896
- _CGRectContainsRect
- _FigJPEGIOSurfaceMemoryPoolCreate
- _FigJPEGIOSurfaceMemoryPoolCreateIOSurface
- _NSFontAttributeName
- _OBJC_CLASS_$_NSConstantDoubleNumber
- _OBJC_CLASS_$_NSIndexPath
- _OBJC_CLASS_$_PLAssetContainerDataSource
- _OBJC_CLASS_$_PLCommentsFontCache
- _OBJC_CLASS_$_PLCropOverlayWallpaperBottomBar
- _OBJC_CLASS_$_UITableView
- _OBJC_CLASS_$_UITransitionView
- _OBJC_CLASS_$__UILegibilityLabel
- _OBJC_CLASS_$__UILegibilitySettings
- _OBJC_IVAR_$_PLAssetContainerDataSource._allAssetsCount
- _OBJC_IVAR_$_PLAssetContainerDataSource._assetCollectionsFetchResult
- _OBJC_IVAR_$_PLAssetContainerDataSource._assetsFetchResultByAssetCollection
- _OBJC_IVAR_$_PLAssetContainerDataSource._cachedValuesNeedUpdate
- _OBJC_IVAR_$_PLAssetContainerDataSource._containerCounts
- _OBJC_IVAR_$_PLAssetContainerDataSource._lastAssetCollectionIndex
- _OBJC_IVAR_$_PLCommentsFontCache.__bodyFontDescriptor
- _OBJC_IVAR_$_PLCommentsFontCache.__emphasizedBodyFontDescriptor
- _OBJC_IVAR_$_PLCommentsFontCache.__emphasizedShortCaptionFontDescriptor
- _OBJC_IVAR_$_PLCommentsFontCache.__shortBodyFontDescriptor
- _OBJC_IVAR_$_PLCommentsFontCache.__shortCaptionFontDescriptor
- _OBJC_IVAR_$_PLCommentsFontCache.__shortSubheadlineFontDescriptor
- _OBJC_IVAR_$_PLCropOverlay._isEditingHomeScreen
- _OBJC_IVAR_$_PLCropOverlay._isEditingLockScreen
- _OBJC_IVAR_$_PLCropOverlay._motionToggleIsOn
- _OBJC_IVAR_$_PLCropOverlayBottomBar._wallpaperBottomBar
- _OBJC_IVAR_$_PLCropOverlayWallpaperBottomBar._backdropView
- _OBJC_IVAR_$_PLCropOverlayWallpaperBottomBar._doCancelButton
- _OBJC_IVAR_$_PLCropOverlayWallpaperBottomBar._doSetBothScreenButton
- _OBJC_IVAR_$_PLCropOverlayWallpaperBottomBar._doSetButton
- _OBJC_IVAR_$_PLCropOverlayWallpaperBottomBar._doSetHomeScreenButton
- _OBJC_IVAR_$_PLCropOverlayWallpaperBottomBar._doSetLockScreenButton
- _OBJC_IVAR_$_PLCropOverlayWallpaperBottomBar._maxToggleWidth
- _OBJC_IVAR_$_PLCropOverlayWallpaperBottomBar._motionToggle
- _OBJC_IVAR_$_PLCropOverlayWallpaperBottomBar._motionToggleHidden
- _OBJC_IVAR_$_PLCropOverlayWallpaperBottomBar._separatorLine
- _OBJC_IVAR_$_PLCropOverlayWallpaperBottomBar._shouldOnlyShowHomeScreenButton
- _OBJC_IVAR_$_PLCropOverlayWallpaperBottomBar._shouldOnlyShowLockScreenButton
- _OBJC_IVAR_$_PLCropOverlayWallpaperBottomBar._titleLabel
- _OBJC_METACLASS_$_PLAssetContainerDataSource
- _OBJC_METACLASS_$_PLCommentsFontCache
- _OBJC_METACLASS_$_PLCropOverlayWallpaperBottomBar
- _PLCommentsFontCacheDidChangeNotification
- _PLNotifyImagePickerOfMultipleMediaAvailability
- _UIContentSizeCategoryDidChangeNotification
- _UIFontTextStyleCaption1
- _UIFontTextStyleSubheadline
- _UIImageJPEGRepresentation
- __NSDictionaryOfVariableBindings
- __OBJC_$_CATEGORY_INSTANCE_METHODS_UITableView_$_PhotoLibraryAdditions
- __OBJC_$_CATEGORY_UITableView_$_PhotoLibraryAdditions
- __OBJC_$_CLASS_METHODS_PLCommentsFontCache
- __OBJC_$_CLASS_METHODS_PLExpandableImageView
- __OBJC_$_INSTANCE_METHODS_PLAssetContainerDataSource
- __OBJC_$_INSTANCE_METHODS_PLCommentsFontCache
- __OBJC_$_INSTANCE_METHODS_PLCropOverlayWallpaperBottomBar
- __OBJC_$_INSTANCE_VARIABLES_PLAssetContainerDataSource
- __OBJC_$_INSTANCE_VARIABLES_PLCommentsFontCache
- __OBJC_$_INSTANCE_VARIABLES_PLCropOverlayWallpaperBottomBar
- __OBJC_$_PROP_LIST_PHAssetCollectionDataSource
- __OBJC_$_PROP_LIST_PLAssetContainerDataSource
- __OBJC_$_PROP_LIST_PLCommentsFontCache
- __OBJC_$_PROP_LIST_PLCropOverlayWallpaperBottomBar
- __OBJC_$_PROTOCOL_INSTANCE_METHODS_PHAssetCollectionDataSource
- __OBJC_$_PROTOCOL_METHOD_TYPES_PHAssetCollectionDataSource
- __OBJC_$_PROTOCOL_REFS_PHAssetCollectionDataSource
- __OBJC_CLASS_PROTOCOLS_$_PLAssetContainerDataSource
- __OBJC_CLASS_RO_$_PLAssetContainerDataSource
- __OBJC_CLASS_RO_$_PLCommentsFontCache
- __OBJC_CLASS_RO_$_PLCropOverlayWallpaperBottomBar
- __OBJC_LABEL_PROTOCOL_$_PHAssetCollectionDataSource
- __OBJC_METACLASS_RO_$_PLAssetContainerDataSource
- __OBJC_METACLASS_RO_$_PLCommentsFontCache
- __OBJC_METACLASS_RO_$_PLCropOverlayWallpaperBottomBar
- __OBJC_PROTOCOL_$_PHAssetCollectionDataSource
- __UILegibilityStrengthAutomatic
- ___34+[PLCommentsFontCache sharedCache]_block_invoke
- ___50-[PLCropOverlay setTitleHidden:animationDuration:]_block_invoke
- ___CreateInfoForImage
- ___TVOutTileSize
- _iosp_createMemIOSurface
- _iosp_poolInsertNewBuff
- _iosp_poolSetOptions
- _iosp_poolUpdateBuffPosition
- _kMemSubPoolDefaultBuffSizes
- _malloc_type_realloc
- _objc_retain_x26
- _sharedCache.onceToken
- _sharedCache.sharedCache
CStrings:
- "\n%@: %ld assets [%ld]"
- " containing %ld containers with %ld total assets (last container index %ld)"
- "%@.bundle"
- "(video-playback) calling _player pauseDueToInsufficientData"
- "-(spacing)-"
- "/System/Library/PublishingBundles/"
- "<<<< FigJPEGIOSurfacePool  %s: cache miss, creating '%c%c%c%c' surface size:%.3fMB"
- "H:|-(margin)-[doCancelButton]-(>=spacing)-%@-(margin)-|"
- "H:|[_doCancelButton][_separatorLine(==separatorWidth@999)][_doSetButton]|"
- "MOTION_TOGGLE_OFF"
- "MOTION_TOGGLE_ON"
- "Mismatched asset collections and asset fetch results"
- "PLAssetContainerDataSource.m"
- "PLCommentsFontCacheDidChangeNotification"
- "SET_BOTH"
- "SET_HOME_SCREEN"
- "SET_LOCK_SCREEN"
- "UITableViewAdditions.m"
- "Unable to copy CGImage at time:%f, error:[%@]"
- "V:|[_doCancelButton]|"
- "V:|[doCancelButton]-|"
- "[doSetBothScreenButton]"
- "[doSetHomeScreenButton]"
- "[doSetLockScreenButton]"
- "[motionToggle]"
- "_doCancelButton"
- "_doCancelButton, _separatorLine, _doSetButton"
- "doCancelButton"
- "doSetBothScreenButton"
- "doSetHomeScreenButton"
- "doSetLockScreenButton"
- "indexPath is out of range %@"
- "iosp_createMemIOSurface"
- "margin"
- "motionToggle"
- "separatorWidth"
- "spacing"
```
