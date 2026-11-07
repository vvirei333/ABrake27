## wirelessinsightsd

> `/System/Library/Frameworks/WirelessInsights.framework/Support/wirelessinsightsd`

### Sections with Same Size but Changed Content

- `__TEXT.__swift5_typeref`
- `__TEXT.__constg_swiftt`
- `__TEXT.__swift5_builtin`
- `__TEXT.__swift5_assocty`
- `__TEXT.__swift5_proto`
- `__TEXT.__swift5_types`
- `__TEXT.__swift_as_entry`
- `__TEXT.__swift_as_ret`
- `__TEXT.__swift_as_cont`
- `__TEXT.__swift5_protos`
- `__TEXT.__swift5_mpenum`
- `__TEXT.__eh_frame`
- `__DATA_CONST.__objc_classlist`
- `__DATA_CONST.__objc_protolist`
- `__DATA_CONST.__objc_protorefs`
- `__DATA_CONST.__objc_superrefs`
- `__DATA_CONST.__objc_intobj`
- `__DATA_CONST.__objc_dictobj`
- `__DATA_CONST.__got`
- `__DATA_CONST.__auth_ptr`
- `__DATA.__objc_data`

```diff

-350.1.0.0.0
-  __TEXT.__text: 0x34ce54
-  __TEXT.__auth_stubs: 0x5000
-  __TEXT.__objc_stubs: 0xfc60
-  __TEXT.__init_offsets: 0x2b8
-  __TEXT.__objc_methlist: 0x7924
-  __TEXT.__gcc_except_tab: 0x2a88c
-  __TEXT.__const: 0x18113
-  __TEXT.__cstring: 0x1602b
-  __TEXT.__oslogstring: 0x2eef2
-  __TEXT.__objc_methname: 0x18b2c
+369.1.0.0.0
+  __TEXT.__text: 0x350e5c
+  __TEXT.__auth_stubs: 0x4fd0
+  __TEXT.__objc_stubs: 0xfc80
+  __TEXT.__init_offsets: 0x2bc
+  __TEXT.__objc_methlist: 0x794c
+  __TEXT.__gcc_except_tab: 0x2ad88
+  __TEXT.__const: 0x18133
+  __TEXT.__cstring: 0x1623b
+  __TEXT.__oslogstring: 0x2f7b2
+  __TEXT.__objc_methname: 0x18bac
   __TEXT.__objc_classname: 0x1c4e
   __TEXT.__objc_methtype: 0x45ea
   __TEXT.__swift5_typeref: 0x2662
   __TEXT.__swift5_capture: 0x1d04
   __TEXT.__constg_swiftt: 0x4074
-  __TEXT.__swift5_reflstr: 0x5d73
-  __TEXT.__swift5_fieldmd: 0x4160
+  __TEXT.__swift5_reflstr: 0x5da3
+  __TEXT.__swift5_fieldmd: 0x4178
   __TEXT.__swift5_builtin: 0x190
   __TEXT.__swift5_assocty: 0x308
   __TEXT.__swift5_proto: 0x52c

   __TEXT.__swift_as_cont: 0x848
   __TEXT.__swift5_protos: 0x74
   __TEXT.__swift5_mpenum: 0x24
-  __TEXT.__info_plist: 0x474
-  __TEXT.__unwind_info: 0x10548
+  __TEXT.__info_plist: 0x47e
+  __TEXT.__unwind_info: 0x10640
   __TEXT.__eh_frame: 0x6b00
-  __DATA_CONST.__const: 0x17528
-  __DATA_CONST.__cfstring: 0x74e0
+  __DATA_CONST.__const: 0x176b0
+  __DATA_CONST.__cfstring: 0x75c0
   __DATA_CONST.__objc_classlist: 0x5f8
   __DATA_CONST.__objc_protolist: 0x1b0
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__objc_protorefs: 0xa8
   __DATA_CONST.__objc_superrefs: 0x2e8
   __DATA_CONST.__objc_intobj: 0x708
-  __DATA_CONST.__objc_arraydata: 0x6c0
-  __DATA_CONST.__objc_arrayobj: 0x240
+  __DATA_CONST.__objc_arraydata: 0x6d8
+  __DATA_CONST.__objc_arrayobj: 0x258
   __DATA_CONST.__objc_doubleobj: 0x90
   __DATA_CONST.__objc_dictobj: 0x50
-  __DATA_CONST.__auth_got: 0x2818
+  __DATA_CONST.__auth_got: 0x2800
   __DATA_CONST.__got: 0x1410
   __DATA_CONST.__auth_ptr: 0x768
-  __DATA.__objc_const: 0x14670
-  __DATA.__objc_selrefs: 0x4588
-  __DATA.__objc_ivar: 0xa2c
+  __DATA.__objc_const: 0x14720
+  __DATA.__objc_selrefs: 0x4598
+  __DATA.__objc_ivar: 0xa30
   __DATA.__objc_data: 0x5568
-  __DATA.__data: 0x67a8
+  __DATA.__data: 0x67c8
   __DATA.__bss: 0x8128
-  __DATA.__common: 0x610
+  __DATA.__common: 0x618
   - /System/Library/Frameworks/CloudKit.framework/CloudKit
   - /System/Library/Frameworks/CoreBluetooth.framework/CoreBluetooth
   - /System/Library/Frameworks/CoreData.framework/CoreData

   - /usr/lib/swift/libswift_DarwinFoundation1.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 14476
-  Symbols:   2063
-  CStrings:  10427
+  Functions: 14519
+  Symbols:   2060
+  CStrings:  10475
 
Symbols:
+ _arc4random_uniform
- __ZN3wis8asStringEj
- __ZNSt3__113random_deviceC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
- __ZNSt3__113random_deviceD1Ev
- __ZNSt3__113random_deviceclEv
CStrings:
+ "369.1"
+ "369.1~17"
+ "BatteryPacks"
+ "DeployedBandwidth"
+ "Failed to retrieve battery pack from packs"
+ "Failed to retrieve battery packs"
+ "Invalid sigLocationConfigs field (must be > 0): %@"
+ "NetworkCoverageMap"
+ "ParseError: "
+ "Pumping insight %s, config: AppID=%d (kWirelessInsights), PayloadType=%d (kDeviceConfig), size=%zu bytes"
+ "Queued the insight, %s"
+ "SatelliteCellClassifier"
+ "Sending Insights to Baseband: insight = %s"
+ "SigLocation outage criteria: oos rate %d in 0.01 percent, valid visit count %d, valid duration %lld sec"
+ "SigLocation skipping sigLocOutage cloud telemetry due to sig location exit"
+ "SigLocation[CoreData]:Attempting to clear persistent store (%s, %s)"
+ "SigLocation[CoreData]:Failed to destroy store (%s, %s): %s"
+ "SigLocation[CoreData]:No or invalid persistent store in coordinator, aborting (%s, %s)"
+ "SigLocation[CoreData]:Received notification that significant locations have been deleted, resetting database"
+ "SigLocation[CoreData]:Successfully destroyed store (%s, %s)"
+ "SigLocation[CoreData]:Unable to initialize FMCoreRoutineController, aborting"
+ "SigLocation[CoreData]:Unexpected number of stores in the coordinator: %lu"
+ "TestOne"
+ "UplinkAntennaPrediction"
+ "WISCOA:Already in OOS with a retry sequence in progress; dropping subsequent OOS callback"
+ "WISCOA:Cancel API retry timers due to Registration status changed"
+ "WISCOA:Carrier API already confirmed the outage; not overwriting with crowd-sourced result"
+ "WISCOA:Carrier API check is skipped for this OOS episode; no carrier retry will be scheduled"
+ "WISCOA:Carrier API pre-check bailout; retrying in %d minutes (attempt %d/%d)"
+ "WISCOA:Carrier API reached maximum retry count (%d/%d); bailing out carrier API retry sequence"
+ "WISCOA:Carrier API request failed; backing off %u seconds before attempt %d/%d"
+ "WISCOA:Carrier API result is stale, discarding"
+ "WISCOA:Crowd-sourced API did not yield an outage; retrying in %d minutes (attempt %d/%d)"
+ "WISCOA:Crowd-sourced API reached maximum retry count (%d/%d); bailing out crowd-sourced API retry sequence"
+ "WISCOA:Crowd-sourced API result is stale, discarding"
+ "WISCOA:Device does not appear to be in OOS; Bailing out carrier API retry"
+ "WISCOA:Device does not appear to be in OOS; Bailing out carrier API retry sequence"
+ "WISCOA:Device does not appear to be in OOS; Bailing out crowd-sourced API retry"
+ "WISCOA:Device does not appear to be in OOS; Bailing out crowd-sourced API retry sequence"
+ "WISCOA:Failed to create carrier API retry timer; ending carrier API retry sequence"
+ "WISCOA:Failed to create crowd-sourced API retry timer; ending crowd-sourced API retry sequence"
+ "WISCOA:Failed to parse JWT token response: %s"
+ "WISCOA:Failed to parse outage response: %s"
+ "WISCOA:Making API request"
+ "WISCOA:Outage detected during retry wait, stopping carrier API retry sequence"
+ "WISCOA:Outage detected during retry wait, stopping crowd-sourced API retry sequence"
+ "WISCOA:Outage detected, stopping carrier API retry sequence"
+ "WISCOA:Outage detected, stopping crowd-sourced API retry sequence"
+ "WISCOA:Outage status from API response: %{bool}d"
+ "WISCOA:Retry sequence not finished yet (carrier done: %{bool}d [%d/%d, skipped: %{bool}d], crowd-sourced done: %{bool}d [%d/%d]); deferring final metric"
+ "WISCOA:SigLoc confirmed OOS, dispatching carrier and crowd-sourced outage checks"
+ "WISCOA:Telephony delegate unavailable; skipping crowd-sourced check"
+ "WISCOA:WISCarrierOutageClient unable to get response: %s"
+ "WISSigLocationMinimumValidDuration"
+ "WISSigLocationMinimumValidVisitCount"
+ "WISSigLocationOosRateThreshold"
+ "absoluteString"
+ "carrierName"
+ "carrierResourceLink"
+ "cellularVinylStaticInfo"
+ "com.apple.wirelessinsightsd.coa.carrierFetch"
+ "com.apple.wirelessinsightsd.coa.crowdSourcedFetch"
+ "intervalUntilPredictedStart"
+ "nil"
+ "profileConnectionDidReceiveAllowCloudSyncChangedNotification:userInfo:"
+ "registeredAt"
+ "sigLocationConfigs"
- "/dev/urandom"
- "350.1"
- "350.1~193"
- "IOPMPowerSource"
- "Pumping insight config: AppID=%d (kWirelessInsights), PayloadType=%d (kDeviceConfig), size=%zu bytes"
- "Pumping the insight to Baseband"
- "Queued the insight"
- "Sending Insights to Baseband..."
- "WISCOA:API retry sequence[max: %d] (carrier retries: %d, crowd-sourced retries: %d)"
- "WISCOA:Attempt %d failed - empty response. Waiting %d seconds before retry..."
- "WISCOA:Device does not appear to be in OOS; Bailing out API calls retry"
- "WISCOA:Exhausted API query limits, ending retry sequences!"
- "WISCOA:Making API request - attempt %d/%d"
- "WISCOA:No outage detected from APIs but SigLoc confirmed OOS, starting retry sequence"
- "WISCOA:Outage confirmed after retry, ending retry sequence"
- "WISCOA:Outage detected during retry wait, stopping retry sequence"
- "WISCOA:Outage status from API response: %d"
- "WISCOA:WISCarrierOutageClient unable to get response after %d attempts"
- "apiMaxRetryRequests"
```
