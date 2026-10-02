## aopfw-iphone14aop.RELEASE.im4p

> `Firmware/AOP/aopfw-iphone14aop.RELEASE.im4p`

### Sections with Same Size but Changed Content

- `__DATA.__const`
- `__DATA._rtk_patchbay`
- `__DATA._rtk_mtab`
- `__DATA.__version`
- `__DATA._spu_service`
- `__DATA._spu_endpoint`
- `__DATA.__mod_init_func`
- `__ETEXT.__const`
- `__CMA.__cma_log_string`

```diff

-  __TEXT.__text: 0xf9c70
-  __TEXT.__const: 0x11e18
-  __TEXT.__cstring: 0x1b45e
+  __TEXT.__text: 0xf9c64
+  __TEXT.__const: 0x11e50
+  __TEXT.__cstring: 0x1b45f
   __TEXT.__init_offsets: 0x0
   __TEXT.__chain_starts: 0x28
   __DATA._rtk_boot: 0x3000

   __DATA._rtk_ext_stack: 0x1800
   __DATA._rtk_heap: 0x35710
   __DATA.__const: 0x13888
-  __DATA.__data: 0x7c90
+  __DATA.__data: 0x7c88
   __DATA._rtk_patchbay: 0x342
   __DATA._rtk_mtab: 0x798
   __DATA.__version: 0x8

   __DATA._rtk_threads: 0x0
   __DATA._spu_exts: 0x0
   __DATA.__constructor: 0x0
-  __DATA.__zerofill: 0xa5358
-  __ETEXT.__text: 0x34660
-  __ETEXT.__StaticInit: 0xc1b4
+  __DATA.__zerofill: 0xa59f8
+  __ETEXT.__text: 0x34654
+  __ETEXT.__StaticInit: 0xc1ac
   __ETEXT.__const: 0x82d
   __EDATA.__data: 0x1cc0
   __EDATA.__const: 0x0
-  __OS_LOG.__string: 0xe3ff
+  __OS_LOG.__string: 0xe498
   __MISC.__apf_list: 0x90
   __CMA.__cma_log_string: 0x3abd
-  Functions: 3488
+  Functions: 3492
   Symbols:   0
-  CStrings:  3688
+  CStrings:  3690
 
CStrings:
+ "#aoprose %s (%llu) #loc acquisition complete, permitting Rose sleep. Ticket: %d"
+ "#aoprose %s (%llu) #loc requesting Rose wake for acquisition. Ticket: %d"
+ "03:05:45"
+ "04:17:55"
+ "20:05:06"
+ "AppleSPUFirmware-2444.40.18~114"
+ "RTKitAudioFramework v610.1 ('%s' built %s %s) ready!! {%zu nodes}"
+ "Sep 12 2026"
+ "Sep 13 2026"
+ "aop-audio v610.10 (built %s %s, debug 0x%x) ready!!"
- "13:17:56"
- "14:39:13"
- "23:49:38"
- "AppleSPUFirmware-2444.2.1~120"
- "Aug  8 2026"
- "RTKitAudioFramework v601.41 ('%s' built %s %s) ready!! {%zu nodes}"
- "Sep 22 2026"
- "aop-audio v603.48 (built %s %s, debug 0x%x) ready!!"
```
