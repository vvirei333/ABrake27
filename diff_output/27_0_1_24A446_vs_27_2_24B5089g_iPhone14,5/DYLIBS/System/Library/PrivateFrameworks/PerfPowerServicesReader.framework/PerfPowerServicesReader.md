## PerfPowerServicesReader

> `/System/Library/PrivateFrameworks/PerfPowerServicesReader.framework/PerfPowerServicesReader`

```diff

-3486.2.4.0.0
-  __TEXT.__text: 0x15871c
+3486.40.98.0.0
+  __TEXT.__text: 0x15895c
   __TEXT.__init_offsets: 0xdc
-  __TEXT.__objc_methlist: 0x13994
-  __TEXT.__const: 0x5fd2
-  __TEXT.__cstring: 0xe092
+  __TEXT.__objc_methlist: 0x1399c
+  __TEXT.__const: 0x5fe2
+  __TEXT.__cstring: 0xe156
   __TEXT.__gcc_except_tab: 0x4adc
   __TEXT.__oslogstring: 0xda1
-  __TEXT.__unwind_info: 0x4b68
+  __TEXT.__unwind_info: 0x4b70
   __TEXT.__eh_frame: 0x98
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0

   __DATA_CONST.__objc_protolist: 0x48
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__weak_got: 0x368
-  __DATA_CONST.__objc_selrefs: 0x60a8
+  __DATA_CONST.__objc_selrefs: 0x60b0
   __DATA_CONST.__objc_protorefs: 0x18
   __DATA_CONST.__objc_superrefs: 0x508
   __DATA_CONST.__objc_arraydata: 0x110
   __DATA_CONST.__got: 0x758
   __AUTH_CONST.__const: 0x3090
-  __AUTH_CONST.__cfstring: 0x10b80
+  __AUTH_CONST.__cfstring: 0x10be0
   __AUTH_CONST.__objc_const: 0x179e0
   __AUTH_CONST.__weak_auth_got: 0xb0
   __AUTH_CONST.__objc_intobj: 0x1e0

   - /usr/lib/libc++.1.dylib
   - /usr/lib/libobjc.A.dylib
   - /usr/lib/libsqlite3.dylib
-  Functions: 8164
-  Symbols:   12065
-  CStrings:  2358
+  Functions: 8165
+  Symbols:   12066
+  CStrings:  2361
 
Symbols:
+ -[PPSTimeSeriesRequest initWithDistinctMetrics:predicate:timeFilter:]
Functions:
~ -[PPSSQLiteTimeSeriesIngester parseDataForRequest:outError:] : 2840 -> 2852
~ -[PPSRequestValidator validateDataRequest:filepath:withError:] : 1992 -> 2504
+ -[PPSTimeSeriesRequest initWithDistinctMetrics:predicate:timeFilter:]
CStrings:
+ "Distinct requests cannot select the timestampEnd metric."
+ "Distinct requests cannot select variable-length array metric '%@'."
+ "Distinct requests cannot use limitCount, offsetCount, or readDirection."
```
