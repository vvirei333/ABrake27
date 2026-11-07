## com.apple.filesystems.apfs

> `com.apple.filesystems.apfs`

```diff

-3288.2.1.0.0
+3288.40.14.0.0
   __TEXT.__const: 0x94c
-  __TEXT.__cstring: 0x4ff24
-  __TEXT_EXEC.__text: 0x153504
+  __TEXT.__cstring: 0x4ffa5
+  __TEXT_EXEC.__text: 0x153b3c
   __TEXT_EXEC.__auth_stubs: 0x2360
-  __DATA.__data: 0x754
-  __DATA.__bss: 0xd88
+  __DATA.__data: 0x75c
+  __DATA.__bss: 0xcf8
   __DATA_CONST.__mod_init_func: 0x10
   __DATA_CONST.__mod_term_func: 0x10
-  __DATA_CONST.__const: 0x6890
+  __DATA_CONST.__const: 0x6898
   __DATA_CONST.__kalloc_type: 0x5440
   __DATA_CONST.__kalloc_var: 0x2bc0
   __DATA_CONST.__assert: 0x14
   __DATA_CONST.__auth_got: 0x11b0
   __DATA_CONST.__got: 0x158
   __DATA_CONST.__auth_ptr: 0x8
-  Functions: 2396
+  Functions: 2395
   Symbols:   0
-  CStrings:  6953
+  CStrings:  6956
 
CStrings:
+ "%s:%d: %s Defrag run time %llu.%03llumSec, reallocated %llu blocks in %llu extents across %llu dstreams, finished with error %d\n"
+ "%s:%d: %s failed to remove extents iteratively\n"
+ "%s:%d: %s ino %llu, failed to get region covering %llu+%zu, error %d\n"
+ "%s:%d: %s request flags: 0x%llx type: 0x%llx min_size: %lld: max_age %lld desired_amt: %lld (age-for-urgency: %lld, requesting uid: %d, search_start_time: %llu)\n"
+ "12111112122212121111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
+ "12111112122212121112111222222222222222221111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111121111111111111111111111111111111111111111111111111111111111111111111111111111111111111111112"
+ "19:33:45"
+ "2026/09/13"
+ "3288.40.14"
+ "FX defrag: Number of dstreams with at least one reallocated extent"
+ "Sep 13 2026"
+ "apfs-3288.40.14"
+ "btree_node_compact"
+ "decrement_dstream_id_for_deletion"
- "%s:%d: %s Defrag run time %llu.%03llumSec, reallocated %llu blocks in %llu extents, finished with error %d\n"
- "%s:%d: %s request flags: 0x%llx type: 0x%llx min_size: %lld: max_age %lld desired_amt: %lld (age-for-urgency: %lld, requesting uid: %d)\n"
- "%s:%d: container is locked to be loadable only by pid <%d>, refusing request to load the container by pid <%d> device = %s\n"
- "1211111212221212111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
- "1211111212221212111211122222222222222222111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111112111111111111111111111111111111111111111111111111111111111111111111111111111111111111111112"
- "2026/08/13"
- "21:26:23"
- "3288.2.1"
- "Aug 13 2026"
- "apfs-3288.2.1"
- "decrement_dstream_id_for_deletion_ex"
```
