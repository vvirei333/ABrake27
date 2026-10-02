## scrod

> `/System/Library/CoreServices/VoiceOverTouch.app/scrod`

### Sections with Same Size but Changed Content

- `__TEXT.__const`
- `__TEXT.__unwind_info`
- `__DATA_CONST.__const`
- `__DATA_CONST.__cfstring`
- `__DATA_CONST.__objc_catlist`
- `__DATA_CONST.__auth_got`
- `__DATA.__objc_data`
- `__DATA.__data`

```diff

-329.0.0.0.0
-  __TEXT.__text: 0xbd0c
+330.1.1.0.0
+  __TEXT.__text: 0xbc94
   __TEXT.__auth_stubs: 0x730
-  __TEXT.__objc_stubs: 0x1aa0
-  __TEXT.__objc_methlist: 0x850
+  __TEXT.__objc_stubs: 0x1a20
+  __TEXT.__objc_methlist: 0x858
   __TEXT.__const: 0x70
-  __TEXT.__gcc_except_tab: 0x794
-  __TEXT.__objc_methname: 0x1c43
-  __TEXT.__cstring: 0x392
-  __TEXT.__oslogstring: 0x1325
+  __TEXT.__gcc_except_tab: 0x7bc
+  __TEXT.__objc_methname: 0x1c0a
+  __TEXT.__cstring: 0x388
+  __TEXT.__oslogstring: 0x138e
   __TEXT.__objc_classname: 0x12e
-  __TEXT.__objc_methtype: 0x3d7
+  __TEXT.__objc_methtype: 0x3d9
   __TEXT.__unwind_info: 0x318
   __DATA_CONST.__const: 0x2c0
   __DATA_CONST.__cfstring: 0x1a0

   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__objc_protorefs: 0x18
   __DATA_CONST.__objc_superrefs: 0x30
+  __DATA_CONST.__objc_intobj: 0x18
   __DATA_CONST.__auth_got: 0x3a8
-  __DATA_CONST.__got: 0x318
-  __DATA.__objc_const: 0xac8
-  __DATA.__objc_selrefs: 0x8d8
-  __DATA.__objc_ivar: 0x7c
+  __DATA_CONST.__got: 0x310
+  __DATA.__objc_const: 0xae8
+  __DATA.__objc_selrefs: 0x8b8
+  __DATA.__objc_ivar: 0x80
   __DATA.__objc_data: 0x190
   __DATA.__data: 0x300
   __DATA.__bss: 0x21

   - /usr/lib/libAccessibility.dylib
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 159
+  Functions: 160
   Symbols:   225
-  CStrings:  526
+  CStrings:  524
 
Symbols:
+ _OBJC_CLASS_$_NSConstantIntegerNumber
- _OBJC_CLASS_$_SCROBrailleHandler
CStrings:
+ "BluetoothManager unavailable, not handling device removal: %@"
+ "Braille service still not connected after %@ attempts (connected services: 0x%lx) - falling back to the reconnection timer for [%{public}@]"
+ "Device remove: %@ [%p]"
+ "Handling device removal: %@ [%p]"
+ "Ignoring device removal for %@: not our address (%@) [%p]"
+ "MSCRODMain using Swift BrailleServer"
+ "Q"
+ "Reconnecting braille services to device [%{public}@] (attempt %@ of %@, connected services: 0x%lx)"
+ "Should reload: %@ required services: 0x%lx, connected services: 0x%lx, service connected: %@, display: %p"
+ "_brailleServiceRetryCount"
+ "_lastBrailleServiceRetry"
+ "_resetBrailleServiceRetries"
- "Braille_XPC"
- "Device remove: %@"
- "Handling device removal: %@"
- "MSCRODMain using Mach transport"
- "MSCRODMain using XPC transport with Swift BrailleServer"
- "Should reload: %@ required service: %@ service connected: %@, connected services: %@, device: %p"
- "_delayedRemoveDeviceNotification: bluetoothAddress == nil (%@) or address (%@) != bluetoothAddress (%@) or BluetoothManager.sharedInstance not available (%@)"
- "_isDriverLoading set to YES in _delayedRemoveDeviceNotification"
- "_usesXPCTransport"
- "detachNewThreadSelector:toTarget:withObject:"
- "initWithObjectsAndKeys:"
- "registerWithMach"
- "serverSource"
- "unregisterWithMach"
```
