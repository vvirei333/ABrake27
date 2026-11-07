## BiomePubSub

> `/System/Library/PrivateFrameworks/BiomePubSub.framework/BiomePubSub`

```diff

-250.0.0.3.0
-  __TEXT.__text: 0x405ec
-  __TEXT.__objc_methlist: 0x588c
+256.0.1.0.0
+  __TEXT.__text: 0x406b0
+  __TEXT.__objc_methlist: 0x5894
   __TEXT.__const: 0x1000
   __TEXT.__cstring: 0x116f
   __TEXT.__oslogstring: 0x6ec

   __TEXT.__swift5_assocty: 0x4b0
   __TEXT.__swift5_proto: 0xc8
   __TEXT.__swift5_protos: 0x8
-  __TEXT.__unwind_info: 0x1320
+  __TEXT.__unwind_info: 0x1318
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__objc_catlist: 0x18
   __DATA_CONST.__objc_protolist: 0xc0
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x16c8
+  __DATA_CONST.__objc_selrefs: 0x16d0
   __DATA_CONST.__objc_protorefs: 0x50
   __DATA_CONST.__objc_superrefs: 0x318
   __DATA_CONST.__got: 0x3f8

   - /usr/lib/swift/libswiftXPC.dylib
   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswiftos.dylib
-  Functions: 2348
-  Symbols:   4519
+  Functions: 2349
+  Symbols:   4520
   CStrings:  218
 
Symbols:
+ -[BMBookmarkablePublisher validateBookmarkValue:]
+ -[BPSBuffer validateBookmarkValue:]
+ -[BPSCollect validateBookmarkValue:]
+ -[BPSFlatMap validateBookmarkValue:]
+ -[BPSMerge validateBookmarkValue:]
+ -[BPSMergeMany validateBookmarkValue:]
+ -[BPSMulticast validateBookmarkValue:]
+ -[BPSOrderedMerge validateBookmarkValue:]
+ -[BPSPassThroughSubject validateBookmarkValue:]
+ -[BPSSequence validateBookmarkValue:]
+ -[BPSWindower validateBookmarkValue:]
- -[BPSBuffer validateBookmark:]
- -[BPSCollect validateBookmark:]
- -[BPSFlatMap validateBookmark:]
- -[BPSMerge validateBookmark:]
- -[BPSMergeMany validateBookmark:]
- -[BPSMulticast validateBookmark:]
- -[BPSOrderedMerge validateBookmark:]
- -[BPSPassThroughSubject validateBookmark:]
- -[BPSSequence validateBookmark:]
- -[BPSWindower validateBookmark:]
Functions:
~ -[BMBookmarkablePublisher validateBookmark:] : 8 -> 196
- -[BPSOrderedMerge validateBookmark:]
+ -[BPSOrderedMerge validateBookmarkValue:]
+ -[BMBookmarkablePublisher validateBookmarkValue:]
```
