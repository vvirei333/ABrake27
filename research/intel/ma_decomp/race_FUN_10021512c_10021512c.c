
/* WARNING: Function: _objc_claimAutoreleasedReturnValue replaced with injection: _objc_retain_fixup
    */
/* WARNING: Function: _objc_release_x19 replaced with injection: _objc_release_fixup */

undefined8 FUN_10021512c(ID *param_1)

{
  undefined4 local_30;
  ID local_2c;
  
  local_2c = objc_stub::FUN_10022eca0(*param_1);
  local_30 = (undefined4)DAT_100280f90;
  __os_log_error_impl(0x100000000,PTR___os_log_default_1003006f0,0x10,
                      "[%@] Failed to consume sandbox extension",&local_30,0xc);
  return 0;
}

