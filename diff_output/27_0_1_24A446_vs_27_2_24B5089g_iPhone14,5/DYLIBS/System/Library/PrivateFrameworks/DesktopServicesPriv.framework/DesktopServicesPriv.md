## DesktopServicesPriv

> `/System/Library/PrivateFrameworks/DesktopServicesPriv.framework/DesktopServicesPriv`

```diff

-1857.0.0.0.0
-  __TEXT.__text: 0x1a2ca0
-  __TEXT.__objc_methlist: 0x49ac
-  __TEXT.__gcc_except_tab: 0x28f44
+1857.1.4.0.0
+  __TEXT.__text: 0x1a320c
+  __TEXT.__objc_methlist: 0x49f4
+  __TEXT.__gcc_except_tab: 0x28fc8
   __TEXT.__const: 0x90a7
   __TEXT.__cstring: 0x6f2c
-  __TEXT.__oslogstring: 0x8e12
+  __TEXT.__oslogstring: 0x8e8b
   __TEXT.__ustring: 0x24
-  __TEXT.__unwind_info: 0xc8d0
+  __TEXT.__unwind_info: 0xc8d8
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__const: 0xfc0
   __DATA_CONST.__objc_classlist: 0x2f8
   __DATA_CONST.__objc_catlist: 0x10
-  __DATA_CONST.__objc_protolist: 0x88
+  __DATA_CONST.__objc_protolist: 0x90
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__weak_got: 0x10
-  __DATA_CONST.__objc_selrefs: 0x2908
+  __DATA_CONST.__objc_selrefs: 0x2910
   __DATA_CONST.__objc_protorefs: 0x38
   __DATA_CONST.__objc_superrefs: 0x1b0
   __DATA_CONST.__objc_arraydata: 0x88
   __DATA_CONST.__got: 0xb50
   __AUTH_CONST.__const: 0x9870
   __AUTH_CONST.__cfstring: 0x3d40
-  __AUTH_CONST.__objc_const: 0x72c8
+  __AUTH_CONST.__objc_const: 0x72d8
   __AUTH_CONST.__weak_auth_got: 0x28
   __AUTH_CONST.__objc_intobj: 0x138
   __AUTH_CONST.__objc_arrayobj: 0x30

   __AUTH_CONST.__auth_ptr: 0x0
   __AUTH.__objc_data: 0x1d88
   __DATA.__objc_ivar: 0x40c
-  __DATA.__data: 0xc70
+  __DATA.__data: 0xcd0
   __DATA.__common: 0x121
   __DATA.__bss: 0x1150
   __DATA_DIRTY.__objc_data: 0x28

   - /usr/lib/libbsm.0.dylib
   - /usr/lib/libc++.1.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 7920
-  Symbols:   12796
-  CStrings:  1924
+  Functions: 7924
+  Symbols:   12804
+  CStrings:  1926
 
Symbols:
+ -[FIChildrenIterator countByEnumeratingWithState:objects:count:]
+ -[FICompoundNodeIterator countByEnumeratingWithState:objects:count:]
+ -[FINodeIterator countByEnumeratingWithState:objects:count:]
+ -[FINodeIteratorWithExtraChildren countByEnumeratingWithState:objects:count:]
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_NSFastEnumeration
+ __OBJC_$_PROTOCOL_METHOD_TYPES_NSFastEnumeration
+ __OBJC_LABEL_PROTOCOL_$_NSFastEnumeration
+ __OBJC_PROTOCOL_$_NSFastEnumeration
+ __Z5as_nsI7TStringEDaRKT_
+ __ZN13TNodeIterator27CountByEnumeratingWithStateER22NSFastEnumerationStateNSt3__14spanIP11objc_objectLm18446744073709551615EEE
- __Z19kTStringLiteralDataIJLc104ELc102ELc115EEE
- __Z20IsDomainDisconnectedP16FPProviderDomain
Functions:
~ __ZN13TFSVolumeInfo26InitializeFileSystemVolumeEPK7__CFURL12ROSPVolumeID17FSInfoVirtualType : 1932 -> 1968
~ __Z19FormatForFSTypeNameRK7TStringNSt3__18optionalIjEE : 580 -> 596
~ __ZNK5TNode13GetFIProviderEv : 712 -> 688
+ __ZN13TNodeIterator27CountByEnumeratingWithStateER22NSFastEnumerationStateNSt3__14spanIP11objc_objectLm18446744073709551615EEE
~ __ZN10TOperation16ProcessSelectionEv : 408 -> 572
- __Z20IsDomainDisconnectedP16FPProviderDomain
~ -[FINode fiTags] : 576 -> 592
~ __Z39ModificationDateResolutionForFileSystemRK7TString : 296 -> 320
- __ZN23FIProviderDomainFetcherC2Ev
~ __ZN23FIProviderDomainFetcher16FetchDomainForIDEP8NSString27FPProviderDomainCachePolicyP5NSURLPU15__autoreleasingP7NSError : 1516 -> 1880
~ +[FIProviderDomain providerDomainForID:cachePolicy:error:] : 112 -> 124
+ __ZN23FIProviderDomainFetcherC2Ev
+ -[FINodeIterator countByEnumeratingWithState:objects:count:]
+ -[FIChildrenIterator countByEnumeratingWithState:objects:count:]
+ -[FINodeIteratorWithExtraChildren countByEnumeratingWithState:objects:count:]
+ -[FICompoundNodeIterator countByEnumeratingWithState:objects:count:]
~ __ZN11TCopyWriter5WriteEv : 5120 -> 5292
~ __ZN11TCopyWriter23WriteExtendedAttributesENSt3__110shared_ptrI9TCopyItemEE : 1856 -> 1888
CStrings:
+ "Lookup of '%{public}@' needed FP's cache, but nothing is monitoring the provider list"
+ "Unwinding after error - %{public}@"
```
