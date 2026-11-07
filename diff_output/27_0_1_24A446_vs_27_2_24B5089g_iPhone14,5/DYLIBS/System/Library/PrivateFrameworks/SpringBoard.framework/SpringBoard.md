## SpringBoard

> `/System/Library/PrivateFrameworks/SpringBoard.framework/SpringBoard`

```diff

-4636.116.0.0.0
-  __TEXT.__text: 0xb1023c
+4637.1.8.101.0
+  __TEXT.__text: 0xb0fec4
   __TEXT.__init_offsets: 0x4
-  __TEXT.__objc_methlist: 0xbe0c0
-  __TEXT.__const: 0x11370
-  __TEXT.__oslogstring: 0x65862
-  __TEXT.__cstring: 0x85315
-  __TEXT.__gcc_except_tab: 0x18660
+  __TEXT.__objc_methlist: 0xbe040
+  __TEXT.__const: 0x11360
+  __TEXT.__oslogstring: 0x658b2
+  __TEXT.__cstring: 0x8544f
+  __TEXT.__gcc_except_tab: 0x1864c
   __TEXT.__ustring: 0xd04
   __TEXT.__dlopen_cstrs: 0x373
-  __TEXT.__unwind_info: 0x2e678
+  __TEXT.__unwind_info: 0x2e658
   __TEXT.__eh_frame: 0x48
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x1d9e8
-  __DATA_CONST.__objc_classlist: 0x5518
-  __DATA_CONST.__objc_catlist: 0x350
+  __DATA_CONST.__const: 0x1da60
+  __DATA_CONST.__objc_classlist: 0x54f8
+  __DATA_CONST.__objc_catlist: 0x338
   __DATA_CONST.__objc_nlcatlist: 0x8
-  __DATA_CONST.__objc_protolist: 0x2af0
+  __DATA_CONST.__objc_protolist: 0x2ae0
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x4eb40
+  __DATA_CONST.__objc_selrefs: 0x4eb20
   __DATA_CONST.__objc_protorefs: 0xd8
-  __DATA_CONST.__objc_superrefs: 0x40a8
+  __DATA_CONST.__objc_superrefs: 0x40a0
   __DATA_CONST.__objc_arraydata: 0x18b8
-  __DATA_CONST.__got: 0xa9a0
-  __AUTH_CONST.__const: 0x10bc8
-  __AUTH_CONST.__cfstring: 0x74ba0
-  __AUTH_CONST.__objc_const: 0x289388
+  __DATA_CONST.__got: 0xa980
+  __AUTH_CONST.__const: 0x10c48
+  __AUTH_CONST.__cfstring: 0x74ca0
+  __AUTH_CONST.__objc_const: 0x288dd8
   __AUTH_CONST.__weak_auth_got: 0x10
   __AUTH_CONST.__objc_arrayobj: 0x1740
   __AUTH_CONST.__objc_doubleobj: 0x850

   __AUTH_CONST.__objc_dictobj: 0x2f8
   __AUTH_CONST.__auth_got: 0x2c00
   __AUTH_CONST.__auth_ptr: 0x0
-  __AUTH.__objc_data: 0xe6f0
-  __DATA.__objc_ivar: 0xfcb8
-  __DATA.__data: 0x21040
-  __DATA.__bss: 0xaa8
+  __AUTH.__objc_data: 0xd840
+  __DATA.__objc_ivar: 0xfca8
+  __DATA.__data: 0x20f80
+  __DATA.__bss: 0x970
   __DATA.__common: 0xa40
-  __DATA_DIRTY.__objc_data: 0x26c00
+  __DATA_DIRTY.__objc_data: 0x27970
   __DATA_DIRTY.__data: 0x140
-  __DATA_DIRTY.__bss: 0x18c8
+  __DATA_DIRTY.__bss: 0x19f8
   __DATA_DIRTY.__common: 0x40
   - /System/Library/Frameworks/AVFAudio.framework/AVFAudio
   - /System/Library/Frameworks/AVFoundation.framework/AVFoundation

   - /System/Library/PrivateFrameworks/AppRestrictions.framework/AppRestrictions
   - /System/Library/PrivateFrameworks/AppRestrictionsCore.framework/AppRestrictionsCore
   - /System/Library/PrivateFrameworks/AppRestrictionsUI.framework/AppRestrictionsUI
+  - /System/Library/PrivateFrameworks/AppServerSupport.framework/AppServerSupport
   - /System/Library/PrivateFrameworks/AppStoreDaemon.framework/AppStoreDaemon
   - /System/Library/PrivateFrameworks/AppSupport.framework/AppSupport
   - /System/Library/PrivateFrameworks/AppleKeyStore.framework/AppleKeyStore

   - /usr/lib/libsp.dylib
   - /usr/lib/libsqlite3.dylib
   - /usr/lib/libutil.dylib
-  Functions: 73615
-  Symbols:   119516
-  CStrings:  23565
+  Functions: 73627
+  Symbols:   119477
+  CStrings:  23575
 
Symbols:
+ +[SBApplicationController _appClassForInfo:]
+ +[SBApplicationController _application:canAdoptApplicationInfoInPlace:]
+ +[SBIconStateArchiver _iconListByAssigningMissingFolderIdentifiers:identifierPrefix:]
+ +[SBIconStateArchiver _iconListsByAssigningMissingFolderIdentifiers:identifierPrefix:]
+ +[SBIconStateArchiver _rootArchiveByAssigningMissingFolderIdentifiers:]
+ +[SBIconStateArchiver modernizedRootArchiveFromITunesRepresentation:]
+ -[SBActionHandler handleClientWorkspaceActions:]
+ -[SBActivationInfoViewController _appendMobileEquipmentInfoForSlot:mobileEquipmentInfoList:]
+ -[SBActivityAmbientViewController _animationSettingsForBackgroundBlurWindDown]
+ -[SBActivityAmbientViewController _removeBackgroundBlurMaterialView]
+ -[SBAppResizingCoordinator acquireSessionForDisplay:monitoredWindowScene:resizingCornerRadius:]
+ -[SBAppResizingSession initWithWindowSceneManager:displayUniqueId:monitoredWindowScene:resizingCornerRadius:]
+ -[SBAppResizingSession monitoredWindowScene]
+ -[SBAppResizingSession prepareForDisplay]
+ -[SBApplication isUninstallRequestFulfilled]
+ -[SBApplication setUninstallRequestFulfilled:]
+ -[SBApplicationSceneUpdateTransaction _shouldRequirePreflightForRequest:]
+ -[SBAssistantIslandStageController _setSceneActivityMode:jetsamPriority:]
+ -[SBHomeScreenController _finishFolderOpenAttemptForFolder:]
+ -[SBHomeScreenController iconManager:failedToOpenFolder:]
+ -[SBHomeScreenController iconManager:shouldConsiderDefaultLocationAsDesignatedForIconWithIdentifier:]
+ -[SBLockScreenBiometricAuthenticationCoordinator _shouldShowAlertForSeed]
+ -[SBLockScreenCoordinator _sendStartupTransitionNotesIfNeeded:]
+ -[SBMenuBarViewController _restoreKeyboardFocusToMenuProvidingScene]
+ -[SBNotificationCarPlayDestination _cancelPreprocessOnWithdrawForRequest:]
+ -[SBNotificationCarPlayDestination _clearNotificationRequestPendingAnnounceDeactivationIfNecessaryDeactivatingAnnounce:]
+ -[SBNotificationCarPlayDestination _isSiriExcludedForNotificationRequest:]
+ -[SBSceneManager workspace:didReceiveActions:]
+ -[SBSecureRenderingViolationHandler _markArchiveAsPurgeableAtURL:]
+ -[SBTelephonyManager _mobileEquipmentInfoForSlot:]
+ -[SBTransientOverlayViewController _isStatusBarZeroHeightInContainerOrientation]
+ -[SpringBoard _resumeAppReplacementIfNecessary]
+ -[_SBSATimerAndDescriptionRecord dealloc]
+ GCC_except_table161
+ GCC_except_table203
+ GCC_except_table259
+ GCC_except_table263
+ GCC_except_table373
+ GCC_except_table405
+ GCC_except_table451
+ GCC_except_table570
+ GCC_except_table583
+ GCC_except_table585
+ _FBSDebugOptionKeyDeveloperToolsOptions
+ _FBSSceneJetsamPriorityDefault
+ _OBJC_CLASS_$_OSLaunchdDeveloperToolsOptions
+ _OBJC_IVAR_$_SBAppResizingSession._monitoredWindowScene
+ _OBJC_IVAR_$_SBApplication._uninstallRequestFulfilled
+ _OBJC_IVAR_$_SBAssistantIslandStageCoordinator._lastKeybagEffectivelyLocked
+ _OBJC_IVAR_$_SBBackgroundAngelKeepAliveHandler._handleLastGrantedBootstrap
+ _OBJC_IVAR_$_SBExternalDisplayWindowSceneDelegate._homeScreenController
+ _OBJC_IVAR_$_SBLockScreenCoordinator._startupTransitionState
+ _SBSiriAppBundleIdentifier
+ _TCCAccessCopyBundleIdentifiersDisabledForService
+ ___112-[SBDynamicFlashlightActivityElement contentProviderWillTransitionToSize:inContainerView:transitionCoordinator:]_block_invoke_3
+ ___132-[SBActivityAmbientViewController _animateTransitionToCompactOverlayForItem:transitionType:compactOverlayViewController:completion:]_block_invoke_7
+ ___132-[SBActivityAmbientViewController _animateTransitionToCompactOverlayForItem:transitionType:compactOverlayViewController:completion:]_block_invoke_8
+ ___46-[SBAssistantController _updateDeferringRules]_block_invoke
+ ___47-[SpringBoard _resumeAppReplacementIfNecessary]_block_invoke
+ ___47-[SpringBoard _resumeAppReplacementIfNecessary]_block_invoke_2
+ ___47-[SpringBoard _resumeAppReplacementIfNecessary]_block_invoke_3
+ ___73-[SBAssistantIslandStageController _setSceneActivityMode:jetsamPriority:]_block_invoke
+ ___85+[SBIconStateArchiver _iconListByAssigningMissingFolderIdentifiers:identifierPrefix:]_block_invoke
+ ___86+[SBIconStateArchiver _iconListsByAssigningMissingFolderIdentifiers:identifierPrefix:]_block_invoke
+ ___87-[SBTransientOverlayViewController viewWillTransitionToSize:withTransitionCoordinator:]_block_invoke_3
+ ___96-[SBActivityAmbientViewController _addNewBackgroundBlurMaterialViewWithInitialWeighting:hidden:]_block_invoke
+ ___block_descriptor_33_e31_v16?0"SSKDisplayPreferences"8l
+ ___block_descriptor_35_e33_v16?0"FBSMutableSceneSettings"8l
+ ___block_descriptor_48_e8_32s40bs_e34_v24?0"NSDictionary"8"NSError"16ls32l8s40l8
+ ___block_descriptor_56_e8_32s40s48w_e40_v16?0"<RBSProcessMonitorConfiguring>"8ls32l8s40l8w48l8
+ ___block_descriptor_56_e8_32s40s_e15_v32?08Q16^B24ls32l8s40l8
+ ___block_descriptor_64_e8_32s40s48s56bs_e17_v16?0"NSError"8ls32l8s40l8s56l8s48l8
+ ___block_descriptor_72_e8_32s40s48s56s64bs_e5_v8?0ls32l8s40l8s48l8s64l8s56l8
+ _fsctl
+ _kTCCServiceSiriAccess
- +[SBDeviceEmulationController applicationInitializationContext]
- +[SBDeviceEmulationController deviceContext]
- +[SBDeviceEmulationController displayContext]
- +[SBFDIDeviceControlCoordinator _scene:hasEntitlement:]
- +[SBFDIDeviceControlCoordinator addSceneExtensionIfNeeded:]
- +[SBScreenEdgeCompensationDisplayTransformer isScreenEdgeCompensationEnabled]
- +[SBScreenEdgeCompensationDisplayTransformer sceneTransformForWindowScene:]
- +[SBScreenEdgeCompensationDisplayTransformer transformedConfigurationForConfiguration:]
- -[SBActivationInfoViewController _processMobileEquipmentInfo:forSlot:]
- -[SBAppResizingCoordinator acquireSessionForDisplay:resizingCornerRadius:]
- -[SBAppResizingSession initWithWindowSceneManager:displayUniqueId:resizingCornerRadius:]
- -[SBAppResizingSession prepareForDisplayWithBounds:]
- -[SBApplicationController _appClassForInfo:]
- -[SBFDIDeviceControlBacklightInformer isRestricting]
- -[SBFDIDeviceControlBacklightInformer setRestricting:]
- -[SBFDIDeviceControlBacklightInformer shouldTurnOnScreenForBacklightSource:]
- -[SBFDIDeviceControlCoordinator .cxx_destruct]
- -[SBFDIDeviceControlCoordinator _updateBacklightRestrictionForWindowScene:wantsRestriction:]
- -[SBFDIDeviceControlCoordinator _updateLiftToWakeForWindowScenes:wantsSuppression:]
- -[SBFDIDeviceControlCoordinator _updateShieldButtonsRestrictionForWindowScenes:wantsRestriction:]
- -[SBFDIDeviceControlCoordinator _updateTapToWakeForWindowScenes:wantsSuppression:]
- -[SBFDIDeviceControlCoordinator applyFDIDeviceControlClientSettings:]
- -[SBFDIDeviceControlCoordinator init]
- -[SBFDIDeviceControlCoordinator invalidate]
- -[SBHomeScreenController additionalFloatingDockControllers]
- -[SBHomeScreenController setAdditionalFloatingDockControllers:]
- -[SBNotificationCarPlayDestination _clearNotificationRequestPendingAnnounceDeactivationIfNecessary]
- -[SBSAPlatformMetricsContext _setSensorVariant:]
- -[SBSAPlatformMetricsContext copyBySettingSensorVariant:]
- -[SBSAPlatformMetricsContext sensorVariant]
- -[SBSAPlatformMetricsContextMutator sensorVariant]
- -[SBSAPlatformMetricsContextMutator setSensorVariant:]
- -[UISMutableApplicationInitializationContext(DeviceEmulation) sb_configureForDeviceEmulation]
- -[UISMutableDeviceContext(DeviceEmulation) sb_configureForDeviceEmulation]
- -[UISMutableDisplayContext(DeviceEmulation) sb_configureForDeviceEmulation]
- GCC_except_table293
- GCC_except_table321
- GCC_except_table347
- GCC_except_table388
- GCC_except_table396
- GCC_except_table401
- GCC_except_table443
- GCC_except_table557
- GCC_except_table567
- GCC_except_table582
- GCC_except_table94
- _OBJC_CLASS_$_FBSDeviceEmulationConfiguration
- _OBJC_CLASS_$_SBDeviceEmulationController
- _OBJC_CLASS_$_SBFDIDeviceControlBacklightInformer
- _OBJC_CLASS_$_SBFDIDeviceControlCoordinator
- _OBJC_CLASS_$_SBSFDIDeviceControlHostComponent
- _OBJC_CLASS_$_SBSFDIDeviceControlSceneExtension
- _OBJC_CLASS_$_SBScreenEdgeCompensationDisplayTransformer
- _OBJC_CLASS_$_SSKHostingConfiguration
- _OBJC_CLASS_$_SSKLayerConfiguration
- _OBJC_IVAR_$_SBAppResizingSession._hostingWindowScene
- _OBJC_IVAR_$_SBApplicationInfo._disableD2026ClassicMode
- _OBJC_IVAR_$_SBFDIDeviceControlBacklightInformer._restricting
- _OBJC_IVAR_$_SBFDIDeviceControlCoordinator._backlightInformer
- _OBJC_IVAR_$_SBFDIDeviceControlCoordinator._disableLiftToWakeAssertions
- _OBJC_IVAR_$_SBFDIDeviceControlCoordinator._disableShieldButtonsAssertions
- _OBJC_IVAR_$_SBFDIDeviceControlCoordinator._disableTapToWakeAssertions
- _OBJC_IVAR_$_SBFDIDeviceControlCoordinator._restrictedBacklightControllers
- _OBJC_IVAR_$_SBHomeScreenController._additionalFloatingDockControllers
- _OBJC_IVAR_$_SBLockScreenCoordinator._isInLostMode
- _OBJC_METACLASS_$_SBDeviceEmulationController
- _OBJC_METACLASS_$_SBFDIDeviceControlBacklightInformer
- _OBJC_METACLASS_$_SBFDIDeviceControlCoordinator
- _OBJC_METACLASS_$_SBScreenEdgeCompensationDisplayTransformer
- _SBLogDisplayTransforming
- _SBLogFDIDeviceControl
- __OBJC_$_CATEGORY_INSTANCE_METHODS_UISMutableApplicationInitializationContext_$_DeviceEmulation
- __OBJC_$_CATEGORY_INSTANCE_METHODS_UISMutableDeviceContext_$_DeviceEmulation
- __OBJC_$_CATEGORY_INSTANCE_METHODS_UISMutableDisplayContext_$_DeviceEmulation
- __OBJC_$_CATEGORY_UISMutableApplicationInitializationContext_$_DeviceEmulation
- __OBJC_$_CATEGORY_UISMutableDeviceContext_$_DeviceEmulation
- __OBJC_$_CATEGORY_UISMutableDisplayContext_$_DeviceEmulation
- __OBJC_$_CLASS_METHODS_SBDeviceEmulationController
- __OBJC_$_CLASS_METHODS_SBFDIDeviceControlCoordinator
- __OBJC_$_CLASS_METHODS_SBScreenEdgeCompensationDisplayTransformer
- __OBJC_$_CLASS_PROP_LIST_SBDeviceEmulationController
- __OBJC_$_INSTANCE_METHODS_SBFDIDeviceControlBacklightInformer
- __OBJC_$_INSTANCE_METHODS_SBFDIDeviceControlCoordinator
- __OBJC_$_INSTANCE_VARIABLES_SBFDIDeviceControlBacklightInformer
- __OBJC_$_INSTANCE_VARIABLES_SBFDIDeviceControlCoordinator
- __OBJC_$_PROP_LIST_SBFDIDeviceControlBacklightInformer
- __OBJC_$_PROP_LIST_SBFDIDeviceControlCoordinator
- __OBJC_$_PROTOCOL_INSTANCE_METHODS_SBBacklightInforming
- __OBJC_$_PROTOCOL_INSTANCE_METHODS_SBSFDIDeviceControlCoordinating
- __OBJC_$_PROTOCOL_METHOD_TYPES_SBBacklightInforming
- __OBJC_$_PROTOCOL_METHOD_TYPES_SBSFDIDeviceControlCoordinating
- __OBJC_$_PROTOCOL_REFS_SBBacklightInforming
- __OBJC_$_PROTOCOL_REFS_SBSFDIDeviceControlCoordinating
- __OBJC_CLASS_PROTOCOLS_$_SBFDIDeviceControlBacklightInformer
- __OBJC_CLASS_PROTOCOLS_$_SBFDIDeviceControlCoordinator
- __OBJC_CLASS_RO_$_SBDeviceEmulationController
- __OBJC_CLASS_RO_$_SBFDIDeviceControlBacklightInformer
- __OBJC_CLASS_RO_$_SBFDIDeviceControlCoordinator
- __OBJC_CLASS_RO_$_SBScreenEdgeCompensationDisplayTransformer
- __OBJC_LABEL_PROTOCOL_$_SBBacklightInforming
- __OBJC_LABEL_PROTOCOL_$_SBSFDIDeviceControlCoordinating
- __OBJC_METACLASS_RO_$_SBDeviceEmulationController
- __OBJC_METACLASS_RO_$_SBFDIDeviceControlBacklightInformer
- __OBJC_METACLASS_RO_$_SBFDIDeviceControlCoordinator
- __OBJC_METACLASS_RO_$_SBScreenEdgeCompensationDisplayTransformer
- __OBJC_PROTOCOL_$_SBBacklightInforming
- __OBJC_PROTOCOL_$_SBSFDIDeviceControlCoordinating
- ___57-[SBSAPlatformMetricsContext copyBySettingSensorVariant:]_block_invoke
- ___60-[SBNotificationCarPlayDestination postNotificationRequest:]_block_invoke
- ___60-[SBNotificationCarPlayDestination postNotificationRequest:]_block_invoke_2
- ___block_descriptor_48_e8_32s40bs_e34_v24?0"NSDictionary"8"NSError"16ls40l8s32l8
- ___block_descriptor_48_e8_32s40w_e40_v16?0"<RBSProcessMonitorConfiguring>"8ls32l8w40l8
- ___block_descriptor_50_e8_32s40w_e8_v12?0B8lw40l8s32l8
- ___block_descriptor_51_e8_32s40w_e5_v8?0lw40l8s32l8
CStrings:
+ "#CarPlayDebug _isSiriExcludedForNotificationRequest: bundleId=%@ excludedAppCount=%lu result=%{BOOL}d"
+ "#CarPlayDebug _isSiriExcludedForNotificationRequest: result=NO (AppExclusions feature flag disabled)"
+ "#CarPlayDebug _isSiriExcludedForNotificationRequest: result=NO (TCC returned no kTCCServiceSiriAccess records — nothing excluded, or the read was refused)"
+ "#CarPlayDebug _shouldPreprocessNotificationRequest: request=%{public}@ wantsSiriLaunch=%{BOOL}d result=NO"
+ "#CarPlayDebug _shouldPreprocessNotificationRequest: request=%{public}@ wantsSiriLaunch=YES siriExcluded=%{BOOL}d result=%{BOOL}d"
+ "#PreprocessNotification CarPlay cancelling in-flight preprocess for withdrawn notification request %{public}@"
+ "#PreprocessNotification CarPlay withdraw for already-preprocessed notification request %{public}@; leaving teardown to banner dismissal"
+ "#Preprocessing #CarPlay announce temporarily disabled in CarPlay=%{BOOL}d shouldAnnounce=%{BOOL}d"
+ "%@.%lu"
+ "%{public}@: keyboard focus request for assistant scene finished, success=%{BOOL}u"
+ "-[SBAppResizingCoordinator acquireSessionForDisplay:monitoredWindowScene:resizingCornerRadius:]"
+ "-[SBAppResizingSession monitoredWindowScene]"
+ "-[SBAppResizingSession prepareForDisplay]"
+ "ACTIVATE_IPAD_SET_UP_CELLULAR_LABEL"
+ "ACTIVATE_IPHONE_SET_UP_CELLULAR_LABEL"
+ "Activate iPad to Set Up Cellular"
+ "Activate iPhone to Set Up Cellular"
+ "Adopting new application info in place for '%@' as its bundle is unchanged."
+ "AppExclusions"
+ "Application info adopted in place"
+ "CarPlay clearing notification request %{public}@ pending announce deactivation with deactivation = %{BOOL}d"
+ "Error resuming app replacement: %@"
+ "Failed to mark %{public}@ as purgeable: %d (%{public}s) (flags 0x%llx)"
+ "Ignoring workspace action %{public}@: not accepted from unentitled clients"
+ "Not asking InstallCoordination to uninstall %{public}@ again; it already fulfilled our request"
+ "com.apple.SiriApp"
+ "developerToolsOptions"
+ "ignoring suggested widgets for stack with identifier: %@ because it does not allow external suggestions"
+ "interSensorRegionInWindowSpace"
+ "menuBarInteractionDidEnd"
+ "minimumScreenEdgeInsets"
+ "restoring keyboard focus to %{public}@ now that the menu bar interaction has ended"
+ "sensorRegionSize"
+ "skipping active data source update because the stack does not allow smart rotation"
+ "synthesizedFolderIdentifier."
- "#CarPlayDebug _shouldPreprocessNotificationRequest: request=%{public}@ wantsSiriLaunch=%{BOOL}d result=%{BOOL}d"
- "%{public}@: screen edge compensation transform built: %{BOOL}u"
- "-[SBAppResizingCoordinator acquireSessionForDisplay:resizingCornerRadius:]"
- "-[SBAppResizingSession prepareForDisplayWithBounds:]"
- "Applying screen edge compensation: D76 main display size matched; rewriting bounds from %{public}@ to %{public}@"
- "CarPlay clearing notification request %{public}@ pending announce deactivation and requesting early deactivation"
- "EdgeSwipeBandExpansionEnabled"
- "FDIDeviceControl"
- "SBDisableD2026ClassicMode"
- "SBFDIDeviceControlCoordinator: acquired lift-to-wake disable across %lu window scenes"
- "SBFDIDeviceControlCoordinator: acquired shield-buttons disable across %lu non-main-root window scenes"
- "SBFDIDeviceControlCoordinator: acquired tap-to-wake disable across %lu window scenes"
- "SBFDIDeviceControlCoordinator: attached FDI device control extension to entitled scene %{public}@"
- "SBFDIDeviceControlCoordinator: invalidate"
- "SBFDIDeviceControlCoordinator: powered off + registered wake veto on non-main-root display for scene %{public}@"
- "SBFDIDeviceControlCoordinator: released lift-to-wake disable across %lu window scenes"
- "SBFDIDeviceControlCoordinator: released shield-buttons disable across %lu window scenes"
- "SBFDIDeviceControlCoordinator: released tap-to-wake disable across %lu window scenes"
- "SBFDIDeviceControlCoordinator: removed wake veto from non-main-root display for scene %{public}@"
- "SBFDIDeviceControlCoordinator: updating FDI device control (liftToWake=%{BOOL}u tapToWake=%{BOOL}u configurationA=%{BOOL}u) across %lu window scenes"
- "Skipping screen edge compensation: isMainD76Display=%{BOOL}u"
- "Unable to build screen edge compensated display configuration: %{public}@ from configuration: %{public}@"
- "Unable to create redacted display configuration: %@ from configuration:%@"
- "com.apple.Energy"
- "sensorVariant"
```
