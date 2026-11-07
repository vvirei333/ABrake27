## NanoRegistry

> `/System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry`

```diff

-1075.1.4.0.0
-  __TEXT.__text: 0x5483c
-  __TEXT.__objc_methlist: 0x4a64
+1075.12.0.0.0
+  __TEXT.__text: 0x54ca8
+  __TEXT.__objc_methlist: 0x4a8c
   __TEXT.__const: 0xd8
-  __TEXT.__cstring: 0x4159
+  __TEXT.__cstring: 0x41ed
   __TEXT.__gcc_except_tab: 0xaec
   __TEXT.__oslogstring: 0x20ed
   __TEXT.__ustring: 0xc
-  __TEXT.__unwind_info: 0x1978
+  __TEXT.__unwind_info: 0x1980
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__objc_protolist: 0x98
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__weak_got: 0x8
-  __DATA_CONST.__objc_selrefs: 0x1e08
+  __DATA_CONST.__objc_selrefs: 0x1e18
   __DATA_CONST.__objc_protorefs: 0x28
   __DATA_CONST.__objc_superrefs: 0x1c0
   __DATA_CONST.__objc_arraydata: 0xc0
   __DATA_CONST.__got: 0x358
   __AUTH_CONST.__const: 0xb60
-  __AUTH_CONST.__cfstring: 0x4ae0
-  __AUTH_CONST.__objc_const: 0x6d70
+  __AUTH_CONST.__cfstring: 0x4b40
+  __AUTH_CONST.__objc_const: 0x6dd0
   __AUTH_CONST.__weak_auth_got: 0x10
   __AUTH_CONST.__objc_intobj: 0x48
   __AUTH_CONST.__objc_dictobj: 0x28
   __AUTH_CONST.__objc_arrayobj: 0x18
   __AUTH_CONST.__auth_got: 0x488
   __AUTH_CONST.__auth_ptr: 0x0
-  __AUTH.__objc_data: 0xc08
+  __AUTH.__objc_data: 0x78
   __AUTH.__data: 0x18
-  __DATA.__objc_ivar: 0x36c
+  __DATA.__objc_ivar: 0x374
   __DATA.__data: 0x730
   __DATA.__bss: 0x30
   __DATA.__common: 0x10
   __DATA_DIRTY.__objc_ivar: 0x74
-  __DATA_DIRTY.__objc_data: 0xcf8
+  __DATA_DIRTY.__objc_data: 0x1888
   __DATA_DIRTY.__data: 0x8
   __DATA_DIRTY.__bss: 0x1e0
   __DATA_DIRTY.__common: 0x20

   - /usr/lib/libc++.1.dylib
   - /usr/lib/libcompression.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 2085
-  Symbols:   3621
-  CStrings:  825
+  Functions: 2088
+  Symbols:   3626
+  CStrings:  828
 
Symbols:
+ -[NRWatchPairingExtendedMetadata setSupportsSecurePairing:]
+ -[NRWatchPairingExtendedMetadata supportsSecurePairing]
+ -[WatchSetupExtendedMetadata initWithPairingVersion:productVersionMajor:productVersionMinor:postFailSafeObliteration:encodedSystemVersion:supportsSecurePairing:]
+ -[WatchSetupExtendedMetadata supportsSecurePairing]
+ _OBJC_IVAR_$_NRWatchPairingExtendedMetadata._supportsSecurePairing
+ _OBJC_IVAR_$_WatchSetupExtendedMetadata._supportsSecurePairing
- -[WatchSetupExtendedMetadata initWithPairingVersion:productVersionMajor:productVersionMinor:postFailSafeObliteration:encodedSystemVersion:]
CStrings:
+ "F47B90E6-F2D5-49D0-A8F2-C880AA3FED19"
+ "com.apple.nanoregistry.F47B90E6-F2D5-49D0-A8F2-C880AA3FED19"
+ "supportsSecurePairing"
+ "{ chipID = %ld pairingVersion = %ld productType = \"%@\" postFailsafeObliteration = \"%s\" isCellularEnabled = \"%s\" encodedSystemVersion = \"%ld\" supportsSecurePairing = \"%s\" }"
- "{ chipID = %ld pairingVersion = %ld productType = \"%@\" postFailsafeObliteration = \"%s\" isCellularEnabled = \"%s\" encodedSystemVersion = \"%ld\" }"
```
