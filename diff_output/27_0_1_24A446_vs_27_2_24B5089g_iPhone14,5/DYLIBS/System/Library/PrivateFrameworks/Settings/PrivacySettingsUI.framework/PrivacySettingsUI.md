## PrivacySettingsUI

> `/System/Library/PrivateFrameworks/Settings/PrivacySettingsUI.framework/PrivacySettingsUI`

```diff

-2027.0.6.104.0
-  __TEXT.__text: 0x67720
-  __TEXT.__objc_methlist: 0x428c
+2027.1.7.0.0
+  __TEXT.__text: 0x69c44
+  __TEXT.__objc_methlist: 0x442c
   __TEXT.__const: 0x524
-  __TEXT.__gcc_except_tab: 0x12b0
-  __TEXT.__cstring: 0x8334
-  __TEXT.__oslogstring: 0x2c60
+  __TEXT.__gcc_except_tab: 0x130c
+  __TEXT.__cstring: 0x8694
+  __TEXT.__oslogstring: 0x2e70
   __TEXT.__dlopen_cstrs: 0xe98
-  __TEXT.__swift5_typeref: 0x53a
-  __TEXT.__swift5_capture: 0x1ac
+  __TEXT.__swift5_typeref: 0x544
+  __TEXT.__swift5_capture: 0x1bc
   __TEXT.__constg_swiftt: 0x26c
-  __TEXT.__swift5_reflstr: 0xe3
+  __TEXT.__swift5_reflstr: 0xec
   __TEXT.__swift5_fieldmd: 0x110
   __TEXT.__swift5_types: 0x1c
   __TEXT.__swift_as_entry: 0x34

   __TEXT.__swift_as_cont: 0x34
   __TEXT.__swift5_assocty: 0x18
   __TEXT.__swift5_proto: 0x4
-  __TEXT.__unwind_info: 0x1838
+  __TEXT.__unwind_info: 0x18c0
   __TEXT.__eh_frame: 0x648
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x1b28
-  __DATA_CONST.__objc_classlist: 0x240
+  __DATA_CONST.__const: 0x1b48
+  __DATA_CONST.__objc_classlist: 0x250
   __DATA_CONST.__objc_catlist: 0x10
   __DATA_CONST.__objc_protolist: 0x68
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x3380
+  __DATA_CONST.__objc_selrefs: 0x3460
   __DATA_CONST.__objc_protorefs: 0x18
-  __DATA_CONST.__objc_superrefs: 0x1d8
+  __DATA_CONST.__objc_superrefs: 0x1e8
   __DATA_CONST.__objc_arraydata: 0x188
-  __DATA_CONST.__got: 0xa80
-  __AUTH_CONST.__const: 0xa70
-  __AUTH_CONST.__cfstring: 0x6f80
-  __AUTH_CONST.__objc_const: 0x65e8
+  __DATA_CONST.__got: 0xa98
+  __AUTH_CONST.__const: 0xad8
+  __AUTH_CONST.__cfstring: 0x7360
+  __AUTH_CONST.__objc_const: 0x6850
   __AUTH_CONST.__objc_intobj: 0x360
   __AUTH_CONST.__objc_arrayobj: 0x120
   __AUTH_CONST.__objc_dictobj: 0x50
-  __AUTH_CONST.__auth_got: 0xac8
-  __AUTH_CONST.__auth_ptr: 0x148
-  __AUTH.__objc_data: 0x1780
+  __AUTH_CONST.__auth_got: 0xaf8
+  __AUTH_CONST.__auth_ptr: 0x158
+  __AUTH.__objc_data: 0x1820
   __AUTH.__data: 0x250
-  __DATA.__objc_ivar: 0x470
+  __DATA.__objc_ivar: 0x490
   __DATA.__data: 0x5f8
   __DATA.__bss: 0x600
   __DATA.__common: 0x30

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 2131
-  Symbols:   3702
-  CStrings:  1408
+  Functions: 2178
+  Symbols:   3778
+  CStrings:  1452
 
Symbols:
+ +[PUIMotionSensorsAppPickerController installedApplicationsExcludingBundleIDs:]
+ -[PUIMotionFitnessController dealloc]
+ -[PUIMotionFitnessController reloadRestrictedAccessSpecifiers]
+ -[PUIMotionFitnessController restrictedAccessGroupSpecifiers]
+ -[PUIMotionFitnessController startObservingMotionSensorsEligibilityChanges]
+ -[PUIMotionFitnessController stopObservingMotionSensorsEligibilityChanges]
+ -[PUIMotionFitnessController viewWillAppear:]
+ -[PUIMotionFitnessController viewWillDisappear:]
+ -[PUIMotionSensorsAppPickerController .cxx_destruct]
+ -[PUIMotionSensorsAppPickerController allApps]
+ -[PUIMotionSensorsAppPickerController cancelButtonTapped]
+ -[PUIMotionSensorsAppPickerController completionHandler]
+ -[PUIMotionSensorsAppPickerController doneButtonTapped]
+ -[PUIMotionSensorsAppPickerController initWithExcludedBundleIDs:]
+ -[PUIMotionSensorsAppPickerController selectedBundleIDs]
+ -[PUIMotionSensorsAppPickerController setAllApps:]
+ -[PUIMotionSensorsAppPickerController setCompletionHandler:]
+ -[PUIMotionSensorsAppPickerController setSelectedBundleIDs:]
+ -[PUIMotionSensorsAppPickerController tableView:cellForRowAtIndexPath:]
+ -[PUIMotionSensorsAppPickerController tableView:didSelectRowAtIndexPath:]
+ -[PUIMotionSensorsAppPickerController tableView:numberOfRowsInSection:]
+ -[PUIMotionSensorsRestrictController dealloc]
+ -[PUIMotionSensorsRestrictController presentRestrictedAppPicker]
+ -[PUIMotionSensorsRestrictController reloadRestrictedApps]
+ -[PUIMotionSensorsRestrictController restrictedAppBundleIDs]
+ -[PUIMotionSensorsRestrictController specifiers]
+ -[PUIMotionSensorsRestrictController startObservingAccessChanges]
+ -[PUIMotionSensorsRestrictController stopObservingAccessChanges]
+ -[PUIMotionSensorsRestrictController tableView:canEditRowAtIndexPath:]
+ -[PUIMotionSensorsRestrictController tableView:commitEditingStyle:forRowAtIndexPath:]
+ -[PUIMotionSensorsRestrictController viewDidLoad]
+ -[PUIMotionSensorsRestrictController viewWillAppear:]
+ -[PUIMotionSensorsRestrictController viewWillDisappear:]
+ _OBJC_CLASS_$_PUIMotionSensorsAppPickerController
+ _OBJC_CLASS_$_PUIMotionSensorsRestrictController
+ _OBJC_CLASS_$_UITableViewCell
+ _OBJC_CLASS_$_UITableViewController
+ _OBJC_IVAR_$_PUIMotionFitnessController._eligibilityChangedNotifyToken
+ _OBJC_IVAR_$_PUIMotionFitnessController._observingMotionSensorsEligibilityChanges
+ _OBJC_IVAR_$_PUIMotionSensorsAppPickerController._allApps
+ _OBJC_IVAR_$_PUIMotionSensorsAppPickerController._completionHandler
+ _OBJC_IVAR_$_PUIMotionSensorsAppPickerController._selectedBundleIDs
+ _OBJC_IVAR_$_PUIMotionSensorsRestrictController._accessChangedNotifyToken
+ _OBJC_IVAR_$_PUIMotionSensorsRestrictController._ignoringNextAccessChangedNotification
+ _OBJC_IVAR_$_PUIMotionSensorsRestrictController._observingAccessChanges
+ _OBJC_METACLASS_$_PUIMotionSensorsAppPickerController
+ _OBJC_METACLASS_$_PUIMotionSensorsRestrictController
+ _OBJC_METACLASS_$_UITableViewController
+ _PUIIsDataLinkingTerminologyEligible
+ _TCCAccessResetForBundleId
+ __OBJC_$_CLASS_METHODS_PUIMotionSensorsAppPickerController
+ __OBJC_$_INSTANCE_METHODS_PUIMotionSensorsAppPickerController
+ __OBJC_$_INSTANCE_METHODS_PUIMotionSensorsRestrictController
+ __OBJC_$_INSTANCE_VARIABLES_PUIMotionSensorsAppPickerController
+ __OBJC_$_INSTANCE_VARIABLES_PUIMotionSensorsRestrictController
+ __OBJC_$_PROP_LIST_PUIMotionSensorsAppPickerController
+ __OBJC_CLASS_RO_$_PUIMotionSensorsAppPickerController
+ __OBJC_CLASS_RO_$_PUIMotionSensorsRestrictController
+ __OBJC_METACLASS_RO_$_PUIMotionSensorsAppPickerController
+ __OBJC_METACLASS_RO_$_PUIMotionSensorsRestrictController
+ ___48-[PUIMotionSensorsRestrictController specifiers]_block_invoke
+ ___55-[PUIMotionSensorsAppPickerController doneButtonTapped]_block_invoke
+ ___64-[PUIMotionSensorsRestrictController presentRestrictedAppPicker]_block_invoke
+ ___65-[PUIMotionSensorsAppPickerController initWithExcludedBundleIDs:]_block_invoke
+ ___65-[PUIMotionSensorsAppPickerController initWithExcludedBundleIDs:]_block_invoke_2
+ ___65-[PUIMotionSensorsRestrictController startObservingAccessChanges]_block_invoke
+ ___75-[PUIMotionFitnessController startObservingMotionSensorsEligibilityChanges]_block_invoke
+ ___79+[PUIMotionSensorsAppPickerController installedApplicationsExcludingBundleIDs:]_block_invoke
+ ___79+[PUIMotionSensorsAppPickerController installedApplicationsExcludingBundleIDs:]_block_invoke_2
+ ___block_descriptor_32_e51_q24?0"LSApplicationProxy"8"LSApplicationProxy"16l
+ ___swift__destructor
+ _kTCCServiceMotionSensors
+ _swift_getFunctionTypeMetadata0
+ _swift_release_x24
+ _swift_unknownObjectWeakDestroy
+ _swift_unknownObjectWeakInit
+ _swift_unknownObjectWeakLoadStrong
+ _symbolic _____Sg 12FindMyLocate12ClientTargetV
+ _symbolic ______pSgXw 17PrivacySettingsUI36PUILockdownModeLearnMoreActionTargetP
+ _symbolic y_____c 10Foundation3URLV
- -[PUIMotionFitnessController _appSpecifiers]
- _swift_release_x23
- _symbolic ______p 17PrivacySettingsUI36PUILockdownModeLearnMoreActionTargetP
- _symbolic ______pSg 17PrivacySettingsUI36PUILockdownModeLearnMoreActionTargetP
CStrings:
+ "### Failed to determine Motion Sensors restrict eligibility: %d"
+ "### Failed to register for Motion Sensors eligibility change notifications: %u"
+ "%s: cannot determine OGANESSON eligibility, error: %d"
+ "ALLOW_ASK_ALT"
+ "APP_TRACKING_HEADER_TEXT_ALT"
+ "AUTOMATED_FEEDBACK"
+ "AUTOMATED_FEEDBACK_FOOTER"
+ "AUTOMATED_FEEDBACK_GROUP"
+ "AUTOMATED_FEEDBACK_LINK"
+ "AppAnalytics"
+ "CloudTelemetry"
+ "DISABLE_ALLOW_ASK_LEAVE_APPS_ON_ALT"
+ "DISABLE_ALLOW_ASK_MESSAGE_ALT"
+ "DISABLE_ALLOW_ASK_TURN_OFF_APPS_ALT"
+ "DLT: Cannot determine eligibility due to error: %d"
+ "DLT: Unable to determine eligibility "
+ "DLT: User is eligible"
+ "DLT: User is not eligible"
+ "DiagnosticPipeline"
+ "DifferentialPrivacy"
+ "DistributedEvaluation"
+ "MOTION_SENSORS_DATA_TITLE"
+ "MOTION_SENSORS_PICKER_TITLE"
+ "MOTION_SENSORS_RESTRICT_EXPLANATION_GROUP"
+ "MOTION_SENSORS_RESTRICT_FOOTER"
+ "MOTION_SENSORS_RESTRICT_GROUP"
+ "MotionSensors failed to register for access-changed notifications: %u"
+ "MotionSensors failed to write restriction for bundle ID: %@"
+ "MotionSensors restrict list skipping unresolved bundle ID: %@"
+ "PUIMotionSensorsAppBundleIDKey"
+ "PUIMotionSensorsAppPickerCell"
+ "PerformanceTraces"
+ "PhotoLibrary"
+ "SpotlightMetadata"
+ "SymptomDiagnosticReporter"
+ "TRACKERS_ALT"
+ "TRACKING_HEADER_ALT"
+ "automatedFeedbackLinkTapped"
+ "com.apple.os-eligibility-domain.change.cicindela"
+ "com.apple.tcc.access.changed"
+ "isGreenTeaSKU_block_invoke"
+ "q24@?0@\"LSApplicationProxy\"8@\"LSApplicationProxy\"16"
+ "reportType"
+ "sysdiagnose"
+ "telephony"
- "green-tea"
```
