## MediaControls

> `/System/Library/PrivateFrameworks/MediaControls.framework/MediaControls`

```diff

-4026.110.4.0.0
-  __TEXT.__text: 0x2257d4
-  __TEXT.__objc_methlist: 0x15d1c
-  __TEXT.__cstring: 0x6f64
+4026.200.15.0.0
+  __TEXT.__text: 0x2268f8
+  __TEXT.__objc_methlist: 0x15de4
+  __TEXT.__cstring: 0x6f74
   __TEXT.__ustring: 0x28
   __TEXT.__const: 0xbd04
-  __TEXT.__gcc_except_tab: 0x1548
+  __TEXT.__gcc_except_tab: 0x1598
   __TEXT.__oslogstring: 0x86d9
   __TEXT.__dlopen_cstrs: 0x64
   __TEXT.__constg_swiftt: 0x77fc

   __TEXT.__swift5_reflstr: 0x4bcd
   __TEXT.__swift5_fieldmd: 0x4c14
   __TEXT.__swift5_types: 0x614
-  __TEXT.__swift5_capture: 0x141c
+  __TEXT.__swift5_capture: 0x148c
   __TEXT.__swift5_protos: 0xb8
   __TEXT.__swift5_proto: 0x5fc
   __TEXT.__swift5_builtin: 0x348

   __TEXT.__swift_as_ret: 0x34
   __TEXT.__swift_as_cont: 0x6c
   __TEXT.__swift5_assocty: 0x390
-  __TEXT.__unwind_info: 0x8960
+  __TEXT.__unwind_info: 0x8990
   __TEXT.__eh_frame: 0x18a8
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x3080
+  __DATA_CONST.__const: 0x3090
   __DATA_CONST.__objc_classlist: 0x9b8
   __DATA_CONST.__objc_catlist: 0xa8
   __DATA_CONST.__objc_protolist: 0x480
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0xa788
+  __DATA_CONST.__objc_selrefs: 0xa7e8
   __DATA_CONST.__objc_protorefs: 0xa8
   __DATA_CONST.__objc_superrefs: 0x608
   __DATA_CONST.__objc_arraydata: 0x1e8
-  __DATA_CONST.__got: 0x1898
-  __AUTH_CONST.__const: 0xaa80
-  __AUTH_CONST.__cfstring: 0x51e0
-  __AUTH_CONST.__objc_const: 0x44730
+  __DATA_CONST.__got: 0x18a8
+  __AUTH_CONST.__const: 0xab98
+  __AUTH_CONST.__cfstring: 0x5200
+  __AUTH_CONST.__objc_const: 0x44848
   __AUTH_CONST.__objc_intobj: 0x2b8
   __AUTH_CONST.__objc_arrayobj: 0x138
   __AUTH_CONST.__objc_doubleobj: 0xf0
   __AUTH_CONST.__objc_dictobj: 0x140
-  __AUTH_CONST.__auth_got: 0x2028
+  __AUTH_CONST.__auth_got: 0x2030
   __AUTH_CONST.__auth_ptr: 0xd70
-  __AUTH.__objc_data: 0x3880
-  __AUTH.__data: 0x1238
-  __DATA.__objc_ivar: 0x18cc
-  __DATA.__data: 0x4218
-  __DATA.__bss: 0x8b28
-  __DATA.__common: 0x8b0
-  __DATA_DIRTY.__objc_data: 0x72c8
-  __DATA_DIRTY.__data: 0x33b8
-  __DATA_DIRTY.__bss: 0x28a0
-  __DATA_DIRTY.__common: 0xa00
+  __AUTH.__objc_data: 0x82a8
+  __AUTH.__data: 0x34d8
+  __DATA.__objc_ivar: 0x18d4
+  __DATA.__data: 0x4d68
+  __DATA.__bss: 0xafe8
+  __DATA.__common: 0x1250
+  __DATA_DIRTY.__objc_data: 0x28a0
+  __DATA_DIRTY.__data: 0x5b8
+  __DATA_DIRTY.__bss: 0x3f0
+  __DATA_DIRTY.__common: 0x60
   - /System/Library/Frameworks/AVFAudio.framework/AVFAudio
   - /System/Library/Frameworks/AVFoundation.framework/AVFoundation
   - /System/Library/Frameworks/AVRouting.framework/AVRouting

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 14440
-  Symbols:   13857
-  CStrings:  1623
+  Functions: 14463
+  Symbols:   13884
+  CStrings:  1624
 
Symbols:
+ +[UIFont(MRUDefaults) mru_ambientRouteFont]
+ +[UIFont(MRUDefaults) mru_ambientSubtitleFontForAxis:]
+ +[UIFont(MRUDefaults) mru_ambientTimeFontForAxis:]
+ +[UIFont(MRUDefaults) mru_ambientTitleFontForAxis:]
+ -[MRUAmbientNowPlayingView layoutAxis]
+ -[MRUAmbientNowPlayingView prefersAltLayout]
+ -[MRUAmbientNowPlayingView routingButtonSymbolConfigurationForLayoutAxis:wideGlyph:]
+ -[MRUAmbientNowPlayingView setRoute:]
+ -[MRUAmbientNowPlayingView updateAxisDependentConfiguration]
+ -[MRUAmbientNowPlayingView updateRouteLabelFont]
+ -[MRUAmbientNowPlayingView updateRouteLabelVisibilityForSliderExpanded:]
+ -[MRUAmbientNowPlayingView updateRoutingButtonAsset]
+ -[MRUAmbientNowPlayingVolumeControlsView maximumValueViewStyleForSlider:]
+ -[MRUAmbientNowPlayingVolumeControlsView setVisibilityDidUpdateHandler:]
+ -[MRUAmbientNowPlayingVolumeControlsView visibilityDidUpdateHandler]
+ -[MRUCAPackageView(MRUVisualStylingProviderAdditions) mru_applyBlendColor:alpha:]
+ -[MRUSystemOutputDeviceRouteControllerControlCenterEndpointDataSource _updateIsPhoneCallActive]
+ -[MRUSystemOutputDeviceRouteControllerControlCenterEndpointDataSource volumeCategoryDidChangeNotification:]
+ -[MRUVisualStylingProvider applyBlendStyle:toView:traitCollection:]
+ -[UIView(MRUVisualStylingProviderAdditions) mru_applyBlendColor:alpha:]
+ _CGColorGetAlpha
+ _MRAVVolumeClientEndpointVolumeCategoryDidChangeNotification
+ _MRUAmbientNowPlayingSliderStretchLimit
+ _MRUAmbientNowPlayingTimeControlsBottomInsetForLayoutAxis
+ _MRUAmbientNowPlayingVerticalLayoutArtworkGutter
+ _MRUAmbientNowPlayingVerticalLayoutAuxiliaryRowHeight
+ _MRUAmbientNowPlayingVerticalLayoutRouteLabelSpacing
+ _MRUAmbientNowPlayingVerticalLayoutSliderToTimeLabelSpacing
+ _MRUAmbientNowPlayingVerticalLayoutTimeControlsBottomInset
+ _MRUAmbientNowPlayingVerticalLayoutTransportControlsButtonSize
+ _MRUAmbientNowPlayingVerticalLayoutTransportControlsCenterOffset
+ _MRUAmbientNowPlayingVerticalLayoutTransportControlsPackageScale
+ _OBJC_IVAR_$_MRUAmbientNowPlayingView._appliedConfigurationAxis
+ _OBJC_IVAR_$_MRUAmbientNowPlayingView._routeLabel
+ _OBJC_IVAR_$_MRUAmbientNowPlayingView._routingButtonGlyphSize
+ _OBJC_IVAR_$_MRUAmbientNowPlayingView._routingButtonImage
+ _OBJC_IVAR_$_MRUAmbientNowPlayingVolumeControlsView._visibilityDidUpdateHandler
+ _UIFontTextStyleTitle3
+ ___42-[MRUAmbientNowPlayingView initWithFrame:]_block_invoke
+ ___swift_closure_destructor.37Tm
- +[UIFont(MRUDefaults) mru_ambientSubtitleFont]
- +[UIFont(MRUDefaults) mru_ambientTimeFont]
- +[UIFont(MRUDefaults) mru_ambientTitleFont]
- -[MRUAmbientNowPlayingView setShadowView:]
- -[MRUAmbientNowPlayingView shadowView]
- -[MRUNowPlayingTimeControlsView timeLabelsAlpha]
- -[MRUSystemOutputDeviceRouteControllerControlCenterEndpointDataSource routeDidChangeNotification:]
- _MRUAmbientNowPlayingVerticalLayoutHorizontalCompactMargin
- _MRUAmbientNowPlayingVerticalLayoutVerticalCompactMargin
- _MRUAmbientNowPlayingVolumeControlsPackageInsets
- _OBJC_IVAR_$_MRUAmbientNowPlayingView._routingButtonSymbolConfiguration
- _OBJC_IVAR_$_MRUAmbientNowPlayingView._routingButtonSymbolConfigurationSmall
- _OBJC_IVAR_$_MRUAmbientNowPlayingView._shadowView
CStrings:
+ "AmbientVertical"
```
