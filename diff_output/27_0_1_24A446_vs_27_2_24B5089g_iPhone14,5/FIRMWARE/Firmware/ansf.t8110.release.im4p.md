## ansf.t8110.release.im4p

> `Firmware/ansf.t8110.release.im4p`

### Sections with Same Size but Changed Content

- `__TEXT._rtk_mtab`
- `__TEXT.idle_hooks`
- `__DATA.__const`

```diff

   __TEXT.text_first: 0x44c0
-  __TEXT.__text: 0x173b08
+  __TEXT.__text: 0x173ec8
   __TEXT.shared: 0xb95c
   __TEXT.read: 0x565c
   __TEXT._rtk_mtab: 0x310
-  __TEXT.__const: 0x9d28
-  __TEXT.__cstring: 0x1ed53
+  __TEXT.__const: 0xa328
+  __TEXT.__cstring: 0x1ed21
   __TEXT.idle_hooks: 0x10
   __TEXT.__constructor: 0x0
   __TEXT.__chain_starts: 0x0

   __DATA._rtk_power: 0x160
   __DATA._rtk_patchbay: 0x3b8
   __DATA._rtk_tunables: 0x5b0
-  __DATA.__data: 0x5d80
+  __DATA.__data: 0x5d88
   __DATA.__const: 0x1a28
   __DATA.__gxf_data: 0x10
   __DATA.core_globals: 0x138

   __DATA._rtk_data_uuid: 0x0
   __DATA._rtk_heap: 0x0
   __DATA._rtk_threads: 0x0
-  __DATA.__zerofill: 0x19ae78
+  __DATA.__zerofill: 0x19aea8
   Functions: 0
   Symbols:   0
-  CStrings:  3373
+  CStrings:  3371
 
CStrings:
+ "591.40.3"
+ "591.40.3~39"
+ "AppleStorageFirmwarePreASP3-591.40.3~39"
+ "Sanitize Failed"
+ "sanitize cmd drop - not init"
- "591"
- "591~9416"
- "Abort Pad: Flow %u , Band: %u"
- "AppleStorageFirmwarePreASP3-591~9416"
- "Sanitize already in progress, phase=%d"
- "mark band %u"
- "mark band %u, isOpen %u"
```
