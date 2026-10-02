## KeyboardSettingsFeedback

> `/System/Library/PrivateFrameworks/KeyboardSettingsFeedback.framework/KeyboardSettingsFeedback`

```diff

-9127.0.84.1.113
-  __TEXT.__text: 0x15b4
+9127.1.7.2.101
+  __TEXT.__text: 0x150c
   __TEXT.__objc_methlist: 0x1b4
   __TEXT.__const: 0x58
-  __TEXT.__cstring: 0x4b9
+  __TEXT.__cstring: 0x478
   __TEXT.__oslogstring: 0x3
   __TEXT.__unwind_info: 0xc0
   __TEXT.__objc_stubs: 0x0

   __DATA_CONST.__const: 0x98
   __DATA_CONST.__objc_classlist: 0x10
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x240
+  __DATA_CONST.__objc_selrefs: 0x230
   __DATA_CONST.__objc_superrefs: 0x8
   __DATA_CONST.__objc_arraydata: 0x58
-  __DATA_CONST.__got: 0x78
-  __AUTH_CONST.__const: 0x60
-  __AUTH_CONST.__cfstring: 0x340
+  __DATA_CONST.__got: 0x70
+  __AUTH_CONST.__const: 0x40
+  __AUTH_CONST.__cfstring: 0x2e0
   __AUTH_CONST.__objc_const: 0x310
   __AUTH_CONST.__objc_intobj: 0x108
   __AUTH_CONST.__objc_arrayobj: 0x18
   __AUTH_CONST.__auth_got: 0x0
   __AUTH.__objc_data: 0xa0
   __DATA.__objc_ivar: 0x28
-  __DATA.__bss: 0x30
+  __DATA.__bss: 0x20
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/Foundation.framework/Foundation
   - /System/Library/Frameworks/UIKit.framework/UIKit

   - /usr/lib/libMobileGestalt.dylib
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 56
-  Symbols:   146
-  CStrings:  37
+  Functions: 54
+  Symbols:   141
+  CStrings:  34
 
Symbols:
- _MGGetBoolAnswer
- _OBJC_CLASS_$_NSUserDefaults
- ___47-[TUIFeedbackController feedbackFeatureEnabled]_block_invoke
- _feedbackFeatureEnabled.is_internal_install
- _feedbackFeatureEnabled.once_token
Functions:
~ -[TUIFeedbackController feedbackFeatureEnabled] : 184 -> 84
- ___47-[TUIFeedbackController feedbackFeatureEnabled]_block_invoke
~ _OUTLINED_FUNCTION_1 : 20 -> 24
~ _OUTLINED_FUNCTION_3 : 24 -> 20
~ -[TUIFeedbackController feedbackFeatureEnabled].cold.1 : 20 -> 136
- -[TUIFeedbackController feedbackFeatureEnabled].cold.2
CStrings:
+ "%s Feedback %@: RC_SEED_BUILD: 1 enabled: %d"
- "%s Feedback %@: RC_SEED_BUILD: 0 enabled: %d"
- "apple-internal-install"
- "com.apple.keyboard"
- "feedbackFeatureEnabled"
```
