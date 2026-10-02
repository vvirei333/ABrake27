## AACCore

> `/System/Library/PrivateFrameworks/AACCore.framework/AACCore`

```diff

-56.2.1.0.0
-  __TEXT.__text: 0x12548
-  __TEXT.__objc_methlist: 0x1afc
+56.40.4.0.0
+  __TEXT.__text: 0x126fc
+  __TEXT.__objc_methlist: 0x1b2c
   __TEXT.__const: 0xd8
-  __TEXT.__cstring: 0x1bc7
+  __TEXT.__cstring: 0x1c6c
   __TEXT.__oslogstring: 0x5c3
   __TEXT.__gcc_except_tab: 0x120
-  __TEXT.__unwind_info: 0x598
+  __TEXT.__unwind_info: 0x5a0
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__objc_catlist: 0x30
   __DATA_CONST.__objc_protolist: 0xd8
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0xd08
+  __DATA_CONST.__objc_selrefs: 0xd38
   __DATA_CONST.__objc_protorefs: 0x30
   __DATA_CONST.__objc_superrefs: 0x120
   __DATA_CONST.__got: 0x1d8
   __AUTH_CONST.__const: 0x60
-  __AUTH_CONST.__cfstring: 0x1720
-  __AUTH_CONST.__objc_const: 0x4888
+  __AUTH_CONST.__cfstring: 0x1780
+  __AUTH_CONST.__objc_const: 0x48f0
   __AUTH_CONST.__objc_intobj: 0x18
   __AUTH_CONST.__auth_got: 0x0
-  __DATA.__objc_ivar: 0x2a0
+  __DATA.__objc_ivar: 0x2a4
   __DATA.__data: 0xa58
   __DATA.__bss: 0x20
   __DATA_DIRTY.__objc_data: 0x1180

   - /usr/lib/libMobileGestalt.dylib
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 623
-  Symbols:   1504
-  CStrings:  230
+  Functions: 627
+  Symbols:   1510
+  CStrings:  234
 
Symbols:
+ -[AEAssessmentState allowsForceQuitKeyboardShortcuts]
+ -[AEAssessmentState allowsLockdownMode]
+ -[AEAssessmentState allowsOnlyParticipantsToRun]
+ -[AEAssessmentState allowsPrivateRelay]
+ -[AEAssessmentState allowsVirtualMachine]
+ -[AEAssessmentState requiresReleaseOS]
+ -[AEAssessmentState setAllowsForceQuitKeyboardShortcuts:]
+ -[AEAssessmentState setAllowsLockdownMode:]
+ -[AEAssessmentState setAllowsOnlyParticipantsToRun:]
+ -[AEAssessmentState setAllowsPrivateRelay:]
+ -[AEAssessmentState setAllowsVirtualMachine:]
+ -[AEAssessmentState setRequiresReleaseOS:]
+ -[AEConcreteFeatureFlags isAirPlayRestrictionsEnabled]
+ -[AEOSGestalt isPrereleaseOS]
+ _MGCopyAnswer
+ _OBJC_IVAR_$_AEAssessmentState._allowsForceQuitKeyboardShortcuts
+ _OBJC_IVAR_$_AEAssessmentState._allowsLockdownMode
+ _OBJC_IVAR_$_AEAssessmentState._allowsOnlyParticipantsToRun
+ _OBJC_IVAR_$_AEAssessmentState._allowsPrivateRelay
+ _OBJC_IVAR_$_AEAssessmentState._allowsVirtualMachine
+ _OBJC_IVAR_$_AEAssessmentState._requiresReleaseOS
- -[AEAssessmentState allowLockdownMode]
- -[AEAssessmentState allowOnlyParticipantsToRun]
- -[AEAssessmentState allowPrivateRelay]
- -[AEAssessmentState allowVirtualMachine]
- -[AEAssessmentState allowsForceQuit]
- -[AEAssessmentState setAllowLockdownMode:]
- -[AEAssessmentState setAllowOnlyParticipantsToRun:]
- -[AEAssessmentState setAllowPrivateRelay:]
- -[AEAssessmentState setAllowVirtualMachine:]
- -[AEAssessmentState setAllowsForceQuit:]
- _OBJC_IVAR_$_AEAssessmentState._allowLockdownMode
- _OBJC_IVAR_$_AEAssessmentState._allowOnlyParticipantsToRun
- _OBJC_IVAR_$_AEAssessmentState._allowPrivateRelay
- _OBJC_IVAR_$_AEAssessmentState._allowVirtualMachine
- _OBJC_IVAR_$_AEAssessmentState._allowsForceQuit
CStrings:
+ "/System/Library/CoreServices/SystemVersion.plist"
+ "<%@: %p { isEnabled = %@, mainIndividualConfiguration = %@, configurationsByApplicationDescriptor = %@, allowsAutoCorrection = %@, allowsSmartPunctuation = %@, allowsSpellCheck = %@, allowsPredictiveKeyboard = %@, allowsActivityContinuation = %@, allowsDictation = %@, allowsAccessibilityAlternativeInputMethods = %@, allowsAccessibilityBackgroundSounds = %@, allowsAccessibilityFullKeyboardAccess = %@, allowsAccessibilityHoverText = %@, allowsAccessibilityKeyboard = %@, allowsAccessibilityLiveCaptions = %@, allowsAccessibilityLiveSpeech = %@, allowsAccessibilityReader = %@, allowsAccessibilitySpeech = %@, allowsAccessibilitySpokenContent = %@, allowsAccessibilitySwitchControl = %@, allowsAccessibilityTypingFeedback = %@, allowsAccessibilityVoiceControl = %@, allowsAccessibilityVoiceOver = %@, allowsAccessibilityZoom = %@, allowsPasswordAutoFill = %@, allowsContinuousPathKeyboard = %@, allowsKeyboardShortcuts = %@, allowsKeyboardMathSolving = %@, allowsMathPaperSolving = %@, allowsScreenshots = %@, allowsEmojiKeyboard = %@, allowedAppleMenuItems = %@, allowedDirectoriesAndFiles = %@, allowsAutoFill = %@, allowsStructuralInput = %@, allowsDock = %@, allowsMenuBar = %@, allowedMenuBarItems = %@, allowsUserScriptExecution = %@, allowsOnlyParticipantsToRun = %@, allowsForceQuitKeyboardShortcuts = %@, maxBluetoothDevicesAllowed = %@, allowedBluetoothDeviceNames = %@, allowedBluetoothProfiles = %@, allowsLockdownMode = %@, allowsPrivateRelay = %@, allowsVirtualMachine = %@, requiresManagedDevice = %@, requiresReleaseOS = %@, requiresSIP = %@, requiresSingleUser = %@, requiresUserAccountType = %ld, _allowedCollaborationIDs = %@, _allowsAccessibilityIntelligence = %@, _allowsAirPlay = %@, _allowsContentCapture = %@, _allowsDonatingClipboardHistoryToSpotlight = %@, _allowsNetworkAccess = %@, _allowsSharingServices = %@, _allowsSpotlight = %@, _allowsVisualIntelligence = %@}>"
+ "AirPlayRestrictions"
+ "ReleaseType"
+ "allowsForceQuitKeyboardShortcuts"
+ "allowsLockdownMode"
+ "allowsOnlyParticipantsToRun"
+ "allowsPrivateRelay"
+ "allowsVirtualMachine"
+ "requiresReleaseOS"
- "<%@: %p { isEnabled = %@, mainIndividualConfiguration = %@, configurationsByApplicationDescriptor = %@, allowsAutoCorrection = %@, allowsSmartPunctuation = %@, allowsSpellCheck = %@, allowsPredictiveKeyboard = %@, allowsActivityContinuation = %@, allowsDictation = %@, allowsAccessibilityAlternativeInputMethods = %@, allowsAccessibilityBackgroundSounds = %@, allowsAccessibilityFullKeyboardAccess = %@, allowsAccessibilityHoverText = %@, allowsAccessibilityKeyboard = %@, allowsAccessibilityLiveCaptions = %@, allowsAccessibilityLiveSpeech = %@, allowsAccessibilityReader = %@, allowsAccessibilitySpeech = %@, allowsAccessibilitySpokenContent = %@, allowsAccessibilitySwitchControl = %@, allowsAccessibilityTypingFeedback = %@, allowsAccessibilityVoiceControl = %@, allowsAccessibilityVoiceOver = %@, allowsAccessibilityZoom = %@, allowsPasswordAutoFill = %@, allowsContinuousPathKeyboard = %@, allowsKeyboardShortcuts = %@, allowsKeyboardMathSolving = %@, allowsMathPaperSolving = %@, allowsScreenshots = %@, allowsEmojiKeyboard = %@, allowedAppleMenuItems = %@, allowedDirectoriesAndFiles = %@, allowsAutoFill = %@, allowsStructuralInput = %@, allowsDock = %@, allowsMenuBar = %@, allowedMenuBarItems = %@, allowsUserScriptExecution = %@, allowOnlyParticipantsToRun = %@, allowsForceQuit = %@, maxBluetoothDevicesAllowed = %@, allowedBluetoothDeviceNames = %@, allowedBluetoothProfiles = %@, allowLockdownMode = %@, allowPrivateRelay = %@, allowVirtualMachine = %@, requiresManagedDevice = %@, requiresSIP = %@, requiresSingleUser = %@, requiresUserAccountType = %ld, _allowedCollaborationIDs = %@, _allowsAccessibilityIntelligence = %@, _allowsAirPlay = %@, _allowsContentCapture = %@, _allowsDonatingClipboardHistoryToSpotlight = %@, _allowsNetworkAccess = %@, _allowsSharingServices = %@, _allowsSpotlight = %@, _allowsVisualIntelligence = %@}>"
- "allowLockdownMode"
- "allowOnlyParticipantsToRun"
- "allowPrivateRelay"
- "allowVirtualMachine"
- "allowsForceQuit"
```
