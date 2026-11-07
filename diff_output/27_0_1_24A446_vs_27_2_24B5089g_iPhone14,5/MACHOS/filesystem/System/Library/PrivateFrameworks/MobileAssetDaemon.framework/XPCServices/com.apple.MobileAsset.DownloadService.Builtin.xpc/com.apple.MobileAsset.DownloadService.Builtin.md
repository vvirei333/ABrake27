## com.apple.MobileAsset.DownloadService.Builtin

> `/System/Library/PrivateFrameworks/MobileAssetDaemon.framework/XPCServices/com.apple.MobileAsset.DownloadService.Builtin.xpc/com.apple.MobileAsset.DownloadService.Builtin`

### Sections with Same Size but Changed Content

- `__TEXT.__const`
- `__TEXT.__objc_methtype`
- `__TEXT.__swift5_typeref`
- `__TEXT.__constg_swiftt`
- `__TEXT.__swift5_proto`
- `__TEXT.__eh_frame`
- `__DATA_CONST.__const`
- `__DATA_CONST.__objc_classlist`
- `__DATA_CONST.__objc_protolist`
- `__DATA_CONST.__objc_protorefs`
- `__DATA_CONST.__objc_superrefs`
- `__DATA_CONST.__objc_intobj`
- `__DATA_CONST.__objc_arraydata`
- `__DATA_CONST.__objc_dictobj`
- `__DATA_CONST.__objc_arrayobj`
- `__DATA_CONST.__auth_got`
- `__DATA_CONST.__got`
- `__DATA.__objc_data`
- `__DATA.__data`

```diff

-2215.0.20.0.0
-  __TEXT.__text: 0x21b68
+2215.40.19.0.0
+  __TEXT.__text: 0x2226c
   __TEXT.__auth_stubs: 0xda0
-  __TEXT.__objc_stubs: 0x46e0
-  __TEXT.__objc_methlist: 0x1ea4
+  __TEXT.__objc_stubs: 0x4720
+  __TEXT.__objc_methlist: 0x1ed4
   __TEXT.__const: 0x69c
-  __TEXT.__cstring: 0x4421
-  __TEXT.__gcc_except_tab: 0x1184
-  __TEXT.__objc_methname: 0x5ed2
-  __TEXT.__oslogstring: 0x61e3
+  __TEXT.__cstring: 0x4614
+  __TEXT.__gcc_except_tab: 0x11d0
+  __TEXT.__objc_methname: 0x5fb1
+  __TEXT.__oslogstring: 0x6391
   __TEXT.__objc_classname: 0x33e
   __TEXT.__objc_methtype: 0x1274
   __TEXT.__swift5_typeref: 0xda

   __TEXT.__swift5_builtin: 0x14
   __TEXT.__swift5_proto: 0x24
   __TEXT.__swift5_types: 0xc
-  __TEXT.__unwind_info: 0x750
+  __TEXT.__unwind_info: 0x758
   __TEXT.__eh_frame: 0xc4
   __DATA_CONST.__const: 0x860
-  __DATA_CONST.__cfstring: 0x2dc0
+  __DATA_CONST.__cfstring: 0x3060
   __DATA_CONST.__objc_classlist: 0x88
   __DATA_CONST.__objc_catlist: 0x8
   __DATA_CONST.__objc_protolist: 0x80

   __DATA_CONST.__auth_got: 0x6e0
   __DATA_CONST.__got: 0x358
   __DATA_CONST.__auth_ptr: 0x168
-  __DATA.__objc_const: 0x31f0
-  __DATA.__objc_selrefs: 0x1570
-  __DATA.__objc_ivar: 0x274
+  __DATA.__objc_const: 0x3220
+  __DATA.__objc_selrefs: 0x1588
+  __DATA.__objc_ivar: 0x278
   __DATA.__objc_data: 0x5b8
   __DATA.__data: 0x698
   __DATA.__crash_info: 0x148

   - /usr/lib/swift/libswiftXPC.dylib
   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswiftos.dylib
-  Functions: 687
+  Functions: 691
   Symbols:   352
-  CStrings:  1999
+  CStrings:  2029
 
CStrings:
+ "AutoAuthorization"
+ "AutoConnectionObserver"
+ "AutoConnector"
+ "AutoControl-ConsiderRemoval"
+ "AutoControl-Eliminate"
+ "AutoControl-LookupGrant"
+ "AutoControl-OverflowTrim"
+ "AutoControl-Removal"
+ "AutoControl-SecureMonitor"
+ "AutoControl-SecureStartup"
+ "AutoControl-SecureUngraft"
+ "AutoJobCalculateDownloadSpace"
+ "AutoLookupCache"
+ "AutoSetStatus"
+ "Cancelling task due to failure to add it to activeDownload list | Identifier:%{public}@"
+ "Secure"
+ "Secure-Control"
+ "Secure-Control-Commit"
+ "Secure-Control-Exclave"
+ "Secure-Control-Graft"
+ "Secure-Control-LatestDownloaded"
+ "Secure-Control-LocalContentURL"
+ "Secure-Control-Personalize"
+ "Secure-Control-PersonalizeGraft"
+ "T@\"NSMutableDictionary\",&,V_serviceIdentifierToClientId"
+ "[MADownloadServiceBuiltin]: Attempting to start up builtin service built Sep 13 2026 20:53:57"
+ "[Manager]: Cancelling task due to failure to add it to active downloads | TaskDescriptor:%{public}@"
+ "[Manager]: Failed to extract taskDescriptor from description | TaskDescription:%{public}@"
+ "[Manager]: Failed to extract taskDescriptor from description(task not removed) | TaskDescription:%{public}@"
+ "[Manager]: Unable to determine taskDescriptor from description(no task returned) | TaskDescription:%{public}@"
+ "_serviceIdentifierToClientId"
+ "activeDownloadsKeyForEncodedTaskDescription:"
+ "extractOriginalTaskDescriptorFromEncodedTaskDescription:"
+ "serviceIdentifierToClientId"
+ "setServiceIdentifierToClientId:"
- "Failed to add task to activeDownload list | Identifier:%{public}@"
- "SecureControl"
- "SecureMA"
- "[MADownloadServiceBuiltin]: Attempting to start up builtin service built Aug  8 2026 19:06:12"
- "numberWithUnsignedLong:"
```
