
/* WARNING: Function: _objc_retain_x3 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x22 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x21 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x20 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x19 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_claimAutoreleasedReturnValue replaced with injection: _objc_retain_fixup
    */
/* WARNING: Function: _objc_release_x19 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x23 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x25 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x26 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x24 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x8 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x22 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_retain_x8 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_release_x20 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x28 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_retain_x24 replaced with injection: _objc_retain_fixup */
/* Function Stack Size: 0x3c bytes */

void VCPMediaAnalysisClientHandler::
     requestWallpaperUpgrade_atSourceURL_toDestinationURL_withOptions_sandboxTokens_andReply_
               (ID param_1,SEL param_2,int param_3,ID param_4,ID param_5,ID param_6,ID param_7,
               ID param_8,undefined4 param_9)

{
  undefined1 uVar1;
  undefined8 uVar2;
  undefined *puVar3;
  ID IVar4;
  ID IVar5;
  ID IVar6;
  undefined *puVar7;
  int iVar8;
  ulong uVar9;
  undefined *local_100;
  undefined8 local_f8;
  code *local_f0;
  undefined *puStack_e8;
  ID local_e0;
  undefined8 local_d8;
  undefined4 local_d0;
  ID local_cc;
  undefined8 local_c0;
  ID local_b8;
  undefined8 local_b0;
  ID local_a8;
  undefined8 local_a0;
  ID local_98;
  ID local_90;
  ID IStack_88;
  undefined8 local_80;
  ID local_78;
  long local_70;
  
  local_70 = *(long *)PTR____stack_chk_guard_1003006c8;
  IVar4 = param_1;
  _MediaAnalysisLogLevel();
  if (5 < (int)IVar4) {
    uVar1 = PTR__VCPLogToOSLogType_1002ff988[6];
    puVar3 = PTR___os_log_default_1003006f0;
    _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1);
    if ((int)puVar3 != 0) {
      local_d0 = (undefined4)DAT_100280fa8;
      local_cc = CONCAT44(local_cc._4_4_,param_3);
      __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                    "[MAClientHandler] Received requestWallpaperUpgrade MADRequestID %d",&local_d0,8
                   );
    }
  }
  IVar4 = objc_stub::count(param_1);
  puVar3 = PTR__OBJC_CLASS___NSError_1002ffdc0;
  if (IVar4 != 2) {
    local_80 = *(undefined8 *)PTR__NSLocalizedDescriptionKey_1002ffd80;
    local_78 = objc_stub::stringWithFormat_
                         ((ID)PTR__OBJC_CLASS___NSString_1002ffe38,
                          &cf__MAClientHandler_Sandboxtokencountnoteuqalto2);
    IVar4 = objc_stub::dictionaryWithObjects_forKeys_count_
                      ((ID)PTR__OBJC_CLASS___NSDictionary_100300730,&local_78,&local_80,1);
    IVar4 = objc_stub::errorWithDomain_code_userInfo_
                      ((ID)puVar3,*(undefined8 *)PTR__NSOSStatusErrorDomain_1002ffd90,
                       0xffffffffffffffce,IVar4);
    (**(code **)(param_1 + 0x10))(param_1 + 0x10,param_1,0,IVar4);
    goto LAB_100070a18;
  }
  local_90 = param_1;
  IStack_88 = param_1;
  IVar4 = objc_stub::arrayWithObjects_count_((ID)PTR__OBJC_CLASS___NSArray_100300710,&local_90,2);
  puVar3 = PTR___os_log_default_1003006f0;
  uVar2 = DAT_100280f90;
  uVar1 = PTR__VCPLogToOSLogType_1002ff988[7];
  for (uVar9 = 0; IVar5 = objc_stub::count(param_1), uVar9 < IVar5; uVar9 = uVar9 + 1) {
    IVar5 = objc_stub::objectAtIndexedSubscript_(param_1,uVar9);
    IVar6 = objc_stub::objectAtIndexedSubscript_(IVar4,uVar9);
    IVar5 = objc_stub::FUN_10021e0e0(param_1,IVar5,IVar6);
    puVar7 = PTR__OBJC_CLASS___NSError_1002ffdc0;
    iVar8 = 0;
    if ((long)IVar5 < 0) {
      local_a0 = *(undefined8 *)PTR__NSLocalizedDescriptionKey_1002ffd80;
      local_98 = objc_stub::stringWithFormat_
                           ((ID)PTR__OBJC_CLASS___NSString_1002ffe38,
                            &cf__MAClientHandler_Failedtoconsumesandboxextension);
      IVar4 = objc_stub::dictionaryWithObjects_forKeys_count_
                        ((ID)PTR__OBJC_CLASS___NSDictionary_100300730,&local_98,&local_a0,1);
      IVar4 = objc_stub::errorWithDomain_code_userInfo_
                        ((ID)puVar7,*(undefined8 *)PTR__NSOSStatusErrorDomain_1002ffd90,
                         0xffffffffffffffce,IVar4);
      (**(code **)(param_1 + 0x10))(param_1 + 0x10,param_1,0,IVar4);
      goto LAB_100070a18;
    }
    _MediaAnalysisLogLevel();
    if ((6 < iVar8) && (puVar7 = puVar3, _os_log_type_enabled(puVar3,uVar1), (int)puVar7 != 0)) {
      local_cc = objc_stub::objectAtIndexedSubscript_(IVar4,uVar9);
      local_d0 = (undefined4)uVar2;
      __os_log_impl(0x100000000,puVar3,uVar1,"[MAClientHandler] Consuming sandbox extension for %@",
                    &local_d0,0xc);
    }
    IVar5 = objc_stub::FUN_100225da0((ID)PTR__OBJC_CLASS___NSNumber_1002ffdf8,IVar5);
    objc_stub::addObject_(0,IVar5);
  }
  puVar3 = PTR__OBJC_CLASS___VCPParallaxAnalyzer_1002feae0;
  _objc_alloc();
  IVar4 = objc_stub::FUN_100222b40((ID)puVar3,param_1,0);
  if (IVar4 == 0) {
    _MediaAnalysisLogLevel();
    if (2 < (int)IVar4) {
      uVar1 = PTR__VCPLogToOSLogType_1002ff988[3];
      puVar3 = PTR___os_log_default_1003006f0;
      _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1);
      if ((int)puVar3 != 0) {
        local_d0 = (undefined4)DAT_100280fa8;
        local_cc = CONCAT44(local_cc._4_4_,param_3);
        __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                      "[MAClientHandler] Failed to initialize analyzer MADRequestID %d",&local_d0,8)
        ;
      }
    }
    puVar3 = PTR__OBJC_CLASS___NSError_1002ffdc0;
    local_b0 = *(undefined8 *)PTR__NSLocalizedDescriptionKey_1002ffd80;
    local_a8 = objc_stub::stringWithFormat_
                         ((ID)PTR__OBJC_CLASS___NSString_1002ffe38,
                          &cf__MAClientHandler_toinitializeanalyzerwithMADRequestID_d);
    IVar4 = objc_stub::dictionaryWithObjects_forKeys_count_
                      ((ID)PTR__OBJC_CLASS___NSDictionary_100300730,&local_a8,&local_b0,1);
    IVar4 = objc_stub::errorWithDomain_code_userInfo_
                      ((ID)puVar3,*(undefined8 *)PTR__NSOSStatusErrorDomain_1002ffd90,
                       0xffffffffffffff94,IVar4);
    (**(code **)(param_1 + 0x10))(param_1 + 0x10,param_1,0,IVar4);
