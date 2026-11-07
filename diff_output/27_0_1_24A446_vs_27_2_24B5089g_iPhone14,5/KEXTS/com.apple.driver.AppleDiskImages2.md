## com.apple.driver.AppleDiskImages2

> `com.apple.driver.AppleDiskImages2`

```diff

-598.0.1.0.0
-  __TEXT.__cstring: 0x3995
-  __TEXT.__os_log: 0x2480
+598.40.4.0.0
+  __TEXT.__cstring: 0x3a16
+  __TEXT.__os_log: 0x2522
   __TEXT.__const: 0x18
-  __TEXT_EXEC.__text: 0x12478
+  __TEXT_EXEC.__text: 0x12534
   __TEXT_EXEC.__auth_stubs: 0x5b0
   __DATA.__data: 0x4e8
   __DATA.__common: 0x148

   __DATA_CONST.__got: 0xa0
   Functions: 400
   Symbols:   0
-  CStrings:  397
+  CStrings:  400
 
Functions:
~ sub_fffffff0087408ec -> sub_fffffff0087f11bc : 800 -> 792
~ sub_fffffff008741fe4 -> sub_fffffff0087f28ac : 580 -> 572
~ sub_fffffff008745ed4 -> sub_fffffff0087f6794 : 1152 -> 1264
~ sub_fffffff008749184 -> sub_fffffff0087f9ab4 : 748 -> 840
CStrings:
+ "598.40.4"
+ "IOReturn DIDeviceRequestPool::AllocateBuffersForRequest(DIDeviceRequest *, size_t, bool, abort_request_allocation_fn_t, void *)"
+ "[%d (ctx)] %s::%d: Requested %zu buffers - does not fit the request buffer count\n"
+ "[%d] %s::%d: Flush did not complete - ejecting device instead of going dormant\n"
- "598.0.1"
```
