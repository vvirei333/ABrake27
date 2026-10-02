## ciphermld

> `/usr/libexec/ciphermld`

### Sections with Same Size but Changed Content

- `__TEXT.__swift5_typeref`
- `__TEXT.__unwind_info`
- `__DATA_CONST.__const`
- `__DATA_CONST.__got`
- `__DATA_CONST.__auth_ptr`
- `__DATA.__objc_selrefs`

```diff

-383.2.1.0.0
-  __TEXT.__text: 0x8b4
-  __TEXT.__auth_stubs: 0x240
+383.40.14.0.1
+  __TEXT.__text: 0x8b8
+  __TEXT.__auth_stubs: 0x250
   __TEXT.__objc_stubs: 0x40
   __TEXT.__const: 0x42
   __TEXT.__cstring: 0x6f

   __TEXT.__oslogstring: 0x50
   __TEXT.__swift5_entry: 0x8
   __TEXT.__swift5_typeref: 0xa
-  __TEXT.__info_plist: 0x4cc
+  __TEXT.__info_plist: 0x4d0
   __TEXT.__objc_methname: 0x10
   __TEXT.__unwind_info: 0x90
   __DATA_CONST.__const: 0x60
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__auth_got: 0x128
+  __DATA_CONST.__auth_got: 0x130
   __DATA_CONST.__got: 0x30
   __DATA_CONST.__auth_ptr: 0x10
   __DATA.__objc_selrefs: 0x10

   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswiftos.dylib
   Functions: 11
-  Symbols:   54
+  Symbols:   55
   CStrings:  10
 
Symbols:
+ _$s8CipherML23DataProtectionMigrationO15migrateIfNeededyyFZ
Functions:
~ sub_100000c78 : 1220 -> 1224
```
