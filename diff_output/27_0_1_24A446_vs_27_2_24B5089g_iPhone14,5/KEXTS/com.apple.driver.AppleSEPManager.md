## com.apple.driver.AppleSEPManager

> `com.apple.driver.AppleSEPManager`

```diff

-928.0.2.0.0
-  __TEXT.__cstring: 0x1178f
-  __TEXT.__const: 0xded8
-  __TEXT_EXEC.__text: 0x44ce4
+928.40.6.0.0
+  __TEXT.__cstring: 0x117ff
+  __TEXT.__const: 0xdee2
+  __TEXT_EXEC.__text: 0x44d00
   __TEXT_EXEC.__auth_stubs: 0xb20
   __DATA.__data: 0x168
   __DATA.__common: 0xc48
   __DATA.__bss: 0x4e
   __DATA_CONST.__mod_init_func: 0xc0
   __DATA_CONST.__mod_term_func: 0xc0
-  __DATA_CONST.__const: 0x9fc0
+  __DATA_CONST.__const: 0x9fd0
   __DATA_CONST.__kalloc_type: 0xe00
   __DATA_CONST.__kalloc_var: 0x50
   __DATA_CONST.__auth_got: 0x590

   __DATA_CONST.__auth_ptr: 0x38
   Functions: 2544
   Symbols:   0
-  CStrings:  1493
+  CStrings:  1494
 
Functions:
~ sub_fffffff009174ab0 -> sub_fffffff009231470 : 2240 -> 2268
CStrings:
+ "AppleSEP:WARNING: Received unsupported SEP secure storage analytics version (%d), skipping\n"
+ "in_msg_p->length == analytics_payload_len"
+ "in_msg_p->length >= sizeof(analytics.version)"
- "analytics.version == 1"
- "in_msg_p->length == sizeof(xart_analytics_t)"
```
