## APTransport

> `/System/Library/PrivateFrameworks/APTransport.framework/APTransport`

```diff

-980.77.1.2.0
-  __TEXT.__text: 0xb67ec
-  __TEXT.__objc_methlist: 0x1cec
-  __TEXT.__const: 0x664
-  __TEXT.__gcc_except_tab: 0xa1c
-  __TEXT.__cstring: 0x30a15
+1005.8.1.0.0
+  __TEXT.__text: 0xb714c
+  __TEXT.__objc_methlist: 0x1d2c
+  __TEXT.__const: 0x674
+  __TEXT.__gcc_except_tab: 0xa10
+  __TEXT.__cstring: 0x30ebc
   __TEXT.__dlopen_cstrs: 0x1f3
   __TEXT.__oslogstring: 0x31c
-  __TEXT.__unwind_info: 0x2d60
+  __TEXT.__unwind_info: 0x2d50
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x3e08
+  __DATA_CONST.__const: 0x3e28
   __DATA_CONST.__objc_classlist: 0x68
-  __DATA_CONST.__objc_catlist: 0x8
+  __DATA_CONST.__objc_catlist: 0x10
   __DATA_CONST.__objc_protolist: 0x68
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x1b98
+  __DATA_CONST.__objc_selrefs: 0x1bd8
   __DATA_CONST.__objc_protorefs: 0x18
   __DATA_CONST.__objc_superrefs: 0x60
   __DATA_CONST.__objc_arraydata: 0x30
   __DATA_CONST.__got: 0x400
-  __AUTH_CONST.__const: 0x2dd8
-  __AUTH_CONST.__cfstring: 0x6600
-  __AUTH_CONST.__objc_const: 0x2498
+  __AUTH_CONST.__const: 0x2d78
+  __AUTH_CONST.__cfstring: 0x6660
+  __AUTH_CONST.__objc_const: 0x24f8
   __AUTH_CONST.__objc_arrayobj: 0x48
   __AUTH_CONST.__objc_intobj: 0x78
   __AUTH_CONST.__auth_got: 0x0
   __AUTH.__objc_data: 0x140
   __AUTH.__data: 0x2c0
   __DATA.__objc_ivar: 0x18c
-  __DATA.__data: 0x14a0
-  __DATA.__bss: 0x130
+  __DATA.__data: 0x1430
+  __DATA.__bss: 0x120
   __DATA_DIRTY.__objc_data: 0x2d0
   __DATA_DIRTY.__data: 0xcb0
   __DATA_DIRTY.__bss: 0x2c8

   - /System/Library/PrivateFrameworks/WiFiPeerToPeer.framework/WiFiPeerToPeer
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 5367
-  Symbols:   4406
-  CStrings:  4572
+  Functions: 5364
+  Symbols:   4422
+  CStrings:  4587
 
Symbols:
+ -[WiFiAwareDatapathInfo(APTNANDataSession) peerSignalStrength]
+ GCC_except_table29
+ GCC_except_table45
+ GCC_except_table63
+ GCC_except_table69
+ GCC_except_table70
+ GCC_except_table8
+ _APAdvertiserInfoCopyNameWithoutMDNSLabelSuffix
+ _APBrowserSetAirPlayInfo
+ _APSSignalStrengthDBmFromScaled
+ _APTDiagnosticSendStreamInfo
+ _APTNANDataSessionGetDatapathRSSI
+ _APTransportConnectionCopyProperty
+ _APTransportConnectionGetDSCPForSocketQoS
+ _APTransportConnectionQoSFromSocketQoS
+ _APTransportDeviceForwardAirPlayInfoToBrowser
+ _APTransportSocketQoSFromConnectionQoS
+ _APTransportTrafficCapturePrepareForCollection
+ _APTransportTrafficCaptureWriteUDPMessage
+ _CFURLCreateFromFileSystemRepresentation
+ _FigCFSetContainsValue
+ _FigCFSetGetCount
+ _FigFileMarkPurgeable
+ _OUTLINED_FUNCTION_61
+ _OUTLINED_FUNCTION_62
+ _OUTLINED_FUNCTION_63
+ _OUTLINED_FUNCTION_64
+ _OUTLINED_FUNCTION_65
+ _OUTLINED_FUNCTION_66
+ __APTNANDataSessionCopyDatapathIDAndPeerMAC
+ __OBJC_$_CATEGORY_INSTANCE_METHODS_WiFiAwareDatapathInfo_$_APTNANDataSession
+ __OBJC_$_CATEGORY_WiFiAwareDatapathInfo_$_APTNANDataSession
+ ___62-[WiFiAwareDatapathInfo(APTNANDataSession) peerSignalStrength]_block_invoke
+ ___APBrowserSetAirPlayInfo_block_invoke
+ ___APTransportTrafficCapturePrepareForCollection_block_invoke
+ ___APTransportTrafficCaptureWriteUDPMessage_block_invoke
+ ___block_descriptor_48_e8_32o40o_e44_v16?0"WiFiAwareDatapathPerformanceReport"8ls32l8s40l8
+ ___strlcpy_chk
+ _nw_content_context_set_metadata_for_protocol
+ _nw_ip_create_metadata
+ _nw_ip_metadata_set_dscp_value
+ _unbufnwGuts_setQualityOfServiceInternal
- GCC_except_table26
- GCC_except_table31
- GCC_except_table34
- GCC_except_table61
- GCC_except_table62
- GCC_except_table67
- GCC_except_table68
- _APTDiagnosticMulticastDataToAllHosts
- _APTPacingControllerReset
- _APTransportTrafficCaptureFlushForSysdiagnose
- _APTransportTrafficCaptureWriteMulticastMessage
- _APTransportWifiManagerClientCreate
- _APTransportWifiManagerClientRegister
- _APTransportWifiManagerClientUnregister
- _CMBaseObjectCopyProperty
- __APAdvertiserInfoCopyAndRemoveMDNSLabelSuffix
- ___APTransportTrafficCaptureFlushForSysdiagnose_block_invoke
- ___APTransportTrafficCaptureWriteMulticastMessage_block_invoke
- ___APTransportWifiManagerClientRegister_block_invoke
- ___APTransportWifiManagerClientUnregister_block_invoke
- _gLogCategory_APTransportWifiManagerClient
- _kAPTransportProperty_WifiManagerClient
- _kAPTransportWifiManagerClientClass
- _session_performWifiManagerRegistration
- _wifiManagerClient_Finalize
- _wifiManagerClient_getTypeID
CStrings:
+ "%@/airplaysnoop_*.atslite"
+ "%s external AirPlay info for device with id: %@ name: %'@ from source: [%{ptr}]"
+ "1005.8.1"
+ "APAdvertiserInfoCopyNameWithoutMDNSLabelSuffix"
+ "APBrowserSetAirPlayInfo"
+ "APTNANDataSessionGetDatapathRSSI"
+ "APTransportDeviceForwardAirPlayInfoToBrowser"
+ "APTransportTrafficCapturePrepareForCollection"
+ "APTransportTrafficCaptureWriteUDPMessage"
+ "APTransportTrafficCaptureWriteUDPMessage_block_invoke"
+ "Add external source [%{ptr}] for device with id: %@. %ld registered sources"
+ "Dropping external AirPlay info for device with id: %@. Last source withdrew"
+ "Dropping external AirPlay info for device with id: %@: deviceInfo caught up"
+ "External AirPlay info for device with id: %@ is held until Discovery finds it"
+ "ExternalInfoSources"
+ "Failed to create advertiser info for %@."
+ "OSStatus APTransportTrafficCapturePrepareForCollection(APTransportTrafficCaptureRef, CFAllocatorRef, CFStringRef *)_block_invoke"
+ "OSStatus APTransportTrafficCaptureWriteUDPMessage(APTransportTrafficCaptureRef, sockaddr_ip *, sockaddr_ip *, CFDataRef, APTransportTrafficCaptureMessageDirection)_block_invoke"
+ "OSStatus browser_addOrUpdateExternalAirPlayInfo(APBrowserRef, CFNumberRef, CFNumberRef, CFStringRef, CFDataRef)"
+ "OSStatus browser_createAdvertiserInfoForDevice(APBrowserRef, CFNumberRef, CFDictionaryRef, APAdvertiserInfoRef *)"
+ "OSStatus browser_removeExternalAirPlayInfo(APBrowserRef, CFNumberRef, CFNumberRef)"
+ "Remove external source [%{ptr}] for device with id: %@. %ld registered sources"
+ "Update"
+ "[%{ptr}] APTransportKeepAliveControllerStandard created for stream [%{ptr}] with queue QoS class %u\n"
+ "[%{ptr}] Capturing UDP message (len: %lu, direction: %d)"
+ "[%{ptr}] Deleted old capture file (%s; freed %lu bytes, %lu bytes / %lu file(s) remain): %s\n"
+ "[%{ptr}] Enforcing storage limits: %lu evictable capture file(s), %lu bytes across all captures (limits: %d file(s), %d bytes)\n"
+ "[%{ptr}] Most recent capture (%lu bytes) alone exceeds the %d-byte budget; keeping it instead of deleting the just-completed snoop\n"
+ "[%{ptr}] PrepareForCollection fflush failed (continuing): %s (errno: %d, %s)\n"
+ "[%{ptr}] PrepareForCollection flushed: %s\n"
+ "[%{ptr}] PrepareForCollection fsync failed (continuing): %s (errno: %d, %s)\n"
+ "[%{ptr}] PrepareForCollection: no active capture file, nothing to flush\n"
+ "[%{ptr}] Renamed capture file to: %s, %s%?{end}: %#m\n"
+ "[%{ptr}] addBytesSent nowNs=%llu epochNs=%llu bytesSent=%llu burstStartNs=%llu burstBytesSent=%llu"
+ "[%{ptr}] begYield nowNs=%llu epochNs=%llu bytesSent=%llu burstStartNs=%llu burstBytesSent=%llu"
+ "[%{ptr}] created leewayNs=%llu minYieldNs=%llu maxBehindNs=%llu"
+ "[%{ptr}] re-anchor behindNs=%llu"
+ "[%{ptr}] socketQoS=%u (trafficClass=%u, dscp=%u)"
+ "_APTNANDataSessionCopyDatapathIDAndPeerMAC"
+ "_APTNANDataSessionCreateDatapathInfo"
+ "browser_addOrUpdateExternalAirPlayInfo"
+ "browser_copyEffectiveAirPlayInfo"
+ "browser_removeExternalAirPlayInfo"
+ "browser_setAirPlayInfo"
+ "could not mark purgeable"
+ "marked purgeable"
+ "over file-count limit"
+ "over size budget"
+ "pacingController_maxBehindUs"
+ "unbufnwQoS"
+ "v16@?0@\"WiFiAwareDatapathPerformanceReport\"8"
+ "void browser_dropExternalAirPlayInfoIfDeviceInfoCaughtUp(APBrowserRef, CFNumberRef, CFDictionaryRef)"
+ "void unbufnwGuts_setQualityOfServiceInternal(APTransportConnectionUnbufferedNWGutsRef, int)"
- "980.77.1.2"
- "APTPacingControllerReset"
- "APTransportTrafficCaptureWriteMulticastMessage"
- "APTransportTrafficCaptureWriteMulticastMessage_block_invoke"
- "APTransportWifiManagerClient"
- "APTransportWifiManagerClient %{ptr} created\n"
- "APTransportWifiManagerClient %{ptr} finalizing\n"
- "APTransportWifiManagerClient.queue"
- "APTransportWifiManagerClientCreate"
- "Created CWFInterface [%{ptr}]\n"
- "Destroying CWFInterface [%{ptr}]\n"
- "OSStatus APTPacingControllerReset(APTPacingControllerRef)"
- "OSStatus APTransportTrafficCaptureFlushForSysdiagnose(APTransportTrafficCaptureRef)_block_invoke"
- "OSStatus APTransportTrafficCaptureWriteMulticastMessage(APTransportTrafficCaptureRef, sockaddr_ip *, sockaddr_ip *, CFDataRef, APTransportTrafficCaptureMessageDirection)_block_invoke"
- "OSStatus APTransportWifiManagerClientCreate(CFAllocatorRef, APTransportWifiManagerClientRef *)"
- "OSStatus browser_createAdvertiserInfoForDevice(CFAllocatorRef, CFDictionaryRef, LogCategory *, APAdvertiserInfoRef *)"
- "OSStatus wifiManagerClient_registerInternal(APTransportWifiManagerClientRef)"
- "OSStatus wifiManagerClient_unregisterInternal(APTransportWifiManagerClientRef)"
- "WifiManagerClient"
- "[%{ptr}] APTransportKeepAliveControllerStandard created for stream [%{ptr}]\n"
- "[%{ptr}] Capturing multicast message (len: %lu, direction: %d)"
- "[%{ptr}] Deleted old capture file: %s\n"
- "[%{ptr}] FlushForSysdiagnose completed: %s\n"
- "[%{ptr}] FlushForSysdiagnose fflush failed: %s (errno: %d, %s)\n"
- "[%{ptr}] FlushForSysdiagnose fsync failed: %s (errno: %d, %s)\n"
- "[%{ptr}] FlushForSysdiagnose: no active capture file, nothing to flush\n"
- "[%{ptr}] Register: RegistrationCount = %d\n"
- "[%{ptr}] Renamed capture file to: %s\n"
- "[%{ptr}] Unregister: RegistrationCount = %d\n"
- "[%{ptr}] addBytesSent nowNs=%llu epochNs=%llu bytesSent=%llu"
- "[%{ptr}] begYield nowNs=%llu epochNs=%llu bytesSent=%llu"
- "[%{ptr}] created"
- "[%{ptr}] reset"
- "[%{ptr}] socketQoS=%u (trafficClass=%u)"
- "_APAdvertiserInfoCopyAndRemoveMDNSLabelSuffix"
- "session_performWifiManagerRegistration"
- "void wifiManagerClient_Finalize(CFTypeRef)"
- "wifiManagerClient_registerInternal"
```
