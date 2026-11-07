## MobileMailUI

> `/System/Library/PrivateFrameworks/MobileMailUI.framework/MobileMailUI`

### Sections with Same Size but Changed Content

- `__TEXT.__ustring`

```diff

-3901.100.1.2.14
-  __TEXT.__text: 0x4ec7c
-  __TEXT.__objc_methlist: 0x5314
-  __TEXT.__gcc_except_tab: 0x9938
-  __TEXT.__cstring: 0x349c
+3901.200.41.0.0
+  __TEXT.__text: 0x4e9a4
+  __TEXT.__objc_methlist: 0x531c
+  __TEXT.__gcc_except_tab: 0x9890
+  __TEXT.__const: 0x8504
+  __TEXT.__cstring: 0x342c
   __TEXT.__ustring: 0x318
-  __TEXT.__const: 0x8514
-  __TEXT.__oslogstring: 0x2397
+  __TEXT.__oslogstring: 0x24b7
   __TEXT.__dlopen_cstrs: 0x97
   __TEXT.__swift5_typeref: 0x2a2
   __TEXT.__swift5_capture: 0x128
   __TEXT.__swift5_fieldmd: 0x80
   __TEXT.__constg_swiftt: 0x1c4
-  __TEXT.__swift5_reflstr: 0x3a
+  __TEXT.__swift5_reflstr: 0x41
   __TEXT.__swift5_builtin: 0x14
   __TEXT.__swift5_types: 0x14
   __TEXT.__swift_as_entry: 0x14
   __TEXT.__swift_as_ret: 0x18
   __TEXT.__swift_as_cont: 0x28
-  __TEXT.__unwind_info: 0x2a80
+  __TEXT.__unwind_info: 0x2a60
   __TEXT.__eh_frame: 0x1b0
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x1378
+  __DATA_CONST.__const: 0x1370
   __DATA_CONST.__objc_classlist: 0x200
-  __DATA_CONST.__objc_catlist: 0x30
+  __DATA_CONST.__objc_catlist: 0x28
   __DATA_CONST.__objc_protolist: 0x160
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x4250
+  __DATA_CONST.__objc_selrefs: 0x4270
   __DATA_CONST.__objc_protorefs: 0x28
   __DATA_CONST.__objc_superrefs: 0x150
   __DATA_CONST.__objc_arraydata: 0xe8
-  __DATA_CONST.__got: 0xb50
+  __DATA_CONST.__got: 0xb60
   __AUTH_CONST.__const: 0x730
-  __AUTH_CONST.__cfstring: 0x31a0
-  __AUTH_CONST.__objc_const: 0x8028
+  __AUTH_CONST.__cfstring: 0x3140
+  __AUTH_CONST.__objc_const: 0x7ff8
   __AUTH_CONST.__objc_intobj: 0xf0
   __AUTH_CONST.__objc_arrayobj: 0x48
   __AUTH_CONST.__objc_doubleobj: 0x20

   __AUTH_CONST.__auth_ptr: 0x0
   __AUTH.__objc_data: 0xa60
   __AUTH.__data: 0xe8
-  __DATA.__objc_ivar: 0x4dc
+  __DATA.__objc_ivar: 0x4e0
   __DATA.__data: 0x1158
   __DATA.__bss: 0x48
   __DATA.__common: 0x78

   - /System/Library/PrivateFrameworks/EmailCore.framework/EmailCore
   - /System/Library/PrivateFrameworks/EmailDaemon.framework/EmailDaemon
   - /System/Library/PrivateFrameworks/EmailFoundation.framework/EmailFoundation
-  - /System/Library/PrivateFrameworks/MIME.framework/MIME
   - /System/Library/PrivateFrameworks/MailKit.framework/MailKit
   - /System/Library/PrivateFrameworks/MailSupport.framework/MailSupport
   - /System/Library/PrivateFrameworks/MailUI.framework/MailUI

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 1767
-  Symbols:   3590
-  CStrings:  682
+  Functions: 1766
+  Symbols:   3591
+  CStrings:  679
 
Symbols:
+ -[MFMessageContentView _committedDocumentMatchesContentURL:]
+ -[MFMessageContentView _discardFirstPaintGateState]
+ -[MFMessageContentView _handleNavigationFailure:]
+ -[MFMessageContentView webView:didFailProvisionalNavigation:withError:]
+ -[MFWebViewLoadingController cancelPendingContent]
+ GCC_except_table158
+ GCC_except_table160
+ GCC_except_table165
+ GCC_except_table167
+ GCC_except_table178
+ GCC_except_table188
+ GCC_except_table201
+ GCC_except_table204
+ GCC_except_table214
+ GCC_except_table217
+ GCC_except_table227
+ GCC_except_table229
+ GCC_except_table236
+ GCC_except_table238
+ GCC_except_table243
+ GCC_except_table253
+ GCC_except_table255
+ GCC_except_table266
+ GCC_except_table268
+ GCC_except_table269
+ GCC_except_table274
+ GCC_except_table281
+ GCC_except_table283
+ GCC_except_table286
+ GCC_except_table288
+ GCC_except_table360
+ GCC_except_table361
+ GCC_except_table369
+ GCC_except_table371
+ GCC_except_table372
+ GCC_except_table374
+ _NSURLErrorDomain
+ _OBJC_IVAR_$_MFMessageContentView._committedDocumentURL
+ _WKErrorDomain
- -[MFWebViewLoadingController clearContent]
- -[NSError(MessageContentView) mf_markupString]
- -[VIPManager allVIPEmailAddressesCriterion]
- -[VIPManager criterionForEmailAddresses:]
- GCC_except_table151
- GCC_except_table156
- GCC_except_table162
- GCC_except_table168
- GCC_except_table169
- GCC_except_table171
- GCC_except_table182
- GCC_except_table196
- GCC_except_table209
- GCC_except_table220
- GCC_except_table221
- GCC_except_table233
- GCC_except_table234
- GCC_except_table239
- GCC_except_table240
- GCC_except_table242
- GCC_except_table247
- GCC_except_table261
- GCC_except_table263
- GCC_except_table270
- GCC_except_table272
- GCC_except_table273
- GCC_except_table282
- GCC_except_table356
- GCC_except_table357
- GCC_except_table364
- GCC_except_table365
- GCC_except_table366
- GCC_except_table367
- _MFMIMEErrorDomain
- __OBJC_$_CATEGORY_INSTANCE_METHODS_NSError_$_MessageContentView
- __OBJC_$_CATEGORY_NSError_$_MessageContentView
- __OBJC_$_PROP_LIST_NSError_$_MessageContentView
- _messageForFragment
CStrings:
+ "<%{public}@: %p>: Canceling pending content: %@"
+ "<%{public}@: %p>: Message Content View did fail navigation, substituting error content: %{public}@"
+ "<%{public}@: %p>: honoring first paint for error markup, skipping the content URL match. committed=%{public}@"
+ "<%{public}@: %p>: superseded navigation, not treating as a failure: %{public}@"
+ "<%{public}@: %p>: webView first paint precedes the commit of the expected document, disregarding this event. committed=%{public}@ expected=%{public}@ loading indicator visible: %@"
+ "\xf0\xf0R"
- "<%{public}@: %p>: Clearing webview content: %@"
- "<%{public}@: %p>: Message Content View did fail navigation: %{public}@"
- "<html dir=auto><body><i><font color=#888>%@</font></i></body></html>"
- "Failed to find a message for error: %{public}@"
- "MESSAGE_CAUSED_PROBLEM"
- "MESSAGE_UNAVAILABLE"
- "MFWebViewLoadingController.clearContent"
- "WebView=%{public}p"
- "\xf0\xf0B"
```
