## ScreenshotServices

> `/System/Library/PrivateFrameworks/ScreenshotServices.framework/ScreenshotServices`

```diff

-447.100.0.0.0
-  __TEXT.__text: 0x1e764
+451.0.0.0.0
+  __TEXT.__text: 0x1e880
   __TEXT.__objc_methlist: 0x265c
   __TEXT.__const: 0x27c
   __TEXT.__cstring: 0x207d
-  __TEXT.__oslogstring: 0x1802
+  __TEXT.__oslogstring: 0x1813
   __TEXT.__gcc_except_tab: 0x410
   __TEXT.__dlopen_cstrs: 0x4ae
   __TEXT.__unwind_info: 0xb98

   __DATA_CONST.__objc_catlist: 0x28
   __DATA_CONST.__objc_protolist: 0x98
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x1c98
+  __DATA_CONST.__objc_selrefs: 0x1ca0
   __DATA_CONST.__objc_protorefs: 0x10
   __DATA_CONST.__objc_superrefs: 0xf8
   __DATA_CONST.__objc_arraydata: 0x38
Functions:
~ ___113-[SSScreenCapturer _takeScreenshotWithOptionsCollection:serviceOptions:presentationOptions:appleInternalOptions:]_block_invoke : 548 -> 628
~ -[SSEnvironmentElement isAppLauncher] : 152 -> 176
~ -[SSEnvironmentDescription currentApplicationBundleID] : 120 -> 284
~ -[SSScreenCapturer _captureAndSendMetadataAndDocumentForEnvironmentDescription:metadataCaptureCompletion:] : 1196 -> 1212
CStrings:
+ "Sending env description for session %@: waitedMs=%.1f elementCount=%lu bundleID=%@ layoutDisplay=%@"
- "Sending env description for session %@: waitedMs=%.1f elementCount=%lu bundleID=%@"
```
