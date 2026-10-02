## accessoryd

> `/System/Library/PrivateFrameworks/CoreAccessories.framework/Support/accessoryd`

### Sections with Same Size but Changed Content

- `__TEXT.__const`
- `__DATA_CONST.__objc_classlist`
- `__DATA_CONST.__objc_protolist`
- `__DATA_CONST.__objc_protorefs`
- `__DATA_CONST.__objc_superrefs`
- `__DATA_CONST.__objc_arraydata`
- `__DATA_CONST.__objc_arrayobj`
- `__DATA_CONST.__objc_intobj`
- `__DATA_CONST.__got`
- `__DATA.__objc_const`
- `__DATA.__objc_data`
- `__DATA.__data`

```diff

-1216.2.2.0.0
-  __TEXT.__text: 0x19fdb0
+1219.40.7.0.0
+  __TEXT.__text: 0x19ffb0
   __TEXT.__auth_stubs: 0x1890
-  __TEXT.__objc_stubs: 0x95c0
-  __TEXT.__objc_methlist: 0x6eac
+  __TEXT.__objc_stubs: 0x9600
+  __TEXT.__objc_methlist: 0x6ed4
   __TEXT.__const: 0x2110
   __TEXT.__gcc_except_tab: 0x2110
   __TEXT.__objc_classname: 0xfd3
-  __TEXT.__objc_methname: 0xfed6
+  __TEXT.__objc_methname: 0xff03
   __TEXT.__objc_methtype: 0x324c
-  __TEXT.__cstring: 0xe5f5
-  __TEXT.__oslogstring: 0x390eb
+  __TEXT.__cstring: 0xe624
+  __TEXT.__oslogstring: 0x3919e
   __TEXT.__ustring: 0x232
-  __TEXT.__info_plist: 0x54e
-  __TEXT.__unwind_info: 0x4830
-  __DATA_CONST.__const: 0xa2d8
-  __DATA_CONST.__cfstring: 0x73c0
+  __TEXT.__info_plist: 0x552
+  __TEXT.__unwind_info: 0x4848
+  __DATA_CONST.__const: 0xa318
+  __DATA_CONST.__cfstring: 0x73e0
   __DATA_CONST.__objc_classlist: 0x318
   __DATA_CONST.__objc_catlist: 0x10
   __DATA_CONST.__objc_protolist: 0x178

   __DATA_CONST.__got: 0xef8
   __DATA_CONST.__auth_ptr: 0x98
   __DATA.__objc_const: 0xb080
-  __DATA.__objc_selrefs: 0x33c0
+  __DATA.__objc_selrefs: 0x33d0
   __DATA.__objc_ivar: 0x7a0
   __DATA.__objc_data: 0x1ef0
   __DATA.__data: 0x1940
-  __DATA.__bss: 0x1618
+  __DATA.__bss: 0x1628
   __DATA.__common: 0x28
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/Foundation.framework/Foundation

   - /usr/lib/libobjc.A.dylib
   - /usr/lib/libsqlite3.dylib
   - /usr/lib/libsysdiagnose.dylib
-  Functions: 8706
-  Symbols:   11697
-  CStrings:  8722
+  Functions: 8713
+  Symbols:   11709
+  CStrings:  8727
 
Symbols:
+ -[ACCTransportServer isConnectionEntitled:]
+ -[ACCTransportServer shouldAcceptConnection:]
+ -[NSXPCConnection(Entitlements) hasBooleanEntitlement:]
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(acc_internal_settings.o)
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccm-decrypt-e4efaeb33415a3dc2cd914cd52c49100.o)
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccm-encrypt-793af588241100d448ab0c941a00ed0b.o)
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_add-53cf47e0d16744b32e0ddaab571d8d52.o)
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_add-85a0a42e8ed52b843e1e8eb1781259f2.o)
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_cmp-5143943fb0f3e9ebac8ecb0a5444ebce.o)
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_mul-7a25c217cbc7645c1a4170976fc9da22.o)
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_mul-b01b7e112ff08dc6f5e46cc111b0d342.o)
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_n-8de872331bf81206aa052f08d480cbf3.o)
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_set-d4311d9579330e64dcf0293f42d5abd5.o)
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_shift_right-dbe84c0853ad49101adfc97e28c7c5a5.o)
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_shift_right-e5ee669f1164fb663d0c66b1402ada1c.o)
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_sub-508b009b357848a3c1800e5599c91ff6.o)
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_sub-6ea30adac4fb9ab02cc3b39b963f6cc3.o)
+ /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_sub1-cfe5040b7e13b36ef269df8ca1eca8f1.o)
+ ___acc_internalSettings_isInternalBuild_block_invoke
+ _acc_internalSettings_boolForKey
+ _kCFACCUserDefaultsKey_AllowACCAuthProtocolOnAllTransport
+ _kCFACCUserDefaultsKey_AllowMFi4DevCertsOnProdDevice
+ _kCFACCUserDefaultsKey_DisableACCAuthProtocolOnInductive
+ _kCFACCUserDefaultsKey_EnableACCAuthProtocolOnNFC
+ _objc_msgSend$hasBooleanEntitlement:
+ _objc_msgSend$isConnectionEntitled:
+ acc_internalSettings_boolForKey
+ acc_internalSettings_isInternalBuild.isInternalBuild
+ acc_internalSettings_isInternalBuild.onceToken
+ acc_internal_settings.c
- /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccm-decrypt-019ae603d8dc1916f3f174dbee15c627.o)
- /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccm-encrypt-9e7ae0279713610c45dd45353c559a7e.o)
- /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_add-3ddfda8a63119859f5b14b3f1b605f6c.o)
- /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_add-b63500f7e934b6af4db0708ea018a493.o)
- /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_cmp-80c32cc5c01954b7c782c8d4a2058b8f.o)
- /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_mul-19ad6d8be147053e768386ae23119c7a.o)
- /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_mul-6ab91b4ee8a78c8edf57750bf9d931d4.o)
- /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_n-85618de6e74bd8ca5a62508d02e09c6a.o)
- /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_set-f463c0553cb4abcbc5e87cd3c4e2078d.o)
- /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_shift_right-21bd53e832b4d5d2c14dc98f2899be5f.o)
- /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_shift_right-f0c64433c05768d694ca1414363320cd.o)
- /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_sub-8c74001941e320c1fd60df76badb29da.o)
- /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_sub-a4e2ec8b55a562dca16e81f81fcd042e.o)
- /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Binaries/CoreAccessories/install/Symbols/BuiltProducts/libAccessoryCore.a(ccn_sub1-4fecf7636e482b76ad79003cfdd0d64e.o)
- _ACCUserDefaultsKey_AllowACCAuthProtocolOnAllTransport
- _ACCUserDefaultsKey_AllowMFi4DevCertsOnProdDevice
- _ACCUserDefaultsKey_DisableACCAuthProtocolOnInductive
- _ACCUserDefaultsKey_EnableACCAuthProtocolOnNFC
CStrings:
+ "Unentitled XPC connection from pid %d! (Missing entitlement: '%@')! (API: ACCTransportClient / acc_transport_client)"
+ "acc_internalSettings: internal-only setting %{public}@ active"
+ "com.apple.private.accessories.transport-client"
+ "hasBooleanEntitlement:"
+ "isConnectionEntitled:"
```
