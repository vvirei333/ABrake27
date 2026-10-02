## HealthBluetoothPeripheral

> `/System/Library/Health/Plugins/HealthBluetoothPeripheral.bundle/HealthBluetoothPeripheral`

### Sections with Same Size but Changed Content

- `__TEXT.__unwind_info`
- `__DATA_CONST.__const`
- `__DATA_CONST.__cfstring`
- `__DATA_CONST.__objc_classlist`
- `__DATA_CONST.__objc_protolist`
- `__DATA_CONST.__objc_protorefs`
- `__DATA_CONST.__objc_superrefs`
- `__DATA_CONST.__objc_intobj`
- `__DATA.__objc_data`
- `__DATA.__data`

```diff

-7027.0.72.2.8
-  __TEXT.__text: 0x3eda8
-  __TEXT.__auth_stubs: 0x840
-  __TEXT.__objc_stubs: 0x62e0
-  __TEXT.__objc_methlist: 0x3e6c
-  __TEXT.__const: 0x1a0
+7027.1.45.2.4
+  __TEXT.__text: 0x3f0e0
+  __TEXT.__auth_stubs: 0x850
+  __TEXT.__objc_stubs: 0x6340
+  __TEXT.__objc_methlist: 0x3edc
+  __TEXT.__const: 0x1a8
   __TEXT.__cstring: 0x26b6
-  __TEXT.__oslogstring: 0x58e6
+  __TEXT.__oslogstring: 0x59fb
   __TEXT.__objc_classname: 0xb5f
-  __TEXT.__objc_methname: 0x9c9d
-  __TEXT.__objc_methtype: 0x2e97
-  __TEXT.__gcc_except_tab: 0xad4
+  __TEXT.__objc_methname: 0x9d18
+  __TEXT.__objc_methtype: 0x2ea8
+  __TEXT.__gcc_except_tab: 0xb0c
   __TEXT.__unwind_info: 0x10a8
   __DATA_CONST.__const: 0x12e8
   __DATA_CONST.__cfstring: 0x22e0

   __DATA_CONST.__objc_intobj: 0x600
   __DATA_CONST.__objc_arraydata: 0x98
   __DATA_CONST.__objc_arrayobj: 0x18
-  __DATA_CONST.__auth_got: 0x430
-  __DATA_CONST.__got: 0x478
-  __DATA.__objc_const: 0x7810
-  __DATA.__objc_selrefs: 0x2288
+  __DATA_CONST.__auth_got: 0x438
+  __DATA_CONST.__got: 0x488
+  __DATA.__objc_const: 0x7830
+  __DATA.__objc_selrefs: 0x22a8
   __DATA.__objc_ivar: 0x5a8
   __DATA.__objc_data: 0x1130
   __DATA.__data: 0x1280

   - /System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 1709
-  Symbols:   435
-  CStrings:  2666
+  Functions: 1715
+  Symbols:   438
+  CStrings:  2675
 
Symbols:
+ _HKConnectedGymIsMutedToday
+ _NSCalendarDayChangedNotification
+ _kHKConnectedGymPreferencesNFCDetectionMode
CStrings:
+ "Calendar day changed. Updating NFC always on preference"
+ "GymKit detection disabled by user; turning off NFC"
+ "GymKit detection mode %ld disagrees with legacy value %ld; preferring the legacy value"
+ "GymKit muted for today; turning off NFC until end of day"
+ "GymKit user default setting (NPSDomainAccessor, paired watch): mode=%{public}@ legacy=%{public}@"
+ "GymKit user default setting (UserDefaults, no paired watch): mode=%{public}@ legacy=%{public}@"
+ "_calendarDayDidChange"
+ "assumeLowPowerModeOwnership"
+ "unitTest_ownsLowPowerMode"
+ "unitTest_setSystemLowPowerModeEnabledOverride:"
+ "v24@0:8@?<B@?>16"
- "GymKit always on user default setting (NPSDomainAccessor, paired watch): %{public}@"
- "GymKit always on user default setting (UserDefaults, no paired watch): %{public}@"
```
