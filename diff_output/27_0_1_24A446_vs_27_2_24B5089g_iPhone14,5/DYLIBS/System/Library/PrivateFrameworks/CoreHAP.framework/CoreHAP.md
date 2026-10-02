## CoreHAP

> `/System/Library/PrivateFrameworks/CoreHAP.framework/CoreHAP`

```diff

-1493.1.5.1.1
-  __TEXT.__text: 0x2add7c
-  __TEXT.__objc_methlist: 0x18cc0
-  __TEXT.__const: 0x1240
+1516.0.0.0.0
+  __TEXT.__text: 0x2b5c04
+  __TEXT.__objc_methlist: 0x19548
+  __TEXT.__const: 0x13b0
   __TEXT.__dlopen_cstrs: 0x4e
-  __TEXT.__constg_swiftt: 0x960
-  __TEXT.__swift5_typeref: 0x3e4
+  __TEXT.__constg_swiftt: 0xa64
+  __TEXT.__swift5_typeref: 0x437
   __TEXT.__swift5_builtin: 0x50
-  __TEXT.__swift5_reflstr: 0x474
-  __TEXT.__swift5_fieldmd: 0x3f0
-  __TEXT.__swift5_assocty: 0xc0
-  __TEXT.__swift5_proto: 0x50
-  __TEXT.__swift5_types: 0x30
-  __TEXT.__cstring: 0x146d5
-  __TEXT.__oslogstring: 0x4514e
-  __TEXT.__swift5_capture: 0x288
-  __TEXT.__gcc_except_tab: 0x5eb8
-  __TEXT.__unwind_info: 0x77d0
+  __TEXT.__swift5_reflstr: 0x581
+  __TEXT.__swift5_fieldmd: 0x49c
+  __TEXT.__swift5_assocty: 0xd8
+  __TEXT.__swift5_proto: 0x5c
+  __TEXT.__swift5_types: 0x34
+  __TEXT.__cstring: 0x14b39
+  __TEXT.__oslogstring: 0x46185
+  __TEXT.__swift5_capture: 0x28c
+  __TEXT.__gcc_except_tab: 0x5eb4
+  __TEXT.__unwind_info: 0x7948
   __TEXT.__eh_frame: 0x1080
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x59e8
-  __DATA_CONST.__objc_classlist: 0xc20
+  __DATA_CONST.__const: 0x5920
+  __DATA_CONST.__objc_classlist: 0xc60
   __DATA_CONST.__objc_catlist: 0x30
-  __DATA_CONST.__objc_protolist: 0x3b0
+  __DATA_CONST.__objc_protolist: 0x3b8
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x8358
+  __DATA_CONST.__objc_selrefs: 0x8590
   __DATA_CONST.__objc_protorefs: 0x100
-  __DATA_CONST.__objc_superrefs: 0xa68
+  __DATA_CONST.__objc_superrefs: 0xaa8
   __DATA_CONST.__objc_arraydata: 0x200
-  __DATA_CONST.__got: 0x1030
-  __AUTH_CONST.__const: 0x14b8
-  __AUTH_CONST.__cfstring: 0x10080
-  __AUTH_CONST.__objc_const: 0x2b2c0
+  __DATA_CONST.__got: 0x1090
+  __AUTH_CONST.__const: 0x1568
+  __AUTH_CONST.__cfstring: 0x10360
+  __AUTH_CONST.__objc_const: 0x2c1f8
+  __AUTH_CONST.__weak_auth_got: 0x8
   __AUTH_CONST.__objc_intobj: 0x738
   __AUTH_CONST.__objc_floatobj: 0x20
   __AUTH_CONST.__objc_doubleobj: 0x40
   __AUTH_CONST.__objc_arrayobj: 0xc0
-  __AUTH_CONST.__auth_got: 0x1340
+  __AUTH_CONST.__auth_got: 0x13a0
   __AUTH_CONST.__auth_ptr: 0x0
-  __AUTH.__objc_data: 0x73b8
+  __AUTH.__objc_data: 0x7748
   __AUTH.__data: 0xb0
   __AUTH.__thread_vars: 0x30
   __AUTH.__thread_bss: 0x28
-  __DATA.__objc_ivar: 0x1924
-  __DATA.__data: 0x2da2
+  __DATA.__objc_ivar: 0x19ac
+  __DATA.__data: 0x2e52
   __DATA.__crash_info: 0x148
-  __DATA.__bss: 0xee0
+  __DATA.__bss: 0x10b0
   __DATA.__common: 0x8
   __DATA_DIRTY.__objc_data: 0xfc8
   __DATA_DIRTY.__data: 0x48
-  __DATA_DIRTY.__bss: 0xa8
+  __DATA_DIRTY.__bss: 0x78
   __DATA_DIRTY.__common: 0x20
   - /System/Library/Frameworks/CoreBluetooth.framework/CoreBluetooth
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation

   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 9860
-  Symbols:   16522
-  CStrings:  7181
+  Functions: 10041
+  Symbols:   16803
+  CStrings:  7255
 
Symbols:
+ +[HAP2ThreadNetworkUtil _eventQueue]
+ +[HAP2ThreadNetworkUtil _fetchMeshLocalPrefixFromXPC]
+ +[HAP2ThreadNetworkUtil _setSharedThreadClient:]
+ +[HAP2ThreadNetworkUtil forceRefreshMeshLocalPrefix]
+ +[HAP2ThreadNetworkUtil isNetworkLinkManagementEnabled]
+ +[HAP2ThreadNetworkUtil setupEventSubscriptions]
+ +[HAPAVCStreamingControlCommandWrapper parsedFromData:error:]
+ +[HAPAVCStreamingControlRequest parsedFromData:error:]
+ +[HAPAVCStreamingControlResponse parsedFromData:error:]
+ +[HAPAVCStreamingControlStatusWrapper parsedFromData:error:]
+ +[HAPAVCViewerRegistrationOperationWrapper parsedFromData:error:]
+ +[HAPContributingSensor parsedFromData:error:]
+ +[HAPSensorList parsedFromData:error:]
+ -[HAP2AccessoryAddressLists .cxx_destruct]
+ -[HAP2AccessoryAddressLists description]
+ -[HAP2AccessoryAddressLists initWithPrimary:secondary:]
+ -[HAP2AccessoryAddressLists isEmpty]
+ -[HAP2AccessoryAddressLists primary]
+ -[HAP2AccessoryAddressLists secondary]
+ -[HAP2AccessoryAddressLists setPrimary:]
+ -[HAP2AccessoryAddressLists setSecondary:]
+ -[HAP2AccessoryDeviceIPAddress copyWithZone:]
+ -[HAP2AccessoryDeviceIPAddress hash]
+ -[HAP2AccessoryDeviceIPAddress isEqual:]
+ -[HAP2AccessoryServer _controllerUnchecked]
+ -[HAP2AccessoryServer _setHasDiscoveryAdvertisementLockOnly:]
+ -[HAP2AccessoryServer(Paired) closeSessionWithCompletion:]
+ -[HAP2AccessoryServer(Unpaired) localPairingIdentityForPairingDriver:error:]
+ -[HAP2AccessoryServer(Unpaired) pairingDriver:saveRemoteECDSAPairingKey:forAccessoryIdentifier:error:]
+ -[HAP2AccessoryServer(Unpaired) pairingDriver:saveRemotePairingIdentity:error:]
+ -[HAP2AccessoryServerBrowser dealloc]
+ -[HAP2AccessoryServerBrowser localPairingIdentityForDeviceID:error:]
+ -[HAP2AccessoryServerController closeSessionWithCompletion:]
+ -[HAP2AccessoryServerController forceSessionExpired]
+ -[HAP2AccessoryServerController isReadingAttributeDatabase]
+ -[HAP2AccessoryServerController localPairingIdentityForSecureTransport:error:]
+ -[HAP2AccessoryServerController secureTransport:ecdsaLongTermPublicKeyForPeerWithIdentifier:error:]
+ -[HAP2AccessoryServerController secureTransport:localPairingIdentityForECDSAKeyPairSetupSession:error:]
+ -[HAP2AccessoryServerController secureTransport:remotePairingIdentityForDeviceID:error:]
+ -[HAP2AccessoryServerController setUnitTest_useHH2:]
+ -[HAP2AccessoryServerCoordinator _didDiscoverAccessory:fromMDNSEvent:completion:]
+ -[HAP2AccessoryServerDiscoveryBonjour lastKnownAccessoryInfoByServiceKey]
+ -[HAP2AccessoryServerEncodingThread _parseCharacteristics:isMultiTransportAccessory:error:]
+ -[HAP2AccessoryServerTransportCoAP addressResolverFactory]
+ -[HAP2AccessoryServerTransportCoAP setAddressResolverFactory:]
+ -[HAP2SerializedOperationQueue _applyCallerQoSToOperations:]
+ -[HAP2SerializedOperationQueue addConcurrentBlock:qos:]
+ -[HAPAVCStreamingControlCommandWrapper copyWithZone:]
+ -[HAPAVCStreamingControlCommandWrapper description]
+ -[HAPAVCStreamingControlCommandWrapper initWithValue:]
+ -[HAPAVCStreamingControlCommandWrapper init]
+ -[HAPAVCStreamingControlCommandWrapper isEqual:]
+ -[HAPAVCStreamingControlCommandWrapper parseFromData:error:]
+ -[HAPAVCStreamingControlCommandWrapper serializeWithError:]
+ -[HAPAVCStreamingControlCommandWrapper setValue:]
+ -[HAPAVCStreamingControlCommandWrapper value]
+ -[HAPAVCStreamingControlRequest .cxx_destruct]
+ -[HAPAVCStreamingControlRequest command]
+ -[HAPAVCStreamingControlRequest copyWithZone:]
+ -[HAPAVCStreamingControlRequest description]
+ -[HAPAVCStreamingControlRequest initWithSessionIdentifier:command:]
+ -[HAPAVCStreamingControlRequest init]
+ -[HAPAVCStreamingControlRequest isEqual:]
+ -[HAPAVCStreamingControlRequest parseFromData:error:]
+ -[HAPAVCStreamingControlRequest serializeWithError:]
+ -[HAPAVCStreamingControlRequest sessionIdentifier]
+ -[HAPAVCStreamingControlRequest setCommand:]
+ -[HAPAVCStreamingControlRequest setSessionIdentifier:]
+ -[HAPAVCStreamingControlResponse .cxx_destruct]
+ -[HAPAVCStreamingControlResponse copyWithZone:]
+ -[HAPAVCStreamingControlResponse description]
+ -[HAPAVCStreamingControlResponse initWithSessionIdentifier:status:]
+ -[HAPAVCStreamingControlResponse init]
+ -[HAPAVCStreamingControlResponse isEqual:]
+ -[HAPAVCStreamingControlResponse parseFromData:error:]
+ -[HAPAVCStreamingControlResponse serializeWithError:]
+ -[HAPAVCStreamingControlResponse sessionIdentifier]
+ -[HAPAVCStreamingControlResponse setSessionIdentifier:]
+ -[HAPAVCStreamingControlResponse setStatus:]
+ -[HAPAVCStreamingControlResponse status]
+ -[HAPAVCStreamingControlStatusWrapper copyWithZone:]
+ -[HAPAVCStreamingControlStatusWrapper description]
+ -[HAPAVCStreamingControlStatusWrapper initWithValue:]
+ -[HAPAVCStreamingControlStatusWrapper init]
+ -[HAPAVCStreamingControlStatusWrapper isEqual:]
+ -[HAPAVCStreamingControlStatusWrapper parseFromData:error:]
+ -[HAPAVCStreamingControlStatusWrapper serializeWithError:]
+ -[HAPAVCStreamingControlStatusWrapper setValue:]
+ -[HAPAVCStreamingControlStatusWrapper value]
+ -[HAPAVCViewerRegistrationOperationWrapper copyWithZone:]
+ -[HAPAVCViewerRegistrationOperationWrapper description]
+ -[HAPAVCViewerRegistrationOperationWrapper initWithValue:]
+ -[HAPAVCViewerRegistrationOperationWrapper init]
+ -[HAPAVCViewerRegistrationOperationWrapper isEqual:]
+ -[HAPAVCViewerRegistrationOperationWrapper parseFromData:error:]
+ -[HAPAVCViewerRegistrationOperationWrapper serializeWithError:]
+ -[HAPAVCViewerRegistrationOperationWrapper setValue:]
+ -[HAPAVCViewerRegistrationOperationWrapper value]
+ -[HAPAVCViewerRegistrationRequest initWithSessionIdentifier:viewerParticipantID:viewerNegotiationBlob:operation:]
+ -[HAPAVCViewerRegistrationRequest operation]
+ -[HAPAVCViewerRegistrationRequest setOperation:]
+ -[HAPAccessoryInfo hasAssignedProductPlan]
+ -[HAPAccessoryPairingRequest init]
+ -[HAPAccessoryPairingRequest setShouldAllowECDSAKeyPairSetup:]
+ -[HAPAccessoryPairingRequest shouldAllowECDSAKeyPairSetup]
+ -[HAPAccessoryServer disconnectWithCompletion:]
+ -[HAPAccessoryServer pairSetupLastError]
+ -[HAPAccessoryServer pairSetupM1ToM4Completed]
+ -[HAPAccessoryServer pairSetupM1ToM4DurationMS]
+ -[HAPAccessoryServer pairSetupM1ToM4Error]
+ -[HAPAccessoryServer pairSetupM5ToM6Completed]
+ -[HAPAccessoryServer pairSetupM5ToM6DurationMS]
+ -[HAPAccessoryServer pairSetupM5ToM6Error]
+ -[HAPAccessoryServer pairSetupWorkDurationMS]
+ -[HAPAccessoryServer setPairSetupLastError:]
+ -[HAPAccessoryServer setPairSetupM1ToM4Completed:]
+ -[HAPAccessoryServer setPairSetupM1ToM4DurationMS:]
+ -[HAPAccessoryServer setPairSetupM1ToM4Error:]
+ -[HAPAccessoryServer setPairSetupM5ToM6Completed:]
+ -[HAPAccessoryServer setPairSetupM5ToM6DurationMS:]
+ -[HAPAccessoryServer setPairSetupM5ToM6Error:]
+ -[HAPAccessoryServer setPairSetupWorkDurationMS:]
+ -[HAPAccessoryServer setTokenAuthCompleted:]
+ -[HAPAccessoryServer setTokenAuthDurationMS:]
+ -[HAPAccessoryServer setTokenAuthError:]
+ -[HAPAccessoryServer tokenAuthCompleted]
+ -[HAPAccessoryServer tokenAuthDurationMS]
+ -[HAPAccessoryServer tokenAuthError]
+ -[HAPAccessoryServerBrowser hasWiFiAdvertisementForHAP2AccessoryServerIdentifier:]
+ -[HAPAccessoryServerBrowser isThreadAccessoryDiscoveredWithAccessoryServerIdentifier:]
+ -[HAPAccessoryServerBrowserHAP2Adapter hasWiFiAdvertisementForHAP2AccessoryServerIdentifier:]
+ -[HAPAccessoryServerBrowserHAP2Adapter isThreadAccessoryDiscoveredWithAccessoryServerIdentifier:]
+ -[HAPAccessoryServerHAP2Adapter disconnectWithCompletion:]
+ -[HAPAccessoryServerIP disconnectWithCompletion:]
+ -[HAPAccessoryServerIP selfAddress]
+ -[HAPAccessoryServerNFC _captureProxPairSetupPhaseTimingsAsOf:pairSetupReachedM6:phaseError:]
+ -[HAPAccessoryServerNFC _ecdsaKeyPairSetupRefusalError]
+ -[HAPAccessoryServerNFC _finishTokenAuthOnWorkQueueAsOf:completed:error:]
+ -[HAPAccessoryServerNFC _resetProxPairSetupPhaseOutputs]
+ -[HAPAccessoryServerNFC finishTokenAuthAsOf:completed:error:]
+ -[HAPAccessoryServerNFC isDenylisted]
+ -[HAPAccessoryServerNFC nfcM4RecvTime]
+ -[HAPAccessoryServerNFC setDenylisted:]
+ -[HAPAccessoryServerNFC setNfcM4RecvTime:]
+ -[HAPAccessoryServerNFC setTokenAuthEndTime:]
+ -[HAPAccessoryServerNFC setTokenAuthStartTime:]
+ -[HAPAccessoryServerNFC tokenAuthEndTime]
+ -[HAPAccessoryServerNFC tokenAuthStartTime]
+ -[HAPContributingSensor .cxx_destruct]
+ -[HAPContributingSensor copyWithZone:]
+ -[HAPContributingSensor description]
+ -[HAPContributingSensor initWithSensorUUID:]
+ -[HAPContributingSensor init]
+ -[HAPContributingSensor isEqual:]
+ -[HAPContributingSensor parseFromData:error:]
+ -[HAPContributingSensor sensorUUID]
+ -[HAPContributingSensor serializeWithError:]
+ -[HAPContributingSensor setSensorUUID:]
+ -[HAPCoreUtilsHTTPClient getSelfAddress:maxLength:outLength:]
+ -[HAPHTTPClient selfAddress]
+ -[HAPKeyBag cachedAccessoryKeyType]
+ -[HAPKeyBag setCachedAccessoryKeyType:]
+ -[HAPNFCReaderSession isConnectedTagPresent]
+ -[HAPSensorList .cxx_destruct]
+ -[HAPSensorList contributingSensor]
+ -[HAPSensorList copyWithZone:]
+ -[HAPSensorList description]
+ -[HAPSensorList initWithContributingSensor:]
+ -[HAPSensorList init]
+ -[HAPSensorList isEqual:]
+ -[HAPSensorList parseFromData:error:]
+ -[HAPSensorList serializeWithError:]
+ -[HAPSensorList setContributingSensor:]
+ -[HAPWebRTCOfferOptions SFrameConfiguration]
+ -[HAPWebRTCOfferOptions initWithSFrameEnabled:SFrameConfiguration:]
+ -[HAPWebRTCOfferOptions setSFrameConfiguration:]
+ -[_HAPAccessoryServerBTLE200 _ecdsaKeyPairSetupRefusalError]
+ GCC_except_table1003
+ GCC_except_table1004
+ GCC_except_table1032
+ GCC_except_table1055
+ GCC_except_table1073
+ GCC_except_table1097
+ GCC_except_table1101
+ GCC_except_table1115
+ GCC_except_table1120
+ GCC_except_table1225
+ GCC_except_table1227
+ GCC_except_table1333
+ GCC_except_table1338
+ GCC_except_table1340
+ GCC_except_table1354
+ GCC_except_table1366
+ GCC_except_table1368
+ GCC_except_table1370
+ GCC_except_table1372
+ GCC_except_table1498
+ GCC_except_table1502
+ GCC_except_table1504
+ GCC_except_table1706
+ GCC_except_table18
+ GCC_except_table1916
+ GCC_except_table1918
+ GCC_except_table1923
+ GCC_except_table1929
+ GCC_except_table1931
+ GCC_except_table1937
+ GCC_except_table1939
+ GCC_except_table1943
+ GCC_except_table1949
+ GCC_except_table1951
+ GCC_except_table1953
+ GCC_except_table1955
+ GCC_except_table1961
+ GCC_except_table1965
+ GCC_except_table1975
+ GCC_except_table1983
+ GCC_except_table1990
+ GCC_except_table1994
+ GCC_except_table2002
+ GCC_except_table2040
+ GCC_except_table2159
+ GCC_except_table2163
+ GCC_except_table2164
+ GCC_except_table2166
+ GCC_except_table2168
+ GCC_except_table2185
+ GCC_except_table2189
+ GCC_except_table2192
+ GCC_except_table2194
+ GCC_except_table2197
+ GCC_except_table2214
+ GCC_except_table2224
+ GCC_except_table2226
+ GCC_except_table2228
+ GCC_except_table2233
+ GCC_except_table2236
+ GCC_except_table2238
+ GCC_except_table2241
+ GCC_except_table2244
+ GCC_except_table2248
+ GCC_except_table2250
+ GCC_except_table2253
+ GCC_except_table2256
+ GCC_except_table2258
+ GCC_except_table2260
+ GCC_except_table2264
+ GCC_except_table2268
+ GCC_except_table2276
+ GCC_except_table228
+ GCC_except_table2287
+ GCC_except_table229
+ GCC_except_table2336
+ GCC_except_table2337
+ GCC_except_table2338
+ GCC_except_table2340
+ GCC_except_table2341
+ GCC_except_table2342
+ GCC_except_table2344
+ GCC_except_table2345
+ GCC_except_table235
+ GCC_except_table2373
+ GCC_except_table238
+ GCC_except_table241
+ GCC_except_table248
+ GCC_except_table249
+ GCC_except_table254
+ GCC_except_table2546
+ GCC_except_table2550
+ GCC_except_table2554
+ GCC_except_table2558
+ GCC_except_table2561
+ GCC_except_table2563
+ GCC_except_table2565
+ GCC_except_table2568
+ GCC_except_table2574
+ GCC_except_table2576
+ GCC_except_table2579
+ GCC_except_table2580
+ GCC_except_table2582
+ GCC_except_table263
+ GCC_except_table267
+ GCC_except_table2683
+ GCC_except_table2691
+ GCC_except_table2692
+ GCC_except_table2693
+ GCC_except_table2694
+ GCC_except_table2695
+ GCC_except_table2696
+ GCC_except_table2711
+ GCC_except_table2725
+ GCC_except_table2805
+ GCC_except_table281
+ GCC_except_table2817
+ GCC_except_table289
+ GCC_except_table300
+ GCC_except_table3022
+ GCC_except_table3031
+ GCC_except_table3048
+ GCC_except_table3082
+ GCC_except_table3098
+ GCC_except_table3100
+ GCC_except_table3119
+ GCC_except_table314
+ GCC_except_table3141
+ GCC_except_table3155
+ GCC_except_table3156
+ GCC_except_table3157
+ GCC_except_table3160
+ GCC_except_table317
+ GCC_except_table3173
+ GCC_except_table3176
+ GCC_except_table3181
+ GCC_except_table3186
+ GCC_except_table3191
+ GCC_except_table322
+ GCC_except_table3231
+ GCC_except_table3251
+ GCC_except_table3256
+ GCC_except_table3258
+ GCC_except_table3274
+ GCC_except_table3288
+ GCC_except_table3290
+ GCC_except_table330
+ GCC_except_table3310
+ GCC_except_table336
+ GCC_except_table3374
+ GCC_except_table338
+ GCC_except_table3381
+ GCC_except_table3383
+ GCC_except_table3384
+ GCC_except_table3407
+ GCC_except_table3427
+ GCC_except_table348
+ GCC_except_table3655
+ GCC_except_table3723
+ GCC_except_table373
+ GCC_except_table3732
+ GCC_except_table3733
+ GCC_except_table3735
+ GCC_except_table3736
+ GCC_except_table3738
+ GCC_except_table3745
+ GCC_except_table3755
+ GCC_except_table3758
+ GCC_except_table3770
+ GCC_except_table3781
+ GCC_except_table3783
+ GCC_except_table3786
+ GCC_except_table3789
+ GCC_except_table379
+ GCC_except_table3801
+ GCC_except_table3803
+ GCC_except_table3807
+ GCC_except_table3811
+ GCC_except_table3815
+ GCC_except_table3842
+ GCC_except_table3875
+ GCC_except_table3879
+ GCC_except_table3881
+ GCC_except_table3884
+ GCC_except_table3888
+ GCC_except_table3895
+ GCC_except_table3896
+ GCC_except_table3897
+ GCC_except_table3903
+ GCC_except_table3988
+ GCC_except_table3989
+ GCC_except_table3990
+ GCC_except_table3991
+ GCC_except_table3992
+ GCC_except_table3993
+ GCC_except_table3994
+ GCC_except_table3995
+ GCC_except_table3996
+ GCC_except_table3997
+ GCC_except_table3998
+ GCC_except_table3999
+ GCC_except_table4000
+ GCC_except_table4001
+ GCC_except_table4002
+ GCC_except_table4041
+ GCC_except_table4068
+ GCC_except_table41
+ GCC_except_table4178
+ GCC_except_table4185
+ GCC_except_table4227
+ GCC_except_table4237
+ GCC_except_table4240
+ GCC_except_table4243
+ GCC_except_table4246
+ GCC_except_table4249
+ GCC_except_table4255
+ GCC_except_table4260
+ GCC_except_table4273
+ GCC_except_table4278
+ GCC_except_table4282
+ GCC_except_table4284
+ GCC_except_table4287
+ GCC_except_table4298
+ GCC_except_table4306
+ GCC_except_table4310
+ GCC_except_table4316
+ GCC_except_table4317
+ GCC_except_table4321
+ GCC_except_table4339
+ GCC_except_table4341
+ GCC_except_table4344
+ GCC_except_table4347
+ GCC_except_table4353
+ GCC_except_table4356
+ GCC_except_table4358
+ GCC_except_table4364
+ GCC_except_table4366
+ GCC_except_table4368
+ GCC_except_table4371
+ GCC_except_table4382
+ GCC_except_table4393
+ GCC_except_table4395
+ GCC_except_table4404
+ GCC_except_table4406
+ GCC_except_table4408
+ GCC_except_table4414
+ GCC_except_table4696
+ GCC_except_table4702
+ GCC_except_table4719
+ GCC_except_table4723
+ GCC_except_table4741
+ GCC_except_table4747
+ GCC_except_table4761
+ GCC_except_table4775
+ GCC_except_table4779
+ GCC_except_table4892
+ GCC_except_table5350
+ GCC_except_table5359
+ GCC_except_table5369
+ GCC_except_table5411
+ GCC_except_table5414
+ GCC_except_table5415
+ GCC_except_table5416
+ GCC_except_table5417
+ GCC_except_table5567
+ GCC_except_table5568
+ GCC_except_table5569
+ GCC_except_table5570
+ GCC_except_table5571
+ GCC_except_table5572
+ GCC_except_table5578
+ GCC_except_table5579
+ GCC_except_table5581
+ GCC_except_table5588
+ GCC_except_table5591
+ GCC_except_table5593
+ GCC_except_table5598
+ GCC_except_table5601
+ GCC_except_table5604
+ GCC_except_table5608
+ GCC_except_table5612
+ GCC_except_table6161
+ GCC_except_table6162
+ GCC_except_table6181
+ GCC_except_table6191
+ GCC_except_table6194
+ GCC_except_table6199
+ GCC_except_table6202
+ GCC_except_table6207
+ GCC_except_table6476
+ GCC_except_table6480
+ GCC_except_table6525
+ GCC_except_table6529
+ GCC_except_table6531
+ GCC_except_table6533
+ GCC_except_table6757
+ GCC_except_table6764
+ GCC_except_table6768
+ GCC_except_table6769
+ GCC_except_table6770
+ GCC_except_table6771
+ GCC_except_table6777
+ GCC_except_table6793
+ GCC_except_table6828
+ GCC_except_table6829
+ GCC_except_table6830
+ GCC_except_table684
+ GCC_except_table6850
+ GCC_except_table6862
+ GCC_except_table6865
+ GCC_except_table6870
+ GCC_except_table6872
+ GCC_except_table6886
+ GCC_except_table694
+ GCC_except_table708
+ GCC_except_table7110
+ GCC_except_table7123
+ GCC_except_table7128
+ GCC_except_table7131
+ GCC_except_table7132
+ GCC_except_table7134
+ GCC_except_table7135
+ GCC_except_table7137
+ GCC_except_table716
+ GCC_except_table7167
+ GCC_except_table7189
+ GCC_except_table7193
+ GCC_except_table7197
+ GCC_except_table7202
+ GCC_except_table7206
+ GCC_except_table7210
+ GCC_except_table7214
+ GCC_except_table7218
+ GCC_except_table7226
+ GCC_except_table7228
+ GCC_except_table7230
+ GCC_except_table7256
+ GCC_except_table7267
+ GCC_except_table7404
+ GCC_except_table7439
+ GCC_except_table752
+ GCC_except_table7529
+ GCC_except_table7530
+ GCC_except_table7531
+ GCC_except_table7532
+ GCC_except_table7534
+ GCC_except_table7535
+ GCC_except_table7610
+ GCC_except_table7618
+ GCC_except_table7634
+ GCC_except_table7635
+ GCC_except_table7636
+ GCC_except_table7646
+ GCC_except_table765
+ GCC_except_table7652
+ GCC_except_table7666
+ GCC_except_table7669
+ GCC_except_table767
+ GCC_except_table7670
+ GCC_except_table7675
+ GCC_except_table7678
+ GCC_except_table7685
+ GCC_except_table7688
+ GCC_except_table770
+ GCC_except_table7702
+ GCC_except_table7709
+ GCC_except_table7715
+ GCC_except_table7724
+ GCC_except_table7726
+ GCC_except_table773
+ GCC_except_table7730
+ GCC_except_table7731
+ GCC_except_table7738
+ GCC_except_table7762
+ GCC_except_table7763
+ GCC_except_table7768
+ GCC_except_table7772
+ GCC_except_table7773
+ GCC_except_table7776
+ GCC_except_table7782
+ GCC_except_table7786
+ GCC_except_table7790
+ GCC_except_table7792
+ GCC_except_table7794
+ GCC_except_table7798
+ GCC_except_table783
+ GCC_except_table785
+ GCC_except_table789
+ GCC_except_table7912
+ GCC_except_table7949
+ GCC_except_table799
+ GCC_except_table8006
+ GCC_except_table8016
+ GCC_except_table8022
+ GCC_except_table8029
+ GCC_except_table8030
+ GCC_except_table8046
+ GCC_except_table8050
+ GCC_except_table8051
+ GCC_except_table8101
+ GCC_except_table8102
+ GCC_except_table8107
+ GCC_except_table8134
+ GCC_except_table8135
+ GCC_except_table8160
+ GCC_except_table8178
+ GCC_except_table8179
+ GCC_except_table8180
+ GCC_except_table8189
+ GCC_except_table8194
+ GCC_except_table8195
+ GCC_except_table8196
+ GCC_except_table8212
+ GCC_except_table8215
+ GCC_except_table8222
+ GCC_except_table8229
+ GCC_except_table8234
+ GCC_except_table8240
+ GCC_except_table8252
+ GCC_except_table8253
+ GCC_except_table8258
+ GCC_except_table8267
+ GCC_except_table8273
+ GCC_except_table8274
+ GCC_except_table8278
+ GCC_except_table8280
+ GCC_except_table8282
+ GCC_except_table8286
+ GCC_except_table8307
+ GCC_except_table8309
+ GCC_except_table8310
+ GCC_except_table833
+ GCC_except_table8336
+ GCC_except_table843
+ GCC_except_table8501
+ GCC_except_table851
+ GCC_except_table8564
+ GCC_except_table8599
+ GCC_except_table878
+ GCC_except_table88
+ GCC_except_table8804
+ GCC_except_table882
+ GCC_except_table8841
+ GCC_except_table885
+ GCC_except_table887
+ GCC_except_table8921
+ GCC_except_table8923
+ GCC_except_table8925
+ GCC_except_table8927
+ GCC_except_table8929
+ GCC_except_table893
+ GCC_except_table8931
+ GCC_except_table8937
+ GCC_except_table8939
+ GCC_except_table8942
+ GCC_except_table8944
+ GCC_except_table8946
+ GCC_except_table895
+ GCC_except_table8953
+ GCC_except_table8959
+ GCC_except_table8964
+ GCC_except_table8967
+ GCC_except_table8972
+ GCC_except_table8980
+ GCC_except_table8983
+ GCC_except_table9009
+ GCC_except_table9012
+ GCC_except_table9013
+ GCC_except_table9052
+ GCC_except_table9053
+ GCC_except_table9054
+ GCC_except_table9056
+ GCC_except_table9057
+ GCC_except_table9059
+ GCC_except_table9060
+ GCC_except_table9061
+ GCC_except_table9063
+ GCC_except_table9064
+ GCC_except_table9066
+ GCC_except_table9070
+ GCC_except_table9071
+ GCC_except_table9075
+ GCC_except_table908
+ GCC_except_table912
+ GCC_except_table9126
+ GCC_except_table9133
+ GCC_except_table916
+ GCC_except_table9239
+ GCC_except_table9241
+ GCC_except_table9243
+ GCC_except_table9246
+ GCC_except_table9248
+ GCC_except_table9250
+ GCC_except_table9252
+ GCC_except_table9253
+ GCC_except_table926
+ GCC_except_table9260
+ GCC_except_table9262
+ GCC_except_table9263
+ GCC_except_table927
+ GCC_except_table932
+ GCC_except_table938
+ GCC_except_table943
+ GCC_except_table947
+ GCC_except_table953
+ GCC_except_table959
+ GCC_except_table960
+ GCC_except_table988
+ GCC_except_table995
+ _HAPAVCStreamingControlCommandAsString
+ _HAPAVCStreamingControlStatusAsString
+ _HAPAVCViewerRegistrationOperationAsString
+ _HAPErrorAlreadyPairedPeerIdentifierKey
+ _HAPNFCIsReaderProtectionError
+ _HTTPClientGetSelfAddress
+ _OBJC_CLASS_$_HAP2AccessoryAddressLists
+ _OBJC_CLASS_$_HAPAVCStreamingControlCommandWrapper
+ _OBJC_CLASS_$_HAPAVCStreamingControlRequest
+ _OBJC_CLASS_$_HAPAVCStreamingControlResponse
+ _OBJC_CLASS_$_HAPAVCStreamingControlStatusWrapper
+ _OBJC_CLASS_$_HAPAVCViewerRegistrationOperationWrapper
+ _OBJC_CLASS_$_HAPContributingSensor
+ _OBJC_CLASS_$_HAPSensorList
+ _OBJC_IVAR_$_HAP2AccessoryAddressLists._primary
+ _OBJC_IVAR_$_HAP2AccessoryAddressLists._secondary
+ _OBJC_IVAR_$_HAP2AccessoryServerController._lastAnnouncedSessionNumber
+ _OBJC_IVAR_$_HAP2AccessoryServerController._unitTest_useHH2
+ _OBJC_IVAR_$_HAP2AccessoryServerDiscoveryBonjour._lastKnownAccessoryInfoByServiceKey
+ _OBJC_IVAR_$_HAP2AccessoryServerTransportCoAP._addressResolverFactory
+ _OBJC_IVAR_$_HAP2AccessoryServerTransportCoAP._sendRequestQoS
+ _OBJC_IVAR_$_HAPAVCStreamingControlCommandWrapper._value
+ _OBJC_IVAR_$_HAPAVCStreamingControlRequest._command
+ _OBJC_IVAR_$_HAPAVCStreamingControlRequest._sessionIdentifier
+ _OBJC_IVAR_$_HAPAVCStreamingControlResponse._sessionIdentifier
+ _OBJC_IVAR_$_HAPAVCStreamingControlResponse._status
+ _OBJC_IVAR_$_HAPAVCStreamingControlStatusWrapper._value
+ _OBJC_IVAR_$_HAPAVCViewerRegistrationOperationWrapper._value
+ _OBJC_IVAR_$_HAPAVCViewerRegistrationRequest._operation
+ _OBJC_IVAR_$_HAPAccessoryPairingRequest._shouldAllowECDSAKeyPairSetup
+ _OBJC_IVAR_$_HAPAccessoryServer._pairSetupLastError
+ _OBJC_IVAR_$_HAPAccessoryServer._pairSetupM1ToM4Completed
+ _OBJC_IVAR_$_HAPAccessoryServer._pairSetupM1ToM4DurationMS
+ _OBJC_IVAR_$_HAPAccessoryServer._pairSetupM1ToM4Error
+ _OBJC_IVAR_$_HAPAccessoryServer._pairSetupM5ToM6Completed
+ _OBJC_IVAR_$_HAPAccessoryServer._pairSetupM5ToM6DurationMS
+ _OBJC_IVAR_$_HAPAccessoryServer._pairSetupM5ToM6Error
+ _OBJC_IVAR_$_HAPAccessoryServer._pairSetupWorkDurationMS
+ _OBJC_IVAR_$_HAPAccessoryServer._tokenAuthCompleted
+ _OBJC_IVAR_$_HAPAccessoryServer._tokenAuthDurationMS
+ _OBJC_IVAR_$_HAPAccessoryServer._tokenAuthError
+ _OBJC_IVAR_$_HAPAccessoryServerNFC._denylisted
+ _OBJC_IVAR_$_HAPAccessoryServerNFC._nfcM4RecvTime
+ _OBJC_IVAR_$_HAPAccessoryServerNFC._tokenAuthEndTime
+ _OBJC_IVAR_$_HAPAccessoryServerNFC._tokenAuthStartTime
+ _OBJC_IVAR_$_HAPContributingSensor._sensorUUID
+ _OBJC_IVAR_$_HAPKeyBag._cachedAccessoryKeyType
+ _OBJC_IVAR_$_HAPSensorList._contributingSensor
+ _OBJC_IVAR_$_HAPWebRTCOfferOptions._SFrameConfiguration
+ _OBJC_METACLASS_$_HAP2AccessoryAddressLists
+ _OBJC_METACLASS_$_HAPAVCStreamingControlCommandWrapper
+ _OBJC_METACLASS_$_HAPAVCStreamingControlRequest
+ _OBJC_METACLASS_$_HAPAVCStreamingControlResponse
+ _OBJC_METACLASS_$_HAPAVCStreamingControlStatusWrapper
+ _OBJC_METACLASS_$_HAPAVCViewerRegistrationOperationWrapper
+ _OBJC_METACLASS_$_HAPContributingSensor
+ _OBJC_METACLASS_$_HAPSensorList
+ __OBJC_$_CLASS_METHODS_HAPAVCStreamingControlCommandWrapper
+ __OBJC_$_CLASS_METHODS_HAPAVCStreamingControlRequest
+ __OBJC_$_CLASS_METHODS_HAPAVCStreamingControlResponse
+ __OBJC_$_CLASS_METHODS_HAPAVCStreamingControlStatusWrapper
+ __OBJC_$_CLASS_METHODS_HAPAVCViewerRegistrationOperationWrapper
+ __OBJC_$_CLASS_METHODS_HAPContributingSensor
+ __OBJC_$_CLASS_METHODS_HAPSensorList
+ __OBJC_$_INSTANCE_METHODS_HAP2AccessoryAddressLists
+ __OBJC_$_INSTANCE_METHODS_HAPAVCStreamingControlCommandWrapper
+ __OBJC_$_INSTANCE_METHODS_HAPAVCStreamingControlRequest
+ __OBJC_$_INSTANCE_METHODS_HAPAVCStreamingControlResponse
+ __OBJC_$_INSTANCE_METHODS_HAPAVCStreamingControlStatusWrapper
+ __OBJC_$_INSTANCE_METHODS_HAPAVCViewerRegistrationOperationWrapper
+ __OBJC_$_INSTANCE_METHODS_HAPContributingSensor
+ __OBJC_$_INSTANCE_METHODS_HAPSensorList
+ __OBJC_$_INSTANCE_VARIABLES_HAP2AccessoryAddressLists
+ __OBJC_$_INSTANCE_VARIABLES_HAPAVCStreamingControlCommandWrapper
+ __OBJC_$_INSTANCE_VARIABLES_HAPAVCStreamingControlRequest
+ __OBJC_$_INSTANCE_VARIABLES_HAPAVCStreamingControlResponse
+ __OBJC_$_INSTANCE_VARIABLES_HAPAVCStreamingControlStatusWrapper
+ __OBJC_$_INSTANCE_VARIABLES_HAPAVCViewerRegistrationOperationWrapper
+ __OBJC_$_INSTANCE_VARIABLES_HAPContributingSensor
+ __OBJC_$_INSTANCE_VARIABLES_HAPSensorList
+ __OBJC_$_PROP_LIST_HAP2AccessoryAddressLists
+ __OBJC_$_PROP_LIST_HAPAVCStreamingControlCommandWrapper
+ __OBJC_$_PROP_LIST_HAPAVCStreamingControlRequest
+ __OBJC_$_PROP_LIST_HAPAVCStreamingControlResponse
+ __OBJC_$_PROP_LIST_HAPAVCStreamingControlStatusWrapper
+ __OBJC_$_PROP_LIST_HAPAVCViewerRegistrationOperationWrapper
+ __OBJC_$_PROP_LIST_HAPContributingSensor
+ __OBJC_$_PROP_LIST_HAPNFCReaderSessionProtocol
+ __OBJC_$_PROP_LIST_HAPSensorList
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_HAPNFCReaderSessionProtocol
+ __OBJC_$_PROTOCOL_METHOD_TYPES_HAPNFCReaderSessionProtocol
+ __OBJC_$_PROTOCOL_REFS_HAPNFCReaderSessionProtocol
+ __OBJC_CLASS_PROTOCOLS_$_HAP2AccessoryDeviceIPAddress
+ __OBJC_CLASS_PROTOCOLS_$_HAPAVCStreamingControlCommandWrapper
+ __OBJC_CLASS_PROTOCOLS_$_HAPAVCStreamingControlRequest
+ __OBJC_CLASS_PROTOCOLS_$_HAPAVCStreamingControlResponse
+ __OBJC_CLASS_PROTOCOLS_$_HAPAVCStreamingControlStatusWrapper
+ __OBJC_CLASS_PROTOCOLS_$_HAPAVCViewerRegistrationOperationWrapper
+ __OBJC_CLASS_PROTOCOLS_$_HAPContributingSensor
+ __OBJC_CLASS_PROTOCOLS_$_HAPSensorList
+ __OBJC_CLASS_RO_$_HAP2AccessoryAddressLists
+ __OBJC_CLASS_RO_$_HAPAVCStreamingControlCommandWrapper
+ __OBJC_CLASS_RO_$_HAPAVCStreamingControlRequest
+ __OBJC_CLASS_RO_$_HAPAVCStreamingControlResponse
+ __OBJC_CLASS_RO_$_HAPAVCStreamingControlStatusWrapper
+ __OBJC_CLASS_RO_$_HAPAVCViewerRegistrationOperationWrapper
+ __OBJC_CLASS_RO_$_HAPContributingSensor
+ __OBJC_CLASS_RO_$_HAPSensorList
+ __OBJC_LABEL_PROTOCOL_$_HAPNFCReaderSessionProtocol
+ __OBJC_METACLASS_RO_$_HAP2AccessoryAddressLists
+ __OBJC_METACLASS_RO_$_HAPAVCStreamingControlCommandWrapper
+ __OBJC_METACLASS_RO_$_HAPAVCStreamingControlRequest
+ __OBJC_METACLASS_RO_$_HAPAVCStreamingControlResponse
+ __OBJC_METACLASS_RO_$_HAPAVCStreamingControlStatusWrapper
+ __OBJC_METACLASS_RO_$_HAPAVCViewerRegistrationOperationWrapper
+ __OBJC_METACLASS_RO_$_HAPContributingSensor
+ __OBJC_METACLASS_RO_$_HAPSensorList
+ __OBJC_PROTOCOL_$_HAPNFCReaderSessionProtocol
+ __ZL10_cacheLock
+ __ZL11_eventQueue
+ __ZL11_generation
+ __ZL19_sharedThreadClient
+ __ZL20_eventQueueOnceToken
+ __ZdlPv
+ ___36+[HAP2ThreadNetworkUtil _eventQueue]_block_invoke
+ ___42-[HAP2CoAPClient _didDisconnectWithError:]_block_invoke
+ ___44-[HAPNFCReaderSession isConnectedTagPresent]_block_invoke
+ ___49-[HAPAccessoryServerIP disconnectWithCompletion:]_block_invoke
+ ___58-[HAP2AccessoryServer(Paired) closeSessionWithCompletion:]_block_invoke
+ ___58-[HAPAccessoryServerHAP2Adapter disconnectWithCompletion:]_block_invoke
+ ___60-[HAP2AccessoryServerController closeSessionWithCompletion:]_block_invoke
+ ___60-[HAP2SerializedOperationQueue _applyCallerQoSToOperations:]_block_invoke
+ ___61-[HAP2AccessoryServer _setHasDiscoveryAdvertisementLockOnly:]_block_invoke
+ ___61-[HAPAccessoryServerNFC finishTokenAuthAsOf:completed:error:]_block_invoke
+ ___70-[HAP2AccessoryServerController _announceReestablishedSessionIfNeeded]_block_invoke
+ ___81-[HAP2AccessoryServerCoordinator _didDiscoverAccessory:fromMDNSEvent:completion:]_block_invoke
+ ___91-[HAP2AccessoryServerEncodingThread _parseCharacteristics:isMultiTransportAccessory:error:]_block_invoke
+ ___97-[HAPAccessoryServerBrowserHAP2Adapter isThreadAccessoryDiscoveredWithAccessoryServerIdentifier:]_block_invoke
+ ___98-[HAPAccessoryServerNFC pairSetupSession:validateAndRollMFiTokenWithUUID:token:completionHandler:]_block_invoke_2
+ ___98-[HAPAccessoryServerNFC pairSetupSession:validateAndRollMFiTokenWithUUID:token:completionHandler:]_block_invoke_3
+ ___block_descriptor_40_e28_v32?0"NSOperation"8Q16^B24l
+ ___block_descriptor_40_e8_32bs_e41_v32?0"NSData"8"NSString"16"NSError"24ls32l8
+ ___block_descriptor_56_e8_32s40r48r_e69_v32?0"HAP2AccessoryServerDiscoveryBonjourBrowseResultTuple"8Q16^B24ls32l8r40l8r48l8
+ ___block_descriptor_57_e8_32s40s48r_e45_v32?0"HAP2TLVParamServiceSignature"8Q16^B24ls32l8r48l8s40l8
+ ___block_descriptor_57_e8_32s40s48r_e52_v32?0"HAP2TLVParamCharacteristicSignature"8Q16^B24ls32l8r48l8s40l8
+ ___swift_closure_destructor.198Tm
+ __xpc_type_dictionary
+ __xpc_type_string
+ _associated conformance 7CoreHAP17PairSetupTLVErrorOSHAASQ
+ _dispatch_queue_attr_make_with_qos_class
+ _logCategory._hmf_once_t111
+ _logCategory._hmf_once_t20
+ _logCategory._hmf_once_t282
+ _logCategory._hmf_once_t49
+ _logCategory._hmf_once_t78
+ _logCategory._hmf_once_t86
+ _logCategory._hmf_once_t866
+ _logCategory._hmf_once_t938
+ _logCategory._hmf_once_t99
+ _logCategory._hmf_once_v100
+ _logCategory._hmf_once_v112
+ _logCategory._hmf_once_v21
+ _logCategory._hmf_once_v283
+ _logCategory._hmf_once_v50
+ _logCategory._hmf_once_v79
+ _logCategory._hmf_once_v867
+ _logCategory._hmf_once_v87
+ _logCategory._hmf_once_v939
+ _os_unfair_lock_lock
+ _serviceKeyForBrowseResult
+ _swift_deallocClassInstance
+ _symbolic _____ 7CoreHAP17PairSetupTLVErrorO
+ _symbolic _____Sg 10Foundation4DateV
+ _symbolic _____Sg6rolled_______pSg5errorAB9echoTokentSg 10Foundation4DataV s5ErrorP
+ _symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP
+ _xpc_dictionary_create
+ _xpc_dictionary_get_value
+ _xpc_get_type
+ _xpc_string_get_string_ptr
- -[HAP2AccessoryServer _browserFastSetHasDiscoveryAdvertisement:]
- -[HAP2AccessoryServer(Unpaired) pairingDriver:didRequestLocalPairingIdentityWithCompletion:]
- -[HAP2AccessoryServer(Unpaired) pairingDriver:didSaveRemoteECDSAPairingKey:forAccessoryIdentifier:completion:]
- -[HAP2AccessoryServer(Unpaired) pairingDriver:didSaveRemotePairingIdentity:completion:]
- -[HAP2AccessoryServerController secureTransport:needsECDSALongTermPublicKeyForPeerWithIdentifier:completion:]
- -[HAP2AccessoryServerController secureTransport:needsLocalPairingIdentityForECDSAKeyPairSetupSession:completion:]
- -[HAP2AccessoryServerController secureTransport:needsLocalPairingIdentityWithCompletion:]
- -[HAP2AccessoryServerController secureTransport:needsRemotePairingIdentityForDeviceID:completion:]
- -[HAP2AccessoryServerCoordinator _didDiscoverAccessory:completion:]
- -[HAPAVCViewerRegistrationRequest initWithSessionIdentifier:viewerParticipantID:viewerNegotiationBlob:]
- -[HAPNFCReaderSession _cancelDiscoveryTimeoutTimer]
- -[HAPNFCReaderSession _startDiscoveryTimeoutTimer]
- -[HAPNFCReaderSession discoveryTimeoutTimer]
- -[HAPNFCReaderSession setDiscoveryTimeoutTimer:]
- -[HAPNFCReaderSession timerDidFire:]
- -[HAPWebRTCOfferOptions initWithSFrameEnabled:]
- GCC_except_table1059
- GCC_except_table1061
- GCC_except_table1167
- GCC_except_table1172
- GCC_except_table1174
- GCC_except_table1187
- GCC_except_table1199
- GCC_except_table1201
- GCC_except_table1203
- GCC_except_table1205
- GCC_except_table1331
- GCC_except_table1335
- GCC_except_table1337
- GCC_except_table1539
- GCC_except_table16
- GCC_except_table1749
- GCC_except_table1751
- GCC_except_table1756
- GCC_except_table1762
- GCC_except_table1764
- GCC_except_table1770
- GCC_except_table1772
- GCC_except_table1776
- GCC_except_table1782
- GCC_except_table1784
- GCC_except_table1786
- GCC_except_table1788
- GCC_except_table1793
- GCC_except_table1797
- GCC_except_table1807
- GCC_except_table1815
- GCC_except_table1822
- GCC_except_table1826
- GCC_except_table1830
- GCC_except_table1834
- GCC_except_table1872
- GCC_except_table1991
- GCC_except_table1995
- GCC_except_table1996
- GCC_except_table2000
- GCC_except_table2012
- GCC_except_table2017
- GCC_except_table2021
- GCC_except_table2024
- GCC_except_table2026
- GCC_except_table2029
- GCC_except_table2046
- GCC_except_table2056
- GCC_except_table2058
- GCC_except_table2060
- GCC_except_table2065
- GCC_except_table2068
- GCC_except_table2070
- GCC_except_table2073
- GCC_except_table2076
- GCC_except_table2080
- GCC_except_table2082
- GCC_except_table2085
- GCC_except_table2088
- GCC_except_table2090
- GCC_except_table2092
- GCC_except_table2096
- GCC_except_table2100
- GCC_except_table2108
- GCC_except_table2119
- GCC_except_table2152
- GCC_except_table2157
- GCC_except_table2175
- GCC_except_table2176
- GCC_except_table2177
- GCC_except_table2179
- GCC_except_table2181
- GCC_except_table2183
- GCC_except_table2184
- GCC_except_table2206
- GCC_except_table2210
- GCC_except_table2218
- GCC_except_table226
- GCC_except_table227
- GCC_except_table233
- GCC_except_table234
- GCC_except_table2384
- GCC_except_table239
- GCC_except_table2391
- GCC_except_table2395
- GCC_except_table2399
- GCC_except_table2403
- GCC_except_table2406
- GCC_except_table2408
- GCC_except_table2410
- GCC_except_table2413
- GCC_except_table2419
- GCC_except_table242
- GCC_except_table2421
- GCC_except_table2424
- GCC_except_table2425
- GCC_except_table2427
- GCC_except_table247
- GCC_except_table250
- GCC_except_table2528
- GCC_except_table2536
- GCC_except_table2537
- GCC_except_table2538
- GCC_except_table2540
- GCC_except_table2541
- GCC_except_table2556
- GCC_except_table2570
- GCC_except_table261
- GCC_except_table265
- GCC_except_table2650
- GCC_except_table2662
- GCC_except_table2723
- GCC_except_table2731
- GCC_except_table2742
- GCC_except_table2756
- GCC_except_table2759
- GCC_except_table2764
- GCC_except_table2772
- GCC_except_table2778
- GCC_except_table2780
- GCC_except_table2790
- GCC_except_table2813
- GCC_except_table2819
- GCC_except_table3015
- GCC_except_table3024
- GCC_except_table3041
- GCC_except_table3075
- GCC_except_table3091
- GCC_except_table3093
- GCC_except_table3105
- GCC_except_table3134
- GCC_except_table3148
- GCC_except_table3149
- GCC_except_table3150
- GCC_except_table3153
- GCC_except_table3159
- GCC_except_table3169
- GCC_except_table3174
- GCC_except_table3179
- GCC_except_table3184
- GCC_except_table3223
- GCC_except_table3240
- GCC_except_table3243
- GCC_except_table3250
- GCC_except_table3266
- GCC_except_table3280
- GCC_except_table3282
- GCC_except_table3286
- GCC_except_table3366
- GCC_except_table3373
- GCC_except_table3375
- GCC_except_table3376
- GCC_except_table3399
- GCC_except_table3419
- GCC_except_table3647
- GCC_except_table3714
- GCC_except_table3715
- GCC_except_table3719
- GCC_except_table3724
- GCC_except_table3725
- GCC_except_table3728
- GCC_except_table3737
- GCC_except_table3747
- GCC_except_table3750
- GCC_except_table3761
- GCC_except_table3762
- GCC_except_table3764
- GCC_except_table3766
- GCC_except_table3780
- GCC_except_table3792
- GCC_except_table3794
- GCC_except_table3798
- GCC_except_table3802
- GCC_except_table3806
- GCC_except_table3832
- GCC_except_table3855
- GCC_except_table3861
- GCC_except_table3869
- GCC_except_table3874
- GCC_except_table3876
- GCC_except_table3878
- GCC_except_table3885
- GCC_except_table3887
- GCC_except_table39
- GCC_except_table3968
- GCC_except_table3969
- GCC_except_table3970
- GCC_except_table3971
- GCC_except_table3972
- GCC_except_table3973
- GCC_except_table3974
- GCC_except_table3975
- GCC_except_table3976
- GCC_except_table3977
- GCC_except_table3978
- GCC_except_table3979
- GCC_except_table3980
- GCC_except_table3981
- GCC_except_table4020
- GCC_except_table4047
- GCC_except_table4157
- GCC_except_table4164
- GCC_except_table4206
- GCC_except_table4210
- GCC_except_table4213
- GCC_except_table4216
- GCC_except_table4219
- GCC_except_table4222
- GCC_except_table4225
- GCC_except_table4228
- GCC_except_table4239
- GCC_except_table4257
- GCC_except_table4261
- GCC_except_table4263
- GCC_except_table4266
- GCC_except_table4277
- GCC_except_table4285
- GCC_except_table4289
- GCC_except_table4295
- GCC_except_table4296
- GCC_except_table4299
- GCC_except_table4300
- GCC_except_table4318
- GCC_except_table4322
- GCC_except_table4323
- GCC_except_table4326
- GCC_except_table4332
- GCC_except_table4335
- GCC_except_table4337
- GCC_except_table4345
- GCC_except_table4348
- GCC_except_table4359
- GCC_except_table4370
- GCC_except_table4372
- GCC_except_table4381
- GCC_except_table4383
- GCC_except_table4385
- GCC_except_table4391
- GCC_except_table4651
- GCC_except_table4657
- GCC_except_table4674
- GCC_except_table4678
- GCC_except_table4695
- GCC_except_table4701
- GCC_except_table4714
- GCC_except_table4728
- GCC_except_table4732
- GCC_except_table4845
- GCC_except_table521
- GCC_except_table5301
- GCC_except_table5309
- GCC_except_table531
- GCC_except_table5319
- GCC_except_table5361
- GCC_except_table5364
- GCC_except_table5365
- GCC_except_table5366
- GCC_except_table5367
- GCC_except_table545
- GCC_except_table5516
- GCC_except_table5517
- GCC_except_table5518
- GCC_except_table5519
- GCC_except_table5520
- GCC_except_table5521
- GCC_except_table5527
- GCC_except_table5528
- GCC_except_table553
- GCC_except_table5530
- GCC_except_table5537
- GCC_except_table5540
- GCC_except_table5542
- GCC_except_table5547
- GCC_except_table5550
- GCC_except_table5553
- GCC_except_table5557
- GCC_except_table5561
- GCC_except_table582
- GCC_except_table589
- GCC_except_table601
- GCC_except_table602
- GCC_except_table604
- GCC_except_table6047
- GCC_except_table6048
- GCC_except_table6067
- GCC_except_table607
- GCC_except_table6077
- GCC_except_table6080
- GCC_except_table6085
- GCC_except_table6088
- GCC_except_table610
- GCC_except_table620
- GCC_except_table622
- GCC_except_table626
- GCC_except_table633
- GCC_except_table6359
- GCC_except_table636
- GCC_except_table6363
- GCC_except_table6408
- GCC_except_table6412
- GCC_except_table6414
- GCC_except_table6416
- GCC_except_table6618
- GCC_except_table6624
- GCC_except_table6628
- GCC_except_table6629
- GCC_except_table6630
- GCC_except_table6631
- GCC_except_table6637
- GCC_except_table6653
- GCC_except_table6688
- GCC_except_table6689
- GCC_except_table6690
- GCC_except_table670
- GCC_except_table6710
- GCC_except_table6722
- GCC_except_table6725
- GCC_except_table6730
- GCC_except_table6732
- GCC_except_table6746
- GCC_except_table680
- GCC_except_table688
- GCC_except_table6970
- GCC_except_table6983
- GCC_except_table6988
- GCC_except_table6991
- GCC_except_table6992
- GCC_except_table6994
- GCC_except_table6995
- GCC_except_table6997
- GCC_except_table7027
- GCC_except_table7049
- GCC_except_table7053
- GCC_except_table7057
- GCC_except_table7062
- GCC_except_table7066
- GCC_except_table7070
- GCC_except_table7074
- GCC_except_table7078
- GCC_except_table7086
- GCC_except_table7088
- GCC_except_table7090
- GCC_except_table7129
- GCC_except_table715
- GCC_except_table719
- GCC_except_table722
- GCC_except_table724
- GCC_except_table7251
- GCC_except_table7285
- GCC_except_table730
- GCC_except_table732
- GCC_except_table7375
- GCC_except_table7376
- GCC_except_table7377
- GCC_except_table7378
- GCC_except_table7379
- GCC_except_table7380
- GCC_except_table7381
- GCC_except_table7443
- GCC_except_table7453
- GCC_except_table7454
- GCC_except_table7469
- GCC_except_table7470
- GCC_except_table7478
- GCC_except_table7484
- GCC_except_table749
- GCC_except_table7497
- GCC_except_table7500
- GCC_except_table7501
- GCC_except_table7506
- GCC_except_table7509
- GCC_except_table7516
- GCC_except_table7519
- GCC_except_table753
- GCC_except_table7540
- GCC_except_table7546
- GCC_except_table7555
- GCC_except_table7557
- GCC_except_table7561
- GCC_except_table7562
- GCC_except_table7569
- GCC_except_table7593
- GCC_except_table7594
- GCC_except_table7599
- GCC_except_table7603
- GCC_except_table7604
- GCC_except_table7607
- GCC_except_table7613
- GCC_except_table7621
- GCC_except_table7623
- GCC_except_table7625
- GCC_except_table7629
- GCC_except_table763
- GCC_except_table769
- GCC_except_table772
- GCC_except_table7743
- GCC_except_table775
- GCC_except_table7780
- GCC_except_table780
- GCC_except_table7837
- GCC_except_table784
- GCC_except_table7840
- GCC_except_table7847
- GCC_except_table7853
- GCC_except_table7860
- GCC_except_table7861
- GCC_except_table7877
- GCC_except_table7881
- GCC_except_table7882
- GCC_except_table7883
- GCC_except_table790
- GCC_except_table791
- GCC_except_table7932
- GCC_except_table7933
- GCC_except_table7935
- GCC_except_table7938
- GCC_except_table7965
- GCC_except_table7966
- GCC_except_table797
- GCC_except_table7971
- GCC_except_table7991
- GCC_except_table8010
- GCC_except_table8011
- GCC_except_table8020
- GCC_except_table8025
- GCC_except_table8026
- GCC_except_table8027
- GCC_except_table8042
- GCC_except_table8045
- GCC_except_table8059
- GCC_except_table8064
- GCC_except_table8070
- GCC_except_table8082
- GCC_except_table8083
- GCC_except_table8088
- GCC_except_table8097
- GCC_except_table8103
- GCC_except_table8108
- GCC_except_table8110
- GCC_except_table8112
- GCC_except_table8116
- GCC_except_table8137
- GCC_except_table8139
- GCC_except_table8166
- GCC_except_table823
- GCC_except_table830
- GCC_except_table8331
- GCC_except_table837
- GCC_except_table838
- GCC_except_table8394
- GCC_except_table8426
- GCC_except_table8429
- GCC_except_table86
- GCC_except_table8634
- GCC_except_table866
- GCC_except_table8671
- GCC_except_table8760
- GCC_except_table8762
- GCC_except_table8764
- GCC_except_table8768
- GCC_except_table8770
- GCC_except_table8772
- GCC_except_table8775
- GCC_except_table8777
- GCC_except_table8779
- GCC_except_table8781
- GCC_except_table8783
- GCC_except_table8786
- GCC_except_table8788
- GCC_except_table8790
- GCC_except_table8797
- GCC_except_table8803
- GCC_except_table8808
- GCC_except_table8811
- GCC_except_table8816
- GCC_except_table8821
- GCC_except_table8824
- GCC_except_table8827
- GCC_except_table8853
- GCC_except_table8856
- GCC_except_table8857
- GCC_except_table889
- GCC_except_table8896
- GCC_except_table8897
- GCC_except_table8898
- GCC_except_table8900
- GCC_except_table8901
- GCC_except_table8903
- GCC_except_table8904
- GCC_except_table8905
- GCC_except_table8907
- GCC_except_table8908
- GCC_except_table8910
- GCC_except_table8914
- GCC_except_table8915
- GCC_except_table8970
- GCC_except_table907
- GCC_except_table9081
- GCC_except_table9085
- GCC_except_table9087
- GCC_except_table9089
- GCC_except_table9092
- GCC_except_table9094
- GCC_except_table9096
- GCC_except_table9098
- GCC_except_table9099
- GCC_except_table9101
- GCC_except_table9103
- GCC_except_table9108
- GCC_except_table9110
- GCC_except_table9111
- GCC_except_table931
- GCC_except_table949
- _OBJC_IVAR_$_HAPNFCReaderSession._discoveryTimeoutTimer
- ___105-[HAP2AccessoryServerSecureTransportPairVerify localPairingIdentityOfECDSAKeyPairSetupSession:withError:]_block_invoke
- ___105-[HAP2AccessoryServerSecureTransportPairVerify localPairingIdentityOfECDSAKeyPairSetupSession:withError:]_block_invoke_2
- ___109-[HAP2AccessoryServerController secureTransport:needsECDSALongTermPublicKeyForPeerWithIdentifier:completion:]_block_invoke
- ___110-[HAP2AccessoryServer(Unpaired) pairingDriver:didSaveRemoteECDSAPairingKey:forAccessoryIdentifier:completion:]_block_invoke
- ___111-[HAP2AccessoryServerSecureTransportPairVerify securitySession:didReceiveLocalPairingIdentityRequestWithError:]_block_invoke
- ___111-[HAP2AccessoryServerSecureTransportPairVerify securitySession:didReceiveLocalPairingIdentityRequestWithError:]_block_invoke_2
- ___113-[HAP2AccessoryServerController secureTransport:needsLocalPairingIdentityForECDSAKeyPairSetupSession:completion:]_block_invoke
- ___117-[HAP2AccessoryServerPairingDriverPairSetupWorkItem pairSetupSession:didReceiveLocalPairingIdentityRequestWithError:]_block_invoke
- ___118-[HAP2AccessoryServerPairingDriverPairSetupWorkItem pairSetupSession:didPairWithPeerIdentifier:ecdsaPairingKey:error:]_block_invoke
- ___124-[HAP2AccessoryServerSecureTransportPairVerify securitySession:didReceiveRequestForPeerPairingIdentityWithIdentifier:error:]_block_invoke
- ___124-[HAP2AccessoryServerSecureTransportPairVerify securitySession:didReceiveRequestForPeerPairingIdentityWithIdentifier:error:]_block_invoke_2
- ___32-[HAP2CoAPClient _didDisconnect]_block_invoke
- ___43-[HAP2AccessoryServer(Paired) closeSession]_block_invoke
- ___45-[HAP2AccessoryServerController closeSession]_block_invoke
- ___64-[HAP2AccessoryServer _browserFastSetHasDiscoveryAdvertisement:]_block_invoke
- ___65-[HAP2AccessoryServerEncodingThread _parseCharacteristics:error:]_block_invoke
- ___67-[HAP2AccessoryServerCoordinator _didDiscoverAccessory:completion:]_block_invoke
- ___87-[HAP2AccessoryServer(Unpaired) pairingDriver:didSaveRemotePairingIdentity:completion:]_block_invoke
- ___91-[HAP2AccessoryServerSecureTransportPairVerify ecdsaLongTermPublicKeyOfPeerWithIdentifier:]_block_invoke
- ___91-[HAP2AccessoryServerSecureTransportPairVerify ecdsaLongTermPublicKeyOfPeerWithIdentifier:]_block_invoke_2
- ___92-[HAP2AccessoryServer(Unpaired) pairingDriver:didRequestLocalPairingIdentityWithCompletion:]_block_invoke
- ___92-[HAP2AccessoryServerPairingDriverPairSetupWorkItem pairSetupSession:didPairWithPeer:error:]_block_invoke
- ___98-[HAP2AccessoryServerController secureTransport:needsRemotePairingIdentityForDeviceID:completion:]_block_invoke
- ___block_descriptor_40_e8_32bs_e28_v24?0"NSData"8"NSError"16ls32l8
- ___block_descriptor_48_e8_32r40r_e69_v32?0"HAP2AccessoryServerDiscoveryBonjourBrowseResultTuple"8Q16^B24lr32l8r40l8
- ___block_descriptor_48_e8_32s40bs_e40_v24?0"HAPPairingIdentity"8"NSError"16ls40l8s32l8
- ___block_descriptor_48_e8_32s40r_e17_v16?0"NSError"8ls32l8r40l8
- ___block_descriptor_56_e8_32s40r48r_e28_v24?0"NSData"8"NSError"16lr40l8r48l8s32l8
- ___block_descriptor_56_e8_32s40r48r_e40_v24?0"HAPPairingIdentity"8"NSError"16lr40l8r48l8s32l8
- ___block_descriptor_56_e8_32s40s48bs_e40_v24?0"HAPECDSAPairingKey"8"NSError"16ls48l8s32l8s40l8
- ___block_descriptor_56_e8_32s40s48r_e45_v32?0"HAP2TLVParamServiceSignature"8Q16^B24ls32l8r48l8s40l8
- ___block_descriptor_56_e8_32s40s48r_e52_v32?0"HAP2TLVParamCharacteristicSignature"8Q16^B24ls32l8r48l8s40l8
- ___block_descriptor_80_e8_32s40s48s56s64r72r_e5_v8?0ls32l8s40l8s48l8r64l8r72l8s56l8
- ___swift_closure_destructor.181Tm
- _logCategory._hmf_once_t108
- _logCategory._hmf_once_t13
- _logCategory._hmf_once_t269
- _logCategory._hmf_once_t47
- _logCategory._hmf_once_t69
- _logCategory._hmf_once_t79
- _logCategory._hmf_once_t83
- _logCategory._hmf_once_t856
- _logCategory._hmf_once_t891
- _logCategory._hmf_once_t98
- _logCategory._hmf_once_v109
- _logCategory._hmf_once_v14
- _logCategory._hmf_once_v270
- _logCategory._hmf_once_v48
- _logCategory._hmf_once_v70
- _logCategory._hmf_once_v80
- _logCategory._hmf_once_v84
- _logCategory._hmf_once_v857
- _logCategory._hmf_once_v892
- _logCategory._hmf_once_v99
CStrings:
+ "%@ Lock-only-set hasDiscoveryAdvertisement=%{public}d"
+ "%@ Not announcing re-established session (readingAttributeDatabase=%@, accessories=%lu)"
+ "%@ Session %lu already announced, skipping re-establish"
+ "%s|%s|%s"
+ "(none)"
+ "(unprintable)"
+ ", Should Allow ECDSA Key Pair Setup: %@"
+ "000000-0000"
+ ": "
+ "<%@: %p primary=%lu secondary=%lu>"
+ "<HAPAVCStreamingControlCommandWrapper value=%@>"
+ "<HAPAVCStreamingControlRequest sessionIdentifier=%@, command=%@>"
+ "<HAPAVCStreamingControlResponse sessionIdentifier=%@, status=%@>"
+ "<HAPAVCStreamingControlStatusWrapper value=%@>"
+ "<HAPAVCViewerRegistrationOperationWrapper value=%@>"
+ "<HAPAVCViewerRegistrationRequest sessionIdentifier=%@, viewerParticipantID=%@, viewerNegotiationBlob=%@, operation=%@>"
+ "<HAPContributingSensor sensorUUID=%@>"
+ "<HAPSensorList contributingSensor=%@>"
+ "<HAPWebRTCOfferOptions SFrameEnabled=%@, SFrameConfiguration=%@>"
+ "B5"
+ "CoreThreadRadio framework not available"
+ "Disconnect request is not supported for %{public}@"
+ "Failed to create XPC dictionary"
+ "Failed to get Thread mesh local prefix: empty string"
+ "Failed to get Thread mesh local prefix: invalid XPC response type"
+ "Failed to get Thread mesh local prefix: property value is not a string"
+ "Failed to remove accessory from keychain with error domain=%{public}@, code=%ld"
+ "Found thread accessory with server ID known = %d paired = %d"
+ "HAPAVCStreamingControlCommandEnd"
+ "HAPAVCStreamingControlStatusError"
+ "HAPAVCStreamingControlStatusSuccess"
+ "HAPAVCStreamingControlStatusUnknownSessionIdentifier"
+ "HAPAVCViewerRegistrationOperationDeregister"
+ "HAPAVCViewerRegistrationOperationRegister"
+ "HAPAVCViewerRegistrationStatusUnknownParticipant"
+ "HAPErrorAlreadyPairedPeerIdentifierKey"
+ "HAPMetadataCharacteristic %@(%@): description: %@"
+ "HAPMetadataUnit %@: description: %@"
+ "IPv6:MeshLocalPrefix"
+ "Legacy WAC accessory Bonjour event - hasPairings %d continuingLegacyPairing: %d"
+ "M%hhu: accessory rejected pair-setup with error %llu (%{public}s) — failing with HAP error %ld"
+ "M5: owner additional-pairing info unavailable, failing pair-setup: %{public}s"
+ "MFi early-auth: DISMISSED — the tap-time validate+roll does not cover M4's full token (%ld bytes); abandoning it and validating the M4 token"
+ "MFi early-auth: M4 echoed the tap-time token and its validate+roll already finished — using its result for M5"
+ "MFi early-auth: M4 echoed the tap-time token but its validate+roll is still in flight — M5 will continue when it returns"
+ "MFi early-auth: M4 hash verified and validate+roll already finished — resolving M5 from its result"
+ "MFi early-auth: the adopted validate+roll returned nothing usable; validating M4's echoed token instead"
+ "MFi early-auth: the tap-time validate+roll has nothing usable for M4's echoed token; validating it instead"
+ "MFi pre-consent roll: consuming the result that arrived during the consent wait"
+ "MFi pre-consent roll: finished after %{public}sms, before consent; parking its result until commit"
+ "MFi pre-consent roll: still in flight at consent after %{public}sms; M5 will continue when it returns"
+ "MFi pre-consent roll: validating M4's token during the consent wait, off the on-tag critical path"
+ "MFi validate+roll resolved after teardown — discarding"
+ "NFC discovery requested (awaiting nfcd confirmation)"
+ "NFC presence check failed (treating the tag as present: %{public}d): %{public}@"
+ "NFC reader became unavailable"
+ "NFC reader is unavailable"
+ "NFC reader session ended: nfcd made the reader unavailable to protect the hardware: %@"
+ "NFC reader session ended: reader became unavailable to protect the hardware: %@"
+ "NFC tag left the field before pair-setup was committed"
+ "NLM-ADDR %@ _setIpAddress: %{private}s -> %{private}s"
+ "No NFC tag connected, so there is nothing in the field"
+ "No pre-warm tag held and reader not cleanly searching; starting NFC discovery for the committed pairing"
+ "No pre-warm tag held; reusing the already-searching reader for the committed pairing"
+ "Pair Setup completed with err: %d, MFi Cert %@"
+ "Pair-setup after M4, flags %08X productData %@"
+ "Pair-setup: M5 failed, ending pair-setup: %{public}s"
+ "Pre-warm NFC discovery stopped: reader is unavailable, re-arming would not help"
+ "Pre-warmed tag left the field before consent; failing the commit for a re-tap"
+ "PropVal"
+ "Refusing AES-CCM pair-setup: primary resident does not support ECDSA keys (featureFlags=0x%llx)"
+ "Refusing AES-CCM pair-setup: primary resident does not support ECDSA keys (featureFlags=0x%x)"
+ "Refusing AES-CCM pair-setup: primary resident does not support ECDSA keys (features=0x%llx)"
+ "Refusing NFC AES-CCM pair-setup: primary resident does not support ECDSA keys"
+ "Retrieved Thread mesh local prefix: %{private}@"
+ "Returning ECDSA local pairing identity for security session: %@, with error: %@"
+ "Reusing the already-detected NFC tag for the committed pairing"
+ "Tearing down session as a result of disconnect with completion call"
+ "Thread mesh local prefix property not found in response"
+ "Timed out, Not handling pending Bonjour for %{public}@, as session restore is active"
+ "Unknown HAPAVCStreamingControlCommand %ld"
+ "Unknown HAPAVCStreamingControlStatus %ld"
+ "Unknown HAPAVCViewerRegistrationOperation %ld"
+ "Using Pairing Identity: %{public}@"
+ "[%{public}@] Disconnect request is not supported for %{public}@"
+ "[%{public}@] Failed to remove accessory from keychain with error domain=%{public}@, code=%ld"
+ "[%{public}@] Found thread accessory with server ID known = %d paired = %d"
+ "[%{public}@] HAPMetadataCharacteristic %@(%@): description: %@"
+ "[%{public}@] HAPMetadataUnit %@: description: %@"
+ "[%{public}@] Legacy WAC accessory Bonjour event - hasPairings %d continuingLegacyPairing: %d"
+ "[%{public}@] NFC discovery requested (awaiting nfcd confirmation)"
+ "[%{public}@] NFC presence check failed (treating the tag as present: %{public}d): %{public}@"
+ "[%{public}@] NFC reader session ended: nfcd made the reader unavailable to protect the hardware: %@"
+ "[%{public}@] NFC reader session ended: reader became unavailable to protect the hardware: %@"
+ "[%{public}@] No NFC tag connected, so there is nothing in the field"
+ "[%{public}@] No pre-warm tag held and reader not cleanly searching; starting NFC discovery for the committed pairing"
+ "[%{public}@] No pre-warm tag held; reusing the already-searching reader for the committed pairing"
+ "[%{public}@] Pair Setup completed with err: %d, MFi Cert %@"
+ "[%{public}@] Pair-setup after M4, flags %08X productData %@"
+ "[%{public}@] Pre-warm NFC discovery stopped: reader is unavailable, re-arming would not help"
+ "[%{public}@] Pre-warmed tag left the field before consent; failing the commit for a re-tap"
+ "[%{public}@] Refusing AES-CCM pair-setup: primary resident does not support ECDSA keys (featureFlags=0x%llx)"
+ "[%{public}@] Refusing AES-CCM pair-setup: primary resident does not support ECDSA keys (featureFlags=0x%x)"
+ "[%{public}@] Refusing AES-CCM pair-setup: primary resident does not support ECDSA keys (features=0x%llx)"
+ "[%{public}@] Refusing NFC AES-CCM pair-setup: primary resident does not support ECDSA keys"
+ "[%{public}@] Returning ECDSA local pairing identity for security session: %@, with error: %@"
+ "[%{public}@] Reusing the already-detected NFC tag for the committed pairing"
+ "[%{public}@] Tearing down session as a result of disconnect with completion call"
+ "[%{public}@] Timed out, Not handling pending Bonjour for %{public}@, as session restore is active"
+ "[%{public}@] [IP Accessory Server HTTP Client] Failed to get self address %d client ref %p"
+ "[%{public}@] [Timing] MFi token validate+roll: %ldms completed=%d error=%{public}@/%ld"
+ "[%{public}@] [Timing] Waited %.2fms for consent (idle, excluded from work total; overlaps the pre-consent MFi roll)"
+ "[%{public}@] nfcd refused the start: reader is unavailable (cooling down, or device too hot)"
+ "[IP Accessory Server HTTP Client] Failed to get self address %d client ref %p"
+ "[Timing] MFi token validate+roll: %ldms completed=%d error=%{public}@/%ld"
+ "[Timing] Waited %.2fms for consent (idle, excluded from work total; overlaps the pre-consent MFi roll)"
+ "com.apple.CoreHAP.HAP2ThreadNetworkUtil.events"
+ "nfcd"
+ "nfcd refused the start: reader is unavailable (cooling down, or device too hot)"
+ "readerReleasedAfterFailure"
+ "readerStartRequested"
+ "v32@?0@\"NSData\"8@\"NSString\"16@\"NSError\"24"
+ "\x81\xf0\xf0A!"
- "\"5"
- "%@ Browser fast-set hasDiscoveryAdvertisement=%{public}d"
- "%@ Failed to fetch ECDSA controller key for %@: %@"
- "%@ Failed to fetch ECDSA key for peer %@: %@"
- "&"
- "<HAPAVCViewerRegistrationRequest sessionIdentifier=%@, viewerParticipantID=%@, viewerNegotiationBlob=%@>"
- "<HAPWebRTCOfferOptions SFrameEnabled=%@>"
- "Cancelling discovery timeout timer"
- "HAPAVCNegotiationStatusBusy"
- "HAPAVCNegotiationStatusUnknownSessionIdentifier"
- "HAPMetadataCharacteristic %@(%@):  description: %@"
- "HAPMetadataUnit %@:  description: %@"
- "Key Bag Pairing Identity to derive ECDSA Key: %@"
- "Legacy WAC accessory Bonjour event - hasPairings %d  continuingLegacyPairing: %d"
- "MFi early-auth: DISMISSED — M4 sent a full token (%ld bytes), not the primed hash; abandoning tap-time validate+roll, validating M4 token"
- "MFi early-auth: M4 hash verified and validate+roll already finished — using its result for M5"
- "NFC discovery started successfully"
- "NFC tag detection timed out after %.0f seconds"
- "No NFC tag detected within %.0f seconds"
- "No pre-warm tag held; restarting NFC discovery with a fresh detection window for the committed pairing"
- "Pair Setup completed with err: %d,  MFi Cert %@"
- "Pair-setup M6 bad status %hhu"
- "Pair-setup after M4, flags %08X  productData %@"
- "Pair-setup: M5: Unable to retrieve pairing identity: %s"
- "Returning ECDSA local pairng identity for security session: %@, with error: %@"
- "Secure Transport PairVerify: Timed out waiting for ECDSA key for peer %@"
- "Secure Transport PairVerify: Timed out waiting for local ECDSA pair-setup identity"
- "Secure Transport PairVerify: Timed out waiting for local pairing identity"
- "Secure Transport PairVerify: Timed out waiting for remote pairing identity"
- "Starting %.0f-second timeout timer for tag detection"
- "Timed out,  Not handling pending Bonjour for %{public}@, as session restore is active"
- "Using ECDSA Controller Pairing Identity: %@"
- "Using Pairing Identity: %@"
- "[%{public}@] Cancelling discovery timeout timer"
- "[%{public}@] HAPMetadataCharacteristic %@(%@):  description: %@"
- "[%{public}@] HAPMetadataUnit %@:  description: %@"
- "[%{public}@] Legacy WAC accessory Bonjour event - hasPairings %d  continuingLegacyPairing: %d"
- "[%{public}@] NFC discovery started successfully"
- "[%{public}@] NFC tag detection timed out after %.0f seconds"
- "[%{public}@] No pre-warm tag held; restarting NFC discovery with a fresh detection window for the committed pairing"
- "[%{public}@] Pair Setup completed with err: %d,  MFi Cert %@"
- "[%{public}@] Pair-setup after M4, flags %08X  productData %@"
- "[%{public}@] Returning ECDSA local pairng identity for security session: %@, with error: %@"
- "[%{public}@] Starting %.0f-second timeout timer for tag detection"
- "[%{public}@] Timed out,  Not handling pending Bonjour for %{public}@, as session restore is active"
- "[%{public}@] [Timing] Waited %.2fms for consent (idle, excluded from work total)"
- "[Timing] Waited %.2fms for consent (idle, excluded from work total)"
- "readerArmed"
- "\x81\xf0\xb1!"
```
