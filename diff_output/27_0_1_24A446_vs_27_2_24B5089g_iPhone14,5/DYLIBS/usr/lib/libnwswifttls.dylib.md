## libnwswifttls.dylib

> `/usr/lib/libnwswifttls.dylib`

```diff

-171.0.15.0.0
-  __TEXT.__text: 0xf9530
+171.40.10.0.0
+  __TEXT.__text: 0xf9c44
   __TEXT.__objc_methlist: 0x53c
-  __TEXT.__const: 0x71d4
-  __TEXT.__cstring: 0x1776
+  __TEXT.__const: 0x71e4
+  __TEXT.__cstring: 0x1836
   __TEXT.__gcc_except_tab: 0xd8
-  __TEXT.__oslogstring: 0x52bb
+  __TEXT.__oslogstring: 0x534b
   __TEXT.__swift5_typeref: 0xf6f
   __TEXT.__swift5_capture: 0x134
   __TEXT.__constg_swiftt: 0x1668
   __TEXT.__swift5_proto: 0x2f4
   __TEXT.__swift5_types: 0x248
-  __TEXT.__swift5_fieldmd: 0x2b94
-  __TEXT.__swift5_reflstr: 0x2657
+  __TEXT.__swift5_fieldmd: 0x2ba0
+  __TEXT.__swift5_reflstr: 0x2677
   __TEXT.__swift5_assocty: 0xf0
   __TEXT.__swift5_builtin: 0xc8
   __TEXT.__swift5_mpenum: 0x68
   __TEXT.__swift5_protos: 0x14
   __TEXT.__swift5_types2: 0x10
-  __TEXT.__unwind_info: 0x28c8
-  __TEXT.__eh_frame: 0x3fb8
+  __TEXT.__unwind_info: 0x28e0
+  __TEXT.__eh_frame: 0x4018
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA.__bss: 0x5480
   __DATA.__common: 0x8
   __DATA_DIRTY.__objc_data: 0x140
-  __DATA_DIRTY.__data: 0x1fe0
+  __DATA_DIRTY.__data: 0x1fd8
   __DATA_DIRTY.__common: 0x30
   __DATA_DIRTY.__bss: 0x1a0
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation

   - /usr/lib/swift/libswiftXPC.dylib
   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswiftos.dylib
-  Functions: 3683
-  Symbols:   8325
-  CStrings:  524
+  Functions: 3688
+  Symbols:   8330
+  CStrings:  529
 
Symbols:
+ _$s15SwiftTLSLibrary16TLSRecordHandlerV17protectForTesting9plaintext17actualContentTypeAA13TLSCiphertextVSays5UInt8VG_AA0jK0VtAA8TLSErrorOYKF
+ _$s15SwiftTLSLibrary16TLSRecordHandlerV31setReadSequenceNumberForTestingyys6UInt64VF
+ _$s15SwiftTLSLibrary16TLSRecordHandlerV32setWriteSequenceNumberForTestingyys6UInt64VF
+ _$s15SwiftTLSLibrary18TLSRecordProtectorV15aeadRecordLimits6UInt64VyAA8TLSErrorOYKF
+ _$s15SwiftTLSLibrary18TLSRecordProtectorV28setSequenceNumbersForTesting5write4readys6UInt64VSg_AItF
CStrings:
+ "Unexpectedly parsed ciphertext when expecting plaintext"
+ "Unexpectedly parsed plaintext when expecting ciphertext"
+ "alert record contained trailing bytes after a complete alert message"
+ "alert record did not contain a complete alert message"
+ "can't check key usage limit without ciphersuite set"
```
