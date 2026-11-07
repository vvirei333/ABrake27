## IOGPU

> `/System/Library/PrivateFrameworks/IOGPU.framework/IOGPU`

```diff

-162.11.0.0.0
-  __TEXT.__text: 0x2a8a4
-  __TEXT.__objc_methlist: 0x4f9c
+162.14.0.0.0
+  __TEXT.__text: 0x2a894
+  __TEXT.__objc_methlist: 0x4fa4
   __TEXT.__cstring: 0x6066
   __TEXT.__const: 0x1e8
   __TEXT.__gcc_except_tab: 0x404
   __TEXT.__oslogstring: 0x8db
-  __TEXT.__unwind_info: 0xd70
+  __TEXT.__unwind_info: 0xd78
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__got: 0x418
   __AUTH_CONST.__const: 0x3f0
   __AUTH_CONST.__cfstring: 0x1300
-  __AUTH_CONST.__objc_const: 0x7fe0
+  __AUTH_CONST.__objc_const: 0x8000
   __AUTH_CONST.__weak_auth_got: 0x18
   __AUTH_CONST.__auth_got: 0x6d0
   __AUTH_CONST.__auth_ptr: 0x0
   __AUTH.__objc_data: 0x690
-  __DATA.__objc_ivar: 0x3a4
+  __DATA.__objc_ivar: 0x3a8
   __DATA.__data: 0x7e0
   __DATA.__bss: 0x18
   __DATA_DIRTY.__objc_data: 0x7d0

   - /usr/lib/libc++.1.dylib
   - /usr/lib/libobjc.A.dylib
   Functions: 1471
-  Symbols:   2286
+  Symbols:   2287
   CStrings:  629
 
Symbols:
+ -[IOGPUMetal4CommandAllocator getCommandBufferStorage:retainReferences:generation:]
+ -[IOGPUMetal4CommandBuffer allocatorGeneration]
+ OBJC_IVAR_$_IOGPUMetal4CommandBuffer._allocatorGeneration
- -[IOGPUMetal4CommandAllocator getCommandBufferStorage:retainReferences:]
- -[IOGPUMetal4CommandAllocator getGeneration]
```
