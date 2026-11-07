
/* WARNING: Function: _objc_retain_x2 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x20 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_release_x20 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x19 replaced with injection: _objc_release_fixup */
/* Function Stack Size: 0x20 bytes */

long_long VCPMediaAnalysisClientHandler::consumeSandboxExtension_url_
                    (ID param_1,SEL param_2,ID param_3,ID param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  ID IVar4;
  undefined2 *puVar5;
  undefined *puVar6;
  ID IVar7;
  char *pcVar8;
  undefined8 in_x6;
  undefined8 in_x7;
  undefined1 uVar9;
  undefined2 local_50;
  undefined2 uStack_4e;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  IVar4 = param_1;
  _objc_retainAutorelease();
  IVar4 = objc_stub::FUN_100220d80(IVar4);
  if (*(ID *)(param_1 + (long)_connection) == 0) {
    uStack_48 = 0;
    uStack_44 = 0;
    local_50 = 0;
    uStack_4e = 0;
    uStack_4c = 0;
    uStack_38 = 0;
    uStack_40 = 0;
  }
  else {
    objc_stub::FUN_10021cd80(*(ID *)(param_1 + (long)_connection),&local_50);
  }
  puVar5 = &local_50;
  IVar7 = IVar4;
  _sandbox_check_by_audit_token
            (puVar5,"file-read*",*(uint *)PTR__SANDBOX_CHECK_NO_REPORT_1003006b0 | 1);
  uVar1 = uStack_48;
  iVar3 = (int)puVar5;
  uStack_48 = (undefined4)(IVar4 >> 0x20);
  uVar2 = uStack_48;
  uStack_48 = uVar1;
  if (iVar3 == -1) {
    _MediaAnalysisLogLevel();
    if (iVar3 < 3) {
      return 0xffffffffffffffff;
    }
    uVar9 = PTR__VCPLogToOSLogType_1002ff988[3];
    puVar6 = PTR___os_log_default_1003006f0;
    _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar9);
    if ((int)puVar6 == 0) {
      return 0xffffffffffffffff;
    }
    local_50 = (undefined2)DAT_100281008;
    uStack_4e = (undefined2)((ulong)DAT_100281008 >> 0x10);
    pcVar8 = "[MAClientHandler] Failed to check for client read access to file %s";
  }
  else {
    if (iVar3 != 1) {
      _objc_retainAutorelease();
      IVar4 = objc_stub::UTF8String(param_1);
      _sandbox_extension_consume();
      if (-1 < (long)IVar4) {
        return IVar4;
      }
      IVar7 = IVar4;
      _MediaAnalysisLogLevel();
      if (2 < (int)IVar7) {
        uVar9 = PTR__VCPLogToOSLogType_1002ff988[3];
        puVar6 = PTR___os_log_default_1003006f0;
        _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar9);
        if ((int)puVar6 != 0) {
          local_50 = 0;
          __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar9,
                        "[MAClientHandler] Failed to consume sandbox extension",&local_50,2);
          return IVar4;
        }
        return IVar4;
      }
      return IVar4;
    }
    _MediaAnalysisLogLevel();
    if (iVar3 < 3) {
      return 0xffffffffffffffff;
    }
    uVar9 = PTR__VCPLogToOSLogType_1002ff988[3];
    puVar6 = PTR___os_log_default_1003006f0;
    _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar9);
    if ((int)puVar6 == 0) {
      return 0xffffffffffffffff;
    }
    local_50 = (undefined2)DAT_100281008;
    uStack_4e = (undefined2)((ulong)DAT_100281008 >> 0x10);
    pcVar8 = "[MAClientHandler] Client does not have read access to file %s";
  }
  uStack_4c = (undefined4)IVar4;
  uStack_48 = uVar2;
  __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar9,pcVar8,&local_50,0xc,in_x6,in_x7,
                IVar7);
  return 0xffffffffffffffff;
}

