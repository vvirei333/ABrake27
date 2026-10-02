## AppTrackingTransparency

> `/System/Library/Frameworks/AppTrackingTransparency.framework/AppTrackingTransparency`

```diff

-106.2.2.0.0
-  __TEXT.__text: 0x1f4c
-  __TEXT.__objc_methlist: 0x144
+106.3.2.0.0
+  __TEXT.__text: 0x2a1c
+  __TEXT.__objc_methlist: 0x184
   __TEXT.__const: 0x80
-  __TEXT.__gcc_except_tab: 0xbc
-  __TEXT.__cstring: 0x1aa
-  __TEXT.__oslogstring: 0x6f6
-  __TEXT.__unwind_info: 0x100
+  __TEXT.__gcc_except_tab: 0xe8
+  __TEXT.__cstring: 0x4cc
+  __TEXT.__oslogstring: 0x838
+  __TEXT.__unwind_info: 0x138
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x160
+  __DATA_CONST.__const: 0x1b0
   __DATA_CONST.__objc_classlist: 0x10
   __DATA_CONST.__objc_protolist: 0x8
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x188
+  __DATA_CONST.__objc_selrefs: 0x1b8
   __DATA_CONST.__objc_protorefs: 0x8
   __DATA_CONST.__got: 0x0
   __AUTH_CONST.__const: 0x60
-  __AUTH_CONST.__cfstring: 0x160
+  __AUTH_CONST.__cfstring: 0x2a0
   __AUTH_CONST.__objc_const: 0x188
   __AUTH_CONST.__auth_got: 0x0
   __DATA.__data: 0x60
-  __DATA.__bss: 0x30
+  __DATA.__bss: 0x2c
   __DATA_DIRTY.__objc_data: 0xa0
   __DATA_DIRTY.__data: 0x8
   __DATA_DIRTY.__bss: 0x58

   - /System/Library/PrivateFrameworks/UserManagement.framework/UserManagement
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 40
-  Symbols:   154
-  CStrings:  41
+  Functions: 49
+  Symbols:   177
+  CStrings:  56
 
Symbols:
+ +[ATTrackingManager _isRepromptEligible]
+ +[ATTrackingManager _performTCCAccessRequestPreferExpandedInterface:displayAdditionalInfo:completion:]
+ +[ATTrackingManager _preRequestChecksWithCompletion:]
+ +[ATTrackingManager _recordRequestOutcome:prompted:deniedReason:log:]
+ +[ATTrackingManager requestTrackingAuthorizationPreferExpandedInterface:additionalInformationAction:completionHandler:]
+ GCC_except_table15
+ GCC_except_table20
+ GCC_except_table25
+ GCC_except_table27
+ _OBJC_CLASS_$_NSString
+ ___102+[ATTrackingManager _performTCCAccessRequestPreferExpandedInterface:displayAdditionalInfo:completion:]_block_invoke
+ ___119+[ATTrackingManager requestTrackingAuthorizationPreferExpandedInterface:additionalInformationAction:completionHandler:]_block_invoke
+ ___40+[ATTrackingManager _isRepromptEligible]_block_invoke
+ ___block_descriptor_48_e8_32bs40bs_e5_v8?0ls32l8s40l8
+ ___block_descriptor_56_e8_32bs40bs_e8_v16?0Q8ls32l8s40l8
+ __dispatch_main_q
+ _dispatch_async
+ _objc_release_x25
+ _objc_retain_x3
+ _objc_retain_x4
+ _objc_retain_x5
+ _tcc_authorization_record_get_eligible_for_reprompt
+ _tcc_message_options_set_learn_more_link
CStrings:
+ "Tracking authorization request returning - Restricted due to permission."
+ "Tracking authorization request returning - Restricted due to profile."
+ "Tracking authorization request returning - Restricted."
+ "[%@] %{public}@"
+ "[%@] Call to requesting tracking authorization eligible for rate limiting. Returning %lu"
+ "[%@] Performing TCC Access Request (preferExpandedInterface=%d, displayAdditionalInfo=%d)."
+ "[%@] Performing TCC reprompt eligibility request."
+ "[%@] Received error invoking TCC access request with sheet."
+ "[%@] Received error querying TCC reprompt eligibility."
+ "[%@] requestTrackingAuthorizationPreferExpandedInterface API call failed due to missing completion."
+ "[%@] requestTrackingAuthorizationPreferExpandedInterface API call invoked, preferExpandedInterface=%d, displayAdditionalInfo=%d."
+ "[%@] requestTrackingAuthorizationPreferExpandedInterface returning - Additional Information button tapped."
+ "requestTrackingAuthorizationPreferExpandedInterface returning %lu due to backgrounded app."
+ "requestTrackingAuthorizationPreferExpandedInterface returning - ATT Authorized."
+ "requestTrackingAuthorizationPreferExpandedInterface returning - ATT Denied due to tracking toggle."
+ "requestTrackingAuthorizationPreferExpandedInterface returning - ATT Denied."
+ "requestTrackingAuthorizationPreferExpandedInterface returning - ATT not determined."
+ "requestTrackingAuthorizationPreferExpandedInterface returning Authorized due to consent."
+ "requestTrackingAuthorizationPreferExpandedInterface returning Denied due to consent."
- "[%@] Call to requestTrackingAuthorizationWithCompletionHandler eligible for rate limiting. Returning %lu"
- "[%@] requestTrackingAuthorizationWithCompletionHandler returning - Restricted due to permission."
- "[%@] requestTrackingAuthorizationWithCompletionHandler returning - Restricted due to profile."
- "[%@] requestTrackingAuthorizationWithCompletionHandler returning - Restricted."
```
