## agx_b000

> `Firmware/agx/armfw_g14p.im4p/agx_b000`

### Sections with Same Size but Changed Content

- `__TEXT.__cstring`
- `__TEXT._rtk_patchbay`
- `__DATA.__data`
- `__DATA.__const`
- `__DATA._rtk_mtab`
- `__DATA.__mod_init_func`

```diff

-  __TEXT.__text: 0x50670
+  __TEXT.__text: 0x50674
   __TEXT.__gxf_code: 0x10c8
   __TEXT.__gxf_code_pad: 0x0
   __TEXT.__gxf_shr_code: 0x560
-  __TEXT.__const: 0x1ff4
+  __TEXT.__const: 0x200c
   __TEXT.__cstring: 0x20a7
   __TEXT._rtk_patchbay: 0x231
   __TEXT._rtk_tunables: 0x5b0
Functions:
~ sub_ffffff8000042018 : 648 -> 652
CStrings:
+ "Sep 13 2026 21:52:47"
- "Aug 13 2026 21:31:11"
```
