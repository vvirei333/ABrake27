
/* WARNING: Function: _objc_retain_x2 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x20 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_claimAutoreleasedReturnValue replaced with injection: _objc_retain_fixup
    */
/* WARNING: Function: _objc_release_x22 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x24 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x21 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x20 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x19 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x23 replaced with injection: _objc_release_fixup */
/* Function Stack Size: 0x20 bytes */

void VCPMediaAnalysisClientHandler::
     requestMediaAnalysisDatabaseAccessSandboxExtensionWithPhotoLibraryURL_andReply_
               (ID param_1,SEL param_2,ID param_3,ID param_4,uint param_5)

{
  undefined1 uVar1;
  int iVar2;
  ID IVar3;
  ID IVar4;
  void *pvVar5;
  void *pvVar6;
  undefined *puVar7;
  undefined4 local_50;
  ID local_4c;
  
  IVar3 = objc_stub::sharedManager(0x100326750,param_3,param_4,(ulong)param_5);
  IVar3 = objc_stub::FUN_100226a00(IVar3,param_1);
  iVar2 = 0;
  if (IVar3 == 0) {
    _MediaAnalysisLogLevel();
    if (3 < iVar2) {
      uVar1 = PTR__VCPLogToOSLogType_1002ff988[4];
      puVar7 = PTR___os_log_default_1003006f0;
      _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1);
      if ((int)puVar7 != 0) {
        local_4c = objc_stub::path(param_1);
        local_50 = (undefined4)DAT_100280f90;
        __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                      "[MAClientHandler] Failed to open Photos Library at %@; cannot issue sandbox extension"
                      ,&local_50,0xc);
      }
    }
    (**(code **)(param_1 + 0x10))(param_1,0);
  }
  else {
    IVar4 = objc_stub::FUN_100230220(IVar3);
    IVar3 = IVar4;
    _objc_retainAutorelease();
    IVar3 = objc_stub::UTF8String(IVar3);
    pvVar5 = *(void **)PTR__APP_SANDBOX_READ_WRITE_1003006a8;
    _sandbox_extension_issue_file(pvVar5,IVar3,0);
    if (pvVar5 == (void *)0x0) {
      _MediaAnalysisLogLevel();
      if (3 < (int)pvVar5) {
        uVar1 = PTR__VCPLogToOSLogType_1002ff988[4];
        puVar7 = PTR___os_log_default_1003006f0;
        _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1);
        if ((int)puVar7 != 0) {
          local_50 = (undefined4)DAT_100280f90;
          local_4c = IVar4;
          __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                        "[MAClientHandler] Failed to issue sandbox extension on %@",&local_50,0xc);
        }
      }
      (**(code **)(param_1 + 0x10))(param_1,0);
    }
    else {
      pvVar6 = pvVar5;
      _MediaAnalysisLogLevel();
      if (6 < (int)pvVar6) {
        uVar1 = PTR__VCPLogToOSLogType_1002ff988[7];
        puVar7 = PTR___os_log_default_1003006f0;
        _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1);
        if ((int)puVar7 != 0) {
          local_50 = (undefined4)DAT_100280f90;
          local_4c = IVar4;
          __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                        "[MAClientHandler] Issuing sandbox extension for %@",&local_50,0xc);
        }
      }
      IVar3 = objc_stub::stringWithUTF8String_((ID)PTR__OBJC_CLASS___NSString_1002ffe38,pvVar5);
      (**(code **)(param_1 + 0x10))(param_1,IVar3);
      _free(pvVar5);
    }
  }
  return;
}

