
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

long * __VCPImageDescriptor_initWithData__(long param_1)

{
  long *plVar1;
  long *plVar2;
  long lVar3;
  long *plVar4;
  long local_40;
  undefined *puStack_38;
  
  lVar3 = param_1;
  func_0x0002400fb250();
  puStack_38 = PTR_DAT_268e3c4c0;
  plVar1 = &local_40;
  local_40 = param_1;
  func_0x0002400fb0e0(plVar1,0x1f5a89d58);
  if (plVar1 == (long *)0x0) {
    plVar4 = (long *)0x0;
  }
  else {
    if (lVar3 == 0) {
      plVar4 = plVar1;
      plVar1 = (long *)0x0;
    }
    else {
      plVar4 = _DAT_2680f96e0;
      func_0x0002400fb080();
      func_0x00024002ebd0();
      plVar2 = plVar4;
      func_0x0002400fb2f0(0);
      lVar3 = plVar1[1];
      plVar1[1] = (long)plVar4;
      plVar4 = plVar2;
      func_0x0002400fb1e0(lVar3);
      if (plVar1[1] == 0) {
        plVar4 = _DAT_2681b59a8;
        func_0x0002400fb350(_DAT_2681b59a8,0x10);
        if ((int)plVar4 != 0) {
          func_0x000240001540(plVar2);
          func_0x0002400fb0c0();
          __VCPImageDescriptor_initWithData___cold_1();
          plVar4 = plVar2;
        }
        plVar1 = (long *)0x0;
      }
    }
    func_0x0002400fb2f0(plVar1);
    func_0x0002400fb160();
  }
  func_0x0002400fb140();
  func_0x0002400fb150();
  return plVar4;
}

