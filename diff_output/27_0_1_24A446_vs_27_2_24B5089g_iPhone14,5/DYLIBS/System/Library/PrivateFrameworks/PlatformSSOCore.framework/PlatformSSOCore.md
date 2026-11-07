## PlatformSSOCore

> `/System/Library/PrivateFrameworks/PlatformSSOCore.framework/PlatformSSOCore`

```diff

-643.0.47.0.0
-  __TEXT.__text: 0x97b10
-  __TEXT.__objc_methlist: 0x62d8
-  __TEXT.__const: 0x19ac
-  __TEXT.__cstring: 0xad28
-  __TEXT.__oslogstring: 0x1e67
+643.40.27.0.0
+  __TEXT.__text: 0x98550
+  __TEXT.__objc_methlist: 0x6388
+  __TEXT.__const: 0x1a04
+  __TEXT.__cstring: 0xae78
+  __TEXT.__oslogstring: 0x2027
   __TEXT.__gcc_except_tab: 0x6f4
   __TEXT.__dlopen_cstrs: 0xa6
   __TEXT.__swift5_typeref: 0x166

   __TEXT.__swift5_assocty: 0x30
   __TEXT.__swift5_proto: 0x1c
   __TEXT.__swift5_types: 0x30
-  __TEXT.__unwind_info: 0x2178
+  __TEXT.__unwind_info: 0x21b0
   __TEXT.__eh_frame: 0x568
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0

   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
   __DATA_CONST.__const: 0x2600
-  __DATA_CONST.__objc_classlist: 0x4d8
+  __DATA_CONST.__objc_classlist: 0x4e0
   __DATA_CONST.__objc_catlist: 0x10
   __DATA_CONST.__objc_protolist: 0x90
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x2d10
+  __DATA_CONST.__objc_selrefs: 0x2d68
   __DATA_CONST.__objc_protorefs: 0x30
-  __DATA_CONST.__objc_superrefs: 0x1e8
+  __DATA_CONST.__objc_superrefs: 0x1f0
   __DATA_CONST.__objc_arraydata: 0x58
-  __DATA_CONST.__got: 0x9b0
-  __AUTH_CONST.__const: 0xc20
-  __AUTH_CONST.__cfstring: 0x7b20
-  __AUTH_CONST.__objc_const: 0x14d28
-  __AUTH_CONST.__objc_intobj: 0x228
+  __DATA_CONST.__got: 0x9d0
+  __AUTH_CONST.__const: 0xc60
+  __AUTH_CONST.__cfstring: 0x7c20
+  __AUTH_CONST.__objc_const: 0x14e40
+  __AUTH_CONST.__objc_intobj: 0x240
   __AUTH_CONST.__objc_doubleobj: 0x30
   __AUTH_CONST.__objc_arrayobj: 0x78
   __AUTH_CONST.__objc_dictobj: 0x50
-  __AUTH_CONST.__auth_got: 0xdb8
+  __AUTH_CONST.__auth_got: 0xdc0
   __AUTH_CONST.__auth_ptr: 0x1c0
-  __AUTH.__objc_data: 0x35a0
+  __AUTH.__objc_data: 0x35f0
   __AUTH.__data: 0x1a8
-  __DATA.__objc_ivar: 0x654
-  __DATA.__data: 0x1228
-  __DATA.__bss: 0x771
+  __DATA.__objc_ivar: 0x65c
+  __DATA.__data: 0x1250
+  __DATA.__bss: 0x791
   __DATA.__common: 0x88
   __DATA_DIRTY.__objc_data: 0x50
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation

   - /usr/lib/swift/libswiftXPC.dylib
   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswiftos.dylib
-  Functions: 3850
-  Symbols:   5836
-  CStrings:  1759
+  Functions: 3869
+  Symbols:   5877
+  CStrings:  1775
 
Symbols:
+ +[POCoreConfigurationUtil accountDisplayNameForDeviceConfiguration:loginConfiguration:]
+ +[POCoreConfigurationUtil alwaysUseLoginUIOverride]
+ +[POCoreConfigurationUtil shouldUsePlatformSSOLoginUIForDeviceConfiguration:]
+ +[POKeychainAccess isRunningInTestProcess]
+ -[PODeviceConfiguration alwaysUseLoginUI]
+ -[PODeviceConfiguration requiresPlatformSSOLoginUI]
+ -[PODeviceConfiguration setAlwaysUseLoginUI:]
+ -[PODeviceConfiguration supportsOpenID]
+ -[POKeychainHelper .cxx_destruct]
+ -[POKeychainHelper init]
+ -[POKeychainHelper keychainAccess]
+ -[POKeychainHelper setKeychainAccess:]
+ -[POTokenHelper findInfoForTokenId:uid:]
+ _NSClassFromString
+ _OBJC_CLASS_$_NSProcessInfo
+ _OBJC_CLASS_$_POKeychainAccess
+ _OBJC_IVAR_$_PODeviceConfiguration._alwaysUseLoginUI
+ _OBJC_IVAR_$_POKeychainHelper._keychainAccess
+ _OBJC_METACLASS_$_POKeychainAccess
+ _PO_LOG_POKeychainAccess.log
+ _PO_LOG_POKeychainAccess.once
+ __OBJC_$_CLASS_METHODS_POKeychainAccess
+ __OBJC_$_CLASS_PROP_LIST_POKeychainAccess
+ __OBJC_$_INSTANCE_VARIABLES_POKeychainHelper
+ __OBJC_$_PROP_LIST_POKeychainHelper
+ __OBJC_CLASS_RO_$_POKeychainAccess
+ __OBJC_METACLASS_RO_$_POKeychainAccess
+ ___42+[POKeychainAccess isRunningInTestProcess]_block_invoke
+ ___PO_LOG_POKeychainAccess_block_invoke
+ ___der_key_state_abs_last_mesa_auth
+ ___der_key_state_abs_last_mesa_unlock
+ ___der_key_state_abs_last_passcode_auth
+ ___der_key_state_abs_last_passcode_unlock
+ ___der_key_state_abs_lock_time
+ _der_key_state_abs_last_mesa_auth
+ _der_key_state_abs_last_mesa_unlock
+ _der_key_state_abs_last_passcode_auth
+ _der_key_state_abs_last_passcode_unlock
+ _der_key_state_abs_lock_time
+ _isRunningInTestProcess.isTest
+ _isRunningInTestProcess.onceToken
CStrings:
+ "%s IdP display name from the login configuration, the profile sets no AccountDisplayName on %@"
+ "%s Platform SSO login UI: %{public}@, alwaysUseLoginUI:%{public}@ openID:%{public}@ biometricRequired:%{public}@ loginType:%{public}@ on %@"
+ "%s Platform SSO login UI: always, set by local override on %@"
+ "%s no IdP display name in the device or login configuration on %@"
+ "%s tokenId = %{public}@, uid = %{public}@ on %@"
+ "+[POCoreConfigurationUtil accountDisplayNameForDeviceConfiguration:loginConfiguration:]"
+ "+[POCoreConfigurationUtil shouldUsePlatformSSOLoginUIForDeviceConfiguration:]"
+ "-[PODeviceConfiguration supportsOpenID]"
+ "-[POTokenHelper findInfoForTokenId:uid:]"
+ "AlwaysUseLoginUI"
+ "POKeychainAccess"
+ "XCTestCase"
+ "XCTestConfigurationFilePath"
+ "XCTestSessionIdentifier"
+ "isRunningInTestProcess is true"
+ "not required"
+ "required"
- "-[POTokenHelper findInfoForTokenId:]"
```
