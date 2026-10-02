## mobilerepaird

> `/usr/libexec/mobilerepaird`

### Sections with Same Size but Changed Content

- `__TEXT.__constg_swiftt`
- `__TEXT.__swift5_typeref`
- `__DATA_CONST.__objc_classlist`
- `__DATA_CONST.__objc_protolist`
- `__DATA_CONST.__objc_protorefs`
- `__DATA_CONST.__objc_superrefs`
- `__DATA_CONST.__objc_intobj`
- `__DATA_CONST.__auth_ptr`
- `__DATA.__objc_const`
- `__DATA.__objc_data`
- `__DATA.__data`

```diff

-1307.2.4.0.0
-  __TEXT.__text: 0x1cea4
-  __TEXT.__auth_stubs: 0x980
-  __TEXT.__objc_stubs: 0x3660
-  __TEXT.__objc_methlist: 0x17fc
-  __TEXT.__const: 0x152
-  __TEXT.__gcc_except_tab: 0x988
-  __TEXT.__objc_methname: 0x3f4a
-  __TEXT.__cstring: 0x3de6
-  __TEXT.__oslogstring: 0x2ad9
+1307.40.51.0.0
+  __TEXT.__text: 0x1de8c
+  __TEXT.__auth_stubs: 0x9a0
+  __TEXT.__objc_stubs: 0x37a0
+  __TEXT.__objc_methlist: 0x1844
+  __TEXT.__const: 0x162
+  __TEXT.__gcc_except_tab: 0x980
+  __TEXT.__objc_methname: 0x40f9
+  __TEXT.__cstring: 0x3f89
+  __TEXT.__oslogstring: 0x2e00
   __TEXT.__objc_classname: 0x55f
-  __TEXT.__objc_methtype: 0xce2
+  __TEXT.__objc_methtype: 0xd1b
   __TEXT.__ustring: 0x12a
   __TEXT.__constg_swiftt: 0x38
   __TEXT.__swift5_typeref: 0x3b
   __TEXT.__swift5_fieldmd: 0x10
   __TEXT.__swift5_capture: 0x20
   __TEXT.__swift5_types: 0x4
-  __TEXT.__info_plist: 0x57d
-  __TEXT.__unwind_info: 0x718
-  __DATA_CONST.__const: 0xbc0
-  __DATA_CONST.__cfstring: 0x3e40
+  __TEXT.__info_plist: 0x583
+  __TEXT.__unwind_info: 0x738
+  __DATA_CONST.__const: 0xcc0
+  __DATA_CONST.__cfstring: 0x3fe0
   __DATA_CONST.__objc_classlist: 0x160
   __DATA_CONST.__objc_protolist: 0x58
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__objc_protorefs: 0x18
   __DATA_CONST.__objc_superrefs: 0x118
   __DATA_CONST.__objc_intobj: 0x48
-  __DATA_CONST.__auth_got: 0x4d0
-  __DATA_CONST.__got: 0x490
+  __DATA_CONST.__auth_got: 0x4e0
+  __DATA_CONST.__got: 0x4b0
   __DATA_CONST.__auth_ptr: 0x8
   __DATA.__objc_const: 0x2e28
-  __DATA.__objc_selrefs: 0x1058
+  __DATA.__objc_selrefs: 0x10a8
   __DATA.__objc_ivar: 0x12c
   __DATA.__objc_data: 0xe20
   __DATA.__data: 0x458

   - /usr/lib/swift/libswiftXPC.dylib
   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswiftos.dylib
-  Functions: 594
-  Symbols:   292
-  CStrings:  1549
+  Functions: 609
+  Symbols:   298
+  CStrings:  1583
 
Symbols:
+ _OBJC_CLASS_$_CRUtils
+ _OBJC_CLASS_$_NSThread
+ _kCRNetworkRetryDelaySeconds
+ _kCRNetworkRetryMaxAttempts
+ _objc_retain_x28
+ _objc_retain_x9
CStrings:
+ "-[MRBaseComponentHandler sendFinishRepairNotificationShownAnalytics]_block_invoke"
+ "-[MRComponentHealthHandler sendDailyAnalyticsForModuleType:eventType:]_block_invoke"
+ "Attempt:     %lu/%lu\n"
+ "B56@0:8Q16d24@32@40@?48"
+ "CRShipModeOperationScheduler: cancel disengage of ship-charge limit failed: 0x%08x (%@); lock left engaged"
+ "CRShipModeOperationScheduler: notify failed for %{public}@; releasing ship-charge limit"
+ "CRShipModeOperationScheduler: released ship-charge limit after failed notify"
+ "CRShipModeOperationScheduler: released ship-charge limit latched by cancelled discharge"
+ "CRShipModeOperationScheduler: ship-charge limit release failed (ioReturn=0x%08x, error=%{public}@); lock left engaged"
+ "CoreAnalyticsEvent: ModuleType(%@), EventType(FinishRepairNotificationShown)"
+ "CoreAnalyticsEvent: ModuleType(%{public}@), Event(%{public}@)"
+ "DailyPendingRepair"
+ "FinishRepairNotificationShown"
+ "NotifyServerFailure"
+ "NotifyServerSuccess"
+ "OperationScheduled_"
+ "ReachedShipModeOther"
+ "ReachedShipModeTradeIn"
+ "ShipMode"
+ "ShipModeNotify: %{public}@ transport failure on attempt %{public}lu/%{public}lu (code=%{public}ld), retrying in %{public}.0fs"
+ "ShipModeNotify: BAA issuance transport failure on attempt %{public}lu/%{public}lu (code=%{public}ld), retrying in %{public}.0fs: %{private}@"
+ "StepFailedDischarge"
+ "StepFailedErase"
+ "_dumpRequestIfEnabled:command:attempt:responseBody:httpResponse:transportError:"
+ "_issueBAAOnce:certificatePEM:error:"
+ "_performRequest:baseURL:enabled:deviceError:partnerID:attempt:startedAtClock:replyOnce:"
+ "_performStatusRequest:statusURL:attempt:startedAtClock:replyOnce:"
+ "_releaseShipChargeLimitForDroppedDischarge"
+ "_releaseShipLockAfterFailedNotifyFor:"
+ "_scheduleRetryForAttempt:startedAtClock:label:transportError:retry:"
+ "_tearDownDischargeAfterCancel"
+ "getInnermostNSError:"
+ "networkRetryClock"
+ "sendDailyAnalyticsForModuleType:eventType:"
+ "sendFinishRepairNotificationShownAnalytics"
+ "shipmode-%@-%@-attempt%lu.log"
+ "shouldRetryNetworkError:attempt:startedAtClock:"
+ "sleepForTimeInterval:"
+ "v56@0:8@16@24Q32d40@?48"
+ "v64@0:8@16@24Q32@40@48@56"
+ "v72@0:8@16@24B32B36@40Q48d56@?64"
- "-[MRComponentHealthHandler sendDailyAnalyticsForModuleType:]_block_invoke"
- "_dumpRequestIfEnabled:command:responseBody:httpResponse:transportError:"
- "_performRequest:baseURL:enabled:deviceError:partnerID:replyOnce:"
- "_performStatusRequest:statusURL:replyOnce:"
- "sendDailyAnalyticsForModuleType:"
- "v56@0:8@16@24@32@40@48"
- "v56@0:8@16@24B32B36@40@?48"
```
