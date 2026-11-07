## CRShipModeUI

> `/System/Library/PrivateFrameworks/CRShipModeUI.framework/CRShipModeUI`

```diff

-1307.2.4.0.0
-  __TEXT.__text: 0x2bf50
+1307.40.51.0.0
+  __TEXT.__text: 0x2ead4
   __TEXT.__objc_methlist: 0x624
-  __TEXT.__const: 0xcc0
-  __TEXT.__constg_swiftt: 0xd30
-  __TEXT.__swift5_typeref: 0x5e2
-  __TEXT.__swift5_reflstr: 0x475
-  __TEXT.__swift5_fieldmd: 0x538
-  __TEXT.__cstring: 0x32e0
-  __TEXT.__swift5_capture: 0x650
+  __TEXT.__const: 0xd50
+  __TEXT.__constg_swiftt: 0xd5c
+  __TEXT.__swift5_typeref: 0x648
+  __TEXT.__swift5_reflstr: 0x4a5
+  __TEXT.__swift5_fieldmd: 0x56c
+  __TEXT.__cstring: 0x3b80
+  __TEXT.__swift5_capture: 0x6b4
   __TEXT.__swift5_builtin: 0x3c
   __TEXT.__swift5_assocty: 0x48
-  __TEXT.__swift5_proto: 0x34
-  __TEXT.__swift5_types: 0x94
-  __TEXT.__oslogstring: 0x1019
-  __TEXT.__swift_as_entry: 0x40
-  __TEXT.__swift_as_ret: 0x4c
-  __TEXT.__swift_as_cont: 0xc4
+  __TEXT.__swift5_proto: 0x3c
+  __TEXT.__swift5_types: 0x98
+  __TEXT.__oslogstring: 0x1159
+  __TEXT.__swift_as_entry: 0x44
+  __TEXT.__swift_as_ret: 0x50
+  __TEXT.__swift_as_cont: 0xbc
   __TEXT.__swift5_protos: 0x4
-  __TEXT.__unwind_info: 0x940
-  __TEXT.__eh_frame: 0xe60
+  __TEXT.__unwind_info: 0x980
+  __TEXT.__eh_frame: 0xea0
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__objc_classlist: 0xf0
   __DATA_CONST.__objc_protolist: 0x40
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x670
+  __DATA_CONST.__objc_selrefs: 0x680
   __DATA_CONST.__objc_protorefs: 0x20
   __DATA_CONST.__got: 0x0
-  __AUTH_CONST.__const: 0x1240
+  __AUTH_CONST.__const: 0x1410
   __AUTH_CONST.__objc_const: 0x15e8
-  __AUTH_CONST.__auth_got: 0x838
-  __AUTH_CONST.__auth_ptr: 0x1e8
-  __AUTH.__objc_data: 0xbb0
+  __AUTH_CONST.__auth_got: 0x858
+  __AUTH_CONST.__auth_ptr: 0x1f0
+  __AUTH.__objc_data: 0xbc0
   __AUTH.__data: 0x10c0
-  __DATA.__data: 0xc90
-  __DATA.__bss: 0x600
+  __DATA.__data: 0xd70
+  __DATA.__bss: 0x700
   __DATA.__common: 0x40
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/Foundation.framework/Foundation

   - /System/Library/Frameworks/Network.framework/Network
   - /System/Library/Frameworks/UIKit.framework/UIKit
   - /System/Library/PrivateFrameworks/AppleAccountUI.framework/AppleAccountUI
+  - /System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics
   - /System/Library/PrivateFrameworks/CoreFollowUp.framework/CoreFollowUp
   - /System/Library/PrivateFrameworks/CoreRepairCore.framework/CoreRepairCore
   - /System/Library/PrivateFrameworks/DisembarkUI.framework/DisembarkUI

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 818
-  Symbols:   235
-  CStrings:  260
+  Functions: 859
+  Symbols:   237
+  CStrings:  307
 
Symbols:
+ _AnalyticsSendEventLazy
+ _swift_initStackObject
CStrings:
+ "%s: presenting prepare-for-shipping confirmation (named recipient: %{bool,public}d)"
+ "Apple will make the ship status of your iPhone available to any recipient with the device serial number."
+ "BatteryTrustFailedAlreadyInShipMode"
+ "BatteryTrustFailedBlockedAtEntry"
+ "Body of the confirmation alert shown when the user taps Cancel on the discharge progress screen"
+ "Body of the confirmation alert shown when the user taps Continue on the partner confirmation screen and no recipient was reported by the server."
+ "BranchChosenOtherShipment"
+ "BranchChosenTradeInRepair"
+ "Button in the confirmation alert that dismisses it and leaves the battery discharging"
+ "Button in the confirmation alert that drops the in-progress shipping preparation"
+ "CRShipMode.cancelPreparationAction"
+ "CRShipMode.cancelPreparationConfirmationMessage"
+ "CRShipMode.cancelPreparationConfirmationTitle"
+ "CRShipMode.continuePreparing"
+ "CRShipMode.prepareForShippingConfirmationMessageNoRecipient"
+ "CRShipMode.prepareForShippingConfirmationTitleNoRecipient"
+ "Cancel Preparation"
+ "Cancel shipping preparation?"
+ "Continue Preparing"
+ "Continue without recipient?"
+ "CoreAnalyticsEvent: %{public}s"
+ "EntryResolvedFresh"
+ "EntryResolvedInProgress"
+ "EntryResolvedIneligible"
+ "EntryResolvedReadyToUndo"
+ "EraseChoiceErase"
+ "FlowEndedAborted"
+ "FlowEndedCancelled"
+ "FlowEndedCompleted"
+ "FlowEndedDiscarded"
+ "IneligibleForShipmentShipChargeLimitUnsupported"
+ "PartnerConfirmed"
+ "ScreenSeenCompletion"
+ "ScreenSeenEraseDeviceConfirmation"
+ "ScreenSeenExplanation"
+ "ScreenSeenPartnerConfirmation"
+ "ScreenSeenProgress"
+ "Ship to Unknown Recipient"
+ "Title of the confirmation alert shown when the user taps Cancel on the discharge progress screen"
+ "Title of the confirmation alert shown when the user taps Continue on the partner confirmation screen and no recipient was reported by the server."
+ "Your iPhone will be locked in ship mode for %@."
+ "Your iPhone will be locked in ship mode."
+ "Your iPhone will not be prepared to ship."
+ "cancelPreparationAction"
+ "cancelPreparationAlert"
+ "com.apple.corerepair.UI"
+ "continuePreparingAction"
+ "presentCancelPreparationConfirmation: cancel confirmed — discarding the shipping preparation"
+ "presentCancelPreparationConfirmation: continue preparing — leaving the discharge running"
+ "presentPrepareForShippingConfirmation()"
+ "shipModeHeaderIcon"
- "Continue without a recipient?"
- "Your iPhone will be locked in Ship Mode for %@."
- "Your iPhone will be locked in Ship Mode."
- "checkmark.circle.badge.airplane"
```
