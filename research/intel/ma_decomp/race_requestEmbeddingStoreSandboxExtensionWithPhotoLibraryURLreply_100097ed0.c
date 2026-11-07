
/* WARNING: Function: _objc_retain_x2 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_retain_x20 replaced with injection: _objc_retain_fixup */
/* WARNING: Function: _objc_claimAutoreleasedReturnValue replaced with injection: _objc_retain_fixup
    */
/* WARNING: Function: _objc_release_x23 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x21 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x20 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x19 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x22 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x25 replaced with injection: _objc_release_fixup */
/* WARNING: Function: _objc_release_x24 replaced with injection: _objc_release_fixup */
/* Function Stack Size: 0x20 bytes */

void MADEmbeddingStoreClientHandler::requestEmbeddingStoreSandboxExtensionWithPhotoLibraryURL_reply_
               (ID param_1,SEL param_2,ID param_3,ID param_4,undefined4 param_5)

{
  undefined1 uVar1;
  undefined *puVar2;
  ID IVar3;
  ID IVar4;
  void *pvVar5;
  ID *pIVar6;
  undefined8 *puVar7;
  void *pvVar8;
  undefined8 uVar9;
  uint local_90;
  ID local_8c;
  undefined8 local_78;
  ID local_70;
  undefined8 local_68;
  ID local_60;
  long local_58;
  
  local_58 = *(long *)PTR____stack_chk_guard_1003006c8;
  IVar3 = param_1;
  _MediaAnalysisLogLevel();
  if (5 < (int)IVar3) {
    uVar1 = PTR__VCPLogToOSLogType_1002ff988[6];
    puVar2 = PTR___os_log_default_1003006f0;
    _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1);
    if ((int)puVar2 != 0) {
      local_90 = local_90 & 0xffff0000;
      __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                    "[MADEmbeddingStoreClientHandler] Received sandbox extension request for embedding store file"
                    ,&local_90,2);
    }
  }
  IVar3 = objc_stub::FUN_10021f420((ID)PTR__OBJC_CLASS___MADEmbeddingStore_1002fe818,param_1);
  if (IVar3 == 0) {
    _MediaAnalysisLogLevel();
    if (2 < (int)IVar3) {
      uVar1 = PTR__VCPLogToOSLogType_1002ff988[3];
      puVar2 = PTR___os_log_default_1003006f0;
      _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1);
      if ((int)puVar2 != 0) {
        local_90 = local_90 & 0xffff0000;
        __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                      "[MADEmbeddingStoreClientHandler] Failed to find EmbeddingStore directory",
                      &local_90,2);
      }
    }
    puVar2 = PTR__OBJC_CLASS___NSError_1002ffdc0;
    uVar9 = *(undefined8 *)PTR__NSOSStatusErrorDomain_1002ffd90;
    local_68 = *(undefined8 *)PTR__NSLocalizedDescriptionKey_1002ffd80;
    local_60 = objc_stub::stringWithFormat_
                         ((ID)PTR__OBJC_CLASS___NSString_1002ffe38,
                          &cf__MADEmbeddingStoreClientHandler_FailedtofindEmbeddingStoredirectory);
    pIVar6 = &local_60;
    puVar7 = &local_68;
  }
  else {
    pvVar8 = *(void **)PTR__APP_SANDBOX_READ_WRITE_1003006a8;
    IVar4 = IVar3;
    _objc_retainAutorelease();
    IVar4 = objc_stub::UTF8String(IVar4);
    _sandbox_extension_issue_file(pvVar8,IVar4,0);
    pvVar5 = pvVar8;
    _MediaAnalysisLogLevel();
    if (pvVar8 != (void *)0x0) {
      if (6 < (int)pvVar5) {
        uVar1 = PTR__VCPLogToOSLogType_1002ff988[7];
        puVar2 = PTR___os_log_default_1003006f0;
        _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1);
        if ((int)puVar2 != 0) {
          local_90 = (uint)DAT_100280f90;
          local_8c = IVar3;
          __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                        "[MADEmbeddingStoreClientHandler] Issuing sandbox extension for %@",
                        &local_90,0xc);
        }
      }
      IVar3 = objc_stub::stringWithUTF8String_((ID)PTR__OBJC_CLASS___NSString_1002ffe38,pvVar8);
      (**(code **)(param_1 + 0x10))(param_1,IVar3,0);
      _free(pvVar8);
      goto LAB_100098214;
    }
    if (2 < (int)pvVar5) {
      uVar1 = PTR__VCPLogToOSLogType_1002ff988[3];
      puVar2 = PTR___os_log_default_1003006f0;
      _os_log_type_enabled(PTR___os_log_default_1003006f0,uVar1);
      if ((int)puVar2 != 0) {
        local_90 = (uint)DAT_100280f90;
        local_8c = IVar3;
        __os_log_impl(0x100000000,PTR___os_log_default_1003006f0,uVar1,
                      "[MADEmbeddingStoreClientHandler] Failed to issue sandbox extension on %@",
                      &local_90,0xc);
      }
    }
    puVar2 = PTR__OBJC_CLASS___NSError_1002ffdc0;
    uVar9 = *(undefined8 *)PTR__NSOSStatusErrorDomain_1002ffd90;
    local_78 = *(undefined8 *)PTR__NSLocalizedDescriptionKey_1002ffd80;
    local_70 = objc_stub::stringWithFormat_
                         ((ID)PTR__OBJC_CLASS___NSString_1002ffe38,
                          &cf__MADEmbeddingStoreClientHandler_Failedtoissuesandboxextensionon__);
    pIVar6 = &local_70;
    puVar7 = &local_78;
  }
  IVar3 = objc_stub::dictionaryWithObjects_forKeys_count_
                    ((ID)PTR__OBJC_CLASS___NSDictionary_100300730,pIVar6,puVar7,1);
  IVar3 = objc_stub::errorWithDomain_code_userInfo_((ID)puVar2,uVar9,0xffffffffffffffee,IVar3);
  (**(code **)(param_1 + 0x10))(param_1,0,IVar3);
LAB_100098214:
  if (*(long *)PTR____stack_chk_guard_1003006c8 == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  ___stack_chk_fail(0);
}

