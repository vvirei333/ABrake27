## libauthinstall.dylib

> `/usr/lib/libauthinstall.dylib`

### Sections with Same Size but Changed Content

- `__TEXT.__cstring`

```diff

-1155.0.5.0.0
-  __TEXT.__text: 0xb9a08
+1155.40.7.0.0
+  __TEXT.__text: 0xb9adc
   __TEXT.__objc_methlist: 0x2a64
   __TEXT.__cstring: 0x1ff77
   __TEXT.__const: 0x653c
   __TEXT.__gcc_except_tab: 0x4630
   __TEXT.__dlopen_cstrs: 0x63
   __TEXT.__oslogstring: 0x63da
-  __TEXT.__unwind_info: 0x2c80
+  __TEXT.__unwind_info: 0x2c88
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__objc_selrefs: 0xd70
   __DATA_CONST.__objc_superrefs: 0x1f8
   __DATA_CONST.__objc_arraydata: 0x10
-  __DATA_CONST.__got: 0x410
+  __DATA_CONST.__got: 0x418
   __AUTH_CONST.__const: 0x15c0
   __AUTH_CONST.__cfstring: 0xfb40
   __AUTH_CONST.__objc_const: 0x4fd8

   - /usr/lib/updaters/libAppleTconUARPUpdater.dylib
   - /usr/lib/updaters/libSavageRestoreInfo_iOS.dylib
   - /usr/lib/updaters/libT200Updater.dylib
-  Functions: 3807
-  Symbols:   4986
+  Functions: 3809
+  Symbols:   4989
   CStrings:  4746
 
Symbols:
+ _AMAuthInstallCopyDebugPath
+ _AMAuthInstallSetDebugPath
+ _kAMSupportHttpOptionRequestHTTPAllowed
CStrings:
+ "HelsinkiRestore-58.1.4"
+ "VinylRestore-178~8717"
+ "libauthinstall_device-1155.40.7"
- "HelsinkiRestore-58.0.45"
- "VinylRestore-178~7453"
- "libauthinstall_device-1155.0.5"
```
