## iTunesCloud

> `/System/Library/PrivateFrameworks/iTunesCloud.framework/iTunesCloud`

```diff

-4026.110.1.0.0
-  __TEXT.__text: 0x3c9cac
-  __TEXT.__objc_methlist: 0x187cc
-  __TEXT.__const: 0x225e8
+4026.200.17.0.0
+  __TEXT.__text: 0x3cc900
+  __TEXT.__objc_methlist: 0x189a4
+  __TEXT.__const: 0x225f8
   __TEXT.__dlopen_cstrs: 0x4cf
-  __TEXT.__gcc_except_tab: 0x2b50
-  __TEXT.__cstring: 0x17a42
-  __TEXT.__oslogstring: 0x22336
+  __TEXT.__gcc_except_tab: 0x2b70
+  __TEXT.__cstring: 0x17c21
+  __TEXT.__oslogstring: 0x22515
   __TEXT.__ustring: 0x8e
-  __TEXT.__unwind_info: 0x6b10
+  __TEXT.__unwind_info: 0x6b68
   __TEXT.__eh_frame: 0x50
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x7448
+  __DATA_CONST.__const: 0x7490
   __DATA_CONST.__objc_classlist: 0xdd0
   __DATA_CONST.__objc_catlist: 0x78
   __DATA_CONST.__objc_protolist: 0x300
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0xa570
+  __DATA_CONST.__objc_selrefs: 0xa650
   __DATA_CONST.__objc_protorefs: 0xc8
   __DATA_CONST.__objc_superrefs: 0xc00
   __DATA_CONST.__objc_arraydata: 0x498
-  __DATA_CONST.__got: 0x1088
-  __AUTH_CONST.__const: 0x18638
-  __AUTH_CONST.__cfstring: 0x18a80
-  __AUTH_CONST.__objc_const: 0x31728
+  __DATA_CONST.__got: 0x1090
+  __AUTH_CONST.__const: 0x18658
+  __AUTH_CONST.__cfstring: 0x18b60
+  __AUTH_CONST.__objc_const: 0x31a40
   __AUTH_CONST.__objc_intobj: 0x480
   __AUTH_CONST.__objc_arrayobj: 0x48
   __AUTH_CONST.__objc_dictobj: 0x258
   __AUTH_CONST.__auth_got: 0xa68
   __AUTH_CONST.__auth_ptr: 0x0
-  __AUTH.__objc_data: 0x5640
-  __DATA.__objc_ivar: 0x24a8
-  __DATA.__data: 0x3198
-  __DATA.__bss: 0x540
+  __AUTH.__objc_data: 0x230
+  __DATA.__objc_ivar: 0x24e0
+  __DATA.__data: 0x30c8
+  __DATA.__bss: 0x550
   __DATA.__common: 0xb88
-  __DATA_DIRTY.__objc_data: 0x33e0
-  __DATA_DIRTY.__data: 0x108
+  __DATA_DIRTY.__objc_data: 0x87f0
+  __DATA_DIRTY.__data: 0x1d0
   __DATA_DIRTY.__bss: 0x398
   - /System/Library/Frameworks/AVFAudio.framework/AVFAudio
   - /System/Library/Frameworks/AVFoundation.framework/AVFoundation

   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
   - /usr/lib/libsqlite3.dylib
-  Functions: 10164
-  Symbols:   17844
-  CStrings:  5496
+  Functions: 10201
+  Symbols:   17903
+  CStrings:  5510
 
Symbols:
+ +[ICCloudAPNSChannelPushMessage dateFromISO8601Timestamp:defaultFetchStartSeconds:]
+ +[ICCloudAPNSChannelPushMessage messageWithAPSIncomingMessage:defaultFetchStartSeconds:]
+ +[ICCloudEntityUpdate allUpdatesPaused]
+ +[ICCloudEntityUpdate pushReceivedUpdateWithMessages:]
+ +[ICCloudEntityUpdateRegistrationToken supportsSecureCoding]
+ +[ICCloudServiceStatusMonitor revokeMusicKitUserTokensForAccountDSID:withCompletion:]
+ -[ICCloudAPNSChannelPushMessage hash]
+ -[ICCloudAPNSChannelPushMessage isEqual:]
+ -[ICCloudAPNSChannelRegistrationConfiguration initWithChannelID:entityType:storeID:reason:expectedReleaseDate:lastProcessedGoLiveTimestamp:registrationToken:]
+ -[ICCloudAPNSChannelRegistrationConfiguration lastProcessedGoLiveTimestamp]
+ -[ICCloudAPNSChannelRegistrationConfiguration registrationToken]
+ -[ICCloudChannelRegistrationAvailability _updateCloudChannelConfigurationUsingBag:source:]
+ -[ICCloudChannelRegistrationAvailability registrationFetchEndOffsetSeconds]
+ -[ICCloudChannelRegistrationAvailability registrationFetchStartOffsetSeconds]
+ -[ICCloudClientAPNSChannelManager _computeChannelStatesForResync]
+ -[ICCloudClientAPNSChannelManager _deliverMessages:forChannelID:group:]
+ -[ICCloudClientAPNSChannelManager _dispatchUpdate:toRegistrationsForChannelIDs:]
+ -[ICCloudClientAPNSChannelManager _resumeUpdates]
+ -[ICCloudClientAPNSChannelManager _serverSetupDidComplete]
+ -[ICCloudClientAPNSChannelManager _xpcRegisterChannelState:completion:]
+ -[ICCloudClientAPNSChannelManager _xpcUnregisterToken:completion:]
+ -[ICCloudClientAPNSChannelManager cloudChannelSubscriptionsRegistrationOffsetsChanged:]
+ -[ICCloudClientAPNSChannelManager monitoredChannelsWereUpdatedWithMessagesByChannelID:completion:]
+ -[ICCloudClientAPNSChannelManager unregisterAllUpdates]
+ -[ICCloudEntityUpdate initWithType:pushMessages:error:channelIDs:unsubscribeReason:resubscribeReason:]
+ -[ICCloudEntityUpdate pushMessages]
+ -[ICCloudEntityUpdateRegistrationToken _UUID]
+ -[ICCloudEntityUpdateRegistrationToken _initWithUUID:]
+ -[ICCloudEntityUpdateRegistrationToken encodeWithCoder:]
+ -[ICCloudEntityUpdateRegistrationToken initWithCoder:]
+ -[ICCloudServiceStatusMonitor initWithUserIdentity:]
+ -[ICInAppMessageConfiguration syncEnabled]
+ -[ICInAppMessageManager _performSyncIfEnabledWithCompletion:]
+ -[ICLibraryAuthServiceClientTokenProvider _handleAccountAuthenticationDidFinishNotification]
+ -[ICLibraryAuthServiceClientTokenProvider _shouldIncrementFailureCountForError:]
+ -[ICLibraryAuthServiceClientTokenProvider _updateEntriesForExternalAccountsChanges:]
+ -[ICLibraryAuthServiceClientTokenStatus allowRecoveryRefresh]
+ -[ICLibraryAuthServiceClientTokenStatus failureCount]
+ -[ICLibraryAuthServiceClientTokenStatus setAllowRecoveryRefresh:]
+ -[ICLibraryAuthServiceClientTokenStatus setFailureCount:]
+ -[ICMusicLibraryAuthTokenStatus failureCount]
+ -[ICMusicLibraryAuthTokenStatus setFailureCount:]
+ -[_ICCloudAPNSChannelRegistrationState initWithChannelID:entityType:storeID:reasons:expectedReleaseDate:registrationToken:lastProcessedGoLiveTimestamp:]
+ -[_ICCloudAPNSChannelRegistrationState lastProcessedGoLiveTimestamp]
+ -[_ICCloudAPNSChannelRegistrationState registrationToken]
+ -[_ICCloudUpdateRegistration initWithConfiguration:handler:token:]
+ -[_ICCloudUpdateRegistration lastProcessedGoLiveTimestamp]
+ -[_ICCloudUpdateRegistration setLastProcessedGoLiveTimestamp:]
+ -[_ICCloudUpdateRegistration token]
+ GCC_except_table1030
+ GCC_except_table1038
+ GCC_except_table1126
+ GCC_except_table1152
+ GCC_except_table1204
+ GCC_except_table1208
+ GCC_except_table1210
+ GCC_except_table1212
+ GCC_except_table1284
+ GCC_except_table1378
+ GCC_except_table1577
+ GCC_except_table1590
+ GCC_except_table1848
+ GCC_except_table2032
+ GCC_except_table2061
+ GCC_except_table2076
+ GCC_except_table2116
+ GCC_except_table2228
+ GCC_except_table2243
+ GCC_except_table2294
+ GCC_except_table2300
+ GCC_except_table2307
+ GCC_except_table2335
+ GCC_except_table2350
+ GCC_except_table2355
+ GCC_except_table2362
+ GCC_except_table2365
+ GCC_except_table2378
+ GCC_except_table2455
+ GCC_except_table2464
+ GCC_except_table2470
+ GCC_except_table2473
+ GCC_except_table2475
+ GCC_except_table2486
+ GCC_except_table2488
+ GCC_except_table2505
+ GCC_except_table253
+ GCC_except_table2544
+ GCC_except_table256
+ GCC_except_table2575
+ GCC_except_table2577
+ GCC_except_table2579
+ GCC_except_table2581
+ GCC_except_table274
+ GCC_except_table2935
+ GCC_except_table2980
+ GCC_except_table3128
+ GCC_except_table3145
+ GCC_except_table3155
+ GCC_except_table3179
+ GCC_except_table3189
+ GCC_except_table3287
+ GCC_except_table3566
+ GCC_except_table3570
+ GCC_except_table3573
+ GCC_except_table3588
+ GCC_except_table3599
+ GCC_except_table3618
+ GCC_except_table3658
+ GCC_except_table3672
+ GCC_except_table3785
+ GCC_except_table3945
+ GCC_except_table4110
+ GCC_except_table4152
+ GCC_except_table4252
+ GCC_except_table4260
+ GCC_except_table4262
+ GCC_except_table4264
+ GCC_except_table4268
+ GCC_except_table4272
+ GCC_except_table4279
+ GCC_except_table4283
+ GCC_except_table4298
+ GCC_except_table4301
+ GCC_except_table4480
+ GCC_except_table4532
+ GCC_except_table4536
+ GCC_except_table4539
+ GCC_except_table4544
+ GCC_except_table4608
+ GCC_except_table4650
+ GCC_except_table4654
+ GCC_except_table4656
+ GCC_except_table4723
+ GCC_except_table474
+ GCC_except_table479
+ GCC_except_table4800
+ GCC_except_table4888
+ GCC_except_table4971
+ GCC_except_table5040
+ GCC_except_table5121
+ GCC_except_table5281
+ GCC_except_table5538
+ GCC_except_table5643
+ GCC_except_table5691
+ GCC_except_table5715
+ GCC_except_table5756
+ GCC_except_table5757
+ GCC_except_table5830
+ GCC_except_table5848
+ GCC_except_table6108
+ GCC_except_table6116
+ GCC_except_table6135
+ GCC_except_table6136
+ GCC_except_table6137
+ GCC_except_table6138
+ GCC_except_table6144
+ GCC_except_table6149
+ GCC_except_table6154
+ GCC_except_table6180
+ GCC_except_table6188
+ GCC_except_table6197
+ GCC_except_table6207
+ GCC_except_table6241
+ GCC_except_table6273
+ GCC_except_table6286
+ GCC_except_table6293
+ GCC_except_table6294
+ GCC_except_table6354
+ GCC_except_table6357
+ GCC_except_table6371
+ GCC_except_table6394
+ GCC_except_table6399
+ GCC_except_table6405
+ GCC_except_table6408
+ GCC_except_table6411
+ GCC_except_table6414
+ GCC_except_table6417
+ GCC_except_table6420
+ GCC_except_table6423
+ GCC_except_table6426
+ GCC_except_table6429
+ GCC_except_table6432
+ GCC_except_table6435
+ GCC_except_table6536
+ GCC_except_table6750
+ GCC_except_table6757
+ GCC_except_table6931
+ GCC_except_table6935
+ GCC_except_table6937
+ GCC_except_table6964
+ GCC_except_table7010
+ GCC_except_table7184
+ GCC_except_table7316
+ GCC_except_table7436
+ GCC_except_table7448
+ GCC_except_table7471
+ GCC_except_table7549
+ GCC_except_table7564
+ GCC_except_table7587
+ GCC_except_table7598
+ GCC_except_table761
+ GCC_except_table7642
+ GCC_except_table7643
+ GCC_except_table7644
+ GCC_except_table7645
+ GCC_except_table7646
+ GCC_except_table7687
+ GCC_except_table7705
+ GCC_except_table773
+ GCC_except_table7757
+ GCC_except_table7760
+ GCC_except_table7769
+ GCC_except_table7776
+ GCC_except_table7823
+ GCC_except_table7962
+ GCC_except_table8020
+ GCC_except_table8021
+ GCC_except_table8034
+ GCC_except_table815
+ GCC_except_table8456
+ GCC_except_table8464
+ GCC_except_table8486
+ GCC_except_table8493
+ GCC_except_table8504
+ GCC_except_table8509
+ GCC_except_table8544
+ GCC_except_table8547
+ GCC_except_table8618
+ GCC_except_table8663
+ GCC_except_table8711
+ GCC_except_table8740
+ GCC_except_table8745
+ GCC_except_table8747
+ GCC_except_table8749
+ GCC_except_table8781
+ GCC_except_table8913
+ GCC_except_table8921
+ GCC_except_table8926
+ GCC_except_table8941
+ GCC_except_table8949
+ GCC_except_table8993
+ GCC_except_table9142
+ GCC_except_table9146
+ GCC_except_table9148
+ GCC_except_table9186
+ GCC_except_table9189
+ GCC_except_table9196
+ GCC_except_table9199
+ GCC_except_table938
+ GCC_except_table9444
+ GCC_except_table9454
+ GCC_except_table9512
+ GCC_except_table9599
+ GCC_except_table9604
+ GCC_except_table9844
+ _ICCloudChannelRegistrationEndOffsetSeconds
+ _ICCloudChannelRegistrationFetchEndOffsetSeconds
+ _ICCloudChannelRegistrationFetchStartOffsetSeconds
+ _ICCloudChannelRegistrationOffsetsDidChangeNotification
+ _ICCloudChannelRegistrationStartOffsetSeconds
+ _OBJC_IVAR_$_ICCloudAPNSChannelRegistrationConfiguration._lastProcessedGoLiveTimestamp
+ _OBJC_IVAR_$_ICCloudAPNSChannelRegistrationConfiguration._registrationToken
+ _OBJC_IVAR_$_ICCloudChannelRegistrationAvailability._registrationFetchEndOffsetSeconds
+ _OBJC_IVAR_$_ICCloudChannelRegistrationAvailability._registrationFetchStartOffsetSeconds
+ _OBJC_IVAR_$_ICCloudClientAPNSChannelManager._deliveryQueue
+ _OBJC_IVAR_$_ICCloudClientAPNSChannelManager._pauseUpdates
+ _OBJC_IVAR_$_ICCloudClientAPNSChannelManager._registrationsByChannel
+ _OBJC_IVAR_$_ICCloudEntityUpdate._pushMessages
+ _OBJC_IVAR_$_ICCloudServiceStatusMonitor._userIdentity
+ _OBJC_IVAR_$_ICLibraryAuthServiceClientTokenStatus._allowRecoveryRefresh
+ _OBJC_IVAR_$_ICLibraryAuthServiceClientTokenStatus._failureCount
+ _OBJC_IVAR_$_ICMusicLibraryAuthTokenStatus._failureCount
+ _OBJC_IVAR_$__ICCloudAPNSChannelRegistrationState._lastProcessedGoLiveTimestamp
+ _OBJC_IVAR_$__ICCloudAPNSChannelRegistrationState._registrationToken
+ _OBJC_IVAR_$__ICCloudUpdateRegistration._lastProcessedGoLiveTimestamp
+ _OBJC_IVAR_$__ICCloudUpdateRegistration._token
+ __ContentTypeForPayloadValue.sContentTypeDict
+ __ISO8601DateFormatterWithFractionalSeconds.sFormatter
+ __ISO8601DateFormatterWithFractionalSeconds.sOnceToken
+ __OBJC_$_CLASS_PROP_LIST_ICCloudEntityUpdateRegistrationToken
+ __OBJC_$_PROP_LIST_ICCloudEntityUpdateRegistrationToken
+ ___58-[ICCloudClientAPNSChannelManager _serverSetupDidComplete]_block_invoke
+ ___61-[ICInAppMessageManager _performSyncIfEnabledWithCompletion:]_block_invoke
+ ___61-[ICInAppMessageManager _performSyncIfEnabledWithCompletion:]_block_invoke_2
+ ___66-[ICCloudClientAPNSChannelManager _xpcUnregisterToken:completion:]_block_invoke
+ ___71-[ICCloudClientAPNSChannelManager _deliverMessages:forChannelID:group:]_block_invoke
+ ___71-[ICCloudClientAPNSChannelManager _deliverMessages:forChannelID:group:]_block_invoke_2
+ ___71-[ICCloudClientAPNSChannelManager _xpcRegisterChannelState:completion:]_block_invoke
+ ___80-[ICCloudClientAPNSChannelManager _dispatchUpdate:toRegistrationsForChannelIDs:]_block_invoke
+ ___84-[ICLibraryAuthServiceClientTokenProvider _updateEntriesForExternalAccountsChanges:]_block_invoke
+ ___84-[ICLibraryAuthServiceClientTokenProvider _updateEntriesForExternalAccountsChanges:]_block_invoke_2
+ ___85+[ICCloudServiceStatusMonitor revokeMusicKitUserTokensForAccountDSID:withCompletion:]_block_invoke
+ ____ISO8601DateFormatterWithFractionalSeconds_block_invoke
+ ___block_descriptor_48_e8_32r40r_e64_v32?0"NSNumber"8"ICLibraryAuthServiceClientTokenStatus"16^B24lr32l8r40l8
+ ___block_descriptor_48_e8_32s40bs_e49_v24?0"ICInAppMessageConfiguration"8"NSError"16ls32l8s40l8
+ ___block_descriptor_48_e8_32s40bs_e58_v24?0"ICCloudEntityUpdateRegistrationToken"8"NSError"16ls32l8s40l8
+ ___block_descriptor_49_e8_32s40r_e64_v32?0"NSNumber"8"ICLibraryAuthServiceClientTokenStatus"16^B24ls32l8r40l8
+ ___block_descriptor_80_e8_32s40s48s56bs64bs_e58_v24?0"ICCloudEntityUpdateRegistrationToken"8"NSError"16ls32l8s40l8s56l8s48l8s64l8
+ __handleAccountAuthenticationDidFinishNotification
- +[ICCloudAPNSChannelPushMessage dateFromISO8601Timestamp:]
- +[ICCloudAPNSChannelPushMessage messageWithAPSIncomingMessage:]
- -[ICCloudChannelRegistrationAvailability _commitAvailability:source:]
- -[ICCloudClient unregisterUpdatesForChannelID:reason:]
- -[ICCloudClientAPNSChannelManager _snapshotChannelStatesForResync]
- -[ICCloudClientAPNSChannelManager _xpcUpdateReasonsWithState:completion:]
- -[ICCloudClientAPNSChannelManager handleCloudServerSetupCompleted]
- -[ICCloudClientAPNSChannelManager monitoredEntityWasUpdatedWithMessage:]
- -[ICCloudClientAPNSChannelManager unregisterUpdatesForChannelID:reason:]
- -[ICCloudEntityUpdate initWithType:pushMessage:error:channelIDs:unsubscribeReason:resubscribeReason:]
- -[ICCloudEntityUpdateRegistrationToken _initInternal]
- -[ICCloudServiceStatusMonitor requestUserTokenForDeveloperToken:completionHandler:]
- -[ICLibraryAuthServiceClientTokenProvider _shouldStopBackgroundRefreshForError:]
- -[ICLibraryAuthServiceClientTokenProvider _updateEntriesForAccountsChanges]
- -[ICMusicLibraryAuthTokenStatus setShouldExcludeFromBackgroundRefresh:]
- -[_ICCloudUpdateRegistration initWithConfiguration:handler:]
- GCC_except_table1021
- GCC_except_table1029
- GCC_except_table1117
- GCC_except_table1143
- GCC_except_table1195
- GCC_except_table1199
- GCC_except_table1201
- GCC_except_table1203
- GCC_except_table1275
- GCC_except_table1370
- GCC_except_table1569
- GCC_except_table1582
- GCC_except_table1840
- GCC_except_table2024
- GCC_except_table2053
- GCC_except_table2068
- GCC_except_table2108
- GCC_except_table2220
- GCC_except_table2235
- GCC_except_table2284
- GCC_except_table2286
- GCC_except_table2299
- GCC_except_table2327
- GCC_except_table2342
- GCC_except_table2347
- GCC_except_table2349
- GCC_except_table2354
- GCC_except_table2370
- GCC_except_table2447
- GCC_except_table2456
- GCC_except_table2459
- GCC_except_table2462
- GCC_except_table2465
- GCC_except_table247
- GCC_except_table2478
- GCC_except_table2480
- GCC_except_table2497
- GCC_except_table250
- GCC_except_table2536
- GCC_except_table2567
- GCC_except_table2569
- GCC_except_table2571
- GCC_except_table2573
- GCC_except_table265
- GCC_except_table2923
- GCC_except_table2968
- GCC_except_table3115
- GCC_except_table3132
- GCC_except_table3142
- GCC_except_table3166
- GCC_except_table3176
- GCC_except_table3274
- GCC_except_table3553
- GCC_except_table3557
- GCC_except_table3560
- GCC_except_table3575
- GCC_except_table3586
- GCC_except_table3605
- GCC_except_table3645
- GCC_except_table3659
- GCC_except_table3772
- GCC_except_table3932
- GCC_except_table4097
- GCC_except_table4139
- GCC_except_table4239
- GCC_except_table4247
- GCC_except_table4249
- GCC_except_table4251
- GCC_except_table4253
- GCC_except_table4255
- GCC_except_table4259
- GCC_except_table4270
- GCC_except_table4285
- GCC_except_table4288
- GCC_except_table4467
- GCC_except_table4519
- GCC_except_table4523
- GCC_except_table4526
- GCC_except_table4531
- GCC_except_table4595
- GCC_except_table4637
- GCC_except_table4641
- GCC_except_table4643
- GCC_except_table467
- GCC_except_table4710
- GCC_except_table472
- GCC_except_table4787
- GCC_except_table4875
- GCC_except_table4958
- GCC_except_table5026
- GCC_except_table5107
- GCC_except_table5267
- GCC_except_table5524
- GCC_except_table5629
- GCC_except_table5677
- GCC_except_table5701
- GCC_except_table5742
- GCC_except_table5743
- GCC_except_table5816
- GCC_except_table5834
- GCC_except_table6094
- GCC_except_table6101
- GCC_except_table6109
- GCC_except_table6120
- GCC_except_table6121
- GCC_except_table6122
- GCC_except_table6123
- GCC_except_table6129
- GCC_except_table6134
- GCC_except_table6150
- GCC_except_table6167
- GCC_except_table6173
- GCC_except_table6191
- GCC_except_table6225
- GCC_except_table6257
- GCC_except_table6270
- GCC_except_table6277
- GCC_except_table6278
- GCC_except_table6338
- GCC_except_table6341
- GCC_except_table6355
- GCC_except_table6378
- GCC_except_table6383
- GCC_except_table6389
- GCC_except_table6392
- GCC_except_table6395
- GCC_except_table6398
- GCC_except_table6401
- GCC_except_table6404
- GCC_except_table6407
- GCC_except_table6410
- GCC_except_table6413
- GCC_except_table6416
- GCC_except_table6419
- GCC_except_table6520
- GCC_except_table6734
- GCC_except_table6741
- GCC_except_table6915
- GCC_except_table6919
- GCC_except_table6921
- GCC_except_table6948
- GCC_except_table6994
- GCC_except_table7167
- GCC_except_table7299
- GCC_except_table7419
- GCC_except_table7431
- GCC_except_table7454
- GCC_except_table7532
- GCC_except_table754
- GCC_except_table7547
- GCC_except_table7570
- GCC_except_table7581
- GCC_except_table7625
- GCC_except_table7626
- GCC_except_table7627
- GCC_except_table7628
- GCC_except_table7629
- GCC_except_table766
- GCC_except_table7670
- GCC_except_table7688
- GCC_except_table7740
- GCC_except_table7743
- GCC_except_table7752
- GCC_except_table7759
- GCC_except_table7806
- GCC_except_table7896
- GCC_except_table7987
- GCC_except_table7988
- GCC_except_table8001
- GCC_except_table808
- GCC_except_table8423
- GCC_except_table8427
- GCC_except_table8431
- GCC_except_table8453
- GCC_except_table8471
- GCC_except_table8476
- GCC_except_table8511
- GCC_except_table8514
- GCC_except_table8585
- GCC_except_table8630
- GCC_except_table8678
- GCC_except_table8707
- GCC_except_table8712
- GCC_except_table8714
- GCC_except_table8716
- GCC_except_table8748
- GCC_except_table8880
- GCC_except_table8888
- GCC_except_table8893
- GCC_except_table8908
- GCC_except_table8916
- GCC_except_table8960
- GCC_except_table9109
- GCC_except_table9113
- GCC_except_table9115
- GCC_except_table9153
- GCC_except_table9156
- GCC_except_table9163
- GCC_except_table9166
- GCC_except_table920
- GCC_except_table9407
- GCC_except_table9417
- GCC_except_table9475
- GCC_except_table9562
- GCC_except_table9567
- GCC_except_table9807
- _OBJC_IVAR_$_ICCloudClientAPNSChannelManager._listenerEndpointProvider
- _OBJC_IVAR_$_ICCloudClientAPNSChannelManager._tokensByChannelAndReason
- __ContentTypeForPayloadValue.__contentTypeDict
- ___52-[ICInAppMessageManager _performSyncWithCompletion:]_block_invoke_2
- ___62-[ICCloudClientAPNSChannelManager unregisterUpdatesForTokens:]_block_invoke
- ___64-[ICCloudClientAPNSChannelManager channelRegistrationsDisabled:]_block_invoke
- ___66-[ICCloudClientAPNSChannelManager handleCloudServerSetupCompleted]_block_invoke
- ___72-[ICCloudClientAPNSChannelManager monitoredEntityWasUpdatedWithMessage:]_block_invoke
- ___72-[ICCloudClientAPNSChannelManager unregisterUpdatesForChannelID:reason:]_block_invoke
- ___73-[ICCloudClientAPNSChannelManager _xpcUpdateReasonsWithState:completion:]_block_invoke
- ___75-[ICLibraryAuthServiceClientTokenProvider _updateEntriesForAccountsChanges]_block_invoke
- ___75-[ICLibraryAuthServiceClientTokenProvider _updateEntriesForAccountsChanges]_block_invoke_2
- ___83-[ICCloudClientAPNSChannelManager _tearDownAllRegistrationsWithError:notifyDaemon:]_block_invoke_2
- ___85-[ICCloudServiceStatusMonitor revokeMusicKitUserTokensForAccountDSID:withCompletion:]_block_invoke
- ___block_descriptor_41_e8_32r_e64_v32?0"NSNumber"8"ICLibraryAuthServiceClientTokenStatus"16^B24lr32l8
- ___block_descriptor_56_e8_32s40r48r_e64_v32?0"NSNumber"8"ICLibraryAuthServiceClientTokenStatus"16^B24lr40l8r48l8s32l8
- ___block_descriptor_57_e8_32s40bs48bs_e17_v16?0"NSError"8ls32l8s40l8s48l8
- ___block_descriptor_98_e8_32s40s48s56s64s72s80bs_e5_v8?0ls32l8s40l8s48l8s56l8s64l8s80l8s72l8
CStrings:
+ "%{public}@ Allowing recovery refresh for account %{public}@"
+ "%{public}@ Cancelling existing periodic poll task"
+ "%{public}@ Clearing error state for account %{public}@ that was pending privacy acceptance"
+ "%{public}@ Failed to load configuration for sync. err=%{public}@"
+ "%{public}@ Not scheduling periodic poll because in-app message syncing is disabled. err=%{public}@"
+ "%{public}@ Not scheduling refresh timer since there are no accounts to schedule"
+ "%{public}@ Not syncing because in-app message syncing is disabled"
+ "<%@ %p channelID=%@ contentType=%ld storeID=%lld storefront=%@ goLiveDate=%@ relevanceBitmask=0x%llx receivedDate=%@>"
+ "<%@ %p channelID=%@ entityType=%ld storeID=%lld reason=%ld expectedReleaseDate=%@ lastProcessedGoLiveTimestamp=%@ registrationToken=%p observesAllLibraryAlbums=%d>"
+ "<%@ %p channelID=%@ entityType=%ld storeID=%lld reasons=%@ expectedReleaseDate=%@ registrationToken=%@ lastProcessedGoLiveTimestamp=%@>"
+ "<%@ %p type=%@ pushMessages=%@ error=%@ channelIDs=%@ unsubscribeReason=%@ resubscribeReason=%@>"
+ "<%@: %p %@>"
+ "<%@:%p result=%@ lastError=%@ lastUpdate='%@' failureCount=%lu allowRecoveryRefresh=%@"
+ "ICCloudAPNSChannelPushMessage - Could not create date from time=%{public}@, setting to %{public}@"
+ "ICCloudChannelRegistrationAvailability - availability changed old=%{public}@ new=%{public}@, registrationStartOffset old=%lu, new=%lu,  registrationEndOffset old=%lu, new=%lu, source=%{public}@"
+ "ICCloudChannelRegistrationAvailability - scheduling bag fetch retry delay=%.0f"
+ "ICCloudChannelRegistrationEndOffsetSeconds"
+ "ICCloudChannelRegistrationOffsetsDidChangeNotification"
+ "ICCloudChannelRegistrationStartOffsetSeconds"
+ "ICCloudClient - not unregistering; token is nil."
+ "ICCloudClientAPNSChannelManager - dispatching a lifecycle update channels=%{public}@ handlers=%lu"
+ "ICCloudClientAPNSChannelManager - dispatching updates channelID=%{public}@ ordered=%lu unordered=%lu"
+ "ICCloudClientAPNSChannelManager - feature disabled daemonChannels=%{public}@ localOnly=%{public}@"
+ "ICCloudClientAPNSChannelManager - not able to registerChannelState channelID=%{public}@ err=%{public}@"
+ "ICCloudClientAPNSChannelManager - not able to send registerChannelState; proxy error. channelID=%{public}@ err=%{public}@"
+ "ICCloudClientAPNSChannelManager - not able to send unregisterChannelWithToken; proxy err=%{public}@"
+ "ICCloudClientAPNSChannelManager - not able to unregisterChannelWithToken err=%{public}@"
+ "ICCloudClientAPNSChannelManager - not delivering per-channel cancellation channelIDs=%{public}@; updates are paused"
+ "ICCloudClientAPNSChannelManager - not delivering pushes; feature is unavailable. channelCount=%lu"
+ "ICCloudClientAPNSChannelManager - not dispatching a lifecycle update channels=%{public}@; updates are paused"
+ "ICCloudClientAPNSChannelManager - not dispatching observe-all update; updates are paused."
+ "ICCloudClientAPNSChannelManager - not dispatching updates; no handlers on channelID=%{public}@"
+ "ICCloudClientAPNSChannelManager - not registering; daemon minted no token channelID=%{public}@ err=%{public}@"
+ "ICCloudClientAPNSChannelManager - not resyncing after server setup; hasRegistrations=%{BOOL}u, updatesPaused=%{BOOL}u, _lastSetupCompletedResyncRequest=%{public}@"
+ "ICCloudClientAPNSChannelManager - not sending registerChannelState; no XPC connection. channelID=%{public}@"
+ "ICCloudClientAPNSChannelManager - not sending unregisterChannelWithToken; no XPC connection."
+ "ICCloudClientAPNSChannelManager - pausing updates is not allowed on this platform"
+ "ICCloudClientAPNSChannelManager - receiving updates channelID=%{public}@ count=%lu"
+ "ICCloudClientAPNSChannelManager - registered token=%{public}@ channelID=%{public}@ reason=%ld"
+ "ICCloudClientAPNSChannelManager - resyncing all existing registrations _pauseUpdates=%{BOOL}u."
+ "ICCloudClientAPNSChannelManager - sending registerChannelState state=%{public}@"
+ "ICCloudClientAPNSChannelManager - tearing down registrations tokens=%lu handlers=%lu notifyDaemon=%{BOOL}u paused=%{BOOL}u err=%{public}@"
+ "ICCloudServiceStatusMonitor %{public}@: Connection to %{public}@ failed to get remote object proxy: %{public}@"
+ "ICCloudServiceStatusMonitor %{public}@: Connection to %{public}@ service interrupted."
+ "ICCloudServiceStatusMonitor %{public}@: Connection to %{public}@ service invalidated."
+ "ICCloudServiceStatusMonitor %{public}@: Revocation of music user tokens completed"
+ "ICCloudServiceStatusMonitor %{public}@: Revocation of music user tokens completed error=%{public}@"
+ "ICCloudServiceStatusMonitor %{public}@: Revoking music user tokens DSID %{public}@"
+ "UpdatesPaused"
+ "allowRecoveryRefresh"
+ "com.apple.StoreServices.authfinish"
+ "com.apple.iTunesCloud.ICCloudClientAPNSChannelManager.deliveryQueue"
+ "inAppMessagesSyncEnabled"
+ "lastProcessedGoLiveTimestamp"
+ "registrationToken"
+ "v24@?0@\"ICCloudEntityUpdateRegistrationToken\"8@\"NSError\"16"
- "%{public}@ Skipping background refresh of DSID %@. last error: %{public}@}"
- "%{public}@: Revocation of music user tokens completed"
- "%{public}@: Revocation of music user tokens completed error=%{public}@"
- "%{public}@: Revoking music user tokens DSID %{public}@"
- "<%@ %p channelID=%@ contentType=%ld _storeID=%lld storefront=%@ goLiveDate=%@ relevanceBitmask=0x%llx receivedDate=%@>"
- "<%@ %p channelID=%@ entityType=%ld storeID=%lld reason=%ld expectedReleaseDate=%@ observesAllLibraryAlbums=%d>"
- "<%@ %p channelID=%@ entityType=%ld storeID=%lld reasons=%@ expectedReleaseDate=%@>"
- "<%@ %p type=%@ pushMessage=%@ error=%@ channelIDs=%@ unsubscribeReason=%@ resubscribeReason=%@>"
- "<%@: %p>"
- "<%@:%p result=%@ lastError=%@ lastUpdate='%@' autoRefreshEnabled=%@>"
- "Cannot unregister updates: token is nil."
- "ICCloudAPNSChannelPushMessage - not decoding push; missing storeID. payload=%{public}@"
- "ICCloudChannelRegistrationAvailability - availability changed old=%{public}@ new=%{public}@ source=%{public}@"
- "ICCloudChannelRegistrationAvailability - not dispatching transition; no observer wired newState=%{public}@"
- "ICCloudChannelRegistrationAvailability - scheduling bag fetch retry delay=%.0fs"
- "ICCloudClientAPNSChannelManager - dispatching update handlerCount=%lu channelID=%{public}@"
- "ICCloudClientAPNSChannelManager - feature disabled daemonChannels=%{public}@ localOnly=%{public}@ handlers=%lu"
- "ICCloudClientAPNSChannelManager - not able to add reason on daemon; committing locally channelID=%{public}@ err=%{public}@"
- "ICCloudClientAPNSChannelManager - not able to send updateMonitoredReasons; proxy err channelID=%{public}@ err=%{public}@"
- "ICCloudClientAPNSChannelManager - not able to update daemon channelID=%{public}@ err=%{public}@"
- "ICCloudClientAPNSChannelManager - not able to updateMonitoredReasons channelID=%{public}@ err=%{public}@"
- "ICCloudClientAPNSChannelManager - not able to updateMonitoredReasons during tear-down channelID=%{public}@ err=%{public}@"
- "ICCloudClientAPNSChannelManager - not able to updateMonitoredReasons for race-repair channelID=%{public}@ err=%{public}@"
- "ICCloudClientAPNSChannelManager - not delivering push; feature is unavailable. channelID=%{public}@"
- "ICCloudClientAPNSChannelManager - not dispatching update; no handlers on channelID=%{public}@"
- "ICCloudClientAPNSChannelManager - not registering; daemon update failed channelID=%{public}@ err=%{public}@"
- "ICCloudClientAPNSChannelManager - not resyncing after server setup; debounced."
- "ICCloudClientAPNSChannelManager - not resyncing after server setup; no registrations."
- "ICCloudClientAPNSChannelManager - not sending daemon updates; nothing to unregister."
- "ICCloudClientAPNSChannelManager - not sending updateMonitoredReasons; no XPC connection. channelID=%{public}@"
- "ICCloudClientAPNSChannelManager - not unregistering channel; no matching tokens channelID=%{public}@ reason=%ld"
- "ICCloudClientAPNSChannelManager - not unregistering; feature is unavailable. channelID=%{public}@ reason=%ld"
- "ICCloudClientAPNSChannelManager - not unregistering; invalid arguments channelID=%{public}@ reason=%ld"
- "ICCloudClientAPNSChannelManager - receiving update pushMessage=%{public}@"
- "ICCloudClientAPNSChannelManager - registering configuration=%{public}@ token=%{public}@"
- "ICCloudClientAPNSChannelManager - registering token=%{public}@ channelID=%{public}@ reason=%ld isRegisteredChannel=%{BOOL}u isRegisteredReason=%{BOOL}u"
- "ICCloudClientAPNSChannelManager - sending updateMonitoredReasons state=%{public}@"
- "ICCloudClientAPNSChannelManager - tearing down registrations xpcUpdates=%lu handlers=%lu notifyDaemon=%{BOOL}u err=%{public}@"
- "ICCloudClientAPNSChannelManager - unregistering channel channelID=%{public}@ reason=%ld"
- "ICCloudClientAPNSChannelManager - unregistering tokens count=%lu channelID=%{public}@ reason=%ld"
- "excludeFromBackgroundRefresh"
- "shouldExcludeFromBackgroundRefresh"
```
