## aned

> `/usr/libexec/aned`

### Sections with Same Size but Changed Content

- `__DATA_CONST.__cfstring`
- `__DATA_CONST.__objc_classlist`
- `__DATA_CONST.__objc_protolist`
- `__DATA_CONST.__objc_protorefs`
- `__DATA_CONST.__objc_superrefs`
- `__DATA_CONST.__objc_arraydata`
- `__DATA_CONST.__objc_arrayobj`
- `__DATA_CONST.__objc_intobj`
- `__DATA.__objc_data`
- `__DATA.__data`

```diff

-382.15.1.0.0
-  __TEXT.__text: 0x7d2fc
-  __TEXT.__auth_stubs: 0xf70
-  __TEXT.__objc_stubs: 0x34a0
-  __TEXT.__objc_methlist: 0x1184
+382.101.0.0.0
+  __TEXT.__text: 0x7d624
+  __TEXT.__auth_stubs: 0xf90
+  __TEXT.__objc_stubs: 0x3480
+  __TEXT.__objc_methlist: 0x117c
   __TEXT.__const: 0x60ec
-  __TEXT.__gcc_except_tab: 0x619c
+  __TEXT.__gcc_except_tab: 0x61b4
   __TEXT.__cstring: 0x5cfc
-  __TEXT.__oslogstring: 0x6cd0
+  __TEXT.__oslogstring: 0x6d61
   __TEXT.__objc_classname: 0x247
-  __TEXT.__objc_methname: 0x3ea7
+  __TEXT.__objc_methname: 0x3e6b
   __TEXT.__objc_methtype: 0xeaf
-  __TEXT.__unwind_info: 0x1ba0
-  __DATA_CONST.__const: 0x2b48
+  __TEXT.__unwind_info: 0x1bc0
+  __DATA_CONST.__const: 0x2b68
   __DATA_CONST.__cfstring: 0xb00
   __DATA_CONST.__objc_classlist: 0x90
   __DATA_CONST.__objc_protolist: 0x60

   __DATA_CONST.__objc_arraydata: 0x8
   __DATA_CONST.__objc_arrayobj: 0x18
   __DATA_CONST.__objc_intobj: 0x18
-  __DATA_CONST.__auth_got: 0x7d0
-  __DATA_CONST.__got: 0x3c0
-  __DATA_CONST.__auth_ptr: 0x18
-  __DATA.__objc_const: 0x1cb8
-  __DATA.__objc_selrefs: 0xfc0
-  __DATA.__objc_ivar: 0xe8
+  __DATA_CONST.__auth_got: 0x7e0
+  __DATA_CONST.__got: 0x3c8
+  __DATA_CONST.__auth_ptr: 0x20
+  __DATA.__objc_const: 0x1c98
+  __DATA.__objc_selrefs: 0xfb8
+  __DATA.__objc_ivar: 0xe4
   __DATA.__objc_data: 0x5a0
   __DATA.__data: 0x490
-  __DATA.__bss: 0x98
+  __DATA.__bss: 0xa8
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/CoreServices.framework/CoreServices
   - /System/Library/Frameworks/Foundation.framework/Foundation

   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libc++.1.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 2787
-  Symbols:   4173
-  CStrings:  1758
+  Functions: 2789
+  Symbols:   4178
+  CStrings:  1757
 
Symbols:
+ GCC_except_table21
+ GCC_except_table59
+ __32-[_ANEServer maxModelMemorySize]_block_invoke
+ __ANEStorageProbeFileIsReadable
+ __ZZ32-[_ANEServer maxModelMemorySize]E19sMaxModelMemorySize
+ __ZZ32-[_ANEServer maxModelMemorySize]E9onceToken
+ ___32-[_ANEServer maxModelMemorySize]_block_invoke
+ _kANEFModelMutableClusterIndexKey
+ _pread
+ _usleep
- -[_ANEServer setMaxModelMemorySize:]
- GCC_except_table44
- GCC_except_table55
- OBJC_IVAR_$__ANEServer._maxModelMemorySize
- _objc_msgSend$setMaxModelMemorySize:
CStrings:
+ "%@: %@ failed readability probe. Returning nil"
+ "%@: perTdStats Model patching is not enabled"
+ "%@: pread(%@, offset=%zu, want=%zu) failed. got=%zd errno=%d : %s"
+ "TQ,R,N"
+ "maxModelMemorySize: 0x%llx"
+ "maxModelMemorySize: non-internal build, using 0"
+ "maxModelMemorySize: unable to connect to ANE device"
+ "maxModelMemorySize: unable to create device controller"
- "%@: Model patching is not enabled"
- "Maximum model memory size: %llu"
- "TQ,V_maxModelMemorySize"
- "Unable to connect to ANE device."
- "Unable to create device controller"
- "_maxModelMemorySize"
- "set maxModelMemorySize to 0"
- "set maxModelMemorySize to 0x%llx"
- "setMaxModelMemorySize:"
```
