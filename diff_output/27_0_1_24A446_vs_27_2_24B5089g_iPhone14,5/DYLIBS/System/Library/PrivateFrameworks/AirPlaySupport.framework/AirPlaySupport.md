## AirPlaySupport

> `/System/Library/PrivateFrameworks/AirPlaySupport.framework/AirPlaySupport`

```diff

-980.77.1.2.0
-  __TEXT.__text: 0xcc36c
+1005.8.1.0.0
+  __TEXT.__text: 0xcc820
   __TEXT.__objc_methlist: 0x374
-  __TEXT.__const: 0xf18
+  __TEXT.__const: 0xf38
   __TEXT.__dlopen_cstrs: 0x158
   __TEXT.__gcc_except_tab: 0x368
-  __TEXT.__cstring: 0x33c69
+  __TEXT.__cstring: 0x33f56
   __TEXT.__oslogstring: 0x252
   __TEXT.__unwind_info: 0x1e00
   __TEXT.__objc_stubs: 0x0

   __AUTH.__data: 0x350
   __DATA.__objc_ivar: 0x2c
   __DATA.__data: 0x2778
-  __DATA.__bss: 0xc10
+  __DATA.__bss: 0xc08
   __DATA_DIRTY.__objc_data: 0x1e0
   __DATA_DIRTY.__data: 0x8a8
-  __DATA_DIRTY.__bss: 0x5f8
+  __DATA_DIRTY.__bss: 0x600
   - /System/Library/Frameworks/AudioToolbox.framework/AudioToolbox
   - /System/Library/Frameworks/CoreBluetooth.framework/CoreBluetooth
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation

   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libc++.1.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 2624
-  Symbols:   4970
-  CStrings:  4458
+  Functions: 2627
+  Symbols:   4973
+  CStrings:  4484
 
Symbols:
+ GCC_except_table1157
+ GCC_except_table1185
+ GCC_except_table1306
+ GCC_except_table1474
+ GCC_except_table1476
+ GCC_except_table1601
+ GCC_except_table1605
+ GCC_except_table1797
+ GCC_except_table1800
+ GCC_except_table1803
+ GCC_except_table1807
+ GCC_except_table1972
+ GCC_except_table2222
+ GCC_except_table2525
+ GCC_except_table2530
+ GCC_except_table2539
+ GCC_except_table2598
+ GCC_except_table2599
+ GCC_except_table291
+ GCC_except_table293
+ GCC_except_table557
+ GCC_except_table590
+ GCC_except_table976
+ _APSCMTimeMakeWithRTPTimestamp
+ _APSIsUpdateInfoForwardingEnabled
+ _APSIsUpdateInfoForwardingEnabled.sOnce
+ _APSIsUpdateInfoForwardingEnabled.sUpdateInfoForwardingEnabled
+ _APSSignalStrengthDBmFromScaled
+ _APSSignalStrengthScaledFromDBm
+ _FigSignalErrorAt3
+ ___APSIsUpdateInfoForwardingEnabled_block_invoke
- GCC_except_table1156
- GCC_except_table1182
- GCC_except_table1305
- GCC_except_table1471
- GCC_except_table1473
- GCC_except_table1600
- GCC_except_table1604
- GCC_except_table1796
- GCC_except_table1799
- GCC_except_table1802
- GCC_except_table1806
- GCC_except_table1971
- GCC_except_table2221
- GCC_except_table2522
- GCC_except_table2527
- GCC_except_table2536
- GCC_except_table2592
- GCC_except_table2596
- GCC_except_table290
- GCC_except_table292
- GCC_except_table556
- GCC_except_table589
- GCC_except_table975
- _APSIsHomeKitManagerEnabled
- _APSIsHomeKitManagerEnabled.sIsHomeKitManagerEnabled
- _APSIsHomeKitManagerEnabled.sIsHomeKitManagerEnabledOnce
- _FigSignalErrorAtGM
- ___APSIsHomeKitManagerEnabled_block_invoke
CStrings:
+ "### %@ [Glitch Underrun Start]. SeqNum: %u. RTPStartTime: %lld.\n"
+ "%@ Pre-warming audio HW\n"
+ "%s%s%s signalled err=%d (%s) (%s) at %s:%d"
+ "-108"
+ "-6705"
+ "-877"
+ "-878"
+ "-879"
+ "-880"
+ "APSAPAPExtensionLoudnessInfoUtils.c"
+ "APSAudioFormatDescription.c"
+ "APSAudioFormatDescriptionList.c"
+ "APSSharedRingBuffer.c"
+ "Could not allocate APSAudioFormatDescription"
+ "Could not allocate APSAudioFormatDescriptionList"
+ "Failed to create bufferMemObject"
+ "Failed to create stateMemObject"
+ "ProcessLatencyReport endpointID: %@ inIsSessionReport: %s networkLatencyMs: %u prevMaxNetworkLatencyMs: %u outOfBoundsCount: %.0lf tloVarEstimateMs: %llu"
+ "[%{ptr}] Recorded %s range %u..<%u, EffectiveTUR: %u..<%u, flushed/pruned ranges: %@"
+ "almEndToEndLatencyOverrideP2PMs"
+ "bufferMemory region maps to NULL"
+ "bufferMemorySize is zero"
+ "flushed"
+ "hoseAUAudioIOAssertionDurationSecs"
+ "kCMBaseObjectError_AllocationFailed"
+ "loudness key missing"
+ "pruned"
+ "sample peak key missing"
+ "stateMemObject maps to NULL"
+ "stateMemoryLength < sizeof(RingState)"
+ "true peak key missing"
+ "updateInfoForwardEnabled"
+ "void glitchReporter_LogGlitch(CFStringRef, APSGlitchReporterLogEventType, uint32_t, int64_t, Float64)"
- "%s signalled err=%d at <>:%d"
- "Home"
- "MediaGroups"
- "ProcessLatencyReport endpointID: %@ inIsSessionReport: %s networkLatencyMs: %u prevMaxNetworkLatencyMs: %u outOfBoundsCount: %.0lf duringInitialRamp: %s tloVarEstimateMs: %llu"
- "[%{ptr}] Recorded flushed range %u..<%u, flushed ranges: %@"
- "tightSyncUUID"
- "void glitchReporter_LogGlitch(CFStringRef, uint32_t, int64_t, Float64)"
```
