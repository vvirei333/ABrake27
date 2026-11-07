## PowerUI

> `/System/Library/PrivateFrameworks/PowerUI.framework/PowerUI`

```diff

-753.0.17.0.0
-  __TEXT.__text: 0xd9e98
+753.40.8.0.0
+  __TEXT.__text: 0xd9fd4
   __TEXT.__objc_methlist: 0x1d764
   __TEXT.__const: 0x6e0
-  __TEXT.__cstring: 0xf815
-  __TEXT.__oslogstring: 0xf137
+  __TEXT.__cstring: 0xf81d
+  __TEXT.__oslogstring: 0xf1a2
   __TEXT.__gcc_except_tab: 0x10c0
   __TEXT.__unwind_info: 0x2210
   __TEXT.__objc_stubs: 0x0

   __DATA_CONST.__objc_arraydata: 0x71c0
   __DATA_CONST.__got: 0x5e0
   __AUTH_CONST.__const: 0x720
-  __AUTH_CONST.__cfstring: 0xdca0
+  __AUTH_CONST.__cfstring: 0xdcc0
   __AUTH_CONST.__objc_const: 0x39ff8
   __AUTH_CONST.__objc_intobj: 0xab0
   __AUTH_CONST.__objc_arrayobj: 0x4e0

   - /usr/lib/libobjc.A.dylib
   Functions: 10656
   Symbols:   15778
-  CStrings:  3213
+  CStrings:  3216
 
Symbols:
+ -[PowerUISmartChargeManager loadDefaultsIsInitialLoad:]
- -[PowerUISmartChargeManager loadDefaults]
Functions:
~ +[PowerUISmartChargeUtilities totalPluginDurationAfter:withMinimumDuration:withPluginEvents:] : 364 -> 360
~ -[PowerUIDemoCECManager recordEntryInDefaults:withChargeDecisionReason:atBatteryLevel:] : 1948 -> 2168
~ -[PowerUISmartChargeManager initWithDefaultsDomain:contextStore:beforeHandlingBatteryChangeCallback:afterHandlingBatteryChangeCallback:] : 6668 -> 6672
~ ___136-[PowerUISmartChargeManager initWithDefaultsDomain:contextStore:beforeHandlingBatteryChangeCallback:afterHandlingBatteryChangeCallback:]_block_invoke_2.1120 -> ___136-[PowerUISmartChargeManager initWithDefaultsDomain:contextStore:beforeHandlingBatteryChangeCallback:afterHandlingBatteryChangeCallback:]_block_invoke_2.757 : 60 -> 132
~ -[PowerUISmartChargeManager loadDefaults] -> -[PowerUISmartChargeManager loadDefaultsIsInitialLoad:] : 2688 -> 2712
CStrings:
+ "Reloading defaults due to defaults-changed notification"
+ "Skipping recordEntryInDefaults: algoManager is nil"
+ "unknown"
```
