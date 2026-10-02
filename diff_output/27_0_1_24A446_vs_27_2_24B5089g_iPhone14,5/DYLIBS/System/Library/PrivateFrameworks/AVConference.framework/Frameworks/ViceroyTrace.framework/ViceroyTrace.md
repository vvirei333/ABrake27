## ViceroyTrace

> `/System/Library/PrivateFrameworks/AVConference.framework/Frameworks/ViceroyTrace.framework/ViceroyTrace`

```diff

-2235.63.1.2.0
-  __TEXT.__text: 0xb93fc
-  __TEXT.__objc_methlist: 0x9338
+2260.11.1.0.0
+  __TEXT.__text: 0xba098
+  __TEXT.__objc_methlist: 0x93f0
   __TEXT.__const: 0x27f0
-  __TEXT.__cstring: 0xf46e
-  __TEXT.__oslogstring: 0xf32a
+  __TEXT.__cstring: 0xf612
+  __TEXT.__oslogstring: 0xf4ee
   __TEXT.__gcc_except_tab: 0x38c
   __TEXT.__dlopen_cstrs: 0xa0
-  __TEXT.__unwind_info: 0x1870
+  __TEXT.__unwind_info: 0x18a0
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__objc_classlist: 0x1d8
   __DATA_CONST.__objc_protolist: 0x38
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x4700
+  __DATA_CONST.__objc_selrefs: 0x4750
   __DATA_CONST.__objc_superrefs: 0x1a8
   __DATA_CONST.__objc_arraydata: 0x220
   __DATA_CONST.__got: 0x298
   __AUTH_CONST.__const: 0x2a0
-  __AUTH_CONST.__cfstring: 0xee00
-  __AUTH_CONST.__objc_const: 0x17918
+  __AUTH_CONST.__cfstring: 0xefa0
+  __AUTH_CONST.__objc_const: 0x17870
   __AUTH_CONST.__objc_dictobj: 0x50
   __AUTH_CONST.__objc_intobj: 0x498
   __AUTH_CONST.__objc_arrayobj: 0x60
   __AUTH_CONST.__auth_got: 0x6d8
   __AUTH_CONST.__auth_ptr: 0x0
   __AUTH.__data: 0x30
-  __DATA.__objc_ivar: 0x21fc
+  __DATA.__objc_ivar: 0x21e4
   __DATA.__data: 0x750
   __DATA.__bss: 0x78
   __DATA.__common: 0x1

   - /usr/lib/libobjc.A.dylib
   - /usr/lib/libsqlite3.dylib
   - /usr/lib/libz.1.dylib
-  Functions: 4249
-  Symbols:   6736
-  CStrings:  3352
+  Functions: 4263
+  Symbols:   6744
+  CStrings:  3373
 
Symbols:
+ -[CallSegment localLinkTransport]
+ -[CallSegment setLocalLinkTransport:]
+ -[MultiwayCall jbInitialRampStats]
+ -[MultiwayCall setJBInitialRampStats:]
+ -[MultiwaySegment reportingCurrentTime]
+ -[MultiwayStream _closeAltVideoStallEpisode]
+ -[MultiwayStream significantVideoStallCountAlt]
+ -[VCAggregator reportingCurrentTime]
+ -[VCAggregatorMultiway addJBInitialRampTelemetryForCall:callReport:]
+ -[VCAggregatorMultiway addJBInitialRampTelemetryToSessionReport:]
+ -[VCAggregatorMultiway jbInitialRampStatsForSession]
+ -[VCAggregatorMultiway updateJBRampMetrics:]
+ -[VCAggregatorMultiway writeJBInitialRampStats:toReport:]
+ -[VCReportingCommon reportingCurrentTime]
+ GCC_except_table1351
+ GCC_except_table144
+ GCC_except_table146
+ GCC_except_table462
+ _OBJC_IVAR_$_CallSegment._localLinkTransport
+ _OBJC_IVAR_$_MultiwayCall._hasJBInitialRampStats
+ _OBJC_IVAR_$_MultiwayCall._jbInitialRampStats
+ _OBJC_IVAR_$_MultiwayStream._significantVideoStallCountAlt
+ _OBJC_IVAR_$_VCAggregatorFaceTime._localLinkTransport
+ ___44-[VCAggregatorMultiway updateJBRampMetrics:]_block_invoke
- -[MultiwayStream maxVideoStallCountAlt]
- GCC_except_table1344
- GCC_except_table143
- GCC_except_table145
- GCC_except_table460
- _OBJC_IVAR_$_MultiwayStream._maxVideoStallCountAlt
- _OBJC_IVAR_$_VCAggregatorFaceTime._assembledFramesWithRTXPacketsCount
- _OBJC_IVAR_$_VCAggregatorFaceTime._failedToAssembleFramesWithRTXPacketsCount
- _OBJC_IVAR_$_VCAggregatorFaceTime._isRTXTelemetryAvailable
- _OBJC_IVAR_$_VCAggregatorFaceTime._lateFramesScheduledWithRTXCount
- _OBJC_IVAR_$_VCAggregatorFaceTime._nacksFulfilled
- _OBJC_IVAR_$_VCAggregatorFaceTime._nacksFulfilledOnTime
- _OBJC_IVAR_$_VCAggregatorFaceTime._nacksPLRWithRTX
- _OBJC_IVAR_$_VCAggregatorFaceTime._nacksPLRWithoutRTX
- _OBJC_IVAR_$_VCAggregatorFaceTime._nacksSent
- _OBJC_IVAR_$_VCAggregatorFaceTime._uniqueNacksSent
CStrings:
+ " [%s] %s:%d %@(%p) JB ramp metrics payload missing participant UUID. Ignoring ..."
+ " [%s] %s:%d JB ramp metrics for unknown participant=%@. Ignoring ..."
+ " [%s] %s:%d JB ramp metrics payload missing participant UUID. Ignoring ..."
+ " [%s] %s:%d VCAggregatorMultiway: skipping uplink segment flush. currentUplinkSegmentKey=%@, currentUplinkSegmentStreamGroups=%u"
+ "-[RTCReportingAgent reportSegment:withMessageType:clientType:]"
+ "-[VCAggregatorMultiway updateJBRampMetrics:]"
+ "-[VCAggregatorMultiway updateJBRampMetrics:]_block_invoke"
+ "JBIRAVGOOO"
+ "JBIRHSA"
+ "JBIRMAXOOO"
+ "JBIRNAP"
+ "JBIRNOOO"
+ "JBIRNP"
+ "JBInitialRampAvgOOOTimeDisplacementMs"
+ "JBInitialRampHasSufficientAudioPackets"
+ "JBInitialRampMaxOOOTimeDisplacementMs"
+ "JBInitialRampNumAudioPackets"
+ "JBInitialRampNumOOOPackets"
+ "JBInitialRampNumPackets"
+ "ReportingVC [%s] %s:%d reportSegment: dropping report with no metrics. method=%u, messageType=%u"
+ "cse_"
```
