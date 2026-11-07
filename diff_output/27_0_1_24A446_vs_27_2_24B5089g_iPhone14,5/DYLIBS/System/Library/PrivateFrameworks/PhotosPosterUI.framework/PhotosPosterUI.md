## PhotosPosterUI

> `/System/Library/PrivateFrameworks/PhotosPosterUI.framework/PhotosPosterUI`

```diff

-912.1.131.0.0
-  __TEXT.__text: 0xc5cd8
-  __TEXT.__objc_methlist: 0xa624
+916.45.110.0.0
+  __TEXT.__text: 0xc6b58
+  __TEXT.__objc_methlist: 0xa7f4
   __TEXT.__dlopen_cstrs: 0x64
-  __TEXT.__const: 0x2f18
-  __TEXT.__constg_swiftt: 0x177c
-  __TEXT.__swift5_typeref: 0x50c2
+  __TEXT.__const: 0x2ed8
+  __TEXT.__constg_swiftt: 0x172c
+  __TEXT.__swift5_typeref: 0x4ffc
   __TEXT.__swift5_builtin: 0xdc
-  __TEXT.__swift5_reflstr: 0xf71
-  __TEXT.__swift5_fieldmd: 0xb6c
+  __TEXT.__swift5_reflstr: 0xf21
+  __TEXT.__swift5_fieldmd: 0xb48
   __TEXT.__swift5_assocty: 0x2d8
   __TEXT.__swift5_proto: 0xd0
   __TEXT.__swift5_types: 0xb8
-  __TEXT.__cstring: 0x6e36
-  __TEXT.__swift5_capture: 0x8cc
-  __TEXT.__oslogstring: 0x49ee
+  __TEXT.__cstring: 0x6e7f
+  __TEXT.__swift5_capture: 0x8dc
+  __TEXT.__oslogstring: 0x4d18
   __TEXT.__swift_as_entry: 0x10
   __TEXT.__swift_as_ret: 0xc
   __TEXT.__swift_as_cont: 0x10
-  __TEXT.__gcc_except_tab: 0x19ac
+  __TEXT.__gcc_except_tab: 0x1998
   __TEXT.__ustring: 0xdc
-  __TEXT.__unwind_info: 0x3170
+  __TEXT.__unwind_info: 0x31a8
   __TEXT.__eh_frame: 0x4dc
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0

   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
   __DATA_CONST.__const: 0x2d18
-  __DATA_CONST.__objc_classlist: 0x340
+  __DATA_CONST.__objc_classlist: 0x350
   __DATA_CONST.__objc_catlist: 0x30
   __DATA_CONST.__objc_protolist: 0x268
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x7370
+  __DATA_CONST.__objc_selrefs: 0x7468
   __DATA_CONST.__objc_protorefs: 0x88
-  __DATA_CONST.__objc_superrefs: 0x268
+  __DATA_CONST.__objc_superrefs: 0x270
   __DATA_CONST.__objc_arraydata: 0x60
-  __DATA_CONST.__got: 0x1200
-  __AUTH_CONST.__const: 0x32c0
-  __AUTH_CONST.__cfstring: 0x5060
-  __AUTH_CONST.__objc_const: 0x119a8
+  __DATA_CONST.__got: 0x1208
+  __AUTH_CONST.__const: 0x32e0
+  __AUTH_CONST.__cfstring: 0x50c0
+  __AUTH_CONST.__objc_const: 0x11d10
   __AUTH_CONST.__objc_arrayobj: 0x48
   __AUTH_CONST.__objc_doubleobj: 0x60
   __AUTH_CONST.__objc_intobj: 0xf0
-  __AUTH_CONST.__auth_got: 0x1b10
+  __AUTH_CONST.__auth_got: 0x1b48
   __AUTH_CONST.__auth_ptr: 0x888
-  __AUTH.__objc_data: 0x3088
-  __AUTH.__data: 0x9b0
-  __DATA.__objc_ivar: 0xa88
-  __DATA.__data: 0x2c68
+  __AUTH.__objc_data: 0x3128
+  __AUTH.__data: 0x948
+  __DATA.__objc_ivar: 0xaa4
+  __DATA.__data: 0x2c28
   __DATA.__bss: 0x1df0
   __DATA.__common: 0x1a0
   __DATA_DIRTY.__objc_data: 0xa0

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 5306
-  Symbols:   7126
-  CStrings:  1245
+  Functions: 5322
+  Symbols:   7190
+  CStrings:  1257
 
Symbols:
+ +[PUWallpaperPosterDisplayFallback shouldReframeLayerStack:deviceConfiguration:]
+ +[PUWallpaperPosterDisplayFallback substituteLayerStackForWallpaperURL:bakedLayerStack:deviceConfiguration:]
+ -[PUPosterGlobalEditProperties .cxx_destruct]
+ -[PUPosterGlobalEditProperties initWithStyle:spatialPhotoEnabled:settlingEffectEnabled:]
+ -[PUPosterGlobalEditProperties isSettlingEffectEnabled]
+ -[PUPosterGlobalEditProperties isSpatialPhotoEnabled]
+ -[PUPosterGlobalEditProperties style]
+ -[PUWallpaperPosterController _displayContextForScaledSize:scale:primary:]
+ -[PUWallpaperPosterController _savedStyleForPosterMedia:displayContext:]
+ -[PUWallpaperPosterController _shouldReframeLayerStack:displayContext:]
+ -[PUWallpaperPosterController _substituteLayerStackForBakedLayerStack:wallpaperURL:displayContext:]
+ -[PUWallpaperPosterEditModel _updateCurrentEditViewModel]
+ -[PUWallpaperPosterEditModel _updateGlobalEditProperties]
+ -[PUWallpaperPosterEditModel editConfigurationsPerDisplayMergedWith:posterWideConfiguration:]
+ -[PUWallpaperPosterEditModel globalEditProperties]
+ -[PUWallpaperPosterEditModel invalidateInactiveEditViewModels]
+ -[PUWallpaperPosterEditModel observable:didChange:context:]
+ -[PUWallpaperPosterEditModel setCurrentEditViewModel:]
+ -[PUWallpaperPosterEditModel setGlobalEditProperties:]
+ -[PUWallpaperPosterEditViewModel applyGlobalEditProperties:]
+ -[PUWallpaperPosterEditorController _compoundLayerStack:matchesDisplayContext:]
+ -[PUWallpaperPosterEditorController _createAndSetViewModelForDisplayContext:withLayerStack:segmentationItem:containerSize:]
+ -[PUWallpaperPosterEditorController _displayContextForCurrentContainer]
+ -[PUWallpaperPosterEditorController _displayContextForSize:]
+ -[PUWallpaperPosterEditorController _displayScale]
+ -[PUWallpaperPosterEditorController _loadContentForDisplayContext:containerSize:]
+ -[PUWallpaperPosterEditorController _renderLayerStackForDisplayContext:segmentationItem:containerSize:]
+ -[PUWallpaperPosterEditorController _transitionToDisplayContext:containerSize:withCoordinator:]
+ -[PUWallpaperPosterEditorController setTransitioningContainerSize:]
+ -[PUWallpaperPosterEditorController transitioningContainerSize]
+ -[_PUMutablePosterEditorPreferences pu_contextLinkingMode]
+ -[_PUMutablePosterEditorPreferences setPu_contextLinkingMode:]
+ -[_PUPosterEditingEnvironment px_canvasSize]
+ -[_PUPosterEditingPreferences pu_contextLinkingMode]
+ -[_PUPosterRenderingEnvironment px_canvasSize]
+ -[_PUWallpaperDebugRenderingEnvironment px_canvasSize]
+ -[_PUWallpaperPosterEditorDebugEnvironment px_canvasSize]
+ -[_PUWallpaperPosterEditorDebugPreferences pu_contextLinkingMode]
+ -[_PUWallpaperPosterEditorDebugPreferences setPu_contextLinkingMode:]
+ GCC_except_table1028
+ GCC_except_table1065
+ GCC_except_table1073
+ GCC_except_table1078
+ GCC_except_table1101
+ GCC_except_table1103
+ GCC_except_table1105
+ GCC_except_table1150
+ GCC_except_table1430
+ GCC_except_table1431
+ GCC_except_table155
+ GCC_except_table1563
+ GCC_except_table1564
+ GCC_except_table1588
+ GCC_except_table165
+ GCC_except_table1789
+ GCC_except_table1794
+ GCC_except_table1816
+ GCC_except_table1860
+ GCC_except_table1868
+ GCC_except_table1895
+ GCC_except_table1903
+ GCC_except_table1904
+ GCC_except_table1910
+ GCC_except_table1911
+ GCC_except_table1937
+ GCC_except_table1941
+ GCC_except_table1952
+ GCC_except_table1956
+ GCC_except_table1958
+ GCC_except_table1961
+ GCC_except_table1964
+ GCC_except_table1967
+ GCC_except_table1976
+ GCC_except_table2015
+ GCC_except_table2102
+ GCC_except_table2105
+ GCC_except_table2122
+ GCC_except_table2125
+ GCC_except_table2141
+ GCC_except_table2144
+ GCC_except_table2180
+ GCC_except_table2191
+ GCC_except_table2197
+ GCC_except_table2211
+ GCC_except_table2213
+ GCC_except_table2216
+ GCC_except_table2223
+ GCC_except_table2225
+ GCC_except_table2230
+ GCC_except_table2235
+ GCC_except_table2237
+ GCC_except_table2241
+ GCC_except_table2244
+ GCC_except_table2246
+ GCC_except_table2253
+ GCC_except_table2258
+ GCC_except_table2290
+ GCC_except_table2309
+ GCC_except_table2418
+ GCC_except_table2438
+ GCC_except_table2440
+ GCC_except_table2681
+ GCC_except_table2699
+ GCC_except_table3158
+ GCC_except_table3193
+ GCC_except_table3195
+ GCC_except_table3215
+ GCC_except_table3216
+ GCC_except_table3246
+ GCC_except_table3257
+ GCC_except_table3260
+ GCC_except_table3321
+ GCC_except_table3343
+ GCC_except_table3346
+ GCC_except_table3396
+ GCC_except_table3399
+ GCC_except_table3403
+ GCC_except_table3407
+ GCC_except_table3421
+ GCC_except_table426
+ GCC_except_table429
+ GCC_except_table430
+ GCC_except_table690
+ GCC_except_table751
+ GCC_except_table763
+ GCC_except_table764
+ GCC_except_table889
+ GCC_except_table900
+ _CGSizeCreateDictionaryRepresentation
+ _CVPixelBufferGetHeight
+ _CVPixelBufferGetWidth
+ _OBJC_CLASS_$_PFParallaxLayerStack
+ _OBJC_CLASS_$_PUPosterGlobalEditProperties
+ _OBJC_CLASS_$_PUWallpaperPosterDisplayFallback
+ _OBJC_IVAR_$_PUPosterGlobalEditProperties._settlingEffectEnabled
+ _OBJC_IVAR_$_PUPosterGlobalEditProperties._spatialPhotoEnabled
+ _OBJC_IVAR_$_PUPosterGlobalEditProperties._style
+ _OBJC_IVAR_$_PUWallpaperPosterEditModel._currentEditViewModel
+ _OBJC_IVAR_$_PUWallpaperPosterEditModel._globalEditProperties
+ _OBJC_IVAR_$_PUWallpaperPosterEditorController._transitioningContainerSize
+ _OBJC_IVAR_$__PUWallpaperPosterEditorDebugPreferences._pu_contextLinkingMode
+ _OBJC_METACLASS_$_PUPosterGlobalEditProperties
+ _OBJC_METACLASS_$_PUWallpaperPosterDisplayFallback
+ _PFFigCreateCVPixelBufferFromURL
+ _PFFigDecodeOptionsWithMaxPixelSize
+ _PFParallaxZPositionOnlyBackground
+ _PPPosterContextLinkingModeUsingEditingPreferences
+ _PPPosterContextLinkingModeUsingMutableEditingPreferences
+ _PPPosterSetContextLinkingModeUsingMutableEditingPreferences
+ _PUWallpaperPosterReframedLayout
+ _PUWallpaperPosterRetainedCropFilling
+ _PUWallpaperPosterRetainedCropForDisplay
+ _PUWallpaperPosterSubstituteStack
+ _PXRectArea
+ _PXRectWithCenterAndSize
+ _PXSizeClampToSize
+ _PXSizeGetArea
+ _PXSizeGetAspectRatioWithDefault
+ _PXSizeWithAspectRatioFillingSize
+ __OBJC_$_CLASS_METHODS_PUWallpaperPosterDisplayFallback
+ __OBJC_$_INSTANCE_METHODS_PUPosterGlobalEditProperties
+ __OBJC_$_INSTANCE_VARIABLES_PUPosterGlobalEditProperties
+ __OBJC_$_PROP_LIST_PUPosterGlobalEditProperties
+ __OBJC_CLASS_PROTOCOLS_$_PUWallpaperPosterEditModel
+ __OBJC_CLASS_RO_$_PUPosterGlobalEditProperties
+ __OBJC_CLASS_RO_$_PUWallpaperPosterDisplayFallback
+ __OBJC_METACLASS_RO_$_PUPosterGlobalEditProperties
+ __OBJC_METACLASS_RO_$_PUWallpaperPosterDisplayFallback
+ ___103-[PUWallpaperPosterEditorController _renderLayerStackForDisplayContext:segmentationItem:containerSize:]_block_invoke
+ ___123-[PUWallpaperPosterEditorController _createAndSetViewModelForDisplayContext:withLayerStack:segmentationItem:containerSize:]_block_invoke
+ ___60-[PUWallpaperPosterEditViewModel applyGlobalEditProperties:]_block_invoke
+ ___64-[PUWallpaperPosterEditorController _handleOutfillButtonTapped:]_block_invoke_2
+ ___74-[PUWallpaperPosterEditorController(OutfillStatus) _showOutfillStatusView]_block_invoke_2
+ ___95-[PUWallpaperPosterEditorController _transitionToDisplayContext:containerSize:withCoordinator:]_block_invoke
+ ___95-[PUWallpaperPosterEditorController _transitionToDisplayContext:containerSize:withCoordinator:]_block_invoke_2
+ ___block_descriptor_64_e8_32r40r_e5_v8?0lr32l8r40l8
+ ___block_descriptor_72_e8_32s40s48w_e51_v24?0"PFWallpaperCompoundLayerStack"8"NSError"16lw48l8s32l8s40l8
+ ___swift_closure_destructor.121Tm
+ ___swift_memcpy65_8
+ _get_witness_table 7SwiftUI15ModifiedContentVyACyACy06PhotosA6UICore0E10AsyncImageVyAA012_ConditionalD0VyAHyACyAA0H0VAA18_AspectRatioLayoutVGAA5ColorVGAOGAD0eg5AssetH8ProviderVGAA06_FrameL0VGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_GAA4ViewHPA1_AAA3_HPAwAA3_HPAtAA3_HPyHC_AvA0U8ModifierHPyHCHC_A0_AAA4_HPyHCHC_A0_AAA4_HPyHCHC
+ _symbolic SaySo6UIViewCGz_Xx
+ _symbolic _____yAAyAAy_____y_____yACyAAy__________G_____GAGG_____G_____G_____y_____GGAPG 7SwiftUI15ModifiedContentV 06PhotosA6UICore0E10AsyncImageV AA012_ConditionalD0V AA0H0V AA18_AspectRatioLayoutV AA5ColorV AD0eg5AssetH8ProviderV AA06_FrameL0V AA11_ClipEffectV AA16RoundedRectangleV
+ _symbolic _____yAAy_____y_____yACyAAy__________G_____GAGG_____G_____G_____y_____GG 7SwiftUI15ModifiedContentV 06PhotosA6UICore0E10AsyncImageV AA012_ConditionalD0V AA0H0V AA18_AspectRatioLayoutV AA5ColorV AD0eg5AssetH8ProviderV AA06_FrameL0V AA11_ClipEffectV AA16RoundedRectangleV
+ _symbolic _____y_____yABy_____y__________G_____GAGG_____G 17PhotosSwiftUICore0A10AsyncImageV 0B2UI19_ConditionalContentV AD08ModifiedH0V AD0E0V AD18_AspectRatioLayoutV AD5ColorV AA0ad5AssetE8ProviderV
+ _symbolic _____y_____y_____yACyAAy__________G_____GAGG_____G_____G 7SwiftUI15ModifiedContentV 06PhotosA6UICore0E10AsyncImageV AA012_ConditionalD0V AA0H0V AA18_AspectRatioLayoutV AA5ColorV AD0eg5AssetH8ProviderV AA06_FrameL0V
- -[PUWallpaperPosterController _detectDisplayContextChangeWithSize:]
- -[PUWallpaperPosterEditModel editConfigurationsPerDisplay]
- -[PUWallpaperPosterEditorController _createAndSetViewModelForDisplayContext:withLayerStack:segmentationItem:]
- -[PUWallpaperPosterEditorController _currentDisplaySupportsLandscape]
- -[PUWallpaperPosterEditorController _displayContextFromContainerSize:]
- -[PUWallpaperPosterEditorController _displayContextFromPresentationContext:]
- -[PUWallpaperPosterEditorController _loadContentForDisplayContext:]
- -[PUWallpaperPosterEditorController _renderLayerStackForDisplayContext:segmentationItem:]
- -[PUWallpaperPosterEditorController _transitionToDisplayContext:withCoordinator:]
- GCC_except_table1021
- GCC_except_table1058
- GCC_except_table1063
- GCC_except_table1068
- GCC_except_table1091
- GCC_except_table1093
- GCC_except_table1095
- GCC_except_table1140
- GCC_except_table1420
- GCC_except_table1421
- GCC_except_table152
- GCC_except_table1541
- GCC_except_table1542
- GCC_except_table1566
- GCC_except_table162
- GCC_except_table1759
- GCC_except_table1764
- GCC_except_table1786
- GCC_except_table1830
- GCC_except_table1839
- GCC_except_table1866
- GCC_except_table1874
- GCC_except_table1875
- GCC_except_table1881
- GCC_except_table1882
- GCC_except_table1883
- GCC_except_table1908
- GCC_except_table1924
- GCC_except_table1928
- GCC_except_table1930
- GCC_except_table1933
- GCC_except_table1936
- GCC_except_table1939
- GCC_except_table1948
- GCC_except_table1987
- GCC_except_table2049
- GCC_except_table2074
- GCC_except_table2088
- GCC_except_table2094
- GCC_except_table2097
- GCC_except_table2113
- GCC_except_table2152
- GCC_except_table2163
- GCC_except_table2165
- GCC_except_table2168
- GCC_except_table2171
- GCC_except_table2181
- GCC_except_table2183
- GCC_except_table2186
- GCC_except_table2195
- GCC_except_table2199
- GCC_except_table2205
- GCC_except_table2207
- GCC_except_table2212
- GCC_except_table2215
- GCC_except_table2217
- GCC_except_table2224
- GCC_except_table2261
- GCC_except_table2278
- GCC_except_table2387
- GCC_except_table2407
- GCC_except_table2409
- GCC_except_table2648
- GCC_except_table2666
- GCC_except_table3117
- GCC_except_table3120
- GCC_except_table3157
- GCC_except_table3177
- GCC_except_table3178
- GCC_except_table3208
- GCC_except_table3219
- GCC_except_table3222
- GCC_except_table3283
- GCC_except_table3305
- GCC_except_table3308
- GCC_except_table3358
- GCC_except_table3361
- GCC_except_table3365
- GCC_except_table3368
- GCC_except_table3382
- GCC_except_table420
- GCC_except_table423
- GCC_except_table424
- GCC_except_table684
- GCC_except_table744
- GCC_except_table756
- GCC_except_table757
- GCC_except_table882
- GCC_except_table893
- _OUTLINED_FUNCTION_74
- _OUTLINED_FUNCTION_75
- _OUTLINED_FUNCTION_76
- _PXGetWallpaperOverlayForLockScreen
- ___109-[PUWallpaperPosterEditorController _createAndSetViewModelForDisplayContext:withLayerStack:segmentationItem:]_block_invoke
- ___49-[PUWallpaperPosterEditorController _actionsMenu]_block_invoke_6
- ___81-[PUWallpaperPosterEditorController _transitionToDisplayContext:withCoordinator:]_block_invoke
- ___81-[PUWallpaperPosterEditorController _transitionToDisplayContext:withCoordinator:]_block_invoke_2
- ___89-[PUWallpaperPosterEditorController _renderLayerStackForDisplayContext:segmentationItem:]_block_invoke
- ___block_descriptor_56_e8_32s40s48w_e51_v24?0"PFWallpaperCompoundLayerStack"8"NSError"16lw48l8s32l8s40l8
- ___block_descriptor_88_e8_32r40r_e5_v8?0lr32l8r40l8
- ___swift_closure_destructor.128Tm
- ___swift_memcpy73_8
- _get_witness_table 7SwiftUI15ModifiedContentVyACyACy06PhotosA6UICore0E10AsyncImageVyAA012_ConditionalD0VyAHyACyACyAA0H0VAA18_AspectRatioLayoutVGAA16_OverlayModifierVyACyAmA06_FrameL0VGSgGGAA5ColorVGAWGAD0eg5AssetH8ProviderVGAQGAA11_ClipEffectVyAA16RoundedRectangleVGGA6_GAA4ViewHPA7_AAA9_HPA1_AAA9_HPA0_AAA9_HPyHC_AqA0wN0HPyHCHC_A6_AAA10_HPyHCHC_A6_AAA10_HPyHCHC
- _symbolic So7UIImageC
- _symbolic So7UIImageCSg
- _symbolic _____yAAyAAy_____y_____yACyAAyAAy__________G_____yAAyAF_____GSgGG_____GAMG_____GAHG_____y_____GGAUG 7SwiftUI15ModifiedContentV 06PhotosA6UICore0E10AsyncImageV AA012_ConditionalD0V AA0H0V AA18_AspectRatioLayoutV AA16_OverlayModifierV AA06_FrameL0V AA5ColorV AD0eg5AssetH8ProviderV AA11_ClipEffectV AA16RoundedRectangleV
- _symbolic _____yAAy__________G_____GSg 7SwiftUI15ModifiedContentV AA5ImageV AA18_AspectRatioLayoutV AA06_FrameH0V
- _symbolic _____yAAy__________G_____yAAyAD_____GSgGG 7SwiftUI15ModifiedContentV AA5ImageV AA18_AspectRatioLayoutV AA16_OverlayModifierV AA06_FrameH0V
- _symbolic _____yAAy_____y_____yACyAAyAAy__________G_____yAAyAF_____GSgGG_____GAMG_____GAHG_____y_____GG 7SwiftUI15ModifiedContentV 06PhotosA6UICore0E10AsyncImageV AA012_ConditionalD0V AA0H0V AA18_AspectRatioLayoutV AA16_OverlayModifierV AA06_FrameL0V AA5ColorV AD0eg5AssetH8ProviderV AA11_ClipEffectV AA16RoundedRectangleV
- _symbolic _____y_____yABy__________G_____GSgG 7SwiftUI16_OverlayModifierV AA15ModifiedContentV AA5ImageV AA18_AspectRatioLayoutV AA06_FrameJ0V
- _symbolic _____y_____yABy_____yACy__________G_____yACyAF_____GSgGG_____GAMG_____G 17PhotosSwiftUICore0A10AsyncImageV 0B2UI19_ConditionalContentV AD08ModifiedH0V AD0E0V AD18_AspectRatioLayoutV AD16_OverlayModifierV AD06_FrameL0V AD5ColorV AA0ad5AssetE8ProviderV
- _symbolic _____y_____y_____yACyAAyAAy__________G_____yAAyAF_____GSgGG_____GAMG_____GAHG 7SwiftUI15ModifiedContentV 06PhotosA6UICore0E10AsyncImageV AA012_ConditionalD0V AA0H0V AA18_AspectRatioLayoutV AA16_OverlayModifierV AA06_FrameL0V AA5ColorV AD0eg5AssetH8ProviderV
CStrings:
+ ", normalized landscape to portrait"
+ "Attempt to load wallpaper for context %{public}@ from poster url: %{public}@"
+ "CancelOutfill"
+ "Cannot initialize display context: neither backgroundView bounds nor canvas size are known yet"
+ "Cannot reframe poster: failed to load its asset resource: %{public}@"
+ "Cannot reframe poster: its asset resource holds no full-size image"
+ "Cannot resolve initial display context: neither view bounds nor canvas size are known"
+ "ExtendOutfill"
+ "Failed to decode poster asset for display fallback, code: %d"
+ "GlobalEditPropertiesObservationContext"
+ "Initial display context: %{public}@ (landscape=%d)"
+ "Initialized display context: %{public}@ (landscape=%d)"
+ "Initializing display context: bounds %.0f×%.0f, canvas %.0f×%.0f, embedded=%d, callServices=%d%{public}@"
+ "Layer stack was baked for %.0fx%.0f but display %{public}@ is %.0fx%.0f; re-rendering"
+ "Not reframing poster: it has the %{public}@ photo style applied"
+ "Poster retains %.0f%% of its saved crop on this display (saved for %{public}@, display portrait %{public}@ landscape %{public}@)"
+ "Reframed poster: portrait visible %{public}@, landscape visible %{public}@, decoded %zu×%zu"
+ "Transitioning to display context: %{public}@ (landscape=%d)"
+ "Warmup load succeeded (complete: %{public}@), screen: %.0f×%.0f, image: %.0f×%.0f"
+ "asset.resource"
+ "input.segmentation"
- "Attempt to load wallpaper from poster url: %{public}@"
- "Display context change detected from bounds: %{public}@ -> %{public}@"
- "Initial display context from view frame: %{public}@"
- "Initialized display context: %{public}@"
- "LemonadeSearchCentralizedFeedbackFCSTitle"
- "Set initial display context from bounds: %{public}@"
- "Transitioning to display context: %{public}@"
- "Warmup load succeeded, screen: %.0f×%.0f, image: %.0f×%.0f"
- "exclamationmark.bubble"
```
