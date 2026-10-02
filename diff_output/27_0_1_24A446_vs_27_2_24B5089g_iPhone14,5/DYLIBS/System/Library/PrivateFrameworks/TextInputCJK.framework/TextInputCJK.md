## TextInputCJK

> `/System/Library/PrivateFrameworks/TextInputCJK.framework/TextInputCJK`

### Sections with Same Size but Changed Content

- `__TEXT.__cstring`

```diff

-3567.0.0.0.0
-  __TEXT.__text: 0x1f270
+3568.1.4.0.0
+  __TEXT.__text: 0x1f518
   __TEXT.__init_offsets: 0x2c
-  __TEXT.__objc_methlist: 0x1f00
+  __TEXT.__objc_methlist: 0x1f20
   __TEXT.__const: 0xc0
   __TEXT.__cstring: 0xfe3
-  __TEXT.__ustring: 0x4fa
+  __TEXT.__ustring: 0x502
   __TEXT.__oslogstring: 0x3b4
-  __TEXT.__unwind_info: 0x6c0
+  __TEXT.__unwind_info: 0x6c8
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__objc_catlist: 0x18
   __DATA_CONST.__objc_protolist: 0x18
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x1c98
+  __DATA_CONST.__objc_selrefs: 0x1ca8
   __DATA_CONST.__objc_protorefs: 0x8
   __DATA_CONST.__objc_superrefs: 0xb8
   __DATA_CONST.__objc_arraydata: 0xdd0
-  __DATA_CONST.__got: 0x420
-  __AUTH_CONST.__const: 0x260
-  __AUTH_CONST.__cfstring: 0x2860
+  __DATA_CONST.__got: 0x428
+  __AUTH_CONST.__const: 0x280
+  __AUTH_CONST.__cfstring: 0x2880
   __AUTH_CONST.__objc_const: 0x29b8
   __AUTH_CONST.__weak_auth_got: 0x20
   __AUTH_CONST.__objc_arrayobj: 0x348

   __AUTH.__objc_data: 0xa00
   __DATA.__objc_ivar: 0x1ac
   __DATA.__data: 0x2d8
-  __DATA.__bss: 0x110
+  __DATA.__bss: 0x120
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/CoreGraphics.framework/CoreGraphics
   - /System/Library/Frameworks/Foundation.framework/Foundation

   - /usr/lib/libc++.1.dylib
   - /usr/lib/libmecabra.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 695
-  Symbols:   1430
-  CStrings:  373
+  Functions: 698
+  Symbols:   1436
+  CStrings:  374
 
Symbols:
+ +[TIChineseExtras stringContainsOffensiveCharacter:]
+ -[TIWordSearchChinesePhonetic chaiziCandidatesWithOperation:candidateResultSet:useDictionaryReadingForFirstCandidate:]
+ -[TIWordSearchChinesePhonetic dictionaryReadingForCandidate:candidateResultSet:]
+ _OBJC_CLASS_$_TIMecabraComposedCharacterCandidate
+ ___52+[TIChineseExtras stringContainsOffensiveCharacter:]_block_invoke
+ _stringContainsOffensiveCharacter:.offensiveCharacterSet
+ _stringContainsOffensiveCharacter:.onceToken
- -[TIWordSearchChinesePhonetic chaiziCandidatesWithOperation:candidateResultSet:]
CStrings:
+ "/AppleInternal/Library/BuildRoots/<BUILDROOT>/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS27.2.Internal.sdk/usr/include/c++/v1/__vector/vector.h:414: libc++ Hardening assertion __n < size() failed: vector[] index out of bounds\n"
+ "屄屌肏"
- "/AppleInternal/Library/BuildRoots/<BUILDROOT>/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS27.0.Internal.sdk/usr/include/c++/v1/__vector/vector.h:414: libc++ Hardening assertion __n < size() failed: vector[] index out of bounds\n"
```
