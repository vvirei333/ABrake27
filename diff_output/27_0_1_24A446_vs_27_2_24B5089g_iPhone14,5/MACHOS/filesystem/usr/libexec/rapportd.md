## rapportd

> `/usr/libexec/rapportd`

### Sections with Same Size but Changed Content

- `__TEXT.__swift5_capture`
- `__TEXT.__swift5_assocty`
- `__TEXT.__swift5_builtin`
- `__TEXT.__swift5_fieldmd`
- `__TEXT.__swift5_proto`
- `__TEXT.__swift5_types`
- `__TEXT.__swift_as_entry`
- `__TEXT.__swift_as_ret`
- `__TEXT.__swift_as_cont`
- `__TEXT.__swift5_protos`
- `__TEXT.__swift5_acfuncs`
- `__TEXT.__swift5_mpenum`
- `__TEXT.__eh_frame`
- `__DATA_CONST.__objc_catlist`
- `__DATA_CONST.__objc_intobj`
- `__DATA_CONST.__objc_arraydata`
- `__DATA_CONST.__objc_arrayobj`
- `__DATA_CONST.__objc_dictobj`
- `__DATA_CONST.__auth_ptr`

```diff

-751.100.2.0.0
-  __TEXT.__text: 0x198290
-  __TEXT.__auth_stubs: 0x39f0
-  __TEXT.__objc_stubs: 0x13620
-  __TEXT.__objc_methlist: 0xa0d0
-  __TEXT.__const: 0x6160
-  __TEXT.__cstring: 0x36db6
-  __TEXT.__objc_classname: 0x10bf
-  __TEXT.__objc_methtype: 0x4a81
-  __TEXT.__gcc_except_tab: 0x24b0
-  __TEXT.__objc_methname: 0x1c840
-  __TEXT.__oslogstring: 0x3542
-  __TEXT.__swift5_typeref: 0x1776
+751.200.41.0.0
+  __TEXT.__text: 0x1a2a74
+  __TEXT.__auth_stubs: 0x3a10
+  __TEXT.__objc_stubs: 0x140a0
+  __TEXT.__objc_methlist: 0xabf8
+  __TEXT.__const: 0x6670
+  __TEXT.__cstring: 0x38a76
+  __TEXT.__objc_classname: 0x119f
+  __TEXT.__objc_methtype: 0x4ed1
+  __TEXT.__gcc_except_tab: 0x24e0
+  __TEXT.__objc_methname: 0x1e330
+  __TEXT.__oslogstring: 0x3582
+  __TEXT.__swift5_typeref: 0x17ca
   __TEXT.__swift5_capture: 0xb78
   __TEXT.__swift5_reflstr: 0xfc4
   __TEXT.__swift5_assocty: 0x190
-  __TEXT.__constg_swiftt: 0xe58
+  __TEXT.__constg_swiftt: 0xe60
   __TEXT.__swift5_builtin: 0x78
   __TEXT.__swift5_fieldmd: 0xf3c
   __TEXT.__swift5_proto: 0x1cc

   __TEXT.__swift5_protos: 0x4
   __TEXT.__swift5_acfuncs: 0x104
   __TEXT.__swift5_mpenum: 0x8
-  __TEXT.__info_plist: 0x59a
-  __TEXT.__unwind_info: 0x5970
+  __TEXT.__info_plist: 0x599
+  __TEXT.__unwind_info: 0x5bc8
   __TEXT.__eh_frame: 0x4c44
-  __DATA_CONST.__const: 0x8498
-  __DATA_CONST.__cfstring: 0x6600
-  __DATA_CONST.__objc_classlist: 0x3a0
+  __DATA_CONST.__const: 0x8648
+  __DATA_CONST.__cfstring: 0x67e0
+  __DATA_CONST.__objc_classlist: 0x3c8
   __DATA_CONST.__objc_catlist: 0x10
-  __DATA_CONST.__objc_protolist: 0x178
+  __DATA_CONST.__objc_protolist: 0x198
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_protorefs: 0xc8
-  __DATA_CONST.__objc_superrefs: 0x228
+  __DATA_CONST.__objc_protorefs: 0xd8
+  __DATA_CONST.__objc_superrefs: 0x240
   __DATA_CONST.__objc_intobj: 0x3d8
   __DATA_CONST.__objc_arraydata: 0x58
   __DATA_CONST.__objc_arrayobj: 0x18
   __DATA_CONST.__objc_dictobj: 0x50
   __DATA_CONST.__objc_doubleobj: 0x20
-  __DATA_CONST.__auth_got: 0x1d08
-  __DATA_CONST.__got: 0xac8
+  __DATA_CONST.__auth_got: 0x1d18
+  __DATA_CONST.__got: 0xad8
   __DATA_CONST.__auth_ptr: 0x670
-  __DATA.__objc_const: 0x11d88
-  __DATA.__objc_selrefs: 0x5e80
-  __DATA.__objc_ivar: 0x113c
-  __DATA.__objc_data: 0x2d88
-  __DATA.__data: 0x3af8
-  __DATA.__bss: 0x4730
+  __DATA.__objc_const: 0x12a98
+  __DATA.__objc_selrefs: 0x6480
+  __DATA.__objc_ivar: 0x11d4
+  __DATA.__objc_data: 0x2f20
+  __DATA.__data: 0x3da8
+  __DATA.__bss: 0x47c0
   __DATA.__common: 0xd0
   - /System/Library/Frameworks/AVFoundation.framework/AVFoundation
   - /System/Library/Frameworks/CFNetwork.framework/CFNetwork

   - /usr/lib/swift/libswiftCoreMIDI.dylib
   - /usr/lib/swift/libswiftDispatch.dylib
   - /usr/lib/swift/libswiftDistributed.dylib
+  - /usr/lib/swift/libswiftIntents.dylib
   - /usr/lib/swift/libswiftMetal.dylib
   - /usr/lib/swift/libswiftOSLog.dylib
   - /usr/lib/swift/libswiftObjectiveC.dylib

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 8599
-  Symbols:   1455
-  CStrings:  10854
+  Functions: 8898
+  Symbols:   1459
+  CStrings:  11314
 
Symbols:
+ _$s10Foundation4UUIDV2eeoiySbAC_ACtFZ
+ _OBJC_CLASS_$_NSScanner
+ __swift_FORCE_LOAD_$_swiftIntents
+ _objc_copyWeak
+ _objc_initWeak
- _swift_coroFrameAlloc
CStrings:
+ "%@ %lu devices, conn %@]"
+ "%@ RX Empty response from `%~@`: requestID=%@ appSvc=%@ error=%@\n"
+ "%@ RX Error from `%~@`: requestID=%@ appSvc=%@ error=%@\n"
+ "%@ RX RESP from '%~@': requestID=%@ appSvc=%@ response=%s serverPublicKey=%zu bytes bonjourServiceID=%@ serverPort=%u listener=%@ error=%@\n"
+ "%@ Resolve post-completion grace expired, invalidating peer\n"
+ "%@ Resolve response delivered, holding CompanionLink for %.0fs grace before invalidating\n"
+ "%@ TX REQ to '%~@': requestID=%@ appSvc=%@%@\n"
+ "%@Failed to publish advertisement for service %@: %@"
+ "%@Failed to stop publishing advertisement for service %@: %@"
+ "%@Missing advertisement for service %@"
+ "%@Now %lu pending advertisements after cancelling %@"
+ "%@Now %lu pending advertisements after publishing %@"
+ "%@Pending advertisement for %@ was cancelled"
+ "%@Successfully published advertisement (%lu total) for service %@: %@"
+ "%@Successfully stopped advertisement for service: %@"
+ "%@Unpublished advertisement (%lu total) for service %@"
+ "+[RPNWClientEndpointContext _currentAltDSID]"
+ "+[RPNWClientEndpointContext _currentIDSDeviceID]"
+ "+[RPNWClientEndpointContext _currentStatusFlags]"
+ "+[RPNWClientEndpointContext contextFromNetworkRepresentation:]"
+ ", connected"
+ ", disconnected %@"
+ "-- RPAccessPolicyDaemon --\n"
+ "-[QRServiceDiscoveryClient _localDeviceMonitorActivate]"
+ "-[QRServiceDiscoveryClient _localDeviceMonitorActivate]_block_invoke_4"
+ "-[QRServiceDiscoveryClient _localDeviceMonitorInterrupted]"
+ "-[QRServiceDiscoveryClient _localDeviceMonitorInvalidate]"
+ "-[QRServiceDiscoveryClient _localDeviceMonitorInvalidated]"
+ "-[QRServiceDiscoveryClient _serviceDiscovery:startAdvertisement:completionHandler:]_block_invoke_2"
+ "-[QRServiceDiscoveryClient _serviceDiscovery:startQuery:completionHandler:]_block_invoke_2"
+ "-[QRServiceDiscoveryClient _serviceDiscovery:stopAdvertisement:completionHandler:]_block_invoke_2"
+ "-[QRServiceDiscoveryClient _serviceDiscovery:stopQuery:completionHandler:]_block_invoke_2"
+ "-[QRServiceDiscoveryClient _serviceDiscovery:updateAdvertisement:metadata:completionHandler:]_block_invoke_2"
+ "-[QRServiceDiscoveryClient _updatePrimaryAltDSID:]"
+ "-[QRServiceDiscoveryClient daemonInfoChanged:]"
+ "-[QRServiceDiscoveryClient regenerateQueryResults:]"
+ "-[QRServiceDiscoveryClient startAdvertisementForAdvertiseDescriptor:withMetadata:completionHandler:]"
+ "-[QRServiceDiscoveryClient startAdvertisementForAdvertiseDescriptor:withMetadata:completionHandler:]_block_invoke"
+ "-[QRServiceDiscoveryClient startAdvertisementForAdvertiseDescriptor:withMetadata:completionHandler:]_block_invoke_2"
+ "-[QRServiceDiscoveryClient startAdvertisementForAdvertiseDescriptor:withMetadata:completionHandler:]_block_invoke_3"
+ "-[RPAccessPolicyDaemon _activate]"
+ "-[RPAccessPolicyDaemon _cLinkActivate]"
+ "-[RPAccessPolicyDaemon _cLinkActivate]_block_invoke_6"
+ "-[RPAccessPolicyDaemon _cLinkDeviceChanged:]"
+ "-[RPAccessPolicyDaemon _cLinkDeviceFound:]"
+ "-[RPAccessPolicyDaemon _cLinkDeviceLost:]"
+ "-[RPAccessPolicyDaemon _cLinkInterrupted]"
+ "-[RPAccessPolicyDaemon _cLinkInvalidate]"
+ "-[RPAccessPolicyDaemon _cLinkInvalidated]"
+ "-[RPAccessPolicyDaemon _carPlayMonitorDiedNotification:]_block_invoke"
+ "-[RPAccessPolicyDaemon _carplayMonitorActivate]"
+ "-[RPAccessPolicyDaemon _carplayMonitorInvalidate]"
+ "-[RPAccessPolicyDaemon _carplayStateChanged:]"
+ "-[RPAccessPolicyDaemon _deviceIDsForClient:]"
+ "-[RPAccessPolicyDaemon _homekitActivate]"
+ "-[RPAccessPolicyDaemon _homekitUpdated:]"
+ "-[RPAccessPolicyDaemon _invalidate]"
+ "-[RPAccessPolicyDaemon _localStatePermitsAccess]"
+ "-[RPAccessPolicyDaemon _lockTimerFired]"
+ "-[RPAccessPolicyDaemon _lockTimerStart]"
+ "-[RPAccessPolicyDaemon _lockTimerStop]"
+ "-[RPAccessPolicyDaemon _peerExpirationPrune]"
+ "-[RPAccessPolicyDaemon _peerExpirationTimerFired]"
+ "-[RPAccessPolicyDaemon _peerExpirationTimerStart:]"
+ "-[RPAccessPolicyDaemon _peerExpirationTimerStop]"
+ "-[RPAccessPolicyDaemon _xpcHandleLostClient:]"
+ "-[RPAccessPolicyDaemon _xpcHandleNewConnection:]"
+ "-[RPAccessPolicyDaemon daemonInfoChanged:]"
+ "-[RPAccessPolicyDaemon listener:shouldAcceptNewConnection:]"
+ "-[RPAccessPolicyDaemon prefsChanged]"
+ "-[RPAccessPolicyXPCConnection accessPolicyClientActivate:serviceName:completion:]"
+ "-[RPAccessPolicyXPCConnection setDevices:]"
+ "-[RPAccessPolicyXPCConnection setDevices:]_block_invoke"
+ "-[RPAccessPolicyXPCConnection setDevices:]_block_invoke_2"
+ "-[RPDaemonXPCConnection endpointContextForService:trustCircles:completion:]"
+ "-[RPDaemonXPCConnection updateEncodedEndpoint:forService:usingContext:completion:]"
+ "-[RPHomeKitManager setAccessoryPresenceUpdatedHandler:]"
+ "-[RPNWClientEndpointContext networkRepresentationForTrustCircles:]"
+ "-[RPNWPeer resolvePeer:token:controlFlags:applicationService:clientPublicKey:resolveHandler:]_block_invoke_2"
+ "-[RPNWPeer resolvePeer:token:controlFlags:applicationService:clientPublicKey:resolveHandler:]_block_invoke_3"
+ "-[RPServiceDiscoveryClient startAdvertisementForAdvertiseDescriptor:withMetadata:completionHandler:]_block_invoke"
+ "-[RPServiceDiscoveryClient startAdvertisementForAdvertiseDescriptor:withMetadata:completionHandler:]_block_invoke_2"
+ "-[RPServiceDiscoveryClient startAdvertisementForAdvertiseDescriptor:withMetadata:completionHandler:]_block_invoke_3"
+ "/System/Library/PrivateFrameworks/AirPlaySupport.framework/AirPlaySupport"
+ "@\"RPAccessPolicyDaemon\""
+ "@28@0:8@16B24"
+ "@48@0:8@16@24@32@?40"
+ "APSGetP2PAllow"
+ "AVSystemController_CarPlayIsConnectedAttribute"
+ "AVSystemController_CarPlayIsConnectedDidChangeNotification"
+ "AVSystemController_ServerConnectionDiedNotification"
+ "AVSystemController_SubscribeToNotificationsAttribute"
+ "Accessories: %lu\n"
+ "Activated"
+ "Activated cLink %@"
+ "Added client (now %lu): %@"
+ "Already activated"
+ "BLE NearbyActionV2 device lost for device we were not tracking: %@\n"
+ "Browser: %@\n"
+ "CarPlay server crashed"
+ "CarPlay session ended"
+ "CarPlay status changed: %c -> %c"
+ "CarPlay: Connected(%c) Last(%@)\n"
+ "Daemon info changed: %#ll{flags}"
+ "Failed to activate CarPlay monitor: %{error}"
+ "Failed to activate cLink %@: %@"
+ "Failed to activate cLink %@: %{error}"
+ "Failed to activate local device monitor %@: %@"
+ "Failed to decode context"
+ "Failed to decode endpoint"
+ "Failed to encode endpoint"
+ "Failed to invalidate CarPlay monitor: %{error}"
+ "Failed to obtain AltDSID"
+ "Failed to obtain IDS device ID"
+ "Failed to obtain local device"
+ "GetEndpointContext"
+ "HMHomeDelegatePrivate"
+ "HMHomeManagerDelegate"
+ "HomeKit Presence updated: %lu -> %lu accessories"
+ "HomeKit reportedly available, attempting activation"
+ "IDS Agent UUID"
+ "Invalid policy %u"
+ "Invalid service name '%@'"
+ "Invalidating cLink %@"
+ "Invalidating local device monitor %@"
+ "Local Device Monitor interrupted"
+ "Local Device Monitor invalidated"
+ "Local primary AltDSID updated: %@ -> %@"
+ "Local state permits access: %c"
+ "Lock timer fired"
+ "Lock timer not needed in state %d"
+ "Lock timer not needed without target time"
+ "Lock timer start %f is in the past"
+ "Lock: State(%d) Last(%@)\n"
+ "Lost client (now %lu): %@"
+ "Missing entitlement to %@ for '%@'"
+ "Next peer prune timer start %@ is in the past"
+ "No handler for requestID %{public}s on flags [%{public}s] (registered under: %{public}s)"
+ "Nothing to encode for %#ll{flags}"
+ "Now %lu/%lu peers after finding device %@"
+ "Now %lu/%lu peers after losing device %@"
+ "Now %lu/%lu peers after removing expired device %@"
+ "Now %lu/%lu peers after updating device %@"
+ "Peer expiration timer fired"
+ "Peers: Connected(%lu) Previous(%lu)\n"
+ "Policies: RULD(%f) DLD(%f)\n"
+ "Preference override DLD: %f"
+ "Preference override RULD: %f"
+ "Presence filtering yielded %lu -> %lu peers"
+ "Pruning expired previous peers"
+ "RPAccessPolicyDaemon"
+ "RPAccessPolicyDeviceInfo"
+ "RPAccessPolicyXPCClientInterface"
+ "RPAccessPolicyXPCConnection"
+ "RPAccessPolicyXPCServerInterface"
+ "RPNWClientEndpointContext"
+ "RPNWTXTUtils"
+ "RX Empty response from `%~@`: requestID=%@ appSvc=%@ error=%@\n"
+ "RX Error from `%~@`: requestID=%@ appSvc=%@ error=%@\n"
+ "RX RESP from '%~@': requestID=%@ appSvc=%@ response=%s bytes listener=%@ error=%@\n"
+ "RapportDefaultPersonaID"
+ "Regenerating query results (reason: %@)"
+ "Register eventID %{public}s registration %s persona %{public}s with handlers: %{public}s"
+ "Register requestID %{public}s registration %s persona %{public}s with handlers: %{public}s"
+ "Rejecting new XPC connection %@ from unknown listener %@"
+ "Rejecting unentitled XPC connection from %#{pid}"
+ "Replacing existing presence handler"
+ "Resetting DLD to default"
+ "Resetting RULD to default"
+ "Service %@ exists but requires priority boost"
+ "Setting up cLink %@"
+ "Setting up local device monitor %@"
+ "Started lock timer (%f s)"
+ "Started peer expiration timer (%f s)"
+ "Stopping lock timer"
+ "Stopping peer expiration timer"
+ "T@\"NSMutableDictionary\",R,N,V_peerDevices"
+ "T@\"NSMutableSet\",R,N,V_xpcClients"
+ "T@\"NSNumber\",&,N,V_lastCarPlayEndTime"
+ "T@\"NSNumber\",&,N,V_lastUnlockTime"
+ "T@\"NSNumber\",R,N,V_lastConnected"
+ "T@\"NSObject<OS_dispatch_source>\",&,N,V_lockTimer"
+ "T@\"NSObject<OS_dispatch_source>\",&,N,V_peerExpirationTimer"
+ "T@\"NSSet\",&,N,V_devices"
+ "T@\"NSSet\",&,N,V_permittedAccessoryIDs"
+ "T@\"NSString\",&,N,V_primaryAltDSID"
+ "T@\"NSString\",C,N,V_iCloudAltDSID"
+ "T@\"NSString\",C,N,V_idsDeviceID"
+ "T@\"NSString\",R,N,V_logPrefix"
+ "T@\"NSString\",R,N,V_serviceName"
+ "T@\"NSXPCConnection\",R,N,V_xpcConnection"
+ "T@\"NSXPCInterface\",R,N,V_xpcClientInterface"
+ "T@\"NSXPCInterface\",R,N,V_xpcServerInterface"
+ "T@\"NSXPCListener\",R,N,V_xpcListener"
+ "T@\"RPAccessPolicyDaemon\",R,N,V_daemon"
+ "T@\"RPCompanionLinkClient\",R,N,V_cLinkBrowser"
+ "T@\"RPCompanionLinkClient\",R,N,V_localDeviceMonitor"
+ "T@\"RPCompanionLinkDevice\",R,N,V_device"
+ "T@\"RPHomeKitManager\",R,N,V_homekitManager"
+ "T@?,C,N,V_accessoryPresenceUpdatedHandler"
+ "TB,N,V_activated"
+ "TB,N,V_carplayConnected"
+ "TB,N,V_updatePending"
+ "TI,R,N,V_policyType"
+ "TQ,N,V_authFlags"
+ "TX REQ to '%~@': requestID=%@ appSvc=%@%@\n"
+ "Td,N,V_permittedDeviceLostDuration"
+ "Td,N,V_permittedRecentlyUnlockedDuration"
+ "Ti,N,V_lockState"
+ "Unable to find Service Directory request sender %@"
+ "Unexpectedly encountered nil HomeKit manager"
+ "UpdateEndpointAttributes"
+ "XPC Client %#{pid}"
+ "XPC Client %#{pid} %u %@"
+ "XPC Clients: %lu\n"
+ "[%@] Activating with policy %u (%lu initial devices)"
+ "[%@] Delivering update (%lu devices)"
+ "[%@] No change in devices: %@"
+ "[%@] Skipping update without activation: %@"
+ "[%@] Unable to activate: %{error}"
+ "[%@] Unable to deliver update due to XPC error: %{error}"
+ "_accessoryPresenceUpdatedHandler"
+ "_activated"
+ "_authFlags"
+ "_cLinkActivate"
+ "_cLinkBrowser"
+ "_cLinkDeviceIDsForDevice:"
+ "_carPlayMonitorDiedNotification:"
+ "_carPlayStateChangedNotification:"
+ "_carplayConnected"
+ "_carplayMonitorActivate"
+ "_carplayMonitorInvalidate"
+ "_carplayStateChanged:"
+ "_continuousTimeNow"
+ "_continuousTimeNowNum"
+ "_currentAltDSID"
+ "_currentIDSDeviceID"
+ "_currentStatusFlags"
+ "_dateFromContinuousTime:"
+ "_dbLookupServiceProvider"
+ "_deviceIDsForClient:"
+ "_filterDevices:isConnected:"
+ "_homekitActivate"
+ "_homekitInvalidate"
+ "_homekitManager"
+ "_homekitUpdated:"
+ "_iCloudAltDSID"
+ "_idsDeviceID"
+ "_initWithIDSDeviceID:iCloudAltDSID:statusFlags:"
+ "_initWithQueryResult:agentUUID:resolveIdentity:"
+ "_lastCarPlayEndTime"
+ "_lastConnected"
+ "_lastUnlockTime"
+ "_localDeviceMonitor"
+ "_localDeviceMonitorActivate"
+ "_localDeviceMonitorInterrupted"
+ "_localDeviceMonitorInvalidate"
+ "_localDeviceMonitorInvalidated"
+ "_localDeviceUpdated:"
+ "_localStatePermitsAccess"
+ "_lockState"
+ "_lockTimer"
+ "_lockTimerFired"
+ "_lockTimerNextFire"
+ "_lockTimerStart"
+ "_lockTimerStop"
+ "_logPrefix"
+ "_peerExpirationNextFire"
+ "_peerExpirationPrune"
+ "_peerExpirationTimer"
+ "_peerExpirationTimerFired"
+ "_peerExpirationTimerStart:"
+ "_peerExpirationTimerStop"
+ "_permittedAccessoryIDs"
+ "_permittedDeviceLostDuration"
+ "_permittedRecentlyUnlockedDuration"
+ "_policyType"
+ "_primaryAltDSID"
+ "_refreshAccessoriesForPresence"
+ "_serviceIsRestricted:"
+ "_serviceName"
+ "_systemMonitorActivate"
+ "_systemMonitorInvalidate"
+ "_systemMonitorLockStateChanged:"
+ "_txtRecordForApplicationService:"
+ "_updatePrimaryAltDSID:"
+ "_xpcActivate"
+ "_xpcClients"
+ "_xpcConnection"
+ "_xpcHandleLostClient:"
+ "_xpcHandleNewConnection:"
+ "_xpcInvalidate"
+ "accessPolicyClientActivate:serviceName:completion:"
+ "accessPolicyUpdatedDevices:"
+ "accessoryPresenceUpdatedHandler"
+ "activated"
+ "apDeviceLostDuration"
+ "apRecentlyUnlockedDuration"
+ "applyToEndpoint:"
+ "attributeForKey:"
+ "authFlags"
+ "cLink interrupted"
+ "cLink invalidated"
+ "cLinkBrowser"
+ "carplayConnected"
+ "com.apple.rapport.AccessPolicy"
+ "com.apple.rapport.EndpointContext"
+ "com.apple.rapport.RPAccessPolicyDaemon"
+ "contextForLocalDevice"
+ "contextFromNetworkRepresentation:"
+ "currentAltDSID"
+ "daemon info %#ll{flags}"
+ "deviceIDs"
+ "endpointContextForService:trustCircles:completion:"
+ "home:didAddAccessoryNetworkProtectionGroup:"
+ "home:didAddMediaSystem:"
+ "home:didAddResidentDevice:"
+ "home:didFailAccessorySetupWithError:"
+ "home:didRemoveAccessoryNetworkProtectionGroup:"
+ "home:didRemoveMediaSystem:"
+ "home:didRemoveResidentDevice:"
+ "home:didUpdateAccessControlForUser:"
+ "home:didUpdateAccessoryInvitationsForUser:"
+ "home:didUpdateAccessoryNetworkProtectionGroup:"
+ "home:didUpdateActionSet:isExecuting:"
+ "home:didUpdateApplicationDataForActionSet:"
+ "home:didUpdateApplicationDataForRoom:"
+ "home:didUpdateApplicationDataForServiceGroup:"
+ "home:didUpdateAreBulletinNotificationsSupported:"
+ "home:didUpdateAudioAnalysisClassifierOptions:"
+ "home:didUpdateAudioGroupsController:"
+ "home:didUpdateAutomaticSoftwareUpdateEnabled:"
+ "home:didUpdateAutomaticThirdPartyAccessorySoftwareUpdateEnabled:"
+ "home:didUpdateClipCaptionLocales:"
+ "home:didUpdateClipCaptioningEnabled:"
+ "home:didUpdateClipCaptioningEnabledCameras:"
+ "home:didUpdateDismissedWalletKeyUWBUnlockOnboarding:"
+ "home:didUpdateEventLogDuration:"
+ "home:didUpdateEventLogEnabled:"
+ "home:didUpdateHasOnboardedForWalletKey:"
+ "home:didUpdateHomeActivityState:isActivityStateHoldActive:activityStateHoldEndDate:transitionalStateEndDate:"
+ "home:didUpdateHomeActivityStateSchedule:"
+ "home:didUpdateLastExecutionDateForActionSet:"
+ "home:didUpdateLocation:"
+ "home:didUpdateMediaPassword:"
+ "home:didUpdateMediaPeerToPeerEnabled:"
+ "home:didUpdateMinimumMediaUserPrivilege:"
+ "home:didUpdateOnboardAudioAnalysis:"
+ "home:didUpdatePersonManagerSettings:"
+ "home:didUpdateReprovisionStateForAccessory:"
+ "home:didUpdateSiriPhraseOptions:"
+ "home:didUpdateStateForOutgoingInvitations:"
+ "home:didUpdateSupportsResidentActionSetStateEvaluation:"
+ "home:didUpdateTimeZone:"
+ "homeDidAddWalletKey:"
+ "homeDidEnableLocationServices:"
+ "homeDidEnableMultiUser:"
+ "homeDidOnboardLocationServices:"
+ "homeDidRemoveWalletKey:"
+ "homeDidSetEnableDoorbellChime:"
+ "homeDidSetHasAnyUserAcknowledgedCameraRecordingOnboarding:"
+ "homeDidSetHasOnboardedForAccessCode:"
+ "homeDidUpdateApplicationData:"
+ "homeDidUpdateAssistantIdentifiers:"
+ "homeDidUpdateAutoSelectedPreferredResident:"
+ "homeDidUpdateHomeLocationStatus:"
+ "homeDidUpdateNetworkRouterSupport:"
+ "homeDidUpdateOnboardedEventLog:"
+ "homeDidUpdatePrimaryResidentNetworkInfo:"
+ "homeDidUpdateProtectionMode:"
+ "homeDidUpdateSoundCheck:"
+ "homeDidUpdateSupportsResidentSelection:"
+ "homeDidUpdateToROAR:"
+ "homeDidUpdateUserSelectedPreferredResident:"
+ "homeLocationStatus"
+ "homeManager:didAddHome:"
+ "homeManager:didReceiveAddAccessoryRequest:"
+ "homeManager:didRemoveHome:"
+ "homeManager:didUpdateAuthorizationStatus:"
+ "homeManagerDidUpdateHomes:"
+ "homeManagerDidUpdatePrimaryHome:"
+ "homekitManager"
+ "iCloudAltDSID"
+ "idsID"
+ "initWithBytes:length:encoding:"
+ "initWithConnection:daemon:"
+ "initWithDevice:lastConnected:"
+ "initWithUnsignedLongLong:"
+ "isEqualToSet:"
+ "isEquivalentToDeviceInfo:"
+ "isMeDevice"
+ "isPriorityBoosted:serviceProvider:"
+ "isRestricted:serviceProvider:"
+ "lastCarPlayEndTime"
+ "lastConnected"
+ "lastObject"
+ "lastUnlockTime"
+ "localDevice"
+ "localDeviceMonitor"
+ "lockState"
+ "lockTimer"
+ "logPrefix"
+ "networkRepresentationForTrustCircles:"
+ "peerExpirationTimer"
+ "permittedAccessoryIDs"
+ "permittedDeviceLostDuration"
+ "permittedRecentlyUnlockedDuration"
+ "personal"
+ "policyType"
+ "primary AltDSID"
+ "primaryAltDSID"
+ "regenerateQueryResults:"
+ "registerEventID:persona:options:handler:"
+ "registerRequestID:persona:options:handler:"
+ "resolveIdentityForQueryResult:"
+ "sF"
+ "scanUnsignedLongLong:"
+ "serviceRequiresPriorityBoost:"
+ "setAccessoryPresenceUpdatedHandler:"
+ "setActivated:"
+ "setAttribute:forKey:error:"
+ "setAuthFlags:"
+ "setCarplayConnected:"
+ "setICloudAltDSID:"
+ "setLastCarPlayEndTime:"
+ "setLastUnlockTime:"
+ "setLockState:"
+ "setLockTimer:"
+ "setPeerExpirationTimer:"
+ "setPermittedAccessoryIDs:"
+ "setPermittedDeviceLostDuration:"
+ "setPermittedRecentlyUnlockedDuration:"
+ "setPrimaryAltDSID:"
+ "setSystemLockStateChangedHandler:"
+ "setUpdatePending:"
+ "setXPCType:forSelector:argumentIndex:ofReply:"
+ "sharedDaemonNoCreate"
+ "sortUsingSelector:"
+ "statusFlagsForEndpoint:"
+ "statusFlagsForTXTRecord:"
+ "systemLockState"
+ "systemLockStateSync"
+ "updateEncodedEndpoint:forService:usingContext:completion:"
+ "updatePending"
+ "updateStatusFlags:onEndpoint:operation:"
+ "updateStatusFlags:onTXTRecord:operation:"
+ "v16@?0@\"NSSet\"8"
+ "v16@?0@\"QRServiceDiscoveryQueryResult\"8"
+ "v24@0:8@\"HMHomeManager\"16"
+ "v24@0:8@\"NSSet\"16"
+ "v24@0:8d16"
+ "v28@0:8@\"HMHome\"16B24"
+ "v32@0:8@\"HMHome\"16@\"CLLocation\"24"
+ "v32@0:8@\"HMHome\"16@\"HMAccessoryNetworkProtectionGroup\"24"
+ "v32@0:8@\"HMHome\"16@\"HMHomeActivityStateSchedule\"24"
+ "v32@0:8@\"HMHome\"16@\"HMHomePersonManagerSettings\"24"
+ "v32@0:8@\"HMHome\"16@\"HMMediaGroupsController\"24"
+ "v32@0:8@\"HMHome\"16@\"HMMediaSystem\"24"
+ "v32@0:8@\"HMHome\"16@\"HMResidentDevice\"24"
+ "v32@0:8@\"HMHome\"16@\"NSArray\"24"
+ "v32@0:8@\"HMHome\"16@\"NSError\"24"
+ "v32@0:8@\"HMHome\"16@\"NSSet\"24"
+ "v32@0:8@\"HMHome\"16@\"NSString\"24"
+ "v32@0:8@\"HMHome\"16@\"NSTimeZone\"24"
+ "v32@0:8@\"HMHome\"16q24"
+ "v32@0:8@\"HMHomeManager\"16@\"HMAddAccessoryRequest\"24"
+ "v32@0:8@\"HMHomeManager\"16@\"HMHome\"24"
+ "v32@0:8@\"HMHomeManager\"16Q24"
+ "v36@0:8@\"HMHome\"16@\"HMActionSet\"24B32"
+ "v36@0:8I16@\"NSString\"20@?<v@?@\"NSSet\"@\"NSError\">28"
+ "v36@0:8I16@20@?28"
+ "v40@0:8@\"NSString\"16Q24@?<v@?@\"NSData\"@\"NSError\">32"
+ "v40@0:8Q16@24Q32"
+ "v48@0:8@\"NSObject<OS_xpc_object>\"16@\"NSString\"24@\"NSData\"32@?<v@?@\"NSObject<OS_xpc_object>\"@\"NSError\">40"
+ "v52@0:8@\"HMHome\"16Q24B32@\"NSDate\"36@\"NSDate\"44"
+ "v52@0:8@16Q24B32@36@44"
+ "xpcClientInterface"
+ "xpcClients"
+ "xpcConnection"
+ "xpcServerInterface"
+ "\xa1"
- "-[QRServiceDiscoveryClient _serviceDiscovery:startAdvertisement:completionHandler:]"
- "-[QRServiceDiscoveryClient _serviceDiscovery:startQuery:completionHandler:]"
- "-[QRServiceDiscoveryClient _serviceDiscovery:stopAdvertisement:completionHandler:]"
- "-[QRServiceDiscoveryClient _serviceDiscovery:stopQuery:completionHandler:]"
- "-[QRServiceDiscoveryClient _serviceDiscovery:updateAdvertisement:metadata:completionHandler:]"
- "-[QRServiceDiscoveryClient startAvertisementForAdvertiseDescriptor:withMetadata:completionHandler:]"
- "-[QRServiceDiscoveryClient startAvertisementForAdvertiseDescriptor:withMetadata:completionHandler:]_block_invoke"
- "-[QRServiceDiscoveryClient startAvertisementForAdvertiseDescriptor:withMetadata:completionHandler:]_block_invoke_2"
- "-[QRServiceDiscoveryClient startAvertisementForAdvertiseDescriptor:withMetadata:completionHandler:]_block_invoke_3"
- "-[RPServiceDiscoveryClient startAvertisementForAdvertiseDescriptor:withMetadata:completionHandler:]_block_invoke"
- "-[RPServiceDiscoveryClient startAvertisementForAdvertiseDescriptor:withMetadata:completionHandler:]_block_invoke_2"
- "-[RPServiceDiscoveryClient startAvertisementForAdvertiseDescriptor:withMetadata:completionHandler:]_block_invoke_3"
- "Failed to activate cLink: %@"
- "No message handler registered for request ID %{public}s"
- "Register eventID %{public}s registration %s with handlers: %{public}s"
- "Register requestID %{public}s registration %s with handlers: %{public}s"
- "Setting up cLink"
- "Unable to find Service Directory sender %@"
- "_initWithQueryResult:agentUUID:"
- "startAvertisementForAdvertiseDescriptor:withMetadata:completionHandler:"
- "txtRecordForApplicationService:"
```
