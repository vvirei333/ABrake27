## PhotoImaging

> `/System/Library/PrivateFrameworks/PhotoImaging.framework/PhotoImaging`

```diff

-912.1.131.0.0
-  __TEXT.__text: 0x29bdd0
+916.45.110.0.0
+  __TEXT.__text: 0x29e948
   __TEXT.__delay_helper: 0x1f4
-  __TEXT.__objc_methlist: 0x173c8
+  __TEXT.__objc_methlist: 0x17460
   __TEXT.__const: 0x8d04
   __TEXT.__dlopen_cstrs: 0x2a2
   __TEXT.__swift5_typeref: 0x2d8
-  __TEXT.__cstring: 0x4a6de
+  __TEXT.__cstring: 0x4ac49
   __TEXT.__constg_swiftt: 0x230
   __TEXT.__swift5_reflstr: 0x35f
   __TEXT.__swift5_fieldmd: 0x3d4
   __TEXT.__swift5_builtin: 0x78
   __TEXT.__swift5_mpenum: 0x8
   __TEXT.__swift5_assocty: 0x90
-  __TEXT.__oslogstring: 0x7d58
+  __TEXT.__oslogstring: 0x7e71
   __TEXT.__swift5_proto: 0xa0
   __TEXT.__swift5_types: 0x38
   __TEXT.__swift_as_entry: 0x14
   __TEXT.__swift_as_ret: 0x14
   __TEXT.__swift_as_cont: 0x28
   __TEXT.__swift5_capture: 0x50
-  __TEXT.__gcc_except_tab: 0x4ee0
-  __TEXT.__unwind_info: 0x5c58
+  __TEXT.__gcc_except_tab: 0x4f0c
+  __TEXT.__unwind_info: 0x5c88
   __TEXT.__eh_frame: 0xa50
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x44d0
-  __DATA_CONST.__objc_classlist: 0x11a0
-  __DATA_CONST.__objc_catlist: 0x48
+  __DATA_CONST.__const: 0x44b8
+  __DATA_CONST.__objc_classlist: 0x11b0
+  __DATA_CONST.__objc_catlist: 0x50
   __DATA_CONST.__objc_protolist: 0x1a0
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__weak_got: 0x8
-  __DATA_CONST.__objc_selrefs: 0xbca0
+  __DATA_CONST.__objc_selrefs: 0xbd70
   __DATA_CONST.__objc_protorefs: 0x20
-  __DATA_CONST.__objc_superrefs: 0x750
-  __DATA_CONST.__objc_arraydata: 0x9718
-  __DATA_CONST.__got: 0x2830
-  __AUTH_CONST.__const: 0x5648
-  __AUTH_CONST.__cfstring: 0x29bc0
-  __AUTH_CONST.__objc_const: 0x29ad0
+  __DATA_CONST.__objc_superrefs: 0x758
+  __DATA_CONST.__objc_arraydata: 0x9660
+  __DATA_CONST.__got: 0x2820
+  __AUTH_CONST.__const: 0x5688
+  __AUTH_CONST.__cfstring: 0x29f40
+  __AUTH_CONST.__objc_const: 0x29e08
   __AUTH_CONST.__weak_auth_got: 0x18
   __AUTH_CONST.__objc_intobj: 0x1668
-  __AUTH_CONST.__objc_dictobj: 0x5c58
+  __AUTH_CONST.__objc_dictobj: 0x5c08
   __AUTH_CONST.__objc_doubleobj: 0xe10
-  __AUTH_CONST.__objc_arrayobj: 0x6c0
+  __AUTH_CONST.__objc_arrayobj: 0x6f0
   __AUTH_CONST.__objc_floatobj: 0xd0
   __AUTH_CONST.__auth_got: 0x1508
   __AUTH_CONST.__auth_ptr: 0x2f0
-  __AUTH.__objc_data: 0x968
-  __DATA.__objc_ivar: 0x1600
-  __DATA.__data: 0x17f8
-  __DATA.__bss: 0x1a80
-  __DATA_DIRTY.__objc_data: 0xa890
-  __DATA_DIRTY.__data: 0x178
-  __DATA_DIRTY.__bss: 0x258
+  __AUTH.__objc_data: 0xa0
+  __DATA.__objc_ivar: 0x1608
+  __DATA.__data: 0x3c4
+  __DATA.__bss: 0x1b10
+  __DATA_DIRTY.__objc_data: 0xb1f8
+  __DATA_DIRTY.__data: 0x1598
+  __DATA_DIRTY.__bss: 0x1f8
   - /System/Library/Frameworks/AVFoundation.framework/AVFoundation
   - /System/Library/Frameworks/Accelerate.framework/Accelerate
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 9495
-  Symbols:   16415
-  CStrings:  7578
+  Functions: 9508
+  Symbols:   16441
+  CStrings:  7616
 
Symbols:
+ +[NUAssetCapability(PhotoImaging) audioMix]
+ +[NUAssetCapability(PhotoImaging) cinematicVideoV1]
+ +[NUAssetCapability(PhotoImaging) cinematicVideoV2]
+ +[NUAssetCapability(PhotoImaging) photographicStyleV1]
+ +[NUAssetCapability(PhotoImaging) photographicStyleV2]
+ +[NUAssetCapability(PhotoImaging) photographicStyle]
+ +[NUAssetCapability(PhotoImaging) portraitV1]
+ +[NUAssetCapability(PhotoImaging) portraitV2]
+ +[PICinematicVideoUtilities disparityProviderWithQuality:globalRenderingMetadata:inputSize:error:]
+ +[PIModularPhotosPipeline_v0 controlDataWithPortraitEffectAdjustment:descriptor:]
+ +[PIObjectRemoval _instancesForGenerativeEditOperation:context:]
+ +[PIObjectRemoval _nonInstancedOperationsFromComposition:context:]
+ +[PIObjectRemoval _tightImageSpaceBoundsForGenerativeEditOperation:composition:context:error:]
+ +[PIPhotosPipeline pipelineName]
+ +[PIPortrait depthEffectDescriptorForAsset:]
+ +[PIPortrait effectForFilterKind:error:]
+ +[PIPortrait lightingEffectDescriptorForAsset:]
+ +[PIPortrait portraitSettingsDescriptorForAsset:]
+ +[PIPortrait versionedClassForAsset:]
+ +[PIPortrait_v1 filterKindForEffect:error:]
+ +[PIPortrait_v1 portraitSettingsExpressionFunctionClass]
+ +[PIPortrait_v2 filterKindForEffect:error:]
+ +[PIPortrait_v2 lightingEffectAdjustmentDescriptor]
+ +[PIPortrait_v2 portraitSettingsAdjustmentDescriptor]
+ +[PIPortrait_v2 portraitSettingsExpressionFunctionClass]
+ +[PIPrivatePhotosPipeline pipelineName]
+ +[PISegmentationLoader _baseLayoutForDisplayContext:ofItem:spatialPhotoEnabled:settlingEffectEnabled:]
+ -[PIADMCleanup pipelineName]
+ -[PIADMOutfill pipelineName]
+ -[PIAudioMix_v1 pipelineName]
+ -[PICinematicVideo_v1 pipelineName]
+ -[PICinematicVideo_v2 pipelineName]
+ -[PICleanup pipelineName]
+ -[PICropStraightenAuto_v1 pipelineName]
+ -[PICropStraighten_v1 pipelineName]
+ -[PICurves_v1 pipelineName]
+ -[PIDefinition_v1 pipelineName]
+ -[PIFilterEffect_v1 pipelineName]
+ -[PIGANCleanup pipelineName]
+ -[PIGenerativeEdits pipelineName]
+ -[PIGlobalSettings generativeSeed]
+ -[PIGlobalSettings setGenerativeSeed:]
+ -[PIGrain_v1 pipelineName]
+ -[PIHighResolutionFusion_v1 pipelineName]
+ -[PIInpaintMaskContext setRequestID:]
+ -[PILevels_v1 pipelineName]
+ -[PILivePhotoEffect_v1 pipelineName]
+ -[PILivePhotoKeyFrame_v1 pipelineName]
+ -[PIManualRedEye_v1 pipelineName]
+ -[PIMute_v1 pipelineName]
+ -[PINoiseReduction_v1 pipelineName]
+ -[PIOrientation_v1 pipelineName]
+ -[PIOutfillPlaceholder pipelineName]
+ -[PIPhotographicStyleApplyV1 pipelineName]
+ -[PIPhotographicStyleApplyV2 pipelineName]
+ -[PIPhotographicStyleLearnV1 pipelineName]
+ -[PIPhotographicStyleLearnV2 pipelineName]
+ -[PIPhotosPipeline pipelineIsOpaque]
+ -[PIPhotosPipeline pipelineName]
+ -[PIPhotosPipeline_v1 _buildPostGeometryPipeline:media:error:]
+ -[PIPipelineModule pipelineName]
+ -[PIPlaybackRate_v1 pipelineName]
+ -[PIPortrait .cxx_destruct]
+ -[PIPortrait asset]
+ -[PIPortrait buildPipeline:error:]
+ -[PIPortrait initWithAsset:options:]
+ -[PIPortrait options]
+ -[PIPortrait pipelineName]
+ -[PIPortraitSettingsExpressionFunction_v2 format]
+ -[PIPortrait_v1 pipelineName]
+ -[PIPrivatePhotosPipeline_v0 buildFiltersGroupPipeline:temporality:outputMediaFormat:error:]
+ -[PIPrivatePhotosPipeline_v0 buildFiltersPipeline:format:temporality:connections:error:]
+ -[PIPrivatePhotosPipeline_v1 buildFiltersGroupPipeline:temporality:outputMediaFormat:error:]
+ -[PIPrivatePhotosPipeline_v1 buildFiltersPipeline:format:temporality:connections:error:]
+ -[PIRedEye_v1 pipelineName]
+ -[PIRetouchCleanup pipelineName]
+ -[PISelectiveColor_v1 pipelineName]
+ -[PISemanticStyleThumbnailApply pipelineName]
+ -[PISharpen_v1 pipelineName]
+ -[PISlowMotion_v1 pipelineName]
+ -[PISmartBlackAndWhite_v1 pipelineName]
+ -[PISmartColor_v1 pipelineName]
+ -[PISmartCopyPaste pipelineName]
+ -[PISmartToneAuto_v1 pipelineName]
+ -[PISmartTone_v1 pipelineName]
+ -[PISpatialReframe pipelineName]
+ -[PITextureStyle pipelineName]
+ -[PITextureStylePipelineProcessor copyWithZone:]
+ -[PITrim_v1 pipelineName]
+ -[PIVignette_v1 pipelineName]
+ -[PIWhiteBalanceAuto_v1 pipelineName]
+ -[PIWhiteBalance_v1 pipelineName]
+ -[_PIGrayColorPipelineBuilder pipelineName]
+ -[_PIRAWFaceBalanceAutoProcessor copyWithZone:]
+ GCC_except_table1134
+ GCC_except_table1735
+ GCC_except_table1749
+ GCC_except_table1918
+ GCC_except_table2093
+ GCC_except_table2246
+ GCC_except_table2256
+ GCC_except_table2270
+ GCC_except_table2277
+ GCC_except_table2285
+ GCC_except_table2363
+ GCC_except_table2403
+ GCC_except_table2432
+ GCC_except_table2437
+ GCC_except_table2452
+ GCC_except_table2468
+ GCC_except_table2473
+ GCC_except_table2479
+ GCC_except_table2566
+ GCC_except_table2798
+ GCC_except_table3151
+ GCC_except_table3156
+ GCC_except_table316
+ GCC_except_table3186
+ GCC_except_table3192
+ GCC_except_table3193
+ GCC_except_table3195
+ GCC_except_table3197
+ GCC_except_table3205
+ GCC_except_table3210
+ GCC_except_table3219
+ GCC_except_table3314
+ GCC_except_table3383
+ GCC_except_table3384
+ GCC_except_table3493
+ GCC_except_table3535
+ GCC_except_table3543
+ GCC_except_table3595
+ GCC_except_table3809
+ GCC_except_table3929
+ GCC_except_table3939
+ GCC_except_table394
+ GCC_except_table3942
+ GCC_except_table3943
+ GCC_except_table3955
+ GCC_except_table4002
+ GCC_except_table4011
+ GCC_except_table4039
+ GCC_except_table4063
+ GCC_except_table4292
+ GCC_except_table4464
+ GCC_except_table4549
+ GCC_except_table4650
+ GCC_except_table4674
+ GCC_except_table4678
+ GCC_except_table4797
+ GCC_except_table4835
+ GCC_except_table4841
+ GCC_except_table4843
+ GCC_except_table4867
+ GCC_except_table4889
+ GCC_except_table4993
+ GCC_except_table505
+ GCC_except_table5050
+ GCC_except_table5090
+ GCC_except_table5242
+ GCC_except_table5265
+ GCC_except_table5272
+ GCC_except_table5275
+ GCC_except_table5286
+ GCC_except_table5293
+ GCC_except_table5440
+ GCC_except_table5532
+ GCC_except_table5596
+ GCC_except_table5608
+ GCC_except_table5609
+ GCC_except_table5613
+ GCC_except_table5614
+ GCC_except_table5615
+ GCC_except_table5620
+ GCC_except_table5628
+ GCC_except_table5722
+ GCC_except_table6111
+ GCC_except_table6130
+ GCC_except_table6131
+ GCC_except_table6137
+ GCC_except_table6142
+ GCC_except_table6199
+ GCC_except_table6200
+ GCC_except_table6210
+ GCC_except_table6212
+ GCC_except_table6240
+ GCC_except_table6242
+ GCC_except_table6244
+ GCC_except_table6249
+ GCC_except_table6252
+ GCC_except_table6254
+ GCC_except_table6255
+ GCC_except_table6256
+ GCC_except_table6257
+ GCC_except_table6259
+ GCC_except_table6264
+ GCC_except_table6297
+ GCC_except_table6400
+ GCC_except_table6403
+ GCC_except_table6410
+ GCC_except_table6470
+ GCC_except_table6544
+ GCC_except_table6865
+ GCC_except_table7113
+ GCC_except_table7114
+ GCC_except_table7204
+ GCC_except_table7211
+ GCC_except_table7212
+ GCC_except_table7217
+ GCC_except_table7219
+ GCC_except_table7225
+ GCC_except_table7234
+ GCC_except_table7250
+ GCC_except_table7301
+ GCC_except_table7353
+ GCC_except_table7354
+ GCC_except_table7355
+ GCC_except_table7356
+ GCC_except_table7388
+ GCC_except_table7391
+ GCC_except_table7459
+ GCC_except_table7469
+ GCC_except_table7573
+ GCC_except_table7626
+ GCC_except_table7628
+ GCC_except_table7722
+ GCC_except_table7728
+ GCC_except_table7731
+ GCC_except_table7736
+ GCC_except_table7738
+ GCC_except_table7741
+ GCC_except_table7742
+ GCC_except_table7743
+ GCC_except_table7744
+ GCC_except_table7746
+ GCC_except_table7747
+ GCC_except_table7749
+ GCC_except_table7750
+ GCC_except_table7751
+ GCC_except_table7752
+ GCC_except_table780
+ GCC_except_table7807
+ GCC_except_table7815
+ GCC_except_table7829
+ GCC_except_table7830
+ GCC_except_table7831
+ GCC_except_table7865
+ GCC_except_table7866
+ GCC_except_table7867
+ GCC_except_table7870
+ GCC_except_table7873
+ GCC_except_table791
+ GCC_except_table7918
+ GCC_except_table7920
+ GCC_except_table801
+ GCC_except_table8074
+ GCC_except_table8081
+ GCC_except_table8082
+ GCC_except_table8083
+ GCC_except_table8084
+ GCC_except_table8085
+ GCC_except_table8086
+ GCC_except_table8087
+ GCC_except_table8131
+ GCC_except_table8317
+ GCC_except_table832
+ GCC_except_table8543
+ GCC_except_table8545
+ GCC_except_table8546
+ GCC_except_table8608
+ GCC_except_table8610
+ GCC_except_table8612
+ GCC_except_table8682
+ GCC_except_table8705
+ GCC_except_table8707
+ GCC_except_table8710
+ GCC_except_table8714
+ GCC_except_table8732
+ GCC_except_table8749
+ GCC_except_table8757
+ GCC_except_table8761
+ GCC_except_table8762
+ GCC_except_table8780
+ GCC_except_table8781
+ GCC_except_table8784
+ GCC_except_table8786
+ GCC_except_table8790
+ GCC_except_table8792
+ GCC_except_table8793
+ GCC_except_table8805
+ GCC_except_table889
+ GCC_except_table892
+ GCC_except_table893
+ _NUChannelNameAlternate
+ _OBJC_CLASS_$_NUAssetCapability
+ _OBJC_CLASS_$_PIPortrait
+ _OBJC_CLASS_$_PIPortraitSettingsExpressionFunction_v2
+ _OBJC_IVAR_$_PIPortrait._asset
+ _OBJC_IVAR_$_PIPortrait._options
+ _OBJC_METACLASS_$_PIPortrait
+ _OBJC_METACLASS_$_PIPortraitSettingsExpressionFunction_v2
+ __OBJC_$_CATEGORY_CLASS_METHODS_NUAssetCapability_$_PhotoImaging
+ __OBJC_$_CATEGORY_NUAssetCapability_$_PhotoImaging
+ __OBJC_$_CLASS_METHODS_PIPortrait
+ __OBJC_$_CLASS_METHODS_PIPortrait_v2
+ __OBJC_$_CLASS_PROP_LIST_NUAssetCapability_$_PhotoImaging
+ __OBJC_$_INSTANCE_METHODS_PIPortrait
+ __OBJC_$_INSTANCE_METHODS_PIPortraitSettingsExpressionFunction_v2
+ __OBJC_$_INSTANCE_VARIABLES_PIPortrait
+ __OBJC_$_PROP_LIST_PIPortrait
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_OPT_NUPipelineBuilder
+ __OBJC_CLASS_PROTOCOLS_$_PIPortrait
+ __OBJC_CLASS_RO_$_PIPortrait
+ __OBJC_CLASS_RO_$_PIPortraitSettingsExpressionFunction_v2
+ __OBJC_METACLASS_RO_$_PIPortrait
+ __OBJC_METACLASS_RO_$_PIPortraitSettingsExpressionFunction_v2
+ ___40+[PIPortrait effectForFilterKind:error:]_block_invoke
+ ___43+[PIPortrait_v1 filterKindForEffect:error:]_block_invoke
+ ___43+[PIPortrait_v2 filterKindForEffect:error:]_block_invoke
+ ___64+[PIObjectRemoval _instancesForGenerativeEditOperation:context:]_block_invoke
+ ___66+[PIObjectRemoval _nonInstancedOperationsFromComposition:context:]_block_invoke
+ ___66+[PIObjectRemoval _nonInstancedOperationsFromComposition:context:]_block_invoke_2
+ ___67-[PIPhotosPipeline_v0 buildPipeline:assetMedia:outputFormat:error:]_block_invoke_3
+ ___88-[PIPrivatePhotosPipeline_v0 buildFiltersPipeline:format:temporality:connections:error:]_block_invoke
+ ___88-[PIPrivatePhotosPipeline_v1 buildFiltersPipeline:format:temporality:connections:error:]_block_invoke
+ ___98+[PICinematicVideoUtilities disparityProviderWithQuality:globalRenderingMetadata:inputSize:error:]_block_invoke
+ ___block_descriptor_44_e8_32r_e49_v16?0"PTDisparityProviderInitializationStatus"8lr32l8
+ ___block_descriptor_56_e8_32s40s48s_e29_v16?0"<NUMutablePipeline>"8ls32l8s40l8s48l8
+ ___block_descriptor_57_e8_32s40s48s_e44_"NUChannelPortRef"16?0"NUChannelPortRef"8ls32l8s40l8s48l8
+ ___block_descriptor_64_e8_32s40s48s56s_e37_"NUChannelPortSpec"16?0"NSString"8ls32l8s40l8s48l8s56l8
+ ___block_descriptor_64_e8_32s40s48s56s_e44_"NUChannelPortRef"16?0"NUChannelPortRef"8ls32l8s40l8s48l8s56l8
+ _effectForFilterKind:error:.map
+ _effectForFilterKind:error:.onceToken
+ _filterKindForEffect:error:.map
+ _filterKindForEffect:error:.onceToken
- +[PIADMCleanup identifier]
- +[PIADMOutfill identifier]
- +[PIAudioMix_v1 identifier]
- +[PICinematicVideo_v1 identifier]
- +[PICinematicVideo_v2 identifier]
- +[PICropStraightenAuto_v1 identifier]
- +[PICropStraighten_v1 identifier]
- +[PIFilterEffect_v1 identifier]
- +[PIGANCleanup identifier]
- +[PILivePhotoKeyFrame_v1 identifier]
- +[PIModularPhotosPipeline_v0 controlDataWithPortraitEffectAdjustment:]
- +[PIMute_v1 identifier]
- +[PIObjectRemoval _instancesForGenerativeEditOperation:]
- +[PIObjectRemoval _nonInstancedOperationsFromComposition:]
- +[PIObjectRemoval _tightImageSpaceBoundsForGenerativeEditOperation:composition:error:]
- +[PIOrientation_v1 identifier]
- +[PIOutfillPlaceholder identifier]
- +[PIPhotographicStyleLearnV2 identifier]
- +[PIPhotosPipeline pipelineIdentifier]
- +[PIPlaybackRate_v1 identifier]
- +[PIPrivatePhotosPipeline pipelineIdentifier]
- +[PIRetouchCleanup identifier]
- +[PISegmentationLoader _baseLayoutForDisplayContext:ofItem:spatialPhotoEnabled:]
- +[PISlowMotion_v1 identifier]
- +[PISmartToneAuto_v1 identifier]
- +[PITextureStyle identifier]
- +[PITrim_v1 identifier]
- +[PIWhiteBalance_v1 identifier]
- -[PIADMCleanup identifier]
- -[PIADMOutfill identifier]
- -[PIAudioMix_v1 identifier]
- -[PICinematicVideo_v1 identifier]
- -[PICinematicVideo_v2 identifier]
- -[PICleanup identifier]
- -[PICropStraightenAuto_v1 identifier]
- -[PICropStraighten_v1 identifier]
- -[PICurves_v1 identifier]
- -[PIDefinition_v1 identifier]
- -[PIFilterEffect_v1 identifier]
- -[PIGANCleanup identifier]
- -[PIGenerativeEdits identifier]
- -[PIGrain_v1 identifier]
- -[PIHighResolutionFusion_v1 identifier]
- -[PILevels_v1 identifier]
- -[PILivePhotoEffect_v1 identifier]
- -[PILivePhotoKeyFrame_v1 identifier]
- -[PIManualRedEye_v1 identifier]
- -[PIMute_v1 identifier]
- -[PINoiseReduction_v1 identifier]
- -[PIOrientation_v1 identifier]
- -[PIOutfillPlaceholder identifier]
- -[PIPhotographicStyleApplyV1 identifier]
- -[PIPhotographicStyleApplyV2 identifier]
- -[PIPhotographicStyleLearnV1 identifier]
- -[PIPhotographicStyleLearnV2 identifier]
- -[PIPhotosPipeline identifier]
- -[PIPhotosPipeline_v1 _buildPostGeometryPipeline:error:]
- -[PIPipelineModule identifier]
- -[PIPlaybackRate_v1 identifier]
- -[PIPortrait_v1 identifier]
- -[PIPortrait_v2 identifier]
- -[PIPrivatePhotosPipeline_v0 buildFiltersGroupPipeline:temporality:error:]
- -[PIPrivatePhotosPipeline_v0 buildFiltersPipeline:temporality:connections:error:]
- -[PIPrivatePhotosPipeline_v1 buildFiltersGroupPipeline:temporality:error:]
- -[PIPrivatePhotosPipeline_v1 buildFiltersPipeline:temporality:connections:error:]
- -[PIRedEye_v1 identifier]
- -[PIRetouchCleanup identifier]
- -[PISelectiveColor_v1 identifier]
- -[PISemanticStyleThumbnailApply identifier]
- -[PISharpen_v1 identifier]
- -[PISlowMotion_v1 identifier]
- -[PISmartBlackAndWhite_v1 identifier]
- -[PISmartColor_v1 identifier]
- -[PISmartCopyPaste identifier]
- -[PISmartToneAuto_v1 identifier]
- -[PISmartTone_v1 identifier]
- -[PISpatialReframe identifier]
- -[PITextureStyle identifier]
- -[PITrim_v1 identifier]
- -[PIVignette_v1 identifier]
- -[PIWhiteBalanceAuto_v1 identifier]
- -[PIWhiteBalance_v1 identifier]
- -[_PIGrayColorPipelineBuilder identifier]
- GCC_except_table1108
- GCC_except_table1710
- GCC_except_table1724
- GCC_except_table1893
- GCC_except_table2069
- GCC_except_table2223
- GCC_except_table2233
- GCC_except_table2239
- GCC_except_table2247
- GCC_except_table2254
- GCC_except_table2340
- GCC_except_table2380
- GCC_except_table2409
- GCC_except_table2414
- GCC_except_table2429
- GCC_except_table2445
- GCC_except_table2450
- GCC_except_table2456
- GCC_except_table2543
- GCC_except_table2778
- GCC_except_table309
- GCC_except_table3131
- GCC_except_table3136
- GCC_except_table3166
- GCC_except_table3170
- GCC_except_table3172
- GCC_except_table3173
- GCC_except_table3175
- GCC_except_table3177
- GCC_except_table3179
- GCC_except_table3185
- GCC_except_table3294
- GCC_except_table3363
- GCC_except_table3364
- GCC_except_table3473
- GCC_except_table3515
- GCC_except_table3523
- GCC_except_table3575
- GCC_except_table3790
- GCC_except_table387
- GCC_except_table3909
- GCC_except_table3919
- GCC_except_table3922
- GCC_except_table3923
- GCC_except_table3935
- GCC_except_table3982
- GCC_except_table3991
- GCC_except_table4019
- GCC_except_table4042
- GCC_except_table4272
- GCC_except_table4445
- GCC_except_table4531
- GCC_except_table4634
- GCC_except_table4658
- GCC_except_table4662
- GCC_except_table4781
- GCC_except_table4819
- GCC_except_table4825
- GCC_except_table4827
- GCC_except_table4851
- GCC_except_table4873
- GCC_except_table4977
- GCC_except_table498
- GCC_except_table5034
- GCC_except_table5074
- GCC_except_table5226
- GCC_except_table5249
- GCC_except_table5256
- GCC_except_table5259
- GCC_except_table5270
- GCC_except_table5277
- GCC_except_table5424
- GCC_except_table5516
- GCC_except_table5577
- GCC_except_table5580
- GCC_except_table5592
- GCC_except_table5597
- GCC_except_table5598
- GCC_except_table5599
- GCC_except_table5604
- GCC_except_table5612
- GCC_except_table5705
- GCC_except_table6093
- GCC_except_table6112
- GCC_except_table6113
- GCC_except_table6119
- GCC_except_table6124
- GCC_except_table6176
- GCC_except_table6181
- GCC_except_table6182
- GCC_except_table6192
- GCC_except_table6218
- GCC_except_table6220
- GCC_except_table6221
- GCC_except_table6222
- GCC_except_table6224
- GCC_except_table6226
- GCC_except_table6228
- GCC_except_table6231
- GCC_except_table6234
- GCC_except_table6237
- GCC_except_table6241
- GCC_except_table6279
- GCC_except_table6382
- GCC_except_table6385
- GCC_except_table6451
- GCC_except_table6525
- GCC_except_table6847
- GCC_except_table7095
- GCC_except_table7096
- GCC_except_table7186
- GCC_except_table7189
- GCC_except_table7193
- GCC_except_table7194
- GCC_except_table7198
- GCC_except_table7199
- GCC_except_table7201
- GCC_except_table7232
- GCC_except_table7283
- GCC_except_table7335
- GCC_except_table7336
- GCC_except_table7337
- GCC_except_table7338
- GCC_except_table7370
- GCC_except_table7373
- GCC_except_table7441
- GCC_except_table7451
- GCC_except_table7556
- GCC_except_table7609
- GCC_except_table7611
- GCC_except_table7705
- GCC_except_table7711
- GCC_except_table7714
- GCC_except_table7716
- GCC_except_table7717
- GCC_except_table7718
- GCC_except_table7719
- GCC_except_table7721
- GCC_except_table7724
- GCC_except_table7725
- GCC_except_table7726
- GCC_except_table7727
- GCC_except_table7729
- GCC_except_table7730
- GCC_except_table7732
- GCC_except_table775
- GCC_except_table7790
- GCC_except_table7798
- GCC_except_table7812
- GCC_except_table7813
- GCC_except_table7814
- GCC_except_table7848
- GCC_except_table7849
- GCC_except_table7850
- GCC_except_table7853
- GCC_except_table7856
- GCC_except_table786
- GCC_except_table7901
- GCC_except_table7903
- GCC_except_table796
- GCC_except_table8047
- GCC_except_table8057
- GCC_except_table8065
- GCC_except_table8066
- GCC_except_table8067
- GCC_except_table8068
- GCC_except_table8069
- GCC_except_table8070
- GCC_except_table8113
- GCC_except_table816
- GCC_except_table8299
- GCC_except_table8527
- GCC_except_table8529
- GCC_except_table8530
- GCC_except_table8592
- GCC_except_table8594
- GCC_except_table8596
- GCC_except_table863
- GCC_except_table866
- GCC_except_table8666
- GCC_except_table867
- GCC_except_table8689
- GCC_except_table8691
- GCC_except_table8694
- GCC_except_table8698
- GCC_except_table8700
- GCC_except_table8733
- GCC_except_table8741
- GCC_except_table8745
- GCC_except_table8746
- GCC_except_table8754
- GCC_except_table8764
- GCC_except_table8765
- GCC_except_table8768
- GCC_except_table8774
- GCC_except_table8776
- GCC_except_table8777
- GCC_except_table8789
- _NUAssetCapabilityAudio
- _NUAssetCapabilityAudioMix
- _NUAssetCapabilityCinematicVideoV1
- _NUAssetCapabilityCinematicVideoV2
- _NUAssetCapabilityHDR
- _NUAssetCapabilityHDRGainMap
- _NUAssetCapabilityPhotographicStyle
- _NUAssetCapabilityPhotographicStyleV1
- _NUAssetCapabilityPhotographicStyleV2
- _NUAssetCapabilityPortraitV1
- _NUAssetCapabilityPortraitV2
- _NUAssetCapabilityRawDecode
- _NUPipelineVariableTargetHeadroom
- _OBJC_CLASS_$_NUAspectFitScalePolicy
- __OBJC_$_CLASS_METHODS_PIADMCleanup
- __OBJC_$_CLASS_METHODS_PIADMOutfill
- __OBJC_$_CLASS_METHODS_PICropStraightenAuto_v1
- __OBJC_$_CLASS_METHODS_PIGANCleanup
- __OBJC_$_CLASS_METHODS_PIOutfillPlaceholder
- ___56+[PIObjectRemoval _instancesForGenerativeEditOperation:]_block_invoke
- ___58+[PIObjectRemoval _nonInstancedOperationsFromComposition:]_block_invoke
- ___58+[PIObjectRemoval _nonInstancedOperationsFromComposition:]_block_invoke_2
- ___81-[PIPrivatePhotosPipeline_v0 buildFiltersPipeline:temporality:connections:error:]_block_invoke
- ___81-[PIPrivatePhotosPipeline_v1 buildFiltersPipeline:temporality:connections:error:]_block_invoke
- ___block_descriptor_41_e8_32s_e29_v16?0"<NUMutablePipeline>"8ls32l8
- ___block_descriptor_48_e8_32s_e33_B24?0"<NUMutablePipeline>"8^16ls32l8
- ___block_descriptor_49_e8_32s40s_e44_"NUChannelPortRef"16?0"NUChannelPortRef"8ls32l8s40l8
- ___block_descriptor_56_e8_32s40s48s_e44_"NUChannelPortRef"16?0"NUChannelPortRef"8ls32l8s40l8s48l8
CStrings:
+ "+[PICinematicVideoUtilities disparityProviderWithQuality:globalRenderingMetadata:inputSize:error:]"
+ "+[PIModularPhotosPipeline_v0 controlDataWithPortraitEffectAdjustment:descriptor:]"
+ "+[PIObjectRemoval _instancesForGenerativeEditOperation:context:]_block_invoke"
+ "+[PIPortrait versionedClassForAsset:]"
+ "-[PIPipelineModule pipelineName]"
+ "-[PIPortrait buildPipeline:error:]"
+ "-[PIPortrait initWithAsset:options:]"
+ "../geometry:<<media.gainMap"
+ "../originalMedia:>output.alternate"
+ "../originalMedia:>output.gainMap"
+ "../originalMedia:>output.primary"
+ "..:<lightingEffect"
+ "./filters/geometry:<media.original-alternate"
+ "./filters/geometry:<media.original-gainMap"
+ "./filters/geometry:<media.original-primary"
+ "./filters/geometry:>media.original-alternate"
+ "./filters/geometry:>media.original-gainMap"
+ "./filters/geometry:>media.original-primary"
+ "./geometry:<media.gainMap"
+ "./geometry:<media.original-alternate"
+ "./geometry:<media.original-gainMap"
+ "./geometry:<media.original-primary"
+ "./orientation:<media.gainMap"
+ "./orientation:<media.original-alternate"
+ "./orientation:<media.original-gainMap"
+ "./orientation:<media.original-primary"
+ "/:<depthEffect.enabled"
+ "/:<lightingEffect.kind"
+ "/:>original+geometry.image.alternate"
+ "/:>original+geometry.image.gainMap"
+ "/:>original.image.alternate"
+ "/:>original.image.gainMap"
+ "/:lightingEffect.enabled"
+ "/originalKeyFrame:>image"
+ "/originalKeyFrame:>video"
+ ":<depthEffect"
+ ":>original+geometry.alternate"
+ ":>original+geometry.gainMap"
+ ":>original.alternate"
+ ":>original.gainMap"
+ ":lightingEffect.enabled"
+ "<%@ name:%@ options:%@>"
+ "AudioMix"
+ "CinEverywhere: Disparity provider initialization failed for quality %@: %@"
+ "CinEverywhere: Donwloading disparity model for quality %@"
+ "CinEverywhere: Initializing disparity model for quality %@"
+ "CinematicVideoV1"
+ "CinematicVideoV2"
+ "EdgeExtension: backfill=%d visibleFrame=(%ld,%ld,%ld,%ld) imageFrame=(%ld,%ld,%ld,%ld) options=%lu (top=%d left=%d right=%d)"
+ "Failed to create disparity provider"
+ "Failed to create disparity provider for resume"
+ "Failed to create disparity provider settings"
+ "Failed to generate post-geometry component"
+ "Failed to instantiate original RAW profile pipeline"
+ "HighKeyMono"
+ "Natural"
+ "PISensitiveContent: user default set, overriding SafetyRequestFailure to YES"
+ "PI_FORCE_REGIONAL_GUARDRAIL_REQUEST_FAILURE"
+ "PI_GENERATIVE_SEED"
+ "PhotographicStyleV1"
+ "PortraitV1"
+ "StageMono"
+ "Unsupported lighting effect for v1"
+ "Unsupported lighting effect for v2"
+ "Unsupported lighting filter kind"
+ "cleanup"
+ "cropStraightenAuto"
+ "filterEffect"
+ "highResolutionFusion"
+ "kind must not be nil: %@"
+ "livePhotoEffectAudioBypass"
+ "livePhotoKeyFrameSelector"
+ "maskContextRequestID"
+ "media:<input.%@"
+ "media:>output.%@"
+ "media:>output.audio"
+ "original-"
+ "originalMedia"
+ "originalMedia:<input.%@"
+ "originalMedia:<input.alternate"
+ "originalMedia:<input.disparity"
+ "originalMedia:<input.gainMap"
+ "originalMedia:<input.primary"
+ "originalPrimaryLPKFSelector"
+ "originalPrimaryLPKFSelector:<condition"
+ "originalPrimaryLPKFSelector:<outputIfFalse"
+ "originalPrimaryLPKFSelector:<outputIfTrue"
+ "originalPrimaryLPKFSelector:>output"
+ "originalRawProfile"
+ "originalRawProfile:<primary"
+ "originalRawProfile:>primary"
+ "originalRawProfileHDR"
+ "originalRawProfileHDR:<extendedDynamicRangeAmount"
+ "originalRawProfileHDR:<primary"
+ "originalRawProfileHDR:>primary"
+ "originalRawProfileSDR"
+ "originalRawProfileSDR:<extendedDynamicRangeAmount"
+ "originalRawProfileSDR:<primary"
+ "originalRawProfileSDR:>primary"
+ "outfillPlaceholder"
+ "photosPipeline"
+ "portrait:<depthEffect"
+ "portrait:<lightingEffect"
+ "privatePhotosPipeline"
+ "retouchCleanup"
+ "semanticStyleThumbnailApply"
+ "semanticStyleVideoCache:<input"
+ "semanticStyleVideoCache:>output"
+ "semanticStyleVideoCacheBypass"
+ "smartCopyPaste"
+ "smartToneAuto"
+ "v16@?0@\"PTDisparityProviderInitializationStatus\"8"
+ "whiteBalanceAuto"
- "+[PIObjectRemoval _instancesForGenerativeEditOperation:]_block_invoke"
- "-[PIPipelineModule identifier]"
- "..:<lightingEffectAdjustment"
- "./filters/geometry:<media.original"
- "./filters/geometry:>media.original"
- "./geometry:<media.original"
- "./orientation:<media.original"
- "./originalKeyFrame:>image"
- "/:<depthEffectAdjustment"
- "/:<depthEffectAdjustment.enabled"
- "/:<lightingEffectAdjustment.kind"
- "/:lightingEffectAdjustment.enabled"
- "/asset:>media.gainMap"
- "/asset:>media.image.gainMap"
- "/asset:>media.video.audio"
- "/image/filters/originalKeyFrame:>video"
- "/video/livePhotoEffect:>media.video.primary"
- ":<depthEffectAdjustment"
- ":lightingEffectAdjustment.enabled"
- "<%@ id:%@ options:%@>"
- "CinematicVideo"
- "CropStraightenAuto"
- "EdgeExtension: visibleFrame=(%ld,%ld,%ld,%ld) imageFrame=(%ld,%ld,%ld,%ld) options=%lu (top=%d left=%d right=%d)"
- "Failed to build LivePhotoKeyFrame pipeline"
- "Failed to build Portrait pipeline"
- "Failed to create a shared disparity provider"
- "FilterEffect"
- "GrayColor"
- "ManualRedEye"
- "PIADMCleanup"
- "PIADMOutfill"
- "PIGANCleanup"
- "PIOutfillPlaceholder"
- "PIPhotographicStyleApply"
- "PIRetouchCleanup"
- "PhotosPipeline"
- "Portrait"
- "PrivatePhotosPipeline"
- "SemanticStyleApply"
- "SemanticStyleLearn"
- "SemanticStyleThumbnailApply"
- "SmartToneAuto"
- "WhiteBalanceAuto"
- "depthEffectAdjustment"
- "gainMapApply:<headroom"
- "gainMapApplyBypass"
- "gainMapApplyBypass:<condition"
- "gainMapApplyBypass:<outputIfTrue"
- "gainMapBypass:>output"
- "gainMapRecompute"
- "gainMapRecompute:<hdrImage"
- "gainMapRecompute:<metadata"
- "gainMapRecompute:<sdrImage"
- "gainMapRecompute:>gainMap"
- "gainMapRecomputeBypass"
- "gainMapRecomputeBypass:<condition"
- "lightingEffectAdjustment"
- "newPortrait:>gainMap"
- "originalSelector"
- "originalSelector:<condition"
- "originalSelector:<outputIfFalse"
- "originalSelector:<outputIfTrue"
- "originalSelector:>output"
- "photos"
- "portrait:<depthEffectAdjustment"
- "portrait:<lightingEffectAdjustment"
- "portraitV1"
- "portraitV2"
- "thumbnailToneMap"
- "thumbnailToneMap:<primary"
- "thumbnailToneMap:>primary"
- "toneMap:<primary"
- "toneMap:>primary"
- "videoPosterFrameToneMap"
- "videoPosterFrameToneMap:<primary"
```
