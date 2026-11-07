
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

long __MADImageASTCFormatReader_readOneImageSource_(long param_1,undefined8 param_2)

{
  int iVar1;
  long lVar2;
  undefined8 uVar3;
  long lVar4;
  char *pcVar5;
  undefined1 uVar6;
  long lVar7;
  long local_58;
  undefined4 local_50;
  long local_4c;
  
  if (*(long *)(param_1 + 0x20) == 0) {
    lVar7 = param_1;
    _MediaAnalysisLogLevel();
    uVar6 = DAT_239d72ae3;
    if ((int)lVar7 < 3) {
      return 0;
    }
    uVar3 = _DAT_2681b59a8;
    func_0x0002400fb350(_DAT_2681b59a8,DAT_239d72ae3);
    if ((int)uVar3 == 0) {
      return 0;
    }
    func_0x0002400fb0f0();
    local_50 = (undefined4)DAT_239d6f6b0;
    local_4c = param_1;
    func_0x0002400fb1f0();
    pcVar5 = "[%@] readOneImage: Already read out all images";
LAB_239b664f8:
    func_0x0002400fae60(&MACH_HEADER,_DAT_2681b59a8,uVar6,pcVar5,&local_50,0xc);
    func_0x0002400fb150();
    return 0;
  }
  lVar7 = *(long *)(param_1 + 0x10);
  local_58 = 0;
  lVar2 = param_1;
  func_0x0002400334d0(param_1,param_2,&local_58,lVar7,8);
  iVar1 = (int)lVar2;
  if (iVar1 != 0) {
    return 0;
  }
  lVar7 = lVar7 + 8;
  if (*(ulong *)(param_1 + 0x18) < (ulong)(local_58 + lVar7)) {
    _MediaAnalysisLogLevel();
    uVar6 = DAT_239d72ae3;
    if (iVar1 < 3) {
      return 0;
    }
    uVar3 = _DAT_2681b59a8;
    func_0x0002400fb350(_DAT_2681b59a8,DAT_239d72ae3);
    if ((int)uVar3 == 0) {
      return 0;
    }
    func_0x0002400fb0f0();
    local_50 = (undefined4)DAT_239d6f6b0;
    local_4c = param_1;
    func_0x0002400fb1f0();
    pcVar5 = "[%@] readOneImage: Invalid imageLength";
    goto LAB_239b664f8;
  }
  lVar4 = *(long *)(param_1 + 8);
  func_0x0002400221a0();
  func_0x0002400fb0c0();
  lVar2 = local_58;
  if (lVar4 == 0) {
    _MediaAnalysisLogLevel();
    uVar6 = DAT_239d72ae3;
    if ((2 < (int)lVar4) &&
       (uVar3 = _DAT_2681b59a8, func_0x0002400fb350(_DAT_2681b59a8,DAT_239d72ae3), (int)uVar3 != 0))
    {
      func_0x0002400fb0f0();
      local_50 = (undefined4)DAT_239d6f6b0;
      local_4c = param_1;
      func_0x0002400fb1f0();
      pcVar5 = "[%@] readOneImage: Invalid imageData";
LAB_239b66640:
      func_0x0002400fae60(&MACH_HEADER,_DAT_2681b59a8,uVar6,pcVar5,&local_50,0xc);
      func_0x0002400fb150();
    }
  }
  else {
    func_0x0002400fdf00(lVar4,0);
    if (lVar4 != 0) {
      *(long *)(param_1 + 0x20) = *(long *)(param_1 + 0x20) + -1;
      *(long *)(param_1 + 0x10) = lVar2 + lVar7;
      goto LAB_239b66658;
    }
    _MediaAnalysisLogLevel();
    uVar6 = DAT_239d72ae3;
    if ((2 < (int)lVar4) &&
       (uVar3 = _DAT_2681b59a8, func_0x0002400fb350(_DAT_2681b59a8,DAT_239d72ae3), (int)uVar3 != 0))
    {
      func_0x0002400fb0f0();
      local_50 = (undefined4)DAT_239d6f6b0;
      local_4c = param_1;
      func_0x0002400fb1f0();
      pcVar5 = "[%@] readOneImage: Failed to create imageSource";
      goto LAB_239b66640;
    }
  }
  lVar4 = 0;
LAB_239b66658:
  func_0x0002400fb140();
  return lVar4;
}

