## BusinessChatService

> `/System/Library/PrivateFrameworks/BusinessChatService.framework/BusinessChatService`

```diff

-30123.30.6.2.1
-  __TEXT.__text: 0x6d21c
-  __TEXT.__objc_methlist: 0x795c
+30123.31.8.11.4
+  __TEXT.__text: 0x6e080
+  __TEXT.__objc_methlist: 0x79a4
   __TEXT.__const: 0x248
-  __TEXT.__cstring: 0x8bd2
-  __TEXT.__oslogstring: 0x4f4c
-  __TEXT.__gcc_except_tab: 0x650
-  __TEXT.__unwind_info: 0x1548
+  __TEXT.__cstring: 0x8c39
+  __TEXT.__oslogstring: 0x5025
+  __TEXT.__gcc_except_tab: 0x728
+  __TEXT.__unwind_info: 0x1568
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x1d00
+  __DATA_CONST.__const: 0x1d50
   __DATA_CONST.__objc_classlist: 0x4a0
   __DATA_CONST.__objc_catlist: 0x20
   __DATA_CONST.__objc_protolist: 0x308
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x2778
+  __DATA_CONST.__objc_selrefs: 0x2798
   __DATA_CONST.__objc_protorefs: 0x50
   __DATA_CONST.__objc_superrefs: 0x388
   __DATA_CONST.__got: 0x480
   __AUTH_CONST.__const: 0x220
   __AUTH_CONST.__cfstring: 0x4a20
-  __AUTH_CONST.__objc_const: 0xfdb0
+  __AUTH_CONST.__objc_const: 0xfde0
   __AUTH_CONST.__objc_intobj: 0x18
   __AUTH_CONST.__auth_got: 0x4f0
   __AUTH_CONST.__auth_ptr: 0x0

   - /usr/lib/libobjc.A.dylib
   - /usr/lib/libsqlite3.dylib
   - /usr/lib/libz.1.dylib
-  Functions: 2384
-  Symbols:   4898
-  CStrings:  1319
+  Functions: 2392
+  Symbols:   4908
+  CStrings:  1323
 
Symbols:
+ -[BCSBusinessEmailItemIdentifier itemIdentifiers]
+ -[BCSBusinessLookupResult initWithHasBusiness:matchingTruncatedHash:itemIdentifier:config:]
+ -[BCSBusinessQueryController fetchBusinessItemWithPhoneNumber:forClientBundleID:cacheOnly:completion:]
+ -[BCSBusinessQueryController fetchItemWithQuery:cacheOnly:completion:]
+ -[BCSBusinessQueryService cachedBusinessItemWithPhoneNumber:completion:]
+ GCC_except_table102
+ GCC_except_table57
+ GCC_except_table62
+ GCC_except_table73
+ GCC_except_table77
+ GCC_except_table84
+ ___102-[BCSBusinessQueryController fetchBusinessItemWithPhoneNumber:forClientBundleID:cacheOnly:completion:]_block_invoke
+ ___70-[BCSBusinessQueryController fetchItemWithQuery:cacheOnly:completion:]_block_invoke
+ ___72-[BCSBusinessQueryService cachedBusinessItemWithPhoneNumber:completion:]_block_invoke
+ ___block_descriptor_48_e8_32r40r_e54_B32?0"<BCSItemIdentifying>"8"BCSItem"16"NSError"24lr32l8r40l8
+ ___block_descriptor_56_e8_32bs40r48r_e17_v16?0"NSError"8lr40l8r48l8s32l8
+ ___block_descriptor_72_e8_32s40s48s56s64bs_e34_v24?0"NSDictionary"8"NSError"16ls32l8s64l8s40l8s48l8s56l8
- GCC_except_table55
- GCC_except_table60
- GCC_except_table80
- GCC_except_table98
- ___60-[BCSBusinessQueryController fetchItemWithQuery:completion:]_block_invoke
- ___92-[BCSBusinessQueryController fetchBusinessItemWithPhoneNumber:forClientBundleID:completion:]_block_invoke
- ___block_descriptor_64_e8_32s40s48s56bs_e34_v24?0"NSDictionary"8"NSError"16ls32l8s56l8s40l8s48l8
CStrings:
+ "%s - Cache only lookup. Did not find item in cache - type: %@"
+ "%s Expected shardItem that conforms to BCSFilterShardItemProtocol protocol but got %@"
+ "-[BCSBusinessQueryController fetchBusinessItemWithPhoneNumber:forClientBundleID:cacheOnly:completion:]"
+ "-[BCSBusinessQueryController fetchItemWithQuery:cacheOnly:completion:]"
+ "-[BCSBusinessQueryController fetchItemWithQuery:cacheOnly:completion:]_block_invoke"
+ "-[BCSBusinessQueryService cachedBusinessItemWithPhoneNumber:completion:]"
+ "Extracting all matching shards for %lu keys for multi-key identifier"
- "-[BCSBusinessQueryController fetchBusinessItemWithPhoneNumber:forClientBundleID:completion:]"
- "-[BCSBusinessQueryController fetchItemWithQuery:completion:]"
- "-[BCSBusinessQueryController fetchItemWithQuery:completion:]_block_invoke"
```
