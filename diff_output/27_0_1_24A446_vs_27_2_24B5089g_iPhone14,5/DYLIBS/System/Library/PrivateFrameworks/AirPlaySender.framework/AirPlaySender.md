## AirPlaySender

> `/System/Library/PrivateFrameworks/AirPlaySender.framework/AirPlaySender`

```diff

-980.77.1.2.0
-  __TEXT.__text: 0x244090
+1005.8.1.0.0
+  __TEXT.__text: 0x246784
   __TEXT.__objc_methlist: 0x7ec
-  __TEXT.__cstring: 0x8ec83
-  __TEXT.__const: 0x61f0
-  __TEXT.__gcc_except_tab: 0xa88
-  __TEXT.__dlopen_cstrs: 0x5c1
+  __TEXT.__cstring: 0x8f9e4
+  __TEXT.__const: 0x6190
+  __TEXT.__gcc_except_tab: 0xaa4
+  __TEXT.__dlopen_cstrs: 0x61a
   __TEXT.__oslogstring: 0x1009
-  __TEXT.__unwind_info: 0x58c0
+  __TEXT.__unwind_info: 0x5908
   __TEXT.__eh_frame: 0x48
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x76a8
+  __DATA_CONST.__const: 0x7700
   __DATA_CONST.__objc_classlist: 0x38
   __DATA_CONST.__objc_catlist: 0x10
   __DATA_CONST.__objc_protolist: 0x48
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0xb08
+  __DATA_CONST.__objc_selrefs: 0xb18
   __DATA_CONST.__objc_superrefs: 0x38
   __DATA_CONST.__objc_arraydata: 0x170
-  __DATA_CONST.__got: 0x2388
-  __AUTH_CONST.__const: 0x7780
-  __AUTH_CONST.__cfstring: 0x148e0
+  __DATA_CONST.__got: 0x23b0
+  __AUTH_CONST.__const: 0x77b0
+  __AUTH_CONST.__cfstring: 0x149e0
   __AUTH_CONST.__objc_const: 0xed0
   __AUTH_CONST.__objc_dictobj: 0x1b8
   __AUTH_CONST.__objc_intobj: 0x150

   __AUTH.__objc_data: 0x190
   __AUTH.__data: 0x878
   __DATA.__objc_ivar: 0x88
-  __DATA.__data: 0x18690
-  __DATA.__bss: 0x608
+  __DATA.__data: 0x18620
+  __DATA.__bss: 0x618
   __DATA.__common: 0xa04
   __DATA_DIRTY.__objc_data: 0xa0
-  __DATA_DIRTY.__data: 0xf78
+  __DATA_DIRTY.__data: 0xfe8
   __DATA_DIRTY.__bss: 0x788
   - /System/Library/Frameworks/AudioToolbox.framework/AudioToolbox
   - /System/Library/Frameworks/CoreAudio.framework/CoreAudio

   - /usr/lib/libMobileGestalt.dylib
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 11443
-  Symbols:   8664
-  CStrings:  11583
+  Functions: 11465
+  Symbols:   8677
+  CStrings:  11659
 
Symbols:
+ GCC_except_table128
+ GCC_except_table26
+ GCC_except_table50
+ _APCarPlayCarNeedsVTAlwaysActive
+ _APEndpointCopyAudioOutputLatencyMsForStream
+ _APSCMTimeMakeWithRTPTimestamp
+ _APSIsUpdateInfoForwardingEnabled
+ _APSenderSessionGetFallbackToInfraReasonForUnselectedTransport
+ _APTDiagnosticSendStreamInfo
+ _APTNANDataSessionGetDatapathRSSI
+ _APTransportConnectionQoSFromSocketQoS
+ _APTransportDeviceForwardAirPlayInfoToBrowser
+ _APTransportTrafficCapturePrepareForCollection
+ _FigCFNumberGetCFIndex
+ _FigEndpointSetProperty
+ _FigSignalErrorAt3
+ ___block_descriptor_56_e15_v24?0r^v8r^v16l
+ ___carEndpoint_handleVideoPlayerBackButtonEvent_block_invoke
+ ___endpoint_performRemoteTeardown_block_invoke
+ ___endpoint_performRemoteTeardown_block_invoke_2
+ ___endpoint_performRemoteTeardown_block_invoke_3
+ _bufferedAudioEngine_isHoseClusterBuddy
+ _carManager_reportBonjourEventToCarKit
+ _carManager_reportBonjourSuccessIfNeeded
+ _emp_demoteEndpoint
+ _endpointAggregate_handleAudioStreamResumed
+ _endpointCluster_failDelayMSecsForFailureCount.kFailDelayLadderPercent
+ _endpointCluster_failureCountForSubEndpoint
+ _endpoint_forwardUpdateInfo
+ _endpoint_handleAudioStreamResumed
+ _kAPEndpointCommandForwardToVideoPlayback_Params
+ _kAPEndpointCommandForwardToVideoPlayback_ParamsKey_Action
+ _kAPEndpointCommandForwardToVideoPlayback_ParamsVal_FadeOut
+ _kAPEndpointCoreAnalyticsDictionaryKey_IsWireless
+ _kAPEndpointProperty_AudioOutputLatencyMs
+ _kAPEndpointStreamBufferedAudioEngineCreationOption_ForceFirstRemoteMediaTime
+ _kAPEndpointStreamConnectionKey_QoS
+ _kFigEndpointCarPlayVideoPlaybackButton_BackButton
+ _kFigEndpointCarPlayVideoPlaybackButton_HideVideoButton
+ _kFigEndpointCarPlayVideoPlaybackPlayerEvent_ButtonTapped
+ _kFigEndpointNotification_CarPlayVideoPlaybackPlayerEvent
+ _kFigEndpointProperty_CarPlayScreenFadeDurationInSeconds
+ _sessionfactory_RemoveAirPlaySession
+ _sessionfactory_RemoveSessionClient
- GCC_except_table127
- GCC_except_table48
- _APTDiagnosticMulticastDataToAllHosts
- _APTransportTrafficCaptureFlushForSysdiagnose
- _FigSignalErrorAtGM
- _OUTLINED_FUNCTION_272
- _OUTLINED_FUNCTION_273
- _OUTLINED_FUNCTION_274
- _OUTLINED_FUNCTION_275
- _OUTLINED_FUNCTION_276
- _OUTLINED_FUNCTION_277
- _OUTLINED_FUNCTION_278
- _OUTLINED_FUNCTION_279
- _OUTLINED_FUNCTION_280
- ___block_descriptor_48_e15_v24?0r^v8r^v16l
- ___endpoint_prepareLocalTeardown_block_invoke
- ___endpoint_prepareLocalTeardown_block_invoke_2
- ___endpoint_prepareLocalTeardown_block_invoke_3
- ___epp_EnsureAuthorizedWithCompletionCallback_block_invoke_2
- _apsession_getNANRSSI
- _bufferedAudioEngine_isHoseInStereoPair
- _carManager_isDisconnectCausedBySignalInterference
- _carManager_reportBonjourFailureToCarKit
- _kAPCarPlayCarServicesInterface_FailureInfoConnectionPhase_Discovery
- _kAPCarPlayCarServicesInterface_FailureInfoConnectionPhase_Running
- _kAPCarPlayCarServicesInterface_FailureInfoDiscoveryType_Bonjour
- _kAPCarPlayCarServicesInterface_FailureInfoKey_TransportType
- _kAPCarPlayCarServicesInterface_FailureInfoReason_ConnectionReset
- _kAPCarPlayCarServicesInterface_FailureInfoReason_NoBonjourRecord
- _kAPCarPlayCarServicesInterface_FailureInfoReason_NoConnectCmd
- _kAPCarPlayCarServicesInterface_FailureInfoReason_WiFiLinkUnusable
CStrings:
+ "%@ms"
+ "%s%s%s signalled err=%d (%s) (%s) at %s:%d"
+ "1005.8.1"
+ "5f07515b9cc54c47"
+ "<ProactiveNANPairing> [%{ptr}] Feature disabled from prefs"
+ "APAudioEngineBufferedAdapter.c"
+ "APEndpoint.m"
+ "APEndpointCreateDecoratedName"
+ "APEndpointPlaybackSessionRemoteControl.m"
+ "APEndpointStreamAggregateAudio.c"
+ "APVirtualDisplayTestSink.c"
+ "Action not supported"
+ "Allocation error"
+ "AudioOutputLatencyMs"
+ "BAE [%{ptr}] %s(startup) maxWaitPhaseTwoClusterBuddyMs set to %d (%lld ticks)\n"
+ "BAE [%{ptr}] %s(test) Forcing firstRemoteMediaTime to %1.6f (%lld/%d)\n"
+ "BAE [%{ptr}] %s[0x%04X] (startup) Cluster Member hose [%{ptr}] (%@) Primed -> Ready %s (clusterUUID %@)\n"
+ "BackButton"
+ "Boolean APCarPlayCarNeedsVTAlwaysActive(void)"
+ "Cannot register path"
+ "Eligible for fast reactivate"
+ "Failed allocating audio buffer"
+ "Failed to create deep copy"
+ "Failed to de-serialize"
+ "Failed to serialize"
+ "HideVideoButton"
+ "Ignoring voice trigger since VT is actually disabled"
+ "Item is NULL"
+ "Local HT first loss"
+ "Matched target PPID %@ for %@\n"
+ "No data in response"
+ "No incoming message"
+ "No matched request found"
+ "OSStatus carEndpoint_prepareFadeOutVideoPlaybackCommand(FigEndpointRef, CFDictionaryRef *)"
+ "OSStatus carEndpoint_sendVideoPlaybackParams(FigEndpointRef, CFDictionaryRef)"
+ "OSStatus carEndpoint_setupSenderSession(FigEndpointRef, APEndpointDescriptionRef, CFDictionaryRef)"
+ "OSStatus epp_Dissociate(FigEndpointRef)_block_invoke"
+ "OSStatus sessionfactory_RemoveAirPlaySession(APSenderSessionFactoryRef, CFStringRef)"
+ "Object invalidated"
+ "Override voiceTriggerMode to Voice Activity"
+ "Scheduling kFigEndpointManagerNotification_AvailableEndpointsChanged in %lld ns with %llu ns leeway\n"
+ "SnoopCollectionPath"
+ "[%{ptr}] %@ is%s recommended%?{end} with err=%#m"
+ "[%{ptr}] Activation callback %@ for [%{ptr}]"
+ "[%{ptr}] Authorization request callback %@ for [%{ptr}] result %#m"
+ "[%{ptr}] Bonjour events monitoring: sending Bonjour info to CarKit: %@"
+ "[%{ptr}] COLLISION %@ clusterPlus [%{ptr}] subEndpointPlus [%{ptr}] has inner [%{ptr}] but found real [%{ptr}]"
+ "[%{ptr}] COLLISION %@ plus [%{ptr}] has inner [%{ptr}] but found real [%{ptr}]"
+ "[%{ptr}] Checking if need to report failure for disconnect reason: %d"
+ "[%{ptr}] Completion callback %@ for [%{ptr}]"
+ "[%{ptr}] Dissociating inner [%{ptr}]"
+ "[%{ptr}] Duplicate activate in stage %d; keeping current activation\n"
+ "[%{ptr}] Ensure Authorized with inner [%{ptr}] proxyID %@"
+ "[%{ptr}] Fail delay timer already running, discarding requested delay of %llu ms for subEndpoint [%{ptr}]%?{end}, failure count %ld"
+ "[%{ptr}] Failed to remove session for deviceID %@: %#m\n"
+ "[%{ptr}] Ignoring subEndpoint [%{ptr}] failure, cluster is deactivated"
+ "[%{ptr}] Immediately triggering lost cluster buddy reconnect logic for [%{ptr}] (session state: %s, reason: %s)"
+ "[%{ptr}] NAN RSSI sample failed: %#m\n"
+ "[%{ptr}] Removing session client for %@ endpoint [%{ptr}] due to failure in upgrade session path.\n"
+ "[%{ptr}] Removing session for %@ due to failure in new session path.\n"
+ "[%{ptr}] Send Command callback %@ for [%{ptr}] forward? %s"
+ "[%{ptr}] Set up %@ stream and useRealtimeAPAT=%s (localDeviceType=%d receiverSupportsRealtimeAPAT=%s isScreenMirroringUsage=%s engineType=%@"
+ "[%{ptr}] Snoop collection path pattern requested, responding with %@ (err: %#m)\n"
+ "[%{ptr}] Starting fail delay timer for seed %llu, subEndpoint [%{ptr}], with delay of %llu ms%?{end}, failure count %ld"
+ "[%{ptr}] audio output latency: %@ms\n"
+ "[%{ptr}] carEndpoint_prepareFadeOutVideoPlayback videoPlayback not in session"
+ "[%{ptr}] carEndpoint_prepareFadeOutVideoPlayback videoPlayback not supported"
+ "[%{ptr}] carEndpoint_prepareFadeOutVideoPlayback: %@"
+ "[%{ptr}] sending %@: %@ to HU"
+ "[%{ptr}] unrecognized button %@"
+ "action"
+ "alloc failed"
+ "because peer was primed or better"
+ "bufferedAudioEngine_isHoseClusterBuddy"
+ "c2cf40f3e8894bef"
+ "can't find valid video track"
+ "carEndpoint_activateInternal_block_invoke_4"
+ "carEndpoint_handleVideoPlayerBackButtonEvent"
+ "carEndpoint_prepareFadeOutVideoPlaybackCommand"
+ "carEndpoint_sendVideoPlaybackParams"
+ "carManager_reportBonjourEventToCarKit"
+ "com.apple.airplay.demo"
+ "com.apple.private.restrict-post.AirPlay.DACP.mutetoggle"
+ "com.apple.private.restrict-post.AirPlay.DACP.volumedown"
+ "com.apple.private.restrict-post.AirPlay.DACP.volumeup"
+ "due to timeout"
+ "endpoint_forwardUpdateInfo"
+ "err"
+ "fadeOut"
+ "forceFirstRemoteMediaTime"
+ "forwardToVideoPlayback"
+ "kCMBaseObjectError_AllocationFailed"
+ "kCMBaseObjectError_Invalidated"
+ "kCMBaseObjectError_ParamErr"
+ "kCMBaseObjectError_ValueNotAvailable"
+ "kFigEndpointError_AllocationFailed"
+ "kFigEndpointPlaybackSessionError_AllocationFailed"
+ "kFigEndpointPlaybackSessionError_InvalidParameter"
+ "kFigEndpointStreamAudioEngineError_AllocationFailed"
+ "maxWaitPhaseTwoClusterBuddyMs"
+ "messageID is missing in response event"
+ "origin"
+ "sessionfactory_RemoveAirPlaySession"
+ "setVideoPlaybackParameters"
+ "streamConnectionKeyQoS"
+ "type is missing in response event"
+ "videoPlaybackFadeOut"
+ "void bufferedAudioEngine_updateHosesPrimed(FigEndpointStreamAudioEngineRef, uint64_t, uint64_t, Boolean, APAudioEngineBufferedPrimingStats *)"
+ "void carManager_collectAnalyticsIfNeeded(FigEndpointManagerRef, FigEndpointRef, FigEndpointRef, int32_t, APCarPlayFailureInfoReason, CarManagerSessionResetMitigations)"
+ "void carManager_reportBonjourEventToCarKit(FigEndpointManagerRef, Boolean, APCarPlayFailureInfoReason)"
+ "void endpointAggregate_handleAudioStreamResumed(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)"
+ "void endpointCluster_CallActivationCompletionCallback(FigEndpointRef, uint64_t, FigEndpointFeatures, OSStatus, FigEndpointActivationCompletionCallback, void *)"
+ "void endpointCluster_startFailDelayTimerIfNeeded(FigEndpointRef, FigEndpointRef)"
+ "void endpoint_handleAudioStreamResumed(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)"
+ "void endpoint_performRemoteTeardown(void *)_block_invoke"
- "%s signalled err=%d at <>:%d"
- "980.77.1.2"
- "APCarPlay_transportType"
- "BAE [%{ptr}] %s[0x%04X] (startup) Stereo Pair Hoses [%{ptr}] (%@) Primed -> Ready due to timeout\n"
- "BAE [%{ptr}] %s[0x%04X] (startup) Stereo Pair hose (peer) [%{ptr}] (%@) Primed -> Ready because peer was primed or better\n"
- "BAE [%{ptr}] %s[0x%04X] (startup) Stereo Pair hose [%{ptr}] (%@) Primed -> Ready because peer was primed or better\n"
- "OSStatus carEndpoint_setupSenderSession(FigEndpointRef, APEndpointDescriptionRef)"
- "Scheduling kFigEndpointManagerNotification_AvailableEndpointsChanged in %lld ns\n"
- "Terminus_MeshRegistration"
- "WiFiLinkUnusable"
- "[%{ptr}] %@ is%s recommended?{end} with err=%#m"
- "[%{ptr}] Activation callback with inner [%{ptr}] context %@ forward? %s"
- "[%{ptr}] Authorization request completion callback for inner %s [%{ptr}] result %#m"
- "[%{ptr}] Bonjour events monitoring: sending Bonjour failure info to CarKit: %@"
- "[%{ptr}] Checking if need to report failure for disconnect reason: %@"
- "[%{ptr}] Completion callback with inner [%{ptr}] context %@ forward? %s"
- "[%{ptr}] Dissociating"
- "[%{ptr}] Ensure Authorized with inner [%{ptr}] context %@"
- "[%{ptr}] Immediately triggering lost cluster buddy reconnect logic for [%{ptr}] during startup\n"
- "[%{ptr}] Send Command callback with inner [%{ptr}] context %@ forward? %s"
- "[%{ptr}] Set up %@ stream and useRealtimeAPAT=%s (localDeviceType=%d receiverSupportsRealtimeAPAT=%s isScreenMirroringUsage=%s"
- "[%{ptr}] Starting fail delay timer for seed %llu with delay of %llu seconds.\n"
- "bonjour"
- "bufferedAudioEngine_isHoseInStereoPair"
- "carEndpoint_activateInternal_block_invoke_3"
- "carManager_reportBonjourFailureToCarKit"
- "com.apple.AirTunes.DACP.mutetoggle"
- "com.apple.AirTunes.DACP.volumedown"
- "com.apple.AirTunes.DACP.volumeup"
- "connectionReset"
- "discovery"
- "noBonjourRecord"
- "noConnectCmd"
- "running"
- "void bufferedAudioEngine_updateHosesPrimed(FigEndpointStreamAudioEngineRef, uint64_t, Boolean, APAudioEngineBufferedPrimingStats *)"
- "void carManager_collectAnalyticsIfNeeded(FigEndpointManagerRef, FigEndpointRef, FigEndpointRef, int32_t, CFStringRef, CarManagerSessionResetMitigations)"
- "void carManager_reportBonjourFailureToCarKit(FigEndpointManagerRef, CFStringRef, CFStringRef)"
- "void endpointCluster_startFailDelayTimerIfNeeded(FigEndpointRef)"
- "void endpoint_prepareLocalTeardown(APEndpointDeactivationContext *)_block_invoke"
```
