## CoreSpeechFoundation

> `/System/Library/PrivateFrameworks/CoreSpeechFoundation.framework/CoreSpeechFoundation`

```diff

-3600.70.47.11.1
-  __TEXT.__text: 0xcbfc4
-  __TEXT.__objc_methlist: 0xd9e8
+3605.25.1.0.0
+  __TEXT.__text: 0xcd8fc
+  __TEXT.__objc_methlist: 0xdb18
   __TEXT.__const: 0xfe8
   __TEXT.__dlopen_cstrs: 0x24a
   __TEXT.__constg_swiftt: 0x2cc
   __TEXT.__swift5_typeref: 0x1dc
   __TEXT.__swift5_builtin: 0x28
   __TEXT.__swift5_types: 0x30
-  __TEXT.__cstring: 0x1685c
+  __TEXT.__cstring: 0x16b38
   __TEXT.__swift5_reflstr: 0x278
   __TEXT.__swift5_assocty: 0x78
   __TEXT.__swift5_fieldmd: 0x250
   __TEXT.__swift5_proto: 0x74
   __TEXT.__swift5_mpenum: 0x8
-  __TEXT.__gcc_except_tab: 0x3cec
-  __TEXT.__oslogstring: 0x11a3e
-  __TEXT.__unwind_info: 0x3e08
+  __TEXT.__gcc_except_tab: 0x3d24
+  __TEXT.__oslogstring: 0x11c58
+  __TEXT.__unwind_info: 0x3e88
   __TEXT.__eh_frame: 0x270
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x2840
-  __DATA_CONST.__objc_classlist: 0x748
+  __DATA_CONST.__const: 0x28c8
+  __DATA_CONST.__objc_classlist: 0x750
   __DATA_CONST.__objc_catlist: 0x58
-  __DATA_CONST.__objc_protolist: 0x220
+  __DATA_CONST.__objc_protolist: 0x228
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__weak_got: 0x18
-  __DATA_CONST.__objc_selrefs: 0x7508
+  __DATA_CONST.__objc_selrefs: 0x7590
   __DATA_CONST.__objc_protorefs: 0x30
-  __DATA_CONST.__objc_superrefs: 0x568
+  __DATA_CONST.__objc_superrefs: 0x570
   __DATA_CONST.__objc_arraydata: 0x1c8
-  __DATA_CONST.__got: 0x1038
-  __AUTH_CONST.__const: 0x1ae0
-  __AUTH_CONST.__cfstring: 0x95e0
-  __AUTH_CONST.__objc_const: 0x14e50
+  __DATA_CONST.__got: 0x1040
+  __AUTH_CONST.__const: 0x1b40
+  __AUTH_CONST.__cfstring: 0x9a60
+  __AUTH_CONST.__objc_const: 0x15018
   __AUTH_CONST.__weak_auth_got: 0x28
   __AUTH_CONST.__objc_dictobj: 0x1e0
   __AUTH_CONST.__objc_intobj: 0x4b0

   __AUTH_CONST.__objc_floatobj: 0x1a0
   __AUTH_CONST.__auth_got: 0xfc0
   __AUTH_CONST.__auth_ptr: 0x0
-  __AUTH.__objc_data: 0x1c8
-  __DATA.__objc_ivar: 0xd9c
-  __DATA.__data: 0x1a00
-  __DATA.__bss: 0x1580
+  __AUTH.__objc_data: 0x218
+  __DATA.__objc_ivar: 0xdb0
+  __DATA.__data: 0x1a60
+  __DATA.__bss: 0x15b0
   __DATA_DIRTY.__objc_data: 0x47c0
   __DATA_DIRTY.__data: 0x2e8
   __DATA_DIRTY.__bss: 0x608

   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 5244
-  Symbols:   9844
-  CStrings:  3751
+  Functions: 5276
+  Symbols:   9902
+  CStrings:  3793
 
Symbols:
+ +[CSAudioConsumingStateMonitor sharedInstance]
+ +[CSAudioStartStreamOption getRecordingStartTime:useMachContinuousTime:]
+ +[CSAudioStartStreamOption getRecordingStartTime:useMachContinuousTime:isVoiceTriggered:voiceTriggerInfo:useVoiceTriggerStartTime:]
+ +[CSUtils isAudioBufferPoolEnabled]
+ +[CSUtils isBargeInDisabled]
+ +[CSUtils isContinuousConversationDisabledInSiriX]
+ +[CSUtils isPerceptionBasedSpeakerChangeDetectionEnabled]
+ +[CSUtils(AudioDevice) isCarPlayRecordRoute:]
+ +[CSUtils(Directory) _clearLogFilesInDirectory:matchingPatterns:exceedNumber:outError:]
+ +[CSUtils(Directory) clearLogFilesInDirectory:matchingPatterns:exceedNumber:]
+ +[CSUtils(Directory) clearLogFilesInDirectorySync:matchingPatterns:exceedNumber:outError:]
+ -[CSAudioConsumingStateMonitor _setAudioConsumingActive:]
+ -[CSAudioConsumingStateMonitor _startMonitoringWithQueue:]
+ -[CSAudioConsumingStateMonitor _stopMonitoring]
+ -[CSAudioConsumingStateMonitor backdateSessionStartBySeconds:]
+ -[CSAudioConsumingStateMonitor init]
+ -[CSAudioConsumingStateMonitor isAudioConsumingSessionActive]
+ -[CSAudioConsumingStateMonitor notifyAudioConsumingSessionDidStart]
+ -[CSAudioConsumingStateMonitor notifyAudioConsumingSessionDidStop]
+ -[CSAudioRecordContext isInitialRequest]
+ -[CSAudioSpectralMeter setNormalizationEnabled:]
+ -[CSExclaveRecordClient skipProcessingRaiseToSpeakAOE:]
+ GCC_except_table1350
+ GCC_except_table1381
+ GCC_except_table1466
+ GCC_except_table1467
+ GCC_except_table1468
+ GCC_except_table1469
+ GCC_except_table1470
+ GCC_except_table1471
+ GCC_except_table1473
+ GCC_except_table1485
+ GCC_except_table1490
+ GCC_except_table1492
+ GCC_except_table1493
+ GCC_except_table1496
+ GCC_except_table1497
+ GCC_except_table1498
+ GCC_except_table1500
+ GCC_except_table1504
+ GCC_except_table1516
+ GCC_except_table1910
+ GCC_except_table1911
+ GCC_except_table1914
+ GCC_except_table1918
+ GCC_except_table1922
+ GCC_except_table1924
+ GCC_except_table1937
+ GCC_except_table1939
+ GCC_except_table1940
+ GCC_except_table1955
+ GCC_except_table1961
+ GCC_except_table2049
+ GCC_except_table2054
+ GCC_except_table2117
+ GCC_except_table2129
+ GCC_except_table2171
+ GCC_except_table2172
+ GCC_except_table2174
+ GCC_except_table2175
+ GCC_except_table2181
+ GCC_except_table2192
+ GCC_except_table2199
+ GCC_except_table2242
+ GCC_except_table2260
+ GCC_except_table2339
+ GCC_except_table2449
+ GCC_except_table2484
+ GCC_except_table2640
+ GCC_except_table2644
+ GCC_except_table2723
+ GCC_except_table2734
+ GCC_except_table2736
+ GCC_except_table2741
+ GCC_except_table2743
+ GCC_except_table2756
+ GCC_except_table2763
+ GCC_except_table2765
+ GCC_except_table2783
+ GCC_except_table2804
+ GCC_except_table2842
+ GCC_except_table2899
+ GCC_except_table2901
+ GCC_except_table2902
+ GCC_except_table3064
+ GCC_except_table3205
+ GCC_except_table3213
+ GCC_except_table3231
+ GCC_except_table3235
+ GCC_except_table3237
+ GCC_except_table3238
+ GCC_except_table3274
+ GCC_except_table328
+ GCC_except_table3280
+ GCC_except_table333
+ GCC_except_table3341
+ GCC_except_table3345
+ GCC_except_table336
+ GCC_except_table3400
+ GCC_except_table3412
+ GCC_except_table3416
+ GCC_except_table3423
+ GCC_except_table3435
+ GCC_except_table3459
+ GCC_except_table3460
+ GCC_except_table3461
+ GCC_except_table3462
+ GCC_except_table3487
+ GCC_except_table3500
+ GCC_except_table3670
+ GCC_except_table3730
+ GCC_except_table3744
+ GCC_except_table3786
+ GCC_except_table3816
+ GCC_except_table3817
+ GCC_except_table3819
+ GCC_except_table3822
+ GCC_except_table3823
+ GCC_except_table3847
+ GCC_except_table3849
+ GCC_except_table3853
+ GCC_except_table3855
+ GCC_except_table3860
+ GCC_except_table3886
+ GCC_except_table390
+ GCC_except_table3912
+ GCC_except_table3933
+ GCC_except_table3953
+ GCC_except_table3954
+ GCC_except_table3955
+ GCC_except_table3956
+ GCC_except_table3966
+ GCC_except_table398
+ GCC_except_table4057
+ GCC_except_table4067
+ GCC_except_table4069
+ GCC_except_table4072
+ GCC_except_table4075
+ GCC_except_table4076
+ GCC_except_table4079
+ GCC_except_table4080
+ GCC_except_table4084
+ GCC_except_table4091
+ GCC_except_table4097
+ GCC_except_table4098
+ GCC_except_table4100
+ GCC_except_table4102
+ GCC_except_table4103
+ GCC_except_table4105
+ GCC_except_table4106
+ GCC_except_table4109
+ GCC_except_table4110
+ GCC_except_table4113
+ GCC_except_table4114
+ GCC_except_table4115
+ GCC_except_table4117
+ GCC_except_table4118
+ GCC_except_table4119
+ GCC_except_table4121
+ GCC_except_table4122
+ GCC_except_table4124
+ GCC_except_table4125
+ GCC_except_table4126
+ GCC_except_table4127
+ GCC_except_table4155
+ GCC_except_table4205
+ GCC_except_table4209
+ GCC_except_table4260
+ GCC_except_table4261
+ GCC_except_table4268
+ GCC_except_table4295
+ GCC_except_table4298
+ GCC_except_table4306
+ GCC_except_table4308
+ GCC_except_table4320
+ GCC_except_table4329
+ GCC_except_table4331
+ GCC_except_table4332
+ GCC_except_table4333
+ GCC_except_table4335
+ GCC_except_table4336
+ GCC_except_table4337
+ GCC_except_table4339
+ GCC_except_table4341
+ GCC_except_table4342
+ GCC_except_table4343
+ GCC_except_table4344
+ GCC_except_table4345
+ GCC_except_table4346
+ GCC_except_table4359
+ GCC_except_table4366
+ GCC_except_table4379
+ GCC_except_table4380
+ GCC_except_table4382
+ GCC_except_table4383
+ GCC_except_table4385
+ GCC_except_table4387
+ GCC_except_table4388
+ GCC_except_table4389
+ GCC_except_table4394
+ GCC_except_table4396
+ GCC_except_table4400
+ GCC_except_table4401
+ GCC_except_table4431
+ GCC_except_table4543
+ GCC_except_table4550
+ GCC_except_table4633
+ GCC_except_table4700
+ GCC_except_table4710
+ GCC_except_table4766
+ GCC_except_table4767
+ GCC_except_table4768
+ GCC_except_table4770
+ GCC_except_table4771
+ GCC_except_table4772
+ GCC_except_table4773
+ GCC_except_table4774
+ GCC_except_table4775
+ GCC_except_table4777
+ GCC_except_table4778
+ GCC_except_table4780
+ GCC_except_table4782
+ GCC_except_table4783
+ GCC_except_table4785
+ GCC_except_table4821
+ GCC_except_table4887
+ GCC_except_table4892
+ GCC_except_table4933
+ GCC_except_table4999
+ GCC_except_table504
+ GCC_except_table537
+ GCC_except_table574
+ GCC_except_table577
+ GCC_except_table582
+ GCC_except_table600
+ GCC_except_table668
+ GCC_except_table672
+ GCC_except_table677
+ GCC_except_table679
+ GCC_except_table842
+ GCC_except_table849
+ GCC_except_table913
+ GCC_except_table920
+ GCC_except_table937
+ GCC_except_table945
+ GCC_except_table949
+ GCC_except_table954
+ GCC_except_table958
+ GCC_except_table972
+ _CSAudioPoolCleanup
+ _CSAudioPoolDataWithBytes
+ _CSSupportsCompanionRuntime
+ _OBJC_CLASS_$_CSAudioConsumingStateMonitor
+ _OBJC_IVAR_$_CSAudioConsumingStateMonitor._audioConsumingActive
+ _OBJC_IVAR_$_CSAudioConsumingStateMonitor._audioConsumingStartHostTime
+ _OBJC_IVAR_$_CSAudioConsumingStateMonitor._lock
+ _OBJC_IVAR_$_CSAudioPowerProvider._cachedSelfTapIOBufferDurationOverride
+ _OBJC_IVAR_$_CSAudioPowerProvider._spectralNormalizationEnabled
+ _OBJC_METACLASS_$_CSAudioConsumingStateMonitor
+ __OBJC_$_CLASS_METHODS_CSAudioConsumingStateMonitor
+ __OBJC_$_INSTANCE_METHODS_CSAudioConsumingStateMonitor
+ __OBJC_$_INSTANCE_VARIABLES_CSAudioConsumingStateMonitor
+ __OBJC_$_PROP_LIST_CSAudioConsumingStateMonitor
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_CSAudioConsumingStateMonitorProviding
+ __OBJC_$_PROTOCOL_METHOD_TYPES_CSAudioConsumingStateMonitorProviding
+ __OBJC_$_PROTOCOL_REFS_CSAudioConsumingStateMonitorProviding
+ __OBJC_CLASS_PROTOCOLS_$_CSAudioConsumingStateMonitor
+ __OBJC_CLASS_RO_$_CSAudioConsumingStateMonitor
+ __OBJC_LABEL_PROTOCOL_$_CSAudioConsumingStateMonitorProviding
+ __OBJC_METACLASS_RO_$_CSAudioConsumingStateMonitor
+ __OBJC_PROTOCOL_$_CSAudioConsumingStateMonitorProviding
+ __ZN24CSAudioSpectralMeterImpl14_processWindowEPf
+ __ZN24CSAudioSpectralMeterImpl18resetNormalizationEv
+ __ZN24CSAudioSpectralMeterImpl23setNormalizationEnabledEb
+ ___46+[CSAudioConsumingStateMonitor sharedInstance]_block_invoke
+ ___50+[CSUtils isContinuousConversationDisabledInSiriX]_block_invoke
+ ___57-[CSAudioConsumingStateMonitor _setAudioConsumingActive:]_block_invoke
+ ___77+[CSUtils(Directory) clearLogFilesInDirectory:matchingPatterns:exceedNumber:]_block_invoke
+ ___87+[CSUtils(Directory) _clearLogFilesInDirectory:matchingPatterns:exceedNumber:outError:]_block_invoke
+ ___87+[CSUtils(Directory) _clearLogFilesInDirectory:matchingPatterns:exceedNumber:outError:]_block_invoke_2
+ ____ensurePools_block_invoke
+ ___block_descriptor_40_e8_32s_e25_q24?0"NSURL"8"NSURL"16ls32l8
+ __ensurePools.onceToken
+ _isContinuousConversationDisabledInSiriX.onceToken
+ _kCSDiagnosticReporterAudioConsumingSessionStale
+ _sLargePool
+ _sSmallPool
- +[CSUtils isSiriDSPTurnedOn]
- +[CSUtils(Directory) clearLogFilesInDirectory:matchingPattern:exceedNumber:]
- GCC_except_table1343
- GCC_except_table1374
- GCC_except_table1453
- GCC_except_table1457
- GCC_except_table1458
- GCC_except_table1459
- GCC_except_table1460
- GCC_except_table1462
- GCC_except_table1463
- GCC_except_table1464
- GCC_except_table1475
- GCC_except_table1476
- GCC_except_table1483
- GCC_except_table1487
- GCC_except_table1488
- GCC_except_table1489
- GCC_except_table1491
- GCC_except_table1495
- GCC_except_table1507
- GCC_except_table1901
- GCC_except_table1902
- GCC_except_table1903
- GCC_except_table1904
- GCC_except_table1905
- GCC_except_table1909
- GCC_except_table1915
- GCC_except_table1928
- GCC_except_table1931
- GCC_except_table1946
- GCC_except_table1952
- GCC_except_table2040
- GCC_except_table2045
- GCC_except_table2105
- GCC_except_table2115
- GCC_except_table2157
- GCC_except_table2158
- GCC_except_table2160
- GCC_except_table2161
- GCC_except_table2167
- GCC_except_table2178
- GCC_except_table2185
- GCC_except_table2228
- GCC_except_table2246
- GCC_except_table2325
- GCC_except_table2435
- GCC_except_table2470
- GCC_except_table2626
- GCC_except_table2630
- GCC_except_table2709
- GCC_except_table2720
- GCC_except_table2722
- GCC_except_table2727
- GCC_except_table2729
- GCC_except_table2742
- GCC_except_table2749
- GCC_except_table2751
- GCC_except_table2769
- GCC_except_table2790
- GCC_except_table2828
- GCC_except_table2885
- GCC_except_table2887
- GCC_except_table2888
- GCC_except_table3050
- GCC_except_table3191
- GCC_except_table3199
- GCC_except_table3207
- GCC_except_table3217
- GCC_except_table3223
- GCC_except_table3224
- GCC_except_table325
- GCC_except_table3260
- GCC_except_table3266
- GCC_except_table332
- GCC_except_table3327
- GCC_except_table3331
- GCC_except_table335
- GCC_except_table3386
- GCC_except_table3398
- GCC_except_table3402
- GCC_except_table3409
- GCC_except_table3418
- GCC_except_table3441
- GCC_except_table3442
- GCC_except_table3443
- GCC_except_table3444
- GCC_except_table3469
- GCC_except_table3482
- GCC_except_table3641
- GCC_except_table3701
- GCC_except_table3715
- GCC_except_table3757
- GCC_except_table3758
- GCC_except_table3788
- GCC_except_table3790
- GCC_except_table3793
- GCC_except_table3794
- GCC_except_table3795
- GCC_except_table3818
- GCC_except_table3820
- GCC_except_table3825
- GCC_except_table3826
- GCC_except_table3829
- GCC_except_table3880
- GCC_except_table389
- GCC_except_table3901
- GCC_except_table3921
- GCC_except_table3922
- GCC_except_table3923
- GCC_except_table3924
- GCC_except_table393
- GCC_except_table3934
- GCC_except_table4025
- GCC_except_table4026
- GCC_except_table4035
- GCC_except_table4037
- GCC_except_table4038
- GCC_except_table4039
- GCC_except_table4040
- GCC_except_table4043
- GCC_except_table4044
- GCC_except_table4047
- GCC_except_table4048
- GCC_except_table4049
- GCC_except_table4050
- GCC_except_table4051
- GCC_except_table4052
- GCC_except_table4053
- GCC_except_table4054
- GCC_except_table4055
- GCC_except_table4059
- GCC_except_table4065
- GCC_except_table4066
- GCC_except_table4068
- GCC_except_table4073
- GCC_except_table4074
- GCC_except_table4077
- GCC_except_table4078
- GCC_except_table4089
- GCC_except_table4092
- GCC_except_table4093
- GCC_except_table4094
- GCC_except_table4095
- GCC_except_table4123
- GCC_except_table4173
- GCC_except_table4177
- GCC_except_table4228
- GCC_except_table4229
- GCC_except_table4236
- GCC_except_table4237
- GCC_except_table4238
- GCC_except_table4239
- GCC_except_table4241
- GCC_except_table4242
- GCC_except_table4263
- GCC_except_table4265
- GCC_except_table4266
- GCC_except_table4267
- GCC_except_table4272
- GCC_except_table4275
- GCC_except_table4276
- GCC_except_table4288
- GCC_except_table4300
- GCC_except_table4309
- GCC_except_table4310
- GCC_except_table4311
- GCC_except_table4312
- GCC_except_table4313
- GCC_except_table4314
- GCC_except_table4316
- GCC_except_table4318
- GCC_except_table4319
- GCC_except_table4321
- GCC_except_table4323
- GCC_except_table4325
- GCC_except_table4327
- GCC_except_table4347
- GCC_except_table4356
- GCC_except_table4362
- GCC_except_table4364
- GCC_except_table4368
- GCC_except_table4369
- GCC_except_table4399
- GCC_except_table4511
- GCC_except_table4518
- GCC_except_table4601
- GCC_except_table4668
- GCC_except_table4678
- GCC_except_table4734
- GCC_except_table4735
- GCC_except_table4736
- GCC_except_table4738
- GCC_except_table4739
- GCC_except_table4740
- GCC_except_table4741
- GCC_except_table4742
- GCC_except_table4743
- GCC_except_table4746
- GCC_except_table4748
- GCC_except_table4750
- GCC_except_table4751
- GCC_except_table4789
- GCC_except_table4855
- GCC_except_table4860
- GCC_except_table4901
- GCC_except_table4967
- GCC_except_table502
- GCC_except_table536
- GCC_except_table573
- GCC_except_table576
- GCC_except_table581
- GCC_except_table599
- GCC_except_table667
- GCC_except_table671
- GCC_except_table676
- GCC_except_table678
- GCC_except_table841
- GCC_except_table848
- GCC_except_table911
- GCC_except_table919
- GCC_except_table934
- GCC_except_table940
- GCC_except_table946
- GCC_except_table951
- GCC_except_table955
- GCC_except_table971
- ___76+[CSUtils(Directory) clearLogFilesInDirectory:matchingPattern:exceedNumber:]_block_invoke
- _isAudioStreamProvidingEnabled.result
CStrings:
+ "%s #output_stream Failed to connect source node to main mixer: %@"
+ "%s Acquiring listening mic indicator lock from : %{public}@ %@"
+ "%s Acquiring recordModeLock from : %{public}@"
+ "%s Audio consuming session active for %.1fs with no stop notification; resetting stale state"
+ "%s CSAudioProvider[%{public}@]:%{public}@ ask for audio hold stream from %{public}@ for %{public}.2f secs"
+ "%s Clearing listening mic indicator lock property, locks = %tu"
+ "%s Could not read directory %{public}@: %{public}@"
+ "%s Force releasing all %tu listening mic indicator locks"
+ "%s Releasing listening mic indicator lock from : %{public}@"
+ "%s Releasing listening mic indicator lock from : %{public}@ UUID = %@"
+ "%s Releasing listening mic indicator lock from = %{public}@"
+ "%s Releasing recordModeLock from : %{public}@"
+ "%s Releasing recordModeLock from : %{public}@ UUID = %@"
+ "%s Setting listening mic indicator lock property, locks = %tu"
+ "%s Spectral meter normalization enabled (CarPlay path)"
+ "%s Updating audio device info : recordRoute[%{public}@] deviceId[%{public}@] isRemoteDevice[%d]"
+ "+[CSUtils(Directory) _clearLogFilesInDirectory:matchingPatterns:exceedNumber:outError:]"
+ "-[CSAudioConsumingStateMonitor isAudioConsumingSessionActive]"
+ "-[CSAudioProvider _forceReleaseAllListeningMicIndicatorLocks]"
+ "IntutiveConvAudioCapture"
+ "IntutiveConvAudioCaptureHolding"
+ "LOCALE_ACW_SA"
+ "LOCALE_AFB_AE"
+ "LOCALE_AJP_JO"
+ "LOCALE_AJP_PS"
+ "LOCALE_APC_LB"
+ "LOCALE_APC_SY"
+ "LOCALE_ARS_SA"
+ "LOCALE_ARZ_EG"
+ "LOCALE_AZ_AZ"
+ "LOCALE_BE_BY"
+ "LOCALE_BG_BG"
+ "LOCALE_BN_IN"
+ "LOCALE_ET_EE"
+ "LOCALE_GU_IN"
+ "LOCALE_HI_LATN"
+ "LOCALE_IS_IS"
+ "LOCALE_KN_IN"
+ "LOCALE_ML_IN"
+ "LOCALE_MR_IN"
+ "LOCALE_PA_IN"
+ "LOCALE_SL_SI"
+ "LOCALE_SR_RS"
+ "LOCALE_TA_IN"
+ "LOCALE_TE_IN"
+ "LOCALE_UR_IN"
+ "LOCALE_UZ_UZ"
+ "LocalAttendingInitiator"
+ "LocalAttendingInitiatorHolding"
+ "NotHeld"
+ "OpportuneSpeakListener"
+ "OpportuneSpeakListenerHolding"
+ "SiriHolding"
+ "VoiceTriggerTraining"
+ "audioConsumingSessionStale"
- "%s Acquiring listening mic indicator lock from : %d %@"
- "%s Acquiring recordModeLock from : %d"
- "%s CSAudioProvider[%{public}@]:%{public}@ ask for audio hold stream for %{public}f"
- "%s Clearing listening mic indicator lock property"
- "%s Releasing listening mic indicator lock UUID = %@"
- "%s Releasing listening mic indicator lock from : %d"
- "%s Releasing listening mic indicator lock from = %d"
- "%s Releasing recordModeLock from : %d"
- "%s Releasing recordModeLock lock UUID = %@"
- "%s Setting listening mic indicator lock property"
- "Conclaves"
- "com_apple_audiomxd_conclave"
- "support_audio_streaming"
```
