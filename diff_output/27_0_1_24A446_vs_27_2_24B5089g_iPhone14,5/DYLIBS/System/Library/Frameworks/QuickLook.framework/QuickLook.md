## QuickLook

> `/System/Library/Frameworks/QuickLook.framework/QuickLook`

```diff

-1034.0.0.0.0
-  __TEXT.__text: 0xdddb8
+1034.1.3.0.0
+  __TEXT.__text: 0xddf58
   __TEXT.__delay_helper: 0x948
   __TEXT.__objc_methlist: 0xb894
   __TEXT.__const: 0x3b94
-  __TEXT.__gcc_except_tab: 0x1758
+  __TEXT.__gcc_except_tab: 0x175c
   __TEXT.__cstring: 0x5354
-  __TEXT.__oslogstring: 0x56d7
+  __TEXT.__oslogstring: 0x57d7
   __TEXT.__ustring: 0x1c
   __TEXT.__swift5_typeref: 0x1d4a
   __TEXT.__swift5_reflstr: 0x9a7

   __DATA_CONST.__objc_superrefs: 0x2a0
   __DATA_CONST.__objc_arraydata: 0x98
   __DATA_CONST.__got: 0xfe8
-  __AUTH_CONST.__const: 0x3958
+  __AUTH_CONST.__const: 0x3938
   __AUTH_CONST.__cfstring: 0x3360
   __AUTH_CONST.__objc_const: 0x11bb0
   __AUTH_CONST.__objc_intobj: 0x228

   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
   Functions: 5745
-  Symbols:   7549
-  CStrings:  904
+  Symbols:   7548
+  CStrings:  906
 
Symbols:
- ___75-[QLPageViewController _setCurrentPageIndex:direction:animated:completion:]_block_invoke_3
Functions:
~ -[QLPreviewController _refreshCurrentPreviewItemAnimated:] : 112 -> 296
~ -[QLItemAggregatedViewController showPreviewViewController:animatingWithCrossfade:] : 1696 -> 1672
~ -[QLPageViewController _setCurrentPageIndex:direction:animated:completion:] : 608 -> 824
~ ___75-[QLPageViewController _setCurrentPageIndex:direction:animated:completion:]_block_invoke_3 -> ___75-[QLPageViewController _setCurrentPageIndex:direction:animated:completion:]_block_invoke.18 : 4 -> 44
CStrings:
+ "Data source returned no view controller for index %lu (current page index %ld). Showing an empty placeholder. #PreviewCollection"
+ "Not refreshing the current preview item at index %ld because the preview collection still needs to be configured. #PreviewController"
```
