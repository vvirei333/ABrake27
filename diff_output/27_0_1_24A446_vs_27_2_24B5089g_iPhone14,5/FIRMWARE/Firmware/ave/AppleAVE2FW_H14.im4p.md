## AppleAVE2FW_H14.im4p

> `Firmware/ave/AppleAVE2FW_H14.im4p`

### Sections with Same Size but Changed Content

- `__TEXT.__cstring`
- `__TEXT.__chain_starts`
- `__DATA._rtk_patchbay`
- `__DATA._rtk_mtab`
- `__DATA.__const`
- `__DATA._rtk_power`

```diff

-  __TEXT.__text: 0xe5498
-  __TEXT.__const: 0x200a4
+  __TEXT.__text: 0xe54ac
+  __TEXT.__const: 0x200b4
   __TEXT.__cstring: 0x14e4b
   __TEXT.__init_offsets: 0x0
   __TEXT.__chain_starts: 0x18
   __DATA._rtk_patchbay: 0x211
-  __DATA.__data: 0x1190
+  __DATA.__data: 0x1198
   __DATA._rtk_mtab: 0x2d0
   __DATA.__const: 0x3a78
   __DATA._rtk_power: 0x3b8
Functions:
~ __ZN14CAVCController16PipePrepareParamEPv : 4384 -> 4392
~ __ZN15CHEVCController16PipePrepareParamEPv : 8020 -> 8028
~ __ZN15CHEVCController22InitEncodingParametersEPv : 23488 -> 23500
~ __ZN14CAVCController7setPipeEP26CAVEControllerAvcEncodeCmd : 26732 -> 26728
~ __ZN15CHEVCController7setPipeEP18AVE_PICMGMT_PARAMS : 20944 -> 20940
~ __Z20AVE_IOP_Config_pandav : 348 -> 352
~ _exp2f : 176 -> 168
~ sub_dbcbc -> sub_dbccc : 384 -> 388
CStrings:
+ "9013.48.1"
- "9013.45.2"
```
