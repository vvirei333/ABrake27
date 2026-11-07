
/* WARNING: Function: _objc_retain_x2 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x20 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x21 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_claimAutoreleasedReturnValue replaced with injection: _objc_retain_fixup
    */
/* WARNING: Function: _objc_release_x23 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x25 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x22 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x21 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x20 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x19 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x24 replaced with injection: _objc_release_fixup */
/* Function Stack Size: 0x28 bytes */

void VCPMediaAnalysisDaemon::registerClient_forPhotoLibraryURL_withReply_
               (ID param_1,SEL param_2,ID param_3,ID param_4,ID param_5,undefined4 param_6)

{
  undefined1 uVar1;
  int iVar2;
  ID IVar3;
  ID IVar4;
  void *pvVar5;
  void *pvVar6;
  undefined *puVar7;
  undefined4 local_70;
  ID local_6c;
  undefined2 local_64;
  ID local_62;
  
  IVar3 = objc_stub::sharedManager(0x100326750);
  IVar3 = objc_stub::FUN_100226a00(IVar3,param_1);
  iVar2 = 0;
  if (IVar3 == 0) {
    _MediaAnalysisLogLevel();
    if (3 < iVar2) {
      uVar1 = PTR__VCPLogToOSLogType_1002ff988[4];
      puVar7 = PTR___os_log_default_1003006f0;
      _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1);
      if ((int)puVar7 != 0) {
        local_6c = objc_stub::path(param_1);
        local_70 = (undefined4)DAT_100280f90;
        __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                      "Failed to open Photos Library at %@; cannot issue sandbox extension",
                      &local_70,0xc);
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
          local_70 = (undefined4)DAT_100280fb8;
          local_64 = 0x840;
          local_6c = IVar4;
          local_62 = param_1;
          __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                        "Failed to issue sandbox extension on %@ for %@",&local_70,0x16);
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
          local_70 = (undefined4)DAT_100280fb8;
          local_64 = 0x840;
          local_6c = IVar4;
          local_62 = param_1;
          __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                        "Issuing sandbox extension for %@ to %@",&local_70,0x16);
        }
      }
      IVar3 = objc_stub::stringWithUTF8String_((ID)PTR__OBJC_CLASS___NSString_1002ffe38,pvVar5);
      (**(code **)(param_1 + 0x10))(param_1,IVar3);
      _free(pvVar5);
    }
  }
  return;
}

