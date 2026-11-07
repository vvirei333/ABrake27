## AssetExplorer

> `/System/Library/PrivateFrameworks/AssetExplorer.framework/AssetExplorer`

```diff

-912.1.131.0.0
-  __TEXT.__text: 0x2111c
+916.45.110.0.0
+  __TEXT.__text: 0x21264
   __TEXT.__objc_methlist: 0x2aac
   __TEXT.__const: 0x338
   __TEXT.__constg_swiftt: 0x1c8

   __TEXT.__swift5_capture: 0x10
   __TEXT.__swift5_types: 0xc
   __TEXT.__gcc_except_tab: 0x384
-  __TEXT.__oslogstring: 0x1e63
-  __TEXT.__unwind_info: 0x958
+  __TEXT.__oslogstring: 0x1f80
+  __TEXT.__unwind_info: 0x950
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__objc_catlist: 0x18
   __DATA_CONST.__objc_protolist: 0x130
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x2078
+  __DATA_CONST.__objc_selrefs: 0x2080
   __DATA_CONST.__objc_superrefs: 0xd0
   __DATA_CONST.__got: 0x5a0
   __AUTH_CONST.__const: 0x288
   __AUTH_CONST.__cfstring: 0xee0
   __AUTH_CONST.__objc_const: 0x4628
   __AUTH_CONST.__objc_intobj: 0xd8
-  __AUTH_CONST.__auth_got: 0x628
+  __AUTH_CONST.__auth_got: 0x630
   __AUTH_CONST.__auth_ptr: 0x0
   __AUTH.__objc_data: 0x8d8
   __AUTH.__data: 0xe8

   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
   Functions: 774
-  Symbols:   1844
-  CStrings:  251
+  Symbols:   1845
+  CStrings:  255
 
Symbols:
+ _PXPhotosFileProviderRegisterConfigurationSetShouldIncludeRating
Functions:
~ -[AEPackageTransport expectedPackageIdentifiers] : 96 -> 92
~ -[AEAssetPackage(CKBrowserItemPayload) browserItemPayload] : 2052 -> 2184
~ -[AEPhotosAssetPackageGenerator _generatePackageFromAsset:] : 816 -> 896
~ -[AEPhotosAssetPackageGenerator _generatePackageFromAssetUsingDVPSharing:] : 1364 -> 1484
CStrings:
+ "Failed to generate sandbox token for fileProviderURL: %@"
+ "Failed to generate sandbox token for thumbnailFilePathURL: %@"
+ "[AEPhotosAssetPackageGenerator] Failed to create file provider register for DVP sharing"
+ "[AEPhotosAssetPackageGenerator] No file representations found for DVP sharing"
```