LAB_100070928:
    param_1 = 0;
  }
  else {
    local_d8 = 0;
    IVar4 = objc_stub::FUN_10022f780(IVar4,param_1,param_1,0,&local_d8);
    iVar8 = (int)IVar4;
    if (iVar8 != 0) {
      _MediaAnalysisLogLevel(local_d8);
      if (2 < (int)IVar4) {
        uVar1 = PTR__VCPLogToOSLogType_1002ff988[3];
        puVar3 = PTR___os_log_default_1003006f0;
        _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1);
        if ((int)puVar3 != 0) {
          local_d0 = (undefined4)DAT_100280fa8;
          local_cc = CONCAT44(local_cc._4_4_,param_3);
          __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                        "[MAClientHandler] Failed to requestWallpaperUpgrade MADRequestID %d",
                        &local_d0,8);
        }
      }
      puVar3 = PTR__OBJC_CLASS___NSError_1002ffdc0;
      local_c0 = *(undefined8 *)PTR__NSLocalizedDescriptionKey_1002ffd80;
      local_b8 = objc_stub::stringWithFormat_
                           ((ID)PTR__OBJC_CLASS___NSString_1002ffe38,
                            &cf__MAClientHandler_FailedtorequestWallpaperUpgradewithMADRequestID_d);
      IVar4 = objc_stub::dictionaryWithObjects_forKeys_count_
                        ((ID)PTR__OBJC_CLASS___NSDictionary_100300730,&local_b8,&local_c0,1);
      IVar4 = objc_stub::errorWithDomain_code_userInfo_
                        ((ID)puVar3,*(undefined8 *)PTR__NSOSStatusErrorDomain_1002ffd90,(long)iVar8,
                         IVar4);
      (**(code **)(param_1 + 0x10))(param_1 + 0x10,param_1,0,IVar4);
      goto LAB_100070928;
    }
    IVar5 = IVar4;
    _MediaAnalysisLogLevel(local_d8);
    if (5 < (int)IVar5) {
      uVar1 = PTR__VCPLogToOSLogType_1002ff988[6];
      puVar3 = PTR___os_log_default_1003006f0;
      _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1);
      if ((int)puVar3 != 0) {
        local_d0 = (undefined4)DAT_100280fa8;
        local_cc = CONCAT44(local_cc._4_4_,param_3);
        __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                      "[MAClientHandler] Completed requestWallpaperUpgrade MADRequestID %d",
                      &local_d0,8);
      }
    }
    (**(code **)(param_1 + 0x10))(param_1,IVar4,0);
  }
  local_100 = PTR___NSConcreteStackBlock_1003006c0;
  local_f8 = DAT_100280fa0;
  local_f0 = FUN_100070bc0;
  puStack_e8 = &DAT_1002e9e20;
  local_e0 = param_1;
  objc_stub::enumerateObjectsUsingBlock_(0,&local_100);
LAB_100070a18:
  if (*(long *)PTR____stack_chk_guard_1003006c8 != local_70) {
                    /* WARNING: Subroutine does not return */
    ___stack_chk_fail(0);
  }
  return;
}

