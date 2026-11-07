## ndoagent

> `/System/Library/PrivateFrameworks/NewDeviceOutreach.framework/ndoagent`

### Sections with Same Size but Changed Content

- `__TEXT.__const`
- `__TEXT.__objc_methname`
- `__TEXT.__swift5_typeref`
- `__TEXT.__swift5_fieldmd`
- `__TEXT.__constg_swiftt`
- `__TEXT.__swift5_capture`
- `__TEXT.__swift5_builtin`
- `__TEXT.__swift5_assocty`
- `__TEXT.__swift5_proto`
- `__TEXT.__swift_as_entry`
- `__TEXT.__swift_as_ret`
- `__TEXT.__swift_as_cont`
- `__TEXT.__swift5_mpenum`
- `__TEXT.__eh_frame`
- `__DATA_CONST.__cfstring`
- `__DATA_CONST.__objc_classlist`
- `__DATA_CONST.__objc_superrefs`
- `__DATA_CONST.__objc_arrayobj`
- `__DATA_CONST.__auth_ptr`
- `__DATA.__objc_const`
- `__DATA.__objc_data`
- `__DATA.__data`

```diff

-624.0.13.0.0
-  __TEXT.__text: 0x79628
-  __TEXT.__auth_stubs: 0x2d80
-  __TEXT.__objc_stubs: 0x2600
-  __TEXT.__objc_methlist: 0xba4
+624.40.15.0.0
+  __TEXT.__text: 0x7a124
+  __TEXT.__auth_stubs: 0x2d20
+  __TEXT.__objc_stubs: 0x2620
+  __TEXT.__objc_methlist: 0xb94
   __TEXT.__const: 0x84f8
-  __TEXT.__gcc_except_tab: 0xe4
+  __TEXT.__gcc_except_tab: 0xc0
   __TEXT.__objc_methname: 0x2a5f
-  __TEXT.__oslogstring: 0x2e5b
-  __TEXT.__cstring: 0x20c0
+  __TEXT.__oslogstring: 0x2f0b
+  __TEXT.__cstring: 0x20b0
   __TEXT.__objc_classname: 0x482
   __TEXT.__objc_methtype: 0x912
   __TEXT.__swift5_typeref: 0x1792

   __TEXT.__swift_as_cont: 0xac
   __TEXT.__swift5_protos: 0x4
   __TEXT.__swift5_mpenum: 0x2c
-  __TEXT.__unwind_info: 0x1cf8
+  __TEXT.__unwind_info: 0x1ce8
   __TEXT.__eh_frame: 0x2288
-  __DATA_CONST.__const: 0x3fe0
+  __DATA_CONST.__const: 0x3fe8
   __DATA_CONST.__cfstring: 0xfe0
   __DATA_CONST.__objc_classlist: 0xd0
   __DATA_CONST.__objc_protolist: 0x78
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__objc_protorefs: 0x38
   __DATA_CONST.__objc_superrefs: 0x40
-  __DATA_CONST.__objc_arraydata: 0x88
-  __DATA_CONST.__objc_dictobj: 0x50
+  __DATA_CONST.__objc_arraydata: 0x98
+  __DATA_CONST.__objc_dictobj: 0xa0
   __DATA_CONST.__objc_arrayobj: 0x18
-  __DATA_CONST.__auth_got: 0x16d0
-  __DATA_CONST.__got: 0xbc0
+  __DATA_CONST.__auth_got: 0x16a0
+  __DATA_CONST.__got: 0xba8
   __DATA_CONST.__auth_ptr: 0x8e8
   __DATA.__objc_const: 0x3088
-  __DATA.__objc_selrefs: 0xb30
+  __DATA.__objc_selrefs: 0xb38
   __DATA.__objc_ivar: 0x44
   __DATA.__objc_data: 0xcb8
   __DATA.__data: 0x2088
-  __DATA.__bss: 0xb560
+  __DATA.__bss: 0xb540
   __DATA.__common: 0x208
   - /System/Library/Frameworks/Accounts.framework/Accounts
   - /System/Library/Frameworks/CoreBluetooth.framework/CoreBluetooth

   - /System/Library/PrivateFrameworks/BackgroundSystemTasks.framework/BackgroundSystemTasks
   - /System/Library/PrivateFrameworks/BluetoothManager.framework/BluetoothManager
   - /System/Library/PrivateFrameworks/CoreFollowUp.framework/CoreFollowUp
-  - /System/Library/PrivateFrameworks/GraphicsServices.framework/GraphicsServices
   - /System/Library/PrivateFrameworks/InternalSwiftProtobuf.framework/InternalSwiftProtobuf
   - /System/Library/PrivateFrameworks/NDOAPI.framework/NDOAPI
   - /System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 2508
-  Symbols:   1235
-  CStrings:  1056
+  Functions: 2511
+  Symbols:   1226
+  CStrings:  1057
 
Symbols:
+ _$s6NDOAPI15NDOSerialNumberO7isValidySbSSSgFZ
+ _$s6NDOAPI17NDOResponseMapperO8WarrantyO23deviceCoverageCachePath3for10Foundation3URLVSgSS_tFZ
- _$s6NDOAPI17NDOResponseMapperO8WarrantyO32deviceCoverageCachePathForSerialy10Foundation3URLVSSFZ
- __dispatch_main_q
- __dispatch_source_type_timer
- _dispatch_activate
- _dispatch_source_cancel
- _dispatch_source_create
- _dispatch_source_set_event_handler
- _dispatch_source_set_timer
- _dispatch_time
- _kGSEventHardwareKeyboardAvailabilityChangedNotification
- _notify_register_dispatch
CStrings:
+ "%s Profile expired."
+ "%s: Malformed/invalid serial number"
+ "Override Serial Number: %{private}@ found for accessory SN: %{private}@"
+ "Override Serial Number: %{private}@ found for default device SN: %{private}@"
+ "Rejected local device warranty request for malformed serial number"
+ "Removing every %{public}s user default because we are %{public}s. Any environment or serial number override is being discarded. Set the development flag to true alongside an environment override to prevent this. Discarding keys: [%{private}s]"
+ "Smart Connector keyboard event: %s"
+ "com.apple.iokit.matching"
+ "invalid serial number"
+ "isValid(serialNumber:)"
+ "isValidSerialNumber:"
+ "performing first launch cleanup"
+ "persistentDomainForName:"
+ "resetting to production environment"
- "%s Profile expired. Resetting to production environment."
- "%{private}s resolved %{private}@ to %{private}@"
- "Hardware keyboard availability changed — scheduling debounced check-in"
- "Keyboard debounce timer fired — triggering check-in"
- "NSString *_ResolvedSerialNumber(NSString * _Nullable __strong)"
- "Override Serial Number: %@ found for SN: %@"
- "Smart Connector keyboard monitoring started"
- "com.apple.backboard.keyboard.attached"
- "com.apple.ndoagent.keyboardChanged"
- "com.apple.ndoagent.keyboardDebounce"
- "notify_register_dispatch(kGSEventHardwareKeyboardAvailabilityChangedNotification) failed: %u"
- "startMonitoringWithCheckInHandler:"
- "v12@?0i8"
```
