
/* WARNING: Function: _objc_retain_x2 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x20 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x21 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x19 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_claimAutoreleasedReturnValue replaced with injection: _objc_retain_fixup
    */
/* WARNING: Function: _objc_release_x19 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x23 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x22 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x21 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x20 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x8 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x24 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_retain_x26 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x8 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_release_x25 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x28 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x26 replaced with injection: _objc_release_fixup */
/* Function Stack Size: 0x30 bytes */

void VCPMediaAnalysisDaemon::storeAnalysis_forAsset_fromPhotoLibraryURL_withReply_
               (ID param_1,SEL param_2,ID param_3,ID param_4,ID param_5,ID param_6,
               undefined4 param_7)

{
  int iVar1;
  ID IVar2;
  ID IVar3;
  ID IVar4;
  ID IVar5;
  undefined *puVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  char *pcVar9;
  undefined1 uVar10;
  undefined8 local_c8;
  undefined *local_c0;
  undefined8 local_b8;
  code *local_b0;
  undefined *puStack_a8;
  undefined8 local_a0;
  undefined8 local_98;
  uint local_90;
  ID local_8c;
  undefined2 local_84;
  ID local_82;
  ID local_70;
  long local_68;
  
  local_68 = *(long *)PTR____stack_chk_guard_1003006c8;
  IVar2 = param_1;
  _MediaAnalysisLogLevel();
  if (5 < (int)IVar2) {
    uVar10 = PTR__VCPLogToOSLogType_1002ff988[6];
    puVar6 = PTR___os_log_default_1003006f0;
    _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar10);
    if ((int)puVar6 != 0) {
      IVar2 = objc_stub::FUN_100230860(param_1);
      _MediaAnalysisTypeDescription();
      local_90 = (uint)DAT_100280fb8;
      local_84 = 0x840;
      local_8c = param_1;
      local_82 = IVar2;
      __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar10,
                    "  [%@] Received storage request with analysis types: (%@)",&local_90,0x16);
    }
  }
  IVar2 = objc_stub::sharedManager(0x100326750);
  IVar2 = objc_stub::FUN_100226a00(IVar2,param_1);
  iVar1 = 0;
  if (IVar2 == 0) {
    _MediaAnalysisLogLevel();
    if (2 < iVar1) {
      uVar10 = PTR__VCPLogToOSLogType_1002ff988[3];
      puVar6 = PTR___os_log_default_1003006f0;
      _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar10);
      iVar1 = 0;
      if ((int)puVar6 != 0) {
        local_8c = objc_stub::path(param_1);
        local_90 = (uint)DAT_100280f90;
        __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar10,
                      " Failed to open Photos Library at %@; cannot store analysis",&local_90,0xc);
        iVar1 = 0;
      }
    }
  }
  else {
    IVar3 = objc_stub::FUN_100223cc0((ID)PTR__OBJC_CLASS___VCPVideoCNNAnalyzer_1002feb70);
    if ((int)IVar3 == 0) {
      IVar3 = 0;
    }
    else {
      IVar3 = objc_stub::FUN_10022cfc0(0x100323c30,IVar2);
      if (IVar3 == 0) {
        puVar6 = PTR___os_log_default_1003006f0;
        _os_log_type_enabled(PTR___os_log_default_1003006f0,0x10);
        iVar1 = 0;
        if ((int)puVar6 != 0) {
          IVar2 = param_1;
          FUN_10020f2e0();
          iVar1 = (int)IVar2;
        }
        goto LAB_100017d58;
      }
    }
    IVar4 = objc_stub::FUN_10022fd40((ID)PTR__OBJC_CLASS___PHAsset_1002fffc0,IVar2,1);
    puVar6 = PTR__OBJC_CLASS___PHAsset_1002fffc0;
    local_70 = param_1;
    IVar5 = objc_stub::arrayWithObjects_count_((ID)PTR__OBJC_CLASS___NSArray_100300710,&local_70,1);
    IVar4 = objc_stub::fetchAssetsWithLocalIdentifiers_options_((ID)puVar6,IVar5,IVar4);
    puVar6 = (undefined *)objc_stub::count(IVar4);
    if (puVar6 == (undefined *)0x1) {
      _MediaAnalysisLogLevel();
      if (5 < (int)puVar6) {
        uVar10 = PTR__VCPLogToOSLogType_1002ff988[6];
        puVar6 = PTR___os_log_default_1003006f0;
        _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar10);
        if ((int)puVar6 != 0) {
          IVar4 = objc_stub::firstObject(IVar4);
          local_8c = objc_stub::localIdentifier(IVar4);
          local_90 = (uint)DAT_100280f90;
          __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar10,
                        "[%@] Persisting results to MA DB",&local_90,0xc);
          puVar6 = (undefined *)0x0;
        }
      }
      _VCPSignPostLog();
      _os_signpost_id_generate();
      uVar7 = 0;
      _VCPSignPostLog();
      if ((puVar6 + -1 < (undefined *)0xfffffffffffffffe) &&
         (uVar8 = uVar7, _os_signpost_enabled(), (int)uVar8 != 0)) {
        local_90 = local_90 & 0xffff0000;
        __os_signpost_emit_with_name_impl
                  (0x100000000,uVar7,1,puVar6,"VCPMediaAnalysisDaemon_Publish_Single","",&local_90,2
                  );
      }
      local_c0 = PTR___NSConcreteStackBlock_1003006c0;
      local_b8 = DAT_100280fa0;
      local_b0 = FUN_100017f4c;
      puStack_a8 = &DAT_1002e8048;
      local_a0 = 0;
      local_98 = 0;
      local_c8 = 0;
      IVar2 = objc_stub::mad_performAnalysisDataStoreChanges_error_
                        (IVar2,param_1,&local_c0,&local_c8);
      if ((IVar2 & 1) == 0) {
        IVar2 = objc_stub::code(IVar2,local_c8);
        iVar1 = 0;
        if ((int)IVar2 == 0) goto LAB_100017dbc;
      }
      else {
        _VCPSignPostLog();
        if ((puVar6 + -1 < (undefined *)0xfffffffffffffffe) &&
           (IVar4 = IVar2, _os_signpost_enabled(), (int)IVar4 != 0)) {
          local_90 = local_90 & 0xffff0000;
          __os_signpost_emit_with_name_impl
                    (0x100000000,IVar2,2,puVar6,"VCPMediaAnalysisDaemon_Publish_Single","",&local_90
                     ,2);
        }
        IVar2 = objc_stub::objectAtIndexedSubscript_(0,0);
        IVar2 = objc_stub::FUN_10022ee00(IVar3,IVar2,0,0,0);
        iVar1 = 0;
        if ((int)IVar2 == 0) {
          IVar2 = objc_stub::FUN_100227780(IVar3);
          iVar1 = (int)IVar2;
          if (iVar1 == 0) goto LAB_100017dbc;
          _MediaAnalysisLogLevel();
          if (2 < iVar1) {
            uVar10 = PTR__VCPLogToOSLogType_1002ff988[3];
            puVar6 = PTR___os_log_default_1003006f0;
            _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar10);
            if ((int)puVar6 != 0) {
              local_90 = (uint)DAT_100280f90;
              pcVar9 = " [%@] Failed to publish vector database changes";
              goto LAB_100017d20;
            }
          }
        }
        else {
          _MediaAnalysisLogLevel();
          if (2 < iVar1) {
            uVar10 = PTR__VCPLogToOSLogType_1002ff988[3];
            puVar6 = PTR___os_log_default_1003006f0;
            _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar10);
            if ((int)puVar6 != 0) {
              local_90 = (uint)DAT_100280f90;
              pcVar9 = " [%@] Failed to update vector database changes";
LAB_100017d20:
              local_8c = param_1;
              __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar10,pcVar9,&local_90,0xc);
            }
          }
        }
        iVar1 = 0;
      }
    }
    else {
      iVar1 = 0;
    }
  }
LAB_100017d58:
  _MediaAnalysisLogLevel();
  if (5 < iVar1) {
    uVar10 = PTR__VCPLogToOSLogType_1002ff988[6];
    puVar6 = PTR___os_log_default_1003006f0;
    _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar10);
    if ((int)puVar6 != 0) {
      local_90 = (uint)DAT_100280f90;
      local_8c = param_1;
      __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar10,
                    "  [%@] Failed to store analysis",&local_90,0xc);
    }
  }
LAB_100017dbc:
  (**(code **)(param_1 + 0x10))(param_1);
  if (*(long *)PTR____stack_chk_guard_1003006c8 != local_68) {
                    /* WARNING: Subroutine does not return */
    ___stack_chk_fail(0);
  }
  return;
}

