
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8
__MADImageASTCFormatReader_readDataToBuffer_Position_Length__
          (long param_1,undefined8 param_2,long param_3,ulong param_4,long param_5)

{
  undefined8 uVar1;
  
  if (param_3 == 0) {
    uVar1 = _DAT_2681b59a8;
    func_0x0002400fb350(_DAT_2681b59a8,0x10);
    if ((int)uVar1 != 0) {
      __MADImageASTCFormatReader_readDataToBuffer_Position_Length___cold_2(param_1);
    }
    uVar1 = 0xffffffce;
  }
  else if ((param_4 < *(ulong *)(param_1 + 0x10)) ||
          (*(ulong *)(param_1 + 0x18) <= param_4 || *(ulong *)(param_1 + 0x18) < param_5 + param_4))
  {
    uVar1 = _DAT_2681b59a8;
    func_0x0002400fb350(_DAT_2681b59a8,0x10);
    if ((int)uVar1 != 0) {
      __MADImageASTCFormatReader_readDataToBuffer_Position_Length___cold_1(param_1);
    }
    uVar1 = 0xffffffee;
  }
  else {
    func_0x00024001ee20(*(undefined8 *)(param_1 + 8));
    uVar1 = 0;
  }
  return uVar1;
}

