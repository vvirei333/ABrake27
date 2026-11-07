## libsystem_eligibility.dylib

> `/usr/lib/system/libsystem_eligibility.dylib`

```diff

-446.2.4.0.0
-  __TEXT.__text: 0x4178
+446.40.35.0.0
+  __TEXT.__text: 0x4250
   __TEXT.__const: 0x760
-  __TEXT.__cstring: 0x57e1
+  __TEXT.__cstring: 0x5815
   __TEXT.__oslogstring: 0x39b
   __TEXT.__unwind_info: 0xc8
   __TEXT.__auth_stubs: 0x0

   - /usr/lib/system/libsystem_malloc.dylib
   - /usr/lib/system/libsystem_trace.dylib
   - /usr/lib/system/libxpc.dylib
-  Functions: 28
-  Symbols:   78
-  CStrings:  549
+  Functions: 32
+  Symbols:   82
+  CStrings:  551
 
Symbols:
+ _eligibility_xpc_create_set_input_message
+ _os_eligibility_reset_all_inputs
+ _os_eligibility_reset_input
+ _os_eligibility_set_input_forced
CStrings:
+ "OS_ELIGIBILITY_INPUT_CELLULAR_CAPABLE_DEVICE"
+ "forced"
```
