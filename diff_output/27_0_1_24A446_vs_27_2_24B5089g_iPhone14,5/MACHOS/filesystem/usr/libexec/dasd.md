## dasd

> `/usr/libexec/dasd`

### Sections with Same Size but Changed Content

- `__TEXT.__swift5_typeref`
- `__TEXT.__swift5_fieldmd`
- `__TEXT.__constg_swiftt`
- `__TEXT.__swift5_builtin`
- `__TEXT.__swift5_proto`
- `__TEXT.__swift5_types`
- `__TEXT.__swift_as_entry`
- `__TEXT.__swift_as_ret`
- `__TEXT.__swift_as_cont`
- `__TEXT.__swift5_mpenum`
- `__TEXT.__swift5_protos`
- `__TEXT.__eh_frame`
- `__DATA_CONST.__objc_catlist`
- `__DATA_CONST.__objc_protorefs`
- `__DATA_CONST.__objc_intobj`
- `__DATA_CONST.__auth_ptr`

```diff

-2467.2.2.0.0
-  __TEXT.__text: 0x178204
-  __TEXT.__auth_stubs: 0x2230
-  __TEXT.__objc_stubs: 0x1b040
-  __TEXT.__objc_methlist: 0x131f4
-  __TEXT.__const: 0x1568
-  __TEXT.__objc_methname: 0x2e5bd
-  __TEXT.__cstring: 0x10586
-  __TEXT.__oslogstring: 0x16c79
-  __TEXT.__objc_classname: 0x1ca8
-  __TEXT.__objc_methtype: 0x4201
-  __TEXT.__gcc_except_tab: 0x4f78
+2467.40.41.0.0
+  __TEXT.__text: 0x17c52c
+  __TEXT.__auth_stubs: 0x2250
+  __TEXT.__objc_stubs: 0x1b520
+  __TEXT.__objc_methlist: 0x1343c
+  __TEXT.__const: 0x1588
+  __TEXT.__objc_methname: 0x2ed55
+  __TEXT.__cstring: 0x10806
+  __TEXT.__oslogstring: 0x172e9
+  __TEXT.__objc_classname: 0x1cd8
+  __TEXT.__objc_methtype: 0x42e1
+  __TEXT.__gcc_except_tab: 0x5044
   __TEXT.__dlopen_cstrs: 0x552
   __TEXT.__swift5_typeref: 0x966
   __TEXT.__swift5_capture: 0x220

   __TEXT.__swift_as_cont: 0x80
   __TEXT.__swift5_mpenum: 0x8
   __TEXT.__swift5_protos: 0x8
-  __TEXT.__info_plist: 0x5c5
-  __TEXT.__unwind_info: 0x5068
+  __TEXT.__info_plist: 0x5c9
+  __TEXT.__unwind_info: 0x51a8
   __TEXT.__eh_frame: 0xbd0
-  __DATA_CONST.__const: 0x4f00
-  __DATA_CONST.__cfstring: 0x11940
-  __DATA_CONST.__objc_classlist: 0x708
+  __DATA_CONST.__const: 0x5038
+  __DATA_CONST.__cfstring: 0x11c20
+  __DATA_CONST.__objc_classlist: 0x710
   __DATA_CONST.__objc_catlist: 0x38
-  __DATA_CONST.__objc_protolist: 0x218
+  __DATA_CONST.__objc_protolist: 0x220
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__objc_protorefs: 0x70
-  __DATA_CONST.__objc_superrefs: 0x5c0
+  __DATA_CONST.__objc_superrefs: 0x5c8
   __DATA_CONST.__objc_intobj: 0x17b8
-  __DATA_CONST.__objc_arraydata: 0x470
-  __DATA_CONST.__objc_arrayobj: 0x1b0
-  __DATA_CONST.__objc_dictobj: 0x208
+  __DATA_CONST.__objc_arraydata: 0x4f8
+  __DATA_CONST.__objc_arrayobj: 0x1e0
+  __DATA_CONST.__objc_dictobj: 0x230
   __DATA_CONST.__objc_doubleobj: 0x50
-  __DATA_CONST.__auth_got: 0x1128
-  __DATA_CONST.__got: 0xe38
+  __DATA_CONST.__auth_got: 0x1138
+  __DATA_CONST.__got: 0xe58
   __DATA_CONST.__auth_ptr: 0x190
-  __DATA.__objc_const: 0x33ed8
-  __DATA.__objc_selrefs: 0x9cf0
-  __DATA.__objc_ivar: 0x1630
-  __DATA.__objc_data: 0x4908
-  __DATA.__data: 0x2190
-  __DATA.__bss: 0x1250
+  __DATA.__objc_const: 0x34420
+  __DATA.__objc_selrefs: 0x9e88
+  __DATA.__objc_ivar: 0x1650
+  __DATA.__objc_data: 0x4958
+  __DATA.__data: 0x2200
+  __DATA.__bss: 0x1280
   __DATA.__common: 0x18
   - /System/Library/Frameworks/CoreData.framework/CoreData
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 8351
-  Symbols:   1014
-  CStrings:  12452
+  Functions: 8441
+  Symbols:   1020
+  CStrings:  12573
 
Symbols:
+ _BMCarPlayConnectedIdentifier
+ _BMDeviceActivityPredictionIdentifier
+ _BMDeviceWirelessNFCTagIdentifier
+ _BMMediaNowPlayingIdentifier
+ _MGIsDeviceOneOfType
+ _dispatch_assert_queue_not$V2
CStrings:
+ "%@ is %d"
+ "%{public}@: Process %d requested host-managed UI without the %{public}@ vouch"
+ "/carplay/connected"
+ "/device/activityPrediction"
+ "/device/nfcTagRead"
+ "/media/nowPlayingPlaybackState"
+ "@36@0:8@16i24d28"
+ "@52@0:8@16@24B32@36^@44"
+ "Adding %@ as stream for dasdDataCollection"
+ "App is not permitted to suppress system-vended progress UI."
+ "AppLifecycleRecorder"
+ "B36@0:8@16B24@28"
+ "B48@0:8Q16@24@32^@40"
+ "BAR re-enabled for %@"
+ "BARSchedulingDisabled"
+ "Backfilled %lu app lifecycle checkpoints"
+ "Backfilling app lifecycle checkpoints for %{public}@ - %{public}@"
+ "Convert stream: %@ : Failed to save %lu events: %@"
+ "Convert stream: %@ : Failed to save %lu final events: %@"
+ "Convert stream: %@ : Timed out waiting for conversion to complete"
+ "Donated checkpoint %lu for %{public}@ at %{public}@"
+ "ERROR Submitting Activity: %@ due to configuration limits. Please contact us to prevent this activity from getting rejected. Configuration: %@"
+ "Failed to read App.InFocus: %{public}@"
+ "Failed to record checkpoint %lu for %{public}@: %{public}@"
+ "HostManagedProgressUI"
+ "Loaded trial parameter MLFreezerAllowListSpotlightEnabled: %d"
+ "MLFreezerAllowListSpotlightEnabled"
+ "Missing Tag"
+ "No bundleIdentifier was associated with the process handle, ignoring suspension update"
+ "Nothing to backfill; resume point is not before the window end"
+ "Override status: %@"
+ "Remote Notification: %@ - BAR Scheduling Disabled by Trial"
+ "Siri AI"
+ "T@\"NSMutableSet\",&,N,V_suspendedBundleIDs"
+ "T@\"RBSProcessMonitor\",&,N,V_suspensionMonitor"
+ "TB,N,V_barSchedulingDisabledByTrial"
+ "TB,N,V_siriAIAllowListEnabled"
+ "TB,N,V_spotlightAllowListEnabled"
+ "TB,N,V_suspensionSendPending"
+ "Trial parameter MLFreezerAllowListSpotlightEnabled not found, using default: %d"
+ "Unable to resolve the client process handle; treating host-managed UI as unvouched"
+ "[%{public}@] Host manages its own UI; suppressing system-vended progress for %{public}@"
+ "[%{public}@] Not posting %@; host manages its own UI"
+ "_DASAppLifecycleRecorder"
+ "_DASProcessLifecycleDelegate"
+ "_barSchedulingDisabledByTrial"
+ "_liveDonationStartDate"
+ "_siriAIAllowListEnabled"
+ "_spotlightAllowListEnabled"
+ "_suspendedBundleIDs"
+ "_suspensionMonitor"
+ "_suspensionSendPending"
+ "absoluteTimestamp"
+ "activityPredictionEventForStream:eventBody:atTimestamp:"
+ "appLifecycle"
+ "backfillCheckpointsUpToDate:"
+ "backfillHistoryPrecedingLiveWindow"
+ "barSchedulingDisabledByTrial"
+ "com.apple.DocumentsApp"
+ "com.apple.MobileSMS"
+ "com.apple.Notes"
+ "com.apple.dasd.appLifecycleBackfill"
+ "com.apple.dasd.appLifecycleRecorder"
+ "com.apple.iCal"
+ "com.apple.mail"
+ "com.apple.mobilecal"
+ "com.apple.mobilenotes"
+ "com.apple.reminders"
+ "confidenceLevel"
+ "currentStateMatchingDescriptor:"
+ "defaultPathIsInexpensive"
+ "defaultPathIsUnconstrained"
+ "directBiomeWriterStreamNames"
+ "donateTransitionForApp:foregrounded:atDate:"
+ "handleSuspensionStateTransitionForProcess:withUpdate:"
+ "hasHostManagedProgressUIVouch"
+ "hostManagedProgressUI"
+ "inLongInactivityWindow"
+ "initInternal"
+ "initWithDKStreamIdentifier:"
+ "intervalEventForStream:openIntervalStartDate:starting:atTimestamp:newOpenIntervalStartDate:"
+ "isConstrained"
+ "isExpensive"
+ "isMindPalaceAmbientActivity"
+ "isMindPalaceUserInitiatedActivity"
+ "isThermallyConstrainedHardware"
+ "mindPalaceAmbient == 1"
+ "nfcTagEventForStream:atTimestamp:"
+ "notifyDelegatesOfTransitionForApp:foregrounded:atDate:"
+ "nowPlayingEventForStream:playbackState:atTimestamp:"
+ "outputReason"
+ "playbackState"
+ "processLifecycleMonitor:observedTransitionForApp:foregrounded:atDate:"
+ "registerSuspensionMonitor"
+ "reportCustomCheckpoint:forTask:atDate:error:"
+ "resumeDateBefore:"
+ "scheduleSuspensionSend"
+ "sendCachedFreezerRecommendationsOnSuspension"
+ "setBarSchedulingDisabledByTrial:"
+ "setSiriAIAllowListEnabled:"
+ "setSpotlightAllowListEnabled:"
+ "setSuspendedBundleIDs:"
+ "setSuspensionMonitor:"
+ "setSuspensionSendPending:"
+ "sharedRecorder"
+ "shouldPresentUIForActivity:"
+ "siriAIAllowListEnabled"
+ "spotlightAllowListEnabled"
+ "startDonating"
+ "suspendedBundleIDs"
+ "suspensionMonitor"
+ "suspensionSendPending"
+ "tags"
+ "tagsVouchForHostManagedProgressUI:"
+ "v16@?0@\"_DKEvent\"8"
+ "v24@?0@?<v@?@\"_DKEvent\">8@?<v@?>16"
+ "v32@0:8@\"_DASProcessLifecycleMonitor\"16@\"NSSet\"24"
+ "v44@0:8@\"_DASProcessLifecycleMonitor\"16@\"NSString\"24B32@\"NSDate\"36"
+ "v44@0:8@16@24B32@36"
+ "writeActivityPredictionStream:toFileHandle:withEventPredicate:"
+ "writeCarPlayConnectedStream:toFileHandle:withEventPredicate:"
+ "writeDirectStreamName: %@ : Processed events are not valid JSON objects, skipping with error %@"
+ "writeDirectStreamName: %@ : Timed out waiting for write to complete, numberOfWrittenEvents may be an undercount"
+ "writeDirectStreamName: %@ : written %lu events, total written so far: %lu"
+ "writeDirectStreamName:toFileHandle:withEventPredicate:withEventProvider:"
+ "writeExperiment: %@ : stream %@ is in directBiomeWriterStreamNames but has no direct writer wired up"
+ "writeKeybagLockedStream:toFileHandle:withEventPredicate:"
+ "writeNFCTagStream:toFileHandle:withEventPredicate:"
+ "writeNowPlayingStream:toFileHandle:withEventPredicate:"
+ "writeStream: %@ : Timed out waiting for read to complete, numberOfWrittenEvents may be an undercount"
- "Campo"
- "ERROR Submitting Activity: %@ due to configuration limits. Please contact das-core@group.apple.com to prevent this activity from getting rejected. Configuration: %@"
- "TB,N,V_campoAllowListEnabled"
- "_campoAllowListEnabled"
- "campoAllowListEnabled"
- "convertKeybagLockedStream:toKnowledgeStoreStream:"
- "inexpensivePathAvailable"
- "initWithDKStreamIdentifier:contentProtection:"
- "setCampoAllowListEnabled:"
```
