
/* WARNING: Function: _objc_retain_x3 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x22 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x21 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x20 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_claimAutoreleasedReturnValue replaced with injection: _objc_retain_fixup
    */
/* WARNING: Function: _objc_release_x21 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x22 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x26 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x24 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x28 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x8 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x19 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_retain_x8 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retainBlock replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x23 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x24 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_release_x20 replaced with injection: _objc_release_fixup */
/* Function Stack Size: 0x3c bytes */

void VCPMediaAnalysisClientHandler::
     requestURLAssetAnalysis_forAssetWithResourcePaths_withOptions_analysisTypes_sandboxTokens_withReply_
               (ID param_1,SEL param_2,int param_3,ID param_4,ID param_5,unsigned_long_long param_6,
               ID param_7,ID param_8,undefined4 param_9)

{
  undefined1 uVar1;
  undefined1 uVar2;
  undefined8 uVar3;
  undefined *self;
  int iVar4;
  undefined *puVar5;
  ID IVar6;
  ID IVar7;
  ID IVar8;
  ID IVar9;
  ID IVar10;
  cfstringStruct *pcVar11;
  cfstringStruct *pcVar12;
  undefined8 uVar13;
  bool bVar14;
  undefined8 uVar15;
  ulong uVar16;
  undefined4 uVar17;
  undefined *local_1e0;
  undefined8 local_1d8;
  code *local_1d0;
  undefined *puStack_1c8;
  ID local_1c0;
  undefined **local_1b8;
  undefined **local_1b0;
  undefined **local_1a8;
  undefined **local_1a0;
  undefined **local_198;
  unsigned_long_long local_190;
  int local_188;
  undefined *local_180;
  undefined8 local_178;
  code *local_170;
  undefined *puStack_168;
  ID local_160;
  int local_158;
  undefined *local_150;
  undefined8 local_148;
  code *local_140;
  undefined *puStack_138;
  ID local_130;
  ID local_128;
  ID local_120;
  ID local_118;
  undefined8 *puStack_110;
  int local_108;
  undefined4 local_100;
  cfstringStruct *local_fc;
  undefined8 local_f0;
  undefined2 local_e8;
  undefined6 local_e6;
  undefined2 uStack_e0;
  undefined6 uStack_de;
  code *local_d8;
  code *local_d0;
  cfstringStruct *local_c8;
  undefined8 local_b8;
  ID local_b0;
  undefined8 local_a8;
  ID local_a0;
  undefined8 local_98;
  ID local_90;
  long local_88;
  
  local_88 = *(long *)PTR____stack_chk_guard_1003006c8;
  IVar6 = param_1;
  _MediaAnalysisLogLevel();
  if (4 < (int)IVar6) {
    uVar1 = PTR__VCPLogToOSLogType_1002ff988[5];
    puVar5 = PTR___os_log_default_1003006f0;
    _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1);
    if ((int)puVar5 != 0) {
      IVar6 = objc_stub::firstObject(param_1);
      local_f0 = CONCAT44(param_3,(int)DAT_100280fd8);
      local_e8 = 0x840;
      local_e6 = (undefined6)IVar6;
      uStack_e0 = (undefined2)(IVar6 >> 0x30);
      __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                    "[MAClientHandler] Received MADRequestID %d to analyze asset %@",&local_f0,0x12)
      ;
    }
  }
  local_f0 = 0;
  local_e8 = SUB82(&local_f0,0);
  local_e6 = (undefined6)((ulong)&local_f0 >> 0x10);
  uStack_e0 = (undefined2)DAT_100280ff0;
  uStack_de = (undefined6)((ulong)DAT_100280ff0 >> 0x10);
  local_d8 = FUN_100068dc8;
  local_d0 = FUN_100068dd8;
  pcVar11 = &cf_VCPMediaAnalysisClientHandler_requestURLAssetAnalysis;
  _VCPTransactionWithName(&local_d0);
  local_c8 = pcVar11;
  IVar6 = objc_stub::count(param_1);
  IVar7 = objc_stub::count(param_1);
  self = PTR__OBJC_CLASS___NSMutableArray_100300750;
  puVar5 = PTR__OBJC_CLASS___NSString_1002ffe38;
  if (IVar6 == IVar7) {
    IVar6 = objc_stub::count(param_1);
    IVar6 = objc_stub::arrayWithCapacity_((ID)self,IVar6);
    puVar5 = PTR__OBJC_CLASS___NSMutableArray_100300750;
    IVar7 = objc_stub::count(param_1);
    IVar7 = objc_stub::arrayWithCapacity_((ID)puVar5,IVar7);
    uVar3 = DAT_100280f90;
    uVar16 = 0;
    uVar1 = PTR__VCPLogToOSLogType_1002ff988[7];
    uVar2 = PTR__VCPLogToOSLogType_1002ff988[3];
    uVar15 = *(undefined8 *)PTR__NSOSStatusErrorDomain_1002ffd90;
    uVar13 = *(undefined8 *)PTR__NSLocalizedDescriptionKey_1002ffd80;
    do {
      IVar8 = objc_stub::count(param_1);
      if (IVar8 <= uVar16) {
        local_150 = PTR___NSConcreteStackBlock_1003006c0;
        local_148 = DAT_100280fa0;
        local_140 = FUN_100068de0;
        puStack_138 = &DAT_1002e9e70;
        puStack_110 = &local_f0;
        local_198 = &local_150;
        local_180 = PTR___NSConcreteStackBlock_1003006c0;
        local_178 = DAT_100280fa0;
        local_170 = FUN_10006922c;
        puStack_168 = &DAT_1002e8480;
        local_1b8 = &local_180;
        local_1e0 = PTR___NSConcreteStackBlock_1003006c0;
        local_1d8 = DAT_100280fa0;
        local_1d0 = FUN_10006924c;
        puStack_1c8 = &DAT_1002e9e98;
        local_1c0 = param_1;
        local_1b0 = local_1b8;
        local_1a8 = local_1b8;
        local_1a0 = local_1b8;
        local_190 = param_6;
        local_188 = param_3;
        local_160 = param_1;
        local_158 = param_3;
        local_130 = param_1;
        local_128 = IVar8;
        local_120 = IVar8;
        local_118 = IVar8;
        local_108 = param_3;
        _dispatch_sync(*(undefined8 *)(param_1 + (long)_managementQueue),&local_1e0);
        break;
      }
      _objc_autoreleasePoolPush();
      puVar5 = PTR__OBJC_CLASS___NSURL_100300788;
      IVar9 = objc_stub::objectAtIndexedSubscript_(param_1,uVar16);
      IVar9 = objc_stub::fileURLWithPath_((ID)puVar5,IVar9);
      IVar10 = objc_stub::objectAtIndexedSubscript_(param_1,uVar16);
      IVar10 = objc_stub::FUN_10021e0e0(param_1,IVar10,IVar9);
      iVar4 = 0;
      uVar17 = (undefined4)uVar3;
      if ((long)IVar10 < 0) {
        _MediaAnalysisLogLevel();
        if ((2 < iVar4) &&
           (puVar5 = PTR___os_log_default_1003006f0,
           _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar2), (int)puVar5 != 0)) {
          local_fc = &cf__MAClientHandler_Failedtoconsumesandboxextension;
          local_100 = uVar17;
          __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar2,"%@",&local_100,0xc);
        }
        puVar5 = PTR__OBJC_CLASS___NSError_1002ffdc0;
        local_a8 = uVar13;
        local_a0 = objc_stub::stringWithFormat_((ID)PTR__OBJC_CLASS___NSString_1002ffe38,&cf___);
        IVar9 = objc_stub::dictionaryWithObjects_forKeys_count_
                          ((ID)PTR__OBJC_CLASS___NSDictionary_100300730,&local_a0,&local_a8,1);
        IVar9 = objc_stub::errorWithDomain_code_userInfo_
                          ((ID)puVar5,uVar15,0xffffffffffffffce,IVar9);
        (**(code **)(param_1 + 0x10))(param_1,0,IVar9);
LAB_100068890:
        bVar14 = false;
      }
      else {
        _MediaAnalysisLogLevel();
        if ((6 < iVar4) &&
           (puVar5 = PTR___os_log_default_1003006f0,
           _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1), (int)puVar5 != 0)) {
          local_fc = (cfstringStruct *)objc_stub::objectAtIndexedSubscript_(param_1,uVar16);
          local_100 = uVar17;
          __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                        "[MAClientHandler] Consuming sandbox extension for %@",&local_100,0xc);
        }
        IVar10 = objc_stub::FUN_100225da0((ID)PTR__OBJC_CLASS___NSNumber_1002ffdf8,IVar10);
        objc_stub::addObject_(IVar6,IVar10);
        objc_stub::addObject_(IVar7,IVar9);
        puVar5 = PTR__OBJC_CLASS___NSURL_100300788;
        IVar9 = objc_stub::objectAtIndexedSubscript_(param_1,uVar16);
        IVar9 = objc_stub::fileURLWithPath_((ID)puVar5,IVar9);
        _FigSandboxRegisterURLWithProcess(IVar9,1,1);
        puVar5 = PTR__OBJC_CLASS___NSString_1002ffe38;
        if ((int)IVar9 != 0) {
          objc_stub::objectAtIndexedSubscript_(param_1,uVar16);
          pcVar11 = (cfstringStruct *)
                    objc_stub::stringWithFormat_
                              ((ID)puVar5,
                               &
                               cf__MAClientHandler_Failedtoregistersandboxextension____toCoreMedia__d_
                              );
          iVar4 = 0;
          _MediaAnalysisLogLevel();
          if ((2 < iVar4) &&
             (puVar5 = PTR___os_log_default_1003006f0,
             _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar2), (int)puVar5 != 0)) {
            local_100 = uVar17;
            local_fc = pcVar11;
            __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar2,"%@",&local_100,0xc);
          }
          puVar5 = PTR__OBJC_CLASS___NSError_1002ffdc0;
          local_b8 = uVar13;
          local_b0 = objc_stub::stringWithFormat_((ID)PTR__OBJC_CLASS___NSString_1002ffe38,&cf___);
          IVar9 = objc_stub::dictionaryWithObjects_forKeys_count_
                            ((ID)PTR__OBJC_CLASS___NSDictionary_100300730,&local_b0,&local_b8,1);
          IVar9 = objc_stub::errorWithDomain_code_userInfo_
                            ((ID)puVar5,uVar15,0xffffffffffffffce,IVar9);
          (**(code **)(param_1 + 0x10))(param_1,0,IVar9);
          goto LAB_100068890;
        }
        bVar14 = true;
      }
      _objc_autoreleasePoolPop(IVar8);
      uVar16 = uVar16 + 1;
    } while (bVar14);
  }
  else {
    objc_stub::count(param_1);
    objc_stub::count(param_1);
    pcVar12 = (cfstringStruct *)
              objc_stub::stringWithFormat_
                        ((ID)puVar5,
                         &cf__MAClientHandler_Sandboxtokencount__lu_doesnotmatchresourcecount__lu_);
    pcVar11 = pcVar12;
    _MediaAnalysisLogLevel();
    if (2 < (int)pcVar11) {
      uVar1 = PTR__VCPLogToOSLogType_1002ff988[3];
      puVar5 = PTR___os_log_default_1003006f0;
      _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1);
      if ((int)puVar5 != 0) {
        local_100 = (undefined4)DAT_100280f90;
        local_fc = pcVar12;
        __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,"%@",&local_100,0xc);
      }
    }
    puVar5 = PTR__OBJC_CLASS___NSError_1002ffdc0;
    local_98 = *(undefined8 *)PTR__NSLocalizedDescriptionKey_1002ffd80;
    local_90 = objc_stub::stringWithFormat_((ID)PTR__OBJC_CLASS___NSString_1002ffe38,&cf___);
    IVar6 = objc_stub::dictionaryWithObjects_forKeys_count_
                      ((ID)PTR__OBJC_CLASS___NSDictionary_100300730,&local_90,&local_98,1);
    IVar6 = objc_stub::errorWithDomain_code_userInfo_
                      ((ID)puVar5,*(undefined8 *)PTR__NSOSStatusErrorDomain_1002ffd90,
                       0xffffffffffffffce,IVar6);
    (**(code **)(param_1 + 0x10))(param_1 + 0x10,param_1,0,IVar6);
  }
  __Block_object_dispose(&local_f0,8);
  if (*(long *)PTR____stack_chk_guard_1003006c8 != local_88) {
                    /* WARNING: Subroutine does not return */
    ___stack_chk_fail(0);
  }
  return;
}

