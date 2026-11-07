## AppleCameraISPExclaveKitServices

> `/System/Library/PrivateFrameworks/AppleCameraISPExclaveKitServices.framework/AppleCameraISPExclaveKitServices`

```diff

-20.77.1.0.0
-  __TEXT.__text: 0x30f50
+20.105.6.0.0
+  __TEXT.__text: 0x32ca4
   __TEXT.__const: 0x2fa
-  __TEXT.__gcc_except_tab: 0x8c8
-  __TEXT.__oslogstring: 0x434e
-  __TEXT.__cstring: 0x8896
+  __TEXT.__gcc_except_tab: 0x934
+  __TEXT.__oslogstring: 0x44fe
+  __TEXT.__cstring: 0x8d16
   __TEXT.__swift5_typeref: 0x2e
   __TEXT.__constg_swiftt: 0x48
   __TEXT.__swift5_fieldmd: 0x10
   __TEXT.__swift5_types: 0x4
-  __TEXT.__unwind_info: 0x9a8
+  __TEXT.__unwind_info: 0x9d8
   __TEXT.__eh_frame: 0x70
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
-  __DATA_CONST.__const: 0x1128
+  __DATA_CONST.__const: 0x1210
   __DATA_CONST.__objc_classlist: 0x8
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__weak_got: 0x8

   __AUTH_CONST.__cfstring: 0x5e0
   __AUTH_CONST.__objc_const: 0x90
   __AUTH_CONST.__weak_auth_got: 0x28
-  __AUTH_CONST.__auth_got: 0x588
+  __AUTH_CONST.__auth_got: 0x590
   __AUTH_CONST.__auth_ptr: 0x0
   __AUTH.__data: 0x98
   __DATA.__data: 0x118bd0

   - /usr/lib/swift/libswiftXPC.dylib
   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswiftos.dylib
-  Functions: 1176
-  Symbols:   772
-  CStrings:  808
+  Functions: 1197
+  Symbols:   783
+  CStrings:  828
 
Symbols:
+ __Z34ispExclaveKitCommandChInitScanModeP20sExclaveKitIspCmdHdr
+ __Z37ispExclaveKitCommandChGetGmcAnalyticsP20sExclaveKitIspCmdHdr
+ ____Z34ispExclaveKitCommandChInitScanModeP20sExclaveKitIspCmdHdr_block_invoke
+ ____Z37ispExclaveKitCommandChGetGmcAnalyticsP20sExclaveKitIspCmdHdr_block_invoke
+ ____ZL16decodeAnstResultI26sExclaveKitIspCmdChRunAnstEbP61applecamera_anstmodule_ispexclavecorechrunkitanstresultv150_sPT__block_invoke
+ ____ZL16decodeAnstResultI38sExclaveKitIspCmdChRunAnst__DeprecatedEbP61applecamera_anstmodule_ispexclavecorechrunkitanstresultv150_sPT__block_invoke
+ ____ZL30_ispExclaveKitCommandChRunAnstI26sExclaveKitIspCmdChRunAnstE27eIspExclaveKitCmdHandlerErrPT__block_invoke
+ ____ZL30_ispExclaveKitCommandChRunAnstI38sExclaveKitIspCmdChRunAnst__DeprecatedE27eIspExclaveKitCmdHandlerErrPT__block_invoke
+ _applecamera_attentionawarenessmodule_ekattentionawareness_getgmcanalytics
+ _applecamera_attentionawarenessmodule_ekattentionawareness_getgmcanalytics__result_get_success
+ _applecamera_attentionawarenessmodule_ekattentionawareness_initscanmode
+ _applecamera_attentionawarenessmodule_ekattentionawareness_initscanmode__result_get_success
+ _applecamera_attentionawarenessmodule_ekgmcanalyticsoutput__decode
+ _usleep
- GCC_except_table13
- ____Z29ispExclaveKitCommandChRunAnstP20sExclaveKitIspCmdHdr_block_invoke
- ____ZL16decodeAnstResultP61applecamera_anstmodule_ispexclavecorechrunkitanstresultv150_sP26sExclaveKitIspCmdChRunAnst_block_invoke
CStrings:
+ "%s:%d - [IR-EK] PCEMgr Finished (gmcRunResult=%u)\n"
+ "%s:%d - [IR-EK] getGmcAnalytics\n"
+ "%s:%d - [IR-EK] getGmcAnalytics Finished\n"
+ "%s:%d - [IR-EK] initScanMode\n"
+ "%s:%d - [IR-EK] initScanMode Finished\n"
+ "%s:%d - after calling off IDL (attempt %u)\n"
+ "%s:%d - before calling off IDL (attempt %u)\n"
+ "%s:%d - cmd[0x%x]: HW OutstandingRequestCount not drained after %u ms\n"
+ "%s:%d - cmd[0x%x]: HW drained after %u retries\n"
+ "%s:%d - get GMC analytics\n"
+ "%s:%d - init scan mode\n"
+ "ISP_EXCLAVEKIT_CMD_CH_GET_GMC_ANALYTICS"
+ "ISP_EXCLAVEKIT_CMD_CH_INIT_SCAN_MODE"
+ "TB_FATAL: invalid result returned from getGmcAnalytics"
+ "TB_FATAL: invalid result returned from getGmcAnalytics (%s:%d)\n"
+ "TB_FATAL: invalid result returned from initScanMode"
+ "TB_FATAL: invalid result returned from initScanMode (%s:%d)\n"
+ "_ispExclaveKitCommandChRunAnst"
+ "ispExclaveKitCommandChGetGmcAnalytics"
+ "ispExclaveKitCommandChInitScanMode"
+ "v248@?0{applecamera_attentionawarenessmodule_ekattentionawareness_getgmcanalytics__result_s=C(?={applecamera_exclavesispshared_exclavesisperror_s=Q}{applecamera_attentionawarenessmodule_ekgmcanalyticsoutput_s=BQ{applecamera_attentionawarenessmodule_gmccontrollerstatus_s=Q}QdQdddddBddddQBddddBdddddd})}8"
+ "v24@?0Q8r^{applecamera_anstmodule_anstfacev1502_s=II{applecamera_anstmodule_anstcategory2_s=Q}{applecamera_anstmodule_anstrect2_s=ffff}{applecamera_anstmodule_anstfaceposedegree_s=Q(?={?=I})}{applecamera_anstmodule_anstfaceposedegree_s=Q(?={?=I})}{applecamera_anstmodule_anstfaceposedegree_s=Q(?={?=I})}{applecamera_anstmodule_anstfaceposedegree_s=Q(?={?=I})}{applecamera_anstmodule_anstfaceposedegree_s=Q(?={?=I})}BfB{applecamera_anstmodule_anstconfidence_s=Q}{applecamera_anstmodule_anstconfidence_s=Q}{applecamera_anstmodule_anstconfidence_s=Q}{applecamera_anstmodule_anstconfidence_s=Q}{applecamera_anstmodule_anstconfidence_s=Q}{applecamera_anstmodule_anstconfidence_s=Q}{applecamera_anstmodule_anstconfidence_s=Q}}16"
+ "v24@?0{applecamera_attentionawarenessmodule_ekattentionawareness_channelrunpce__result_s=C(?={applecamera_exclavesispshared_exclavesisperror_s=Q}I)}8"
+ "v24@?0{applecamera_attentionawarenessmodule_ekattentionawareness_initscanmode__result_s=C(?={applecamera_exclavesispshared_exclavesisperror_s=Q}{applecamera_attentionawarenessmodule_ekinitscanmodeoutput_s=B})}8"
+ "v24@?0{applecamera_ispexclavekitshared_ekstreamingcontrol_off__result_s=C(?={applecamera_exclavesispshared_exclavesisperror_s=Q}B)}8"
- "%s:%d - [IR-EK] PCEMgr Finished\n"
- "ispExclaveKitCommandChRunAnst"
- "v24@?0Q8r^{applecamera_anstmodule_anstfacev1502_s=II{applecamera_anstmodule_anstcategory2_s=Q}{applecamera_anstmodule_anstrect2_s=ffff}{applecamera_anstmodule_anstfaceposedegree_s=Q(?={?=I})}{applecamera_anstmodule_anstfaceposedegree_s=Q(?={?=I})}{applecamera_anstmodule_anstfaceposedegree_s=Q(?={?=I})}{applecamera_anstmodule_anstfaceposedegree_s=Q(?={?=I})}{applecamera_anstmodule_anstfaceposedegree_s=Q(?={?=I})}BfB{applecamera_anstmodule_anstconfidence_s=Q}}16"
- "v24@?0{applecamera_attentionawarenessmodule_ekattentionawareness_channelrunpce__result_s=C(?={applecamera_exclavesispshared_exclavesisperror_s=Q}B)}8"
- "v24@?0{applecamera_ispexclavekitshared_ekstreamingcontrol_off__result_s=C(?={applecamera_exclavesispshared_exclavesisperror_s=Q})}8"
```
