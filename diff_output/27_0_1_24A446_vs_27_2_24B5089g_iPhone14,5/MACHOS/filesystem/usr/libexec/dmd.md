## dmd

> `/usr/libexec/dmd`

### Sections with Same Size but Changed Content

- `__TEXT.__objc_methlist`
- `__TEXT.__gcc_except_tab`
- `__TEXT.__unwind_info`
- `__DATA_CONST.__const`
- `__DATA_CONST.__cfstring`
- `__DATA_CONST.__objc_intobj`
- `__DATA.__objc_const`
- `__DATA.__objc_selrefs`
- `__DATA.__data`

```diff

-261.2.5.0.0
+267.0.0.0.0
   __TEXT.__text: 0x822c8
   __TEXT.__auth_stubs: 0xf60
   __TEXT.__objc_stubs: 0xea00
   __TEXT.__objc_methlist: 0x7fdc
-  __TEXT.__const: 0x180
+  __TEXT.__const: 0x178
   __TEXT.__objc_classname: 0x1e43
   __TEXT.__objc_methname: 0x118ed
   __TEXT.__objc_methtype: 0x1d98

   __TEXT.__gcc_except_tab: 0x10bc
   __TEXT.__ustring: 0x80a
   __TEXT.__dlopen_cstrs: 0xaf
-  __TEXT.__info_plist: 0x648
+  __TEXT.__info_plist: 0x643
   __TEXT.__unwind_info: 0x2218
   __DATA_CONST.__const: 0x2748
   __DATA_CONST.__cfstring: 0x5920
```
