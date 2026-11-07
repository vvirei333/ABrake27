## WiFiPolicy

> `/System/Library/PrivateFrameworks/WiFiPolicy.framework/WiFiPolicy`

```diff

-1070.62.0.0.0
-  __TEXT.__text: 0xe2dbc
-  __TEXT.__objc_methlist: 0x13d18
-  __TEXT.__const: 0x868
-  __TEXT.__cstring: 0x25d4b
+1072.4.0.0.0
+  __TEXT.__text: 0xe3c94
+  __TEXT.__objc_methlist: 0x13e88
+  __TEXT.__const: 0x888
+  __TEXT.__cstring: 0x25deb
   __TEXT.__oslogstring: 0x550e
   __TEXT.__gcc_except_tab: 0x190c
   __TEXT.__dlopen_cstrs: 0xa8

   __TEXT.__swift5_fieldmd: 0xb4
   __TEXT.__swift5_types: 0xc
   __TEXT.__swift5_capture: 0x34
-  __TEXT.__unwind_info: 0x29e8
+  __TEXT.__unwind_info: 0x2a00
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__objc_protolist: 0x118
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__weak_got: 0x8
-  __DATA_CONST.__objc_selrefs: 0xaf20
+  __DATA_CONST.__objc_selrefs: 0xb080
   __DATA_CONST.__objc_protorefs: 0x28
   __DATA_CONST.__objc_superrefs: 0x4e0
-  __DATA_CONST.__objc_arraydata: 0x1510
-  __DATA_CONST.__got: 0xbb8
+  __DATA_CONST.__objc_arraydata: 0x1530
+  __DATA_CONST.__got: 0xbc0
   __AUTH_CONST.__const: 0x600
-  __AUTH_CONST.__cfstring: 0x20de0
-  __AUTH_CONST.__objc_const: 0x25980
+  __AUTH_CONST.__cfstring: 0x20e40
+  __AUTH_CONST.__objc_const: 0x25bf0
   __AUTH_CONST.__weak_auth_got: 0x10
   __AUTH_CONST.__objc_intobj: 0x1aa0
   __AUTH_CONST.__objc_arrayobj: 0x450

   __AUTH_CONST.__objc_doubleobj: 0x20
   __AUTH_CONST.__auth_got: 0xee0
   __AUTH_CONST.__auth_ptr: 0x0
-  __AUTH.__objc_data: 0x6b8
-  __DATA.__objc_ivar: 0x2568
+  __AUTH.__objc_data: 0x668
+  __DATA.__objc_ivar: 0x259c
   __DATA.__data: 0x1ca0
-  __DATA.__bss: 0x48
-  __DATA_DIRTY.__objc_data: 0x3558
+  __DATA.__bss: 0x49
+  __DATA_DIRTY.__objc_data: 0x35a8
   __DATA_DIRTY.__data: 0x160
   __DATA_DIRTY.__bss: 0x390
   __DATA_DIRTY.__common: 0x30

   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 7206
-  Symbols:   11986
-  CStrings:  5323
+  Functions: 7242
+  Symbols:   12038
+  CStrings:  5327
 
Symbols:
+ +[WiFiUsagePrivacyFilter isInternalOrSeedInstall]
+ -[WiFiUsageMonitor updateCellularWRMScore:forInterface:]
+ -[WiFiUsageNetworkDetails previousJoinDate]
+ -[WiFiUsageNetworkDetails setPreviousJoinDate:]
+ -[WiFiUsageNetworkSession cellularWRMScoreDidChange:]
+ -[WiFiUsageSession bssidAtSessionStart]
+ -[WiFiUsageSession cellDataIndicatorAtSessionStart]
+ -[WiFiUsageSession cellularWRMScoreDidChange:]
+ -[WiFiUsageSession hasCellDataIndicatorAtSessionStart]
+ -[WiFiUsageSession hasCellularStateAtSessionStart]
+ -[WiFiUsageSession iRatScoreAtSessionStart]
+ -[WiFiUsageSession iRatScoreBadCount]
+ -[WiFiUsageSession iRatScoreFairCount]
+ -[WiFiUsageSession iRatScoreGoodCount]
+ -[WiFiUsageSession iRatScoreUnknownCount]
+ -[WiFiUsageSession iRatScoreUnusableCount]
+ -[WiFiUsageSession latestCellularWRMScore]
+ -[WiFiUsageSession latestLqaScore]
+ -[WiFiUsageSession resetJoinSideCaptures]
+ -[WiFiUsageSession setBssidAtSessionStart:]
+ -[WiFiUsageSession setCellDataIndicatorAtSessionStart:]
+ -[WiFiUsageSession setHasCellDataIndicatorAtSessionStart:]
+ -[WiFiUsageSession setHasCellularStateAtSessionStart:]
+ -[WiFiUsageSession setIRatScoreAtSessionStart:]
+ -[WiFiUsageSession setIRatScoreBadCount:]
+ -[WiFiUsageSession setIRatScoreFairCount:]
+ -[WiFiUsageSession setIRatScoreGoodCount:]
+ -[WiFiUsageSession setIRatScoreUnknownCount:]
+ -[WiFiUsageSession setIRatScoreUnusableCount:]
+ -[WiFiUsageSession setLatestCellularWRMScore:]
+ -[WiFiUsageSession setLatestLqaScore:]
+ GCC_except_table285
+ GCC_except_table64
+ GCC_except_table65
+ _OBJC_IVAR_$_WiFiUsageNetworkDetails._previousJoinDate
+ _OBJC_IVAR_$_WiFiUsageSession._bssidAtSessionStart
+ _OBJC_IVAR_$_WiFiUsageSession._cellDataIndicatorAtSessionStart
+ _OBJC_IVAR_$_WiFiUsageSession._hasCellDataIndicatorAtSessionStart
+ _OBJC_IVAR_$_WiFiUsageSession._hasCellularStateAtSessionStart
+ _OBJC_IVAR_$_WiFiUsageSession._iRatScoreAtSessionStart
+ _OBJC_IVAR_$_WiFiUsageSession._iRatScoreBadCount
+ _OBJC_IVAR_$_WiFiUsageSession._iRatScoreFairCount
+ _OBJC_IVAR_$_WiFiUsageSession._iRatScoreGoodCount
+ _OBJC_IVAR_$_WiFiUsageSession._iRatScoreUnknownCount
+ _OBJC_IVAR_$_WiFiUsageSession._iRatScoreUnusableCount
+ _OBJC_IVAR_$_WiFiUsageSession._latestCellularWRMScore
+ _OBJC_IVAR_$_WiFiUsageSession._latestLqaScore
+ _WiFiUsageConnectionQualityRecordApnsPartialConnectivityBucket
+ _WiFiUsageConnectionQualityRecordConvertCellDataIndicatorToGEORAT
+ _WiFiUsageConnectionQualityRecordConvertLqaScoreToGEO
+ _WiFiUsageConnectionQualityRecordRssiMedianFromLQM
+ ___56-[WiFiUsageMonitor updateCellularWRMScore:forInterface:]_block_invoke
+ __isSeedInstall
+ _kPerformanceNetAttachPartialConnectivityDetections
- GCC_except_table283
- GCC_except_table62
CStrings:
+ "-[WiFiUsageMonitor updateCellularWRMScore:forInterface:]_block_invoke"
+ "HotSpot_LPEMLSR_LpscTotalIcfCount"
+ "HotSpot_LPEMLSR_MainTotalIcfCount"
+ "delta_HOTSPOT_EMLSR_LPSC_TOTAL_ICF_COUNT"
+ "delta_HOTSPOT_EMLSR_MAIN_TOTAL_ICF_COUNT"
- "%s Rejected due to [WiFiUsagePrivacyFilter isInternalInstall]\n"
```
