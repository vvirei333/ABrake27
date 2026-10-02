## SidecarRelay

> `/usr/libexec/SidecarRelay`

### Sections with Same Size but Changed Content

- `__TEXT.__objc_methlist`
- `__TEXT.__swift5_entry`
- `__TEXT.__constg_swiftt`
- `__TEXT.__swift5_typeref`
- `__TEXT.__swift5_fieldmd`
- `__TEXT.__swift5_assocty`
- `__TEXT.__swift5_proto`
- `__TEXT.__swift5_types`
- `__TEXT.__swift5_protos`
- `__TEXT.__cstring`
- `__TEXT.__swift5_capture`
- `__TEXT.__eh_frame`
- `__DATA_CONST.__const`
- `__DATA_CONST.__cfstring`
- `__DATA_CONST.__auth_ptr`
- `__DATA.__objc_const`
- `__DATA.__objc_selrefs`
- `__DATA.__objc_data`
- `__DATA.__data`

```diff

-400.42.0.0.0
+412.2.0.0.0
   __TEXT.__text: 0x87abc
   __TEXT.__auth_stubs: 0x1ce0
   __TEXT.__objc_stubs: 0x1a60
   __TEXT.__objc_methlist: 0xb40
-  __TEXT.__const: 0x49dd
+  __TEXT.__const: 0x49ec
   __TEXT.__swift5_entry: 0x8
   __TEXT.__constg_swiftt: 0x2004
   __TEXT.__swift5_typeref: 0x1c9c

   __TEXT.__cstring: 0x14ed
   __TEXT.__oslogstring: 0x2602
   __TEXT.__swift5_capture: 0x3e64
-  __TEXT.__info_plist: 0x53d
+  __TEXT.__info_plist: 0x53b
   __TEXT.__unwind_info: 0x1d70
   __TEXT.__eh_frame: 0x1020
   __DATA_CONST.__const: 0xc228
CStrings:
+ "412.2"
- "400.42"
```
