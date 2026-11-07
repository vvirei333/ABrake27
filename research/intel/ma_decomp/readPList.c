
/* WARNING: Removing unreachable block (ram,0x000239b66224) */
/* WARNING: Removing unreachable block (ram,0x000239b66238) */
/* WARNING: Removing unreachable block (ram,0x000239b66278) */
/* WARNING: Removing unreachable block (ram,0x000239b6628c) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

long __MADImageASTCFormatReader_readPList_(long param_1,undefined8 param_2)

{
  undefined8 uVar1;
  long lVar2;
  ulong uVar3;
  ulong uVar4;
  long lVar5;
  int local_44;
  
  lVar5 = *(long *)(param_1 + 0x18);
  local_44 = 0;
  lVar2 = param_1;
  func_0x0002400334d0(param_1,param_2,&local_44,lVar5 + -4,4);
  if ((int)lVar2 != 0) {
    return lVar2;
  }
  if (local_44 != 0x434b4149) {
    uVar1 = _DAT_2681b59a8;
    func_0x0002400fb350(_DAT_2681b59a8,0x10);
    if ((int)uVar1 != 0) {
      __MADImageASTCFormatReader_readPList__cold_1(param_1);
    }
    return 0xffffffee;
  }
  lVar2 = param_1;
  func_0x0002400334d0();
  if ((int)lVar2 != 0) {
    return lVar2;
  }
  lVar2 = param_1;
  func_0x0002400334d0();
  if ((int)lVar2 != 0) {
    return lVar2;
  }
  lVar2 = *(long *)(param_1 + 8);
  func_0x0002400221a0();
  func_0x0002400fb0c0();
  if (lVar2 == 0) {
    uVar1 = _DAT_2681b59a8;
    func_0x0002400fb350(_DAT_2681b59a8,0x10);
    if ((int)uVar1 != 0) {
      func_0x0002400fb0f0(param_1);
      __MADImageASTCFormatReader_readPList__cold_3();
    }
    lVar2 = 0xffffffee;
    goto LAB_239b66370;
  }
  uVar3 = _DAT_2680df660;
  func_0x00024000c870();
  func_0x0002400fb0c0();
  func_0x0002400fb2f0(0);
  if (uVar3 == 0) {
LAB_239b66334:
    uVar1 = _DAT_2681b59a8;
    func_0x0002400fb350(_DAT_2681b59a8,0x10);
    if ((int)uVar1 != 0) {
      func_0x0002400fb0f0(param_1);
      __MADImageASTCFormatReader_readPList__cold_2();
    }
    lVar2 = 0xffffffee;
  }
  else {
    uVar1 = _DAT_2680d2e98;
    func_0x0002400fb0f0(_DAT_2680d2e98);
    uVar4 = uVar3;
    func_0x0002400fb100(uVar3,uVar1);
    if ((uVar4 & 1) == 0) goto LAB_239b66334;
    *(long *)(param_1 + 0x18) = lVar5 + -0x14;
    func_0x0002400fb320(param_1 + 0x28,uVar3);
    lVar2 = 0;
    *(undefined8 *)(param_1 + 0x20) = 0;
  }
  func_0x0002400fb160();
  func_0x0002400fb170();
LAB_239b66370:
  func_0x0002400fb150();
  return lVar2;
}

