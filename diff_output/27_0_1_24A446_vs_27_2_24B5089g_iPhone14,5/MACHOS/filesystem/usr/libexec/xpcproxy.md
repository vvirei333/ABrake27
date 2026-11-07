## xpcproxy

> `/usr/libexec/xpcproxy`

### Sections with Same Size but Changed Content

- `__TEXT.__const`
- `__TEXT.__dof_launchd`
- `__TEXT.__unwind_info`
- `__DATA_CONST.__const`
- `__DATA.__os_assumes_log`
- `__DATA.__data`

```diff

-3298.2.1.0.0
-  __TEXT.__text: 0x9a98
+3298.40.20.0.0
+  __TEXT.__text: 0x9a68
   __TEXT.__auth_stubs: 0xb30
   __TEXT.__lazy_helpers: 0x150
   __TEXT.__const: 0x190
   __TEXT.__xpcproxy: 0x1
-  __TEXT.__info_plist: 0x4d7
+  __TEXT.__info_plist: 0x4e1
   __TEXT.__oslogstring: 0x15ef
-  __TEXT.__cstring: 0x1a4c
+  __TEXT.__cstring: 0x1a35
   __TEXT.__dof_launchd: 0x2e5
   __TEXT.__unwind_info: 0x178
   __DATA_CONST.__const: 0x248

   - /usr/lib/libobjc.A.dylib
   Functions: 92
   Symbols:   202
-  CStrings:  302
+  CStrings:  301
 
Functions:
~ sub_100001278 : 2792 -> 2744
CStrings:
+ "@(#)VERSION:Darwin Bootstrapper Trampoline Version 7.0.0: Sun Sep 13 20:55:09 PDT 2026; root:libxpc_executables-3298.40.20~223/xpcproxy/RELEASE_ARM64E"
+ "Darwin Bootstrapper Trampoline Version 7.0.0: Sun Sep 13 20:55:09 PDT 2026; root:libxpc_executables-3298.40.20~223/xpcproxy/RELEASE_ARM64E"
- "@(#)VERSION:Darwin Bootstrapper Trampoline Version 7.0.0: Sat Aug  8 16:39:58 PDT 2026; root:libxpc_executables-3298.2.1~23/xpcproxy/RELEASE_ARM64E"
- "Darwin Bootstrapper Trampoline Version 7.0.0: Sat Aug  8 16:39:58 PDT 2026; root:libxpc_executables-3298.2.1~23/xpcproxy/RELEASE_ARM64E"
- "Unable to unpack bundle path"
```
