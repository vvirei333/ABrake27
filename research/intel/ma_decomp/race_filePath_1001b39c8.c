
/* WARNING: Function: _objc_claimAutoreleasedReturnValue replaced with injection: _objc_retain_fixup
    */
/* WARNING: Function: _objc_release_x20 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_autoreleaseReturnValue replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_release_x19 replaced with injection: _objc_release_fixup */
/* Function Stack Size: 0x10 bytes */

ID MADSpotlightImageAssetEntry::filePath(ID param_1,SEL param_2)

{
  undefined1 uVar1;
  code *pcVar2;
  int iVar3;
  ID IVar4;
  undefined *puVar5;
  long lVar6;
  long lVar7;
  ulong unaff_x30;
  undefined4 local_40;
  ID local_3c;
  
  lVar6 = (long)_sandboxHandle;
  lVar7 = (long)_asset;
  if (*(long *)(param_1 + lVar6) < 0) {
    IVar4 = objc_stub::FUN_1002290e0(*(ID *)(param_1 + lVar7));
    _objc_retainAutorelease();
    IVar4 = objc_stub::UTF8String(IVar4);
    _sandbox_extension_consume();
    *(ID *)(param_1 + lVar6) = IVar4;
    iVar3 = 0;
    if (*(long *)(param_1 + lVar6) < 0) {
      _MediaAnalysisLogLevel();
      if (2 < iVar3) {
        uVar1 = PTR__VCPLogToOSLogType_1002ff988[3];
        puVar5 = PTR___os_log_default_1003006f0;
        _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1);
        if ((int)puVar5 != 0) {
          local_3c = objc_stub::FUN_10022eca0(param_1);
          local_40 = (undefined4)DAT_100280f90;
          __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                        "[%@] Failed to consume sandbox extension",&local_40,0xc);
        }
      }
      IVar4 = 0;
      goto LAB_1001b3a4c;
    }
  }
  IVar4 = objc_stub::FUN_10022f7a0(*(ID *)(param_1 + lVar7));
  IVar4 = objc_stub::path(IVar4);
LAB_1001b3a4c:
  if (((unaff_x30 ^ unaff_x30 << 1) >> 0x3e & 1) != 0) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0xc471,0x1001b3a70);
    (*pcVar2)();
  }
  return IVar4;
}

