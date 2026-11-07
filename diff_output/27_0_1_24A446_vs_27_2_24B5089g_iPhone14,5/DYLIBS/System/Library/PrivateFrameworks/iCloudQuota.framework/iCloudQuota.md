## iCloudQuota

> `/System/Library/PrivateFrameworks/iCloudQuota.framework/iCloudQuota`

```diff

-301.24.0.27.0
-  __TEXT.__text: 0x7be34
-  __TEXT.__objc_methlist: 0x59cc
+301.24.1.4.0
+  __TEXT.__text: 0x7ccdc
+  __TEXT.__objc_methlist: 0x5a74
   __TEXT.__const: 0x1378
-  __TEXT.__cstring: 0x5050
-  __TEXT.__oslogstring: 0x8999
-  __TEXT.__gcc_except_tab: 0x5a8
-  __TEXT.__dlopen_cstrs: 0x3b5
+  __TEXT.__cstring: 0x5080
+  __TEXT.__oslogstring: 0x8aa9
+  __TEXT.__gcc_except_tab: 0x5c0
+  __TEXT.__dlopen_cstrs: 0x417
   __TEXT.__ustring: 0x4
   __TEXT.__swift5_typeref: 0x7f8
   __TEXT.__swift5_capture: 0x39c

   __TEXT.__swift_as_cont: 0xe0
   __TEXT.__swift5_protos: 0x1c
   __TEXT.__swift5_builtin: 0x28
-  __TEXT.__unwind_info: 0x1ec0
+  __TEXT.__unwind_info: 0x1ef8
   __TEXT.__eh_frame: 0x1500
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x1e68
-  __DATA_CONST.__objc_classlist: 0x3b8
+  __DATA_CONST.__const: 0x1e80
+  __DATA_CONST.__objc_classlist: 0x3c0
   __DATA_CONST.__objc_catlist: 0x28
-  __DATA_CONST.__objc_protolist: 0x50
+  __DATA_CONST.__objc_protolist: 0x58
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x3088
+  __DATA_CONST.__objc_selrefs: 0x30b8
   __DATA_CONST.__objc_protorefs: 0x18
-  __DATA_CONST.__objc_superrefs: 0x290
+  __DATA_CONST.__objc_superrefs: 0x298
   __DATA_CONST.__objc_arraydata: 0x730
   __DATA_CONST.__got: 0x828
   __AUTH_CONST.__const: 0x1450
-  __AUTH_CONST.__cfstring: 0x6680
-  __AUTH_CONST.__objc_const: 0xb5b0
+  __AUTH_CONST.__cfstring: 0x66e0
+  __AUTH_CONST.__objc_const: 0xba10
   __AUTH_CONST.__objc_intobj: 0x9a8
   __AUTH_CONST.__objc_dictobj: 0x1b8
   __AUTH_CONST.__objc_arrayobj: 0xa8
   __AUTH_CONST.__auth_got: 0xc80
   __AUTH_CONST.__auth_ptr: 0x2b0
-  __AUTH.__objc_data: 0x1678
+  __AUTH.__objc_data: 0x16c8
   __AUTH.__data: 0x5f0
-  __DATA.__objc_ivar: 0x6b4
-  __DATA.__data: 0x5a8
+  __DATA.__objc_ivar: 0x6c0
+  __DATA.__data: 0x608
   __DATA.__bss: 0x1150
   __DATA.__common: 0x10
   __DATA_DIRTY.__objc_data: 0x10d0
   __DATA_DIRTY.__data: 0x278
-  __DATA_DIRTY.__bss: 0x268
+  __DATA_DIRTY.__bss: 0x278
   - /System/Library/Frameworks/Accounts.framework/Accounts
   - /System/Library/Frameworks/Combine.framework/Combine
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 3036
-  Symbols:   4340
-  CStrings:  1644
+  Functions: 3053
+  Symbols:   4365
+  CStrings:  1652
 
Symbols:
+ +[ICQOffer _appendAdopterBannerSpecificationsFromEntries:source:to:]
+ +[ICQOffer(Internal) adopterBannerSpecificationsFromServerDictionary:]
+ +[_ICQDeviceInfo normalizedPendingItemsCount:]
+ -[ICQNotifyDeleteReporter .cxx_destruct]
+ -[ICQNotifyDeleteReporter initWithAccount:]
+ -[ICQNotifyDeleteReporter reportDeleteWithSuccess:bundleId:completion:]
+ -[ICQOfferManager _debugMockRegularOfferIfEnabled]
+ -[_ICQAlertSpecification messageWithKey:]
+ -[_ICQAlertSpecification titleWithKey:]
+ -[_ICQBannerSpecification appId]
+ GCC_except_table37
+ GCC_except_table52
+ GCC_except_table70
+ _OBJC_CLASS_$_ICQNotifyDeleteReporter
+ _OBJC_IVAR_$_ICQNotifyDeleteReporter._account
+ _OBJC_IVAR_$__ICQAlertSpecification._messageTemplates
+ _OBJC_IVAR_$__ICQAlertSpecification._titleTemplates
+ _OBJC_METACLASS_$_ICQNotifyDeleteReporter
+ __OBJC_$_INSTANCE_METHODS_ICQNotifyDeleteReporter
+ __OBJC_$_INSTANCE_VARIABLES_ICQNotifyDeleteReporter
+ __OBJC_$_PROP_LIST_ICQNotifyDeleteReporter
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_ICQNotifyDeleteReporting
+ __OBJC_$_PROTOCOL_METHOD_TYPES_ICQNotifyDeleteReporting
+ __OBJC_$_PROTOCOL_REFS_ICQNotifyDeleteReporting
+ __OBJC_CLASS_PROTOCOLS_$_ICQNotifyDeleteReporter
+ __OBJC_CLASS_RO_$_ICQNotifyDeleteReporter
+ __OBJC_LABEL_PROTOCOL_$_ICQNotifyDeleteReporting
+ __OBJC_METACLASS_RO_$_ICQNotifyDeleteReporter
+ __OBJC_PROTOCOL_$_ICQNotifyDeleteReporting
+ ___71-[ICQNotifyDeleteReporter reportDeleteWithSuccess:bundleId:completion:]_block_invoke
- GCC_except_table30
- GCC_except_table36
- GCC_except_table51
- GCC_except_table69
- GCC_except_table71
CStrings:
+ "Failed to report delete with error: %@"
+ "Returning icqctl debug mock offer for bundle %@: %@"
+ "XPC error connecting to ind daemon."
+ "contextBasedMesg"
+ "contextBasedTitle"
+ "debug-mock-offer"
+ "pendingItemsCount %@ is too low, treating as nil"
+ "reportDeleteWithSuccess:bundleId:completion: called by %{public}@ with success: %d."
```
