## OSIntelligence

> `/System/Library/PrivateFrameworks/OSIntelligence.framework/OSIntelligence`

```diff

-286.2.1.0.0
-  __TEXT.__text: 0x1b5dc
-  __TEXT.__objc_methlist: 0x2338
-  __TEXT.__const: 0x1b8
-  __TEXT.__cstring: 0x1b54
-  __TEXT.__oslogstring: 0x2820
-  __TEXT.__gcc_except_tab: 0x6c8
-  __TEXT.__unwind_info: 0x9e8
+288.40.6.0.0
+  __TEXT.__text: 0x1e468
+  __TEXT.__objc_methlist: 0x25f0
+  __TEXT.__const: 0x1e0
+  __TEXT.__cstring: 0x1f11
+  __TEXT.__oslogstring: 0x2ccc
+  __TEXT.__gcc_except_tab: 0x730
+  __TEXT.__unwind_info: 0xab8
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x8f0
+  __DATA_CONST.__const: 0x990
   __DATA_CONST.__objc_classlist: 0xd8
   __DATA_CONST.__objc_protolist: 0x78
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x1278
+  __DATA_CONST.__objc_selrefs: 0x1458
   __DATA_CONST.__objc_protorefs: 0x20
   __DATA_CONST.__objc_superrefs: 0xa8
   __DATA_CONST.__objc_arraydata: 0x8
-  __DATA_CONST.__got: 0x1f8
-  __AUTH_CONST.__const: 0x7a0
-  __AUTH_CONST.__cfstring: 0x1660
-  __AUTH_CONST.__objc_const: 0x3188
-  __AUTH_CONST.__objc_intobj: 0x78
+  __DATA_CONST.__got: 0x208
+  __AUTH_CONST.__const: 0x7c0
+  __AUTH_CONST.__cfstring: 0x1aa0
+  __AUTH_CONST.__objc_const: 0x34b8
+  __AUTH_CONST.__objc_intobj: 0x90
   __AUTH_CONST.__objc_arrayobj: 0x18
   __AUTH_CONST.__auth_got: 0x0
   __AUTH.__objc_data: 0x1e0
-  __DATA.__objc_ivar: 0x1e4
+  __DATA.__objc_ivar: 0x228
   __DATA.__data: 0x5a0
-  __DATA.__bss: 0x10
+  __DATA.__bss: 0x20
   __DATA_DIRTY.__objc_data: 0x690
   __DATA_DIRTY.__bss: 0x98
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation

   - /usr/lib/libMobileGestalt.dylib
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 938
-  Symbols:   1424
-  CStrings:  455
+  Functions: 1030
+  Symbols:   1525
+  CStrings:  523
 
Symbols:
+ +[_OSIBLMAnalyticsHandler allNotificationAnalyticsKeys]
+ +[_OSIBLMAnalyticsHandler analyticsKeyForNotificationDecision:]
+ -[_OSIBLMAnalyticsHandler historicalNotificationDataForDate:]
+ -[_OSIBLMAnalyticsHandler recordNotificationDecision:]
+ -[_OSIBLMAnalyticsHandler windowedNotificationSumsEndingDate:days:suffix:]
+ -[_OSIBLManager analyticsHandler]
+ -[_OSIBLManager earlyThermalNotifyToken]
+ -[_OSIBLManager forwardFeatureGateToPerformanceControl:]
+ -[_OSIBLManager forwardThermalGateToPerformanceControl]
+ -[_OSIBLManager isCurrentDrainUnusualWithDecision:]
+ -[_OSIBLManager isIBLMEnabledUnsynchronized]
+ -[_OSIBLManager isLowPowerModeActive]
+ -[_OSIBLManager isThermalMitigationEnabledByDefaults]
+ -[_OSIBLManager isThermallyElevated]
+ -[_OSIBLManager lowPowerModeNotificationHandler]
+ -[_OSIBLManager lpmNotifyToken]
+ -[_OSIBLManager registerForConsoleModeChanges]
+ -[_OSIBLManager registerForLowPowerModeChanges]
+ -[_OSIBLManager registerForThermalChanges]
+ -[_OSIBLManager setAnalyticsHandler:]
+ -[_OSIBLManager setEarlyThermalNotifyToken:]
+ -[_OSIBLManager setIsLowPowerModeActive:]
+ -[_OSIBLManager setIsThermallyElevated:]
+ -[_OSIBLManager setLpmNotifyToken:]
+ -[_OSIBLManager setThermalPressureNotifyToken:]
+ -[_OSIBLManager setTrialThermalMitigationEnabled:]
+ -[_OSIBLManager thermalNotificationHandler]
+ -[_OSIBLManager thermalPressureNotifyToken]
+ -[_OSIBLManager trialThermalMitigationEnabled]
+ -[_OSICLPCInterface batteryLifeChallenged]
+ -[_OSICLPCInterface clpcMitigationsEnabled]
+ -[_OSICLPCInterface consoleModeActive]
+ -[_OSICLPCInterface featureEnabled]
+ -[_OSICLPCInterface lastPushedState]
+ -[_OSICLPCInterface lowPowerModeActive]
+ -[_OSICLPCInterface reconcile]
+ -[_OSICLPCInterface resolveAndActuate:]
+ -[_OSICLPCInterface setBatteryLifeChallenged:]
+ -[_OSICLPCInterface setClpcMitigationsEnabled:]
+ -[_OSICLPCInterface setConsoleModeActive:]
+ -[_OSICLPCInterface setFeatureEnabled:]
+ -[_OSICLPCInterface setLastPushedState:]
+ -[_OSICLPCInterface setLowPowerModeActive:]
+ -[_OSICLPCInterface setTestOverride:]
+ -[_OSICLPCInterface setThermalMitigationsEnabled:]
+ -[_OSICLPCInterface setThermallyChallenged:]
+ -[_OSICLPCInterface setViewfinderActive:]
+ -[_OSICLPCInterface shouldEngage]
+ -[_OSICLPCInterface stateDescription]
+ -[_OSICLPCInterface testOverride]
+ -[_OSICLPCInterface thermalMitigationsEnabled]
+ -[_OSICLPCInterface thermallyChallenged]
+ -[_OSICLPCInterface updateCLPCMitigationsEnabled:]
+ -[_OSICLPCInterface updateFeatureEnabled:]
+ -[_OSICLPCInterface updateSource:engaged:]
+ -[_OSICLPCInterface updateSuppressor:active:]
+ -[_OSICLPCInterface updateTestOverride:]
+ -[_OSICLPCInterface updateThermalMitigationsEnabled:]
+ -[_OSICLPCInterface viewfinderActive]
+ GCC_except_table57
+ GCC_except_table60
+ GCC_except_table64
+ _OBJC_IVAR_$__OSIBLManager._analyticsHandler
+ _OBJC_IVAR_$__OSIBLManager._earlyThermalNotifyToken
+ _OBJC_IVAR_$__OSIBLManager._isLowPowerModeActive
+ _OBJC_IVAR_$__OSIBLManager._isThermallyElevated
+ _OBJC_IVAR_$__OSIBLManager._lpmNotifyToken
+ _OBJC_IVAR_$__OSIBLManager._thermalPressureNotifyToken
+ _OBJC_IVAR_$__OSIBLManager._trialThermalMitigationEnabled
+ _OBJC_IVAR_$__OSICLPCInterface._batteryLifeChallenged
+ _OBJC_IVAR_$__OSICLPCInterface._clpcMitigationsEnabled
+ _OBJC_IVAR_$__OSICLPCInterface._consoleModeActive
+ _OBJC_IVAR_$__OSICLPCInterface._featureEnabled
+ _OBJC_IVAR_$__OSICLPCInterface._lastPushedState
+ _OBJC_IVAR_$__OSICLPCInterface._lowPowerModeActive
+ _OBJC_IVAR_$__OSICLPCInterface._testOverride
+ _OBJC_IVAR_$__OSICLPCInterface._thermalMitigationsEnabled
+ _OBJC_IVAR_$__OSICLPCInterface._thermallyChallenged
+ _OBJC_IVAR_$__OSICLPCInterface._viewfinderActive
+ ___25-[_OSICLPCInterface stop]_block_invoke
+ ___30-[_OSICLPCInterface reconcile]_block_invoke
+ ___32-[_OSIBLManager handleCallback:]_block_invoke_2
+ ___32-[_OSIBLManager handleCallback:]_block_invoke_3
+ ___37-[_OSICLPCInterface stateDescription]_block_invoke
+ ___40-[_OSICLPCInterface updateTestOverride:]_block_invoke
+ ___42-[_OSIBLManager registerForThermalChanges]_block_invoke
+ ___42-[_OSICLPCInterface updateFeatureEnabled:]_block_invoke
+ ___42-[_OSICLPCInterface updateSource:engaged:]_block_invoke
+ ___45-[_OSICLPCInterface updateSuppressor:active:]_block_invoke
+ ___46-[_OSIBLManager registerForConsoleModeChanges]_block_invoke
+ ___47-[_OSIBLManager registerForLowPowerModeChanges]_block_invoke
+ ___50-[_OSICLPCInterface updateCLPCMitigationsEnabled:]_block_invoke
+ ___53-[_OSICLPCInterface updateThermalMitigationsEnabled:]_block_invoke
+ ___54-[_OSIBLMAnalyticsHandler recordNotificationDecision:]_block_invoke
+ ___55+[_OSIBLMAnalyticsHandler allNotificationAnalyticsKeys]_block_invoke
+ ___61-[_OSIBLMAnalyticsHandler historicalNotificationDataForDate:]_block_invoke
+ ___74-[_OSIBLMAnalyticsHandler windowedNotificationSumsEndingDate:days:suffix:]_block_invoke
+ ___NSDictionary0__struct
+ ___block_descriptor_48_e8_32s40s_e5_v8?0ls32l8s40l8
+ ___block_descriptor_49_e8_32s_e5_v8?0ls32l8
+ ___block_descriptor_64_e8_32s40s48s56s_e39_v32?0"NSString"8"NSDictionary"16^B24ls32l8s40l8s48l8s56l8
+ _allNotificationAnalyticsKeys.keys
+ _allNotificationAnalyticsKeys.onceToken
+ _dispatch_assert_queue$V2
+ _kOSThermalNotificationPressureLevelName
- -[_OSICLPCInterface updatePerformanceControlWithMitigation:]
- ___60-[_OSICLPCInterface updatePerformanceControlWithMitigation:]_block_invoke
- ___block_descriptor_56_e8_32s40s_e5_v8?0ls32l8s40l8
- _notify_cancel
CStrings:
+ "%"
+ "%{public}s IBLM mitigation for CLPC (batteryLife %d, thermal %d, consoleMode %d, viewfinder %d, LPM %d, feature %d, trial %d, thermalTrial %d, override %@)"
+ "Disengaging from"
+ "Engaging into"
+ "Failed to register for console mode changes"
+ "Failed to register for early thermal warning"
+ "Failed to register for low power mode changes"
+ "Failed to register for thermal pressure level"
+ "IBLMNotificationDecision"
+ "IBLM_ThermalMitigationEnabled"
+ "Last30Days"
+ "Last7Days"
+ "Low Power Mode is now %{public}s"
+ "NotificationDecision"
+ "Perf mitigation Trial gate is now %{public}s"
+ "Perf mitigation feature gate is now %{public}s"
+ "Perf mitigation source %ld is now %{public}s"
+ "Perf mitigation suppressor %ld is now %{public}s"
+ "Perf mitigation test override cleared"
+ "Perf mitigation test override forcing %{public}s"
+ "Perf mitigation thermal Trial gate is now %{public}s"
+ "Reconciling perf mitigation state with CLPC"
+ "Recorded notification decision %{public}@ for %@ (now %ld)"
+ "Thermal perf mitigation gate: trial %{public}d, defaults %{public}d -> %{public}d"
+ "Thermal state is now %{public}s (earlyThermalWarning %d, thermalPressureLevel %llu)"
+ "Unknown perf mitigation source %ld"
+ "Unknown perf mitigation suppressor %ld"
+ "Unsupported notification decision for analytics %ld"
+ "active"
+ "batteryLifeChallenged"
+ "clear"
+ "closed"
+ "clpcMitigationsEnabled"
+ "com.apple.osintelligence.iblm.recordNotificationDecision"
+ "com.apple.system.earlythermalnotification"
+ "com.apple.system.lowpowermode"
+ "consoleModeActive"
+ "disengaged"
+ "elevated"
+ "engaged"
+ "featureEnabled"
+ "historicalIBLMNotificationCounts"
+ "lowPowerModeActive"
+ "mitigationOption"
+ "never pushed"
+ "nominal"
+ "none"
+ "notificationEvaluationCount"
+ "notificationSuppressedByBackstop"
+ "notificationSuppressedByCooldown"
+ "notificationSuppressedByDisabled"
+ "notificationSuppressedByInsufficientData"
+ "notificationSuppressedByNotUnusual"
+ "notificationSuppressedBySlotOutOfRange"
+ "notificationSuppressedByStartHour"
+ "notify_get_state() for early thermal warning failed with error %u"
+ "notify_get_state() for low power mode failed with error %u"
+ "notify_get_state() for thermal pressure failed with error %u"
+ "off"
+ "on"
+ "onboardingNotificationCount"
+ "open"
+ "shouldEngage"
+ "testOverride"
+ "thermalMitigationEnabled"
+ "thermalMitigationsEnabled"
+ "thermalSupported"
+ "thermallyChallenged"
+ "unusualDrainNotificationCount"
+ "viewfinderActive"
- "Disengaging from IBLM mitigation for CLPC"
- "Engaging into IBLM mitigation for CLPC"
```
