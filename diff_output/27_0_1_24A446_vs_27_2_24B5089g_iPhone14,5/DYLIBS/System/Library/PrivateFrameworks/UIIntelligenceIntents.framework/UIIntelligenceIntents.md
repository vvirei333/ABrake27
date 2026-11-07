## UIIntelligenceIntents

> `/System/Library/PrivateFrameworks/UIIntelligenceIntents.framework/UIIntelligenceIntents`

```diff

-9127.0.84.1.106
-  __TEXT.__text: 0x2cf04
+9127.1.7.0.0
+  __TEXT.__text: 0x2cf48
   __TEXT.__objc_methlist: 0x774
-  __TEXT.__const: 0x3bb8
+  __TEXT.__const: 0x3bd8
   __TEXT.__constg_swiftt: 0x91c
-  __TEXT.__swift5_typeref: 0x117a
+  __TEXT.__swift5_typeref: 0x1179
   __TEXT.__swift5_builtin: 0x78
   __TEXT.__swift5_reflstr: 0x84e
   __TEXT.__swift5_fieldmd: 0x774
   __TEXT.__swift5_assocty: 0x458
-  __TEXT.__oslogstring: 0x9ba
+  __TEXT.__oslogstring: 0xa1a
   __TEXT.__swift5_proto: 0x2a0
   __TEXT.__swift5_types: 0x94
-  __TEXT.__swift_as_entry: 0xd4
-  __TEXT.__swift_as_ret: 0xb8
+  __TEXT.__swift_as_entry: 0xd8
+  __TEXT.__swift_as_ret: 0xbc
   __TEXT.__swift_as_cont: 0x154
-  __TEXT.__cstring: 0x1435
+  __TEXT.__cstring: 0x139a
   __TEXT.__swift5_capture: 0x80
   __TEXT.__swift5_protos: 0xc
-  __TEXT.__unwind_info: 0xe68
-  __TEXT.__eh_frame: 0x1bac
+  __TEXT.__unwind_info: 0xe78
+  __TEXT.__eh_frame: 0x1c14
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0xf8
+  __DATA_CONST.__const: 0x140
   __DATA_CONST.__objc_classlist: 0x8
   __DATA_CONST.__objc_protolist: 0x70
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x628
+  __DATA_CONST.__objc_selrefs: 0x630
   __DATA_CONST.__objc_protorefs: 0x38
-  __DATA_CONST.__got: 0x2c8
+  __DATA_CONST.__got: 0x2e8
   __AUTH_CONST.__const: 0x13b0
   __AUTH_CONST.__objc_const: 0x43d8
-  __AUTH_CONST.__auth_got: 0x9f0
+  __AUTH_CONST.__auth_got: 0x9f8
   __AUTH_CONST.__auth_ptr: 0x6c8
   __AUTH.__data: 0x1b8
-  __DATA.__data: 0xdf8
+  __DATA.__data: 0xdc0
   __DATA.__bss: 0x5310
-  __DATA.__common: 0x350
+  __DATA.__common: 0x300
   - /System/Library/Frameworks/AppIntents.framework/AppIntents
   - /System/Library/Frameworks/CoreGraphics.framework/CoreGraphics
   - /System/Library/Frameworks/Foundation.framework/Foundation

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 1072
-  Symbols:   683
-  CStrings:  141
+  Functions: 1062
+  Symbols:   694
+  CStrings:  137
 
Symbols:
+ _IAPayloadKeyWritingToolsBundleID
+ _IASignalWritingToolsIntentInsertText
+ _IASignalWritingToolsIntentKeyPoints
+ _IASignalWritingToolsIntentPresentResult
+ _IASignalWritingToolsIntentProofread
+ _IASignalWritingToolsIntentRequestEditingContext
+ _IASignalWritingToolsIntentRewrite
+ _IASignalWritingToolsIntentSummarize
+ _IASignalWritingToolsIntentTransformList
+ _IASignalWritingToolsIntentTransformTable
+ _objc_retain_x27
CStrings:
+ "Present Writing Tools result "
+ "The text to be inserted into the app’s active text field."
+ "Window number (stringified) of the window that hosts the target text field. When provided on macOS, the bridge activates that window (`makeKeyAndOrderFront:`) before starting Writing Tools so AppKit’s default `keyWindow.firstResponder` coordinator walk lands on the intended field — necessary when a transient popover has stolen key focus."
+ "Writing Tools session already active on %{public}s — skipping becomeFirstResponder"
- "IntentInsertText"
- "IntentPresentResult"
- "IntentRequestEditingContext"
- "IntentTransformList"
- "IntentTransformTable"
- "Present writing tools result "
- "The text to be inserted into the app's active text field."
- "Window number (stringified) of the window that hosts the target text field. When provided on macOS, the bridge activates that window (`makeKeyAndOrderFront:`) before starting Writing Tools so AppKit's default `keyWindow.firstResponder` coordinator walk lands on the intended field — necessary when a transient popover has stolen key focus."
```
