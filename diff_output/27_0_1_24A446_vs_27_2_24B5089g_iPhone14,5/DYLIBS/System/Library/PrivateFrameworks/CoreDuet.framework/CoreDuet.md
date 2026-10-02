## CoreDuet

> `/System/Library/PrivateFrameworks/CoreDuet.framework/CoreDuet`

```diff

-1971.0.0.0.0
-  __TEXT.__text: 0x18fcf8
+1975.0.0.0.0
+  __TEXT.__text: 0x1901a0
   __TEXT.__objc_methlist: 0x11734
-  __TEXT.__cstring: 0x15d00
+  __TEXT.__cstring: 0x15d57
   __TEXT.__const: 0x5b8
-  __TEXT.__oslogstring: 0x18e01
-  __TEXT.__gcc_except_tab: 0x73ec
+  __TEXT.__oslogstring: 0x18dbb
+  __TEXT.__gcc_except_tab: 0x73e0
   __TEXT.__dlopen_cstrs: 0xb6
   __TEXT.__unwind_info: 0x54a8
   __TEXT.__objc_stubs: 0x0

   __DATA_CONST.__objc_catlist: 0x78
   __DATA_CONST.__objc_protolist: 0x220
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x8080
+  __DATA_CONST.__objc_selrefs: 0x8088
   __DATA_CONST.__objc_protorefs: 0x70
   __DATA_CONST.__objc_superrefs: 0x698
   __DATA_CONST.__objc_arraydata: 0x710
-  __DATA_CONST.__got: 0x11a0
+  __DATA_CONST.__got: 0x11a8
   __AUTH_CONST.__const: 0x1b20
   __AUTH_CONST.__cfstring: 0x12d40
   __AUTH_CONST.__objc_const: 0x22ec0

   __AUTH_CONST.__objc_doubleobj: 0x50
   __AUTH_CONST.__objc_arrayobj: 0x630
   __AUTH_CONST.__objc_dictobj: 0xc8
-  __AUTH_CONST.__auth_got: 0xa70
+  __AUTH_CONST.__auth_got: 0xa78
   __AUTH_CONST.__auth_ptr: 0x0
   __AUTH.__objc_data: 0x5050
   __DATA.__objc_ivar: 0x177c

   - /System/Library/PrivateFrameworks/ProtocolBuffer.framework/ProtocolBuffer
   - /System/Library/PrivateFrameworks/Rapport.framework/Rapport
   - /System/Library/PrivateFrameworks/SoftLinking.framework/SoftLinking
+  - /System/Library/PrivateFrameworks/TCC.framework/TCC
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libarchive.2.dylib
   - /usr/lib/libcompression.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 8792
-  Symbols:   13366
-  CStrings:  4651
+  Functions: 8794
+  Symbols:   13369
+  CStrings:  4655
 
Symbols:
+ _TCCAccessCopyBundleIdentifiersDisabledForService
+ __CDConvertPhoneNumberStringToASCII
+ _kTCCServiceSiriAccess
Functions:
~ ___64-[_CDSiriLearningSettings _startWithCallback:invokeCallbackNow:]_block_invoke : 728 -> 724
~ +[_CDSiriLearningSettings uncachedAllLearningDisabledBundleIDs] : 60 -> 104
+ _OUTLINED_FUNCTION_2
- _OUTLINED_FUNCTION_2
- _OUTLINED_FUNCTION_6
~ _OUTLINED_FUNCTION_2 : 16 -> 32
~ _OUTLINED_FUNCTION_2 : 28 -> 16
+ _OUTLINED_FUNCTION_2
~ +[_CDContactResolver normalizedStringFromContactString:] : 148 -> 180
+ _OUTLINED_FUNCTION_59
~ +[_CDContactResolver resolveContactIdentifier:usingStore:] : 588 -> 604
+ __CDConvertPhoneNumberStringToASCII
~ +[_CDContactResolver resolveContactIfPossibleFromContactIdentifierString:usingStore:] : 304 -> 332
~ -[_DKCoreDataStorage deleteStorageFor:] : 864 -> 788
+ __CDConvertPhoneNumberStringToASCII.cold.1
~ ___41+[_CDSiriLearningSettings sharedInstance]_block_invoke : 412 -> 452
~ -[_CDSiriLearningSettings _startWithCallback:invokeCallbackNow:] : 404 -> 464
~ -[_CDSiriLearningSettings startSanitizingKnowledgeStore:] : 124 -> 128
~ -[_CDSiriLearningSettings startSanitizingInteractionStore:] : 124 -> 128
~ -[_CDSiriLearningSettings stopSanitizing] : 172 -> 176
- -[_DKCoreDataStorage deleteStorageFor:].cold.2
CStrings:
+ "AppExclusions"
+ "Error checking Siri Learning access (errno %{darwin.errno}d). Attempting checks but they may not work."
+ "IntelligenceFlow"
+ "Process has access to Siri Learning toggles."
+ "Unable to access Siri Learning toggles. Disabling checks."
+ "com.apple.tcc.access.changed"
+ "com.apple.tccd"
+ "mach-lookup"
- "Creating shell PSC to truncate storage."
- "Error checking preferences access (errno %{darwin.errno}d). Attempting checks but they may not work."
- "Process has access to preferences for Siri Learning toggles."
- "Unable to access preferences for Siri Learning toggles. Disabling checks."
```
