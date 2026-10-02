## FTServices

> `/System/Library/PrivateFrameworks/FTServices.framework/FTServices`

```diff

-2003.100.1.2.2
-  __TEXT.__text: 0x46d6c
+2003.200.44.0.0
+  __TEXT.__text: 0x470f0
   __TEXT.__objc_methlist: 0x30cc
   __TEXT.__const: 0x40a
-  __TEXT.__gcc_except_tab: 0x25ac
-  __TEXT.__cstring: 0x45ba
-  __TEXT.__oslogstring: 0x6d91
+  __TEXT.__gcc_except_tab: 0x25f0
+  __TEXT.__cstring: 0x46aa
+  __TEXT.__oslogstring: 0x6eb1
   __TEXT.__swift5_typeref: 0x12a
   __TEXT.__constg_swiftt: 0x28
   __TEXT.__swift5_reflstr: 0x20

   __TEXT.__swift_as_entry: 0x14
   __TEXT.__swift_as_ret: 0x24
   __TEXT.__swift_as_cont: 0x30
-  __TEXT.__unwind_info: 0x10e8
+  __TEXT.__unwind_info: 0x10f0
   __TEXT.__eh_frame: 0x470
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0

   __DATA_CONST.__objc_arraydata: 0x10
   __DATA_CONST.__got: 0x548
   __AUTH_CONST.__const: 0xa80
-  __AUTH_CONST.__cfstring: 0x4100
+  __AUTH_CONST.__cfstring: 0x4180
   __AUTH_CONST.__objc_const: 0x62d8
   __AUTH_CONST.__objc_intobj: 0xf0
   __AUTH_CONST.__objc_arrayobj: 0x18
   __AUTH_CONST.__auth_got: 0x8e8
   __AUTH_CONST.__auth_ptr: 0x0
-  __AUTH.__objc_data: 0x48
   __DATA.__objc_ivar: 0x2e0
-  __DATA.__data: 0x7b8
+  __DATA.__data: 0xe0
   __DATA.__bss: 0x3e8
-  __DATA_DIRTY.__objc_data: 0xa78
-  __DATA_DIRTY.__data: 0x120
+  __DATA_DIRTY.__objc_data: 0xac0
+  __DATA_DIRTY.__data: 0x7f8
   __DATA_DIRTY.__bss: 0x208
   - /System/Library/Frameworks/CFNetwork.framework/CFNetwork
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation

   - /usr/lib/swift/libswiftos.dylib
   Functions: 1359
   Symbols:   521
-  CStrings:  964
+  CStrings:  969
 
Functions:
~ sub_1c130431c -> sub_1c2708284 : 84 -> 404
~ sub_1c1304370 -> sub_1c2708418 : 152 -> 464
~ sub_1c1307cb4 -> sub_1c270be94 : 664 -> 676
~ sub_1c130834c -> sub_1c270c538 : 620 -> 876
CStrings:
+ "Cancelling message in the queue: %@ (obj: %p)"
+ "FTMessageDelivery Sending SOS for APS failure that received response code: (HTTP Status Code: %d)"
+ "FTMessageDelivery Sending SOS for request to url: (%@) that received response code: (HTTP Status Code: %d)"
+ "Received network state changed but not in airplane mode message (obj: %p)"
+ "Timer is cleared with current message=%@ (obj: %p)"
+ "Timer is invalidated with current message=%@ (obj: %p)"
+ "We're out of airplane mode, and we have a pending retry (obj: %p)"
- "FTMessageDelivery Sending SOS for APS failure that recieved response code: (HTTP Status Code: %d)"
- "FTMessageDelivery Sending SOS for request to url: (%@) that recieved response code: (HTTP Status Code: %d)"
```
