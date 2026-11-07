## CoreUtils

> `/System/Library/PrivateFrameworks/CoreUtils.framework/CoreUtils`

```diff

-900.58.0.0.0
-  __TEXT.__text: 0x117568
-  __TEXT.__objc_methlist: 0xa040
-  __TEXT.__cstring: 0x1d6f7
+910.24.0.0.0
+  __TEXT.__text: 0x118a74
+  __TEXT.__objc_methlist: 0xa0d0
+  __TEXT.__cstring: 0x1d8d0
   __TEXT.__const: 0x229c
-  __TEXT.__gcc_except_tab: 0x1ba0
-  __TEXT.__oslogstring: 0x49b7
-  __TEXT.__unwind_info: 0x39d8
+  __TEXT.__gcc_except_tab: 0x1bcc
+  __TEXT.__oslogstring: 0x49f4
+  __TEXT.__unwind_info: 0x3a48
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x29c0
+  __DATA_CONST.__const: 0x2a48
   __DATA_CONST.__objc_classlist: 0x350
   __DATA_CONST.__objc_catlist: 0x48
   __DATA_CONST.__objc_protolist: 0x158
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x5120
+  __DATA_CONST.__objc_selrefs: 0x51b0
   __DATA_CONST.__objc_protorefs: 0x20
   __DATA_CONST.__objc_superrefs: 0x240
   __DATA_CONST.__objc_arraydata: 0x8
-  __DATA_CONST.__got: 0x6c0
-  __AUTH_CONST.__const: 0x2828
-  __AUTH_CONST.__cfstring: 0x4540
-  __AUTH_CONST.__objc_const: 0x13c40
+  __DATA_CONST.__got: 0x6c8
+  __AUTH_CONST.__const: 0x28a8
+  __AUTH_CONST.__cfstring: 0x45a0
+  __AUTH_CONST.__objc_const: 0x13ca0
   __AUTH_CONST.__objc_intobj: 0x258
   __AUTH_CONST.__objc_arrayobj: 0x18
-  __AUTH_CONST.__auth_got: 0x1858
+  __AUTH_CONST.__auth_got: 0x1870
   __AUTH_CONST.__auth_ptr: 0x0
   __AUTH.__objc_data: 0x2030
   __AUTH.__data: 0xa00
-  __DATA.__objc_ivar: 0x1510
+  __DATA.__objc_ivar: 0x1514
   __DATA.__data: 0x2f50
-  __DATA.__bss: 0x13f8
+  __DATA.__bss: 0x1400
   __DATA.__common: 0x2a
   __DATA_DIRTY.__objc_data: 0xf0
   __DATA_DIRTY.__data: 0x88

   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
   - /usr/lib/libz.1.dylib
-  Functions: 5789
-  Symbols:   10202
-  CStrings:  4852
+  Functions: 5818
+  Symbols:   10243
+  CStrings:  4867
 
Symbols:
+ +[CUFile deletePath:dispatchQueue:completionHandler:]
+ +[CUFile deletePath:error:]
+ +[CUFile renameWithOldPath:newPath:dispatchQueue:completionHandler:]
+ +[CUFile renameWithOldPath:newPath:error:]
+ +[CUFile validatedFilename:error:]
+ +[CUOPACK encodeObjectAsDispatchData:flags:error:]
+ -[CUPairingSession appInfoPostAuth]
+ -[CUPairingSession setAppInfoPostAuth:]
+ -[CUSystemMonitor systemNameSync]
+ GCC_except_table1032
+ GCC_except_table1351
+ GCC_except_table1386
+ GCC_except_table1391
+ GCC_except_table1392
+ GCC_except_table1395
+ GCC_except_table1442
+ GCC_except_table1443
+ GCC_except_table1474
+ GCC_except_table1477
+ GCC_except_table1483
+ GCC_except_table1488
+ GCC_except_table1491
+ GCC_except_table1539
+ GCC_except_table1540
+ GCC_except_table2286
+ GCC_except_table2287
+ GCC_except_table2310
+ GCC_except_table2355
+ GCC_except_table2439
+ GCC_except_table2463
+ GCC_except_table2500
+ GCC_except_table2504
+ GCC_except_table2571
+ GCC_except_table2572
+ GCC_except_table2574
+ GCC_except_table2575
+ GCC_except_table2577
+ GCC_except_table2582
+ GCC_except_table2589
+ GCC_except_table2592
+ GCC_except_table2595
+ GCC_except_table2602
+ GCC_except_table2605
+ GCC_except_table2619
+ GCC_except_table2680
+ GCC_except_table3014
+ GCC_except_table3015
+ GCC_except_table3103
+ GCC_except_table3125
+ GCC_except_table3159
+ GCC_except_table3163
+ GCC_except_table3207
+ GCC_except_table3210
+ GCC_except_table3211
+ GCC_except_table3213
+ GCC_except_table3235
+ GCC_except_table3243
+ GCC_except_table3248
+ GCC_except_table3254
+ GCC_except_table3527
+ GCC_except_table3583
+ GCC_except_table3957
+ GCC_except_table4005
+ GCC_except_table4270
+ GCC_except_table4328
+ GCC_except_table4335
+ GCC_except_table4343
+ GCC_except_table4458
+ GCC_except_table4485
+ GCC_except_table4486
+ GCC_except_table4548
+ GCC_except_table4552
+ GCC_except_table4554
+ GCC_except_table4556
+ GCC_except_table4579
+ GCC_except_table4653
+ GCC_except_table4654
+ GCC_except_table4655
+ GCC_except_table4656
+ GCC_except_table4658
+ GCC_except_table4662
+ GCC_except_table4664
+ GCC_except_table4668
+ GCC_except_table4689
+ GCC_except_table4691
+ GCC_except_table4694
+ GCC_except_table4695
+ GCC_except_table4703
+ GCC_except_table4721
+ GCC_except_table4723
+ GCC_except_table4724
+ GCC_except_table4726
+ GCC_except_table4727
+ GCC_except_table4728
+ GCC_except_table4729
+ GCC_except_table4730
+ GCC_except_table4731
+ GCC_except_table4732
+ GCC_except_table4733
+ GCC_except_table4734
+ GCC_except_table4735
+ GCC_except_table4736
+ GCC_except_table4737
+ GCC_except_table4738
+ GCC_except_table4740
+ GCC_except_table4741
+ GCC_except_table4742
+ GCC_except_table4744
+ GCC_except_table5292
+ GCC_except_table5305
+ GCC_except_table5374
+ GCC_except_table5378
+ GCC_except_table5383
+ GCC_except_table5402
+ GCC_except_table5411
+ GCC_except_table5660
+ GCC_except_table5661
+ GCC_except_table5674
+ GCC_except_table704
+ GCC_except_table811
+ GCC_except_table826
+ GCC_except_table828
+ GCC_except_table831
+ _CFDataSetLength
+ _OBJC_IVAR_$_CUPairingSession._appInfoPostAuth
+ _OPACKEncoderCreateDispatchData
+ __BonjourAdvertiserApplyString
+ __GlobalInitialize
+ __OPACKEncodeRoot
+ __OPACKEncoderDispatchDataCallback
+ __OPACKEncoderDispatchDataFlushScratch
+ __PairingSessionLimitPeerInfo
+ ___53+[CUFile deletePath:dispatchQueue:completionHandler:]_block_invoke
+ ___68+[CUFile renameWithOldPath:newPath:dispatchQueue:completionHandler:]_block_invoke
+ ___BonjourAdvertiserSetDomain_block_invoke
+ ___BonjourAdvertiserSetFlags_block_invoke
+ ___BonjourAdvertiserSetInterfaceIndex_block_invoke
+ ___BonjourAdvertiserSetInterfaceName_block_invoke
+ ___BonjourAdvertiserSetName_block_invoke
+ ___BonjourAdvertiserSetP2P_block_invoke
+ ___BonjourAdvertiserSetPort_block_invoke
+ ___BonjourAdvertiserSetServiceType_block_invoke
+ ___BonjourAdvertiserSetTXTRecord_block_invoke
+ ___BonjourAdvertiserSetTrafficFlags_block_invoke
+ ____BonjourAdvertiserApplyString_block_invoke
+ ____OPACKEncoderDispatchDataCallback_block_invoke
+ ___block_descriptor_32_e142_v24?0^{BonjourAdvertiserPrivate={__CFRuntimeBase=QAQ}^{LogCategory}^{_DNSServiceRef_t}I^{__CFData}?^{__CFString}qIQC*QI[17c]*Ci**SCI}8*16l
+ ___block_descriptor_41_e5_v8?0l
+ ___block_descriptor_56_e5_v8?0l
+ ___block_descriptor_57_e8_32b_e5_v8?0ls32l8
+ __dispatch_data_empty
+ _dispatch_data_create
+ _dispatch_data_create_concat
+ _gGlobalInitOnce
- GCC_except_table1020
- GCC_except_table1339
- GCC_except_table1374
- GCC_except_table1379
- GCC_except_table1380
- GCC_except_table1383
- GCC_except_table1430
- GCC_except_table1431
- GCC_except_table1462
- GCC_except_table1465
- GCC_except_table1471
- GCC_except_table1476
- GCC_except_table1479
- GCC_except_table1527
- GCC_except_table1528
- GCC_except_table2267
- GCC_except_table2268
- GCC_except_table2291
- GCC_except_table2336
- GCC_except_table2420
- GCC_except_table2444
- GCC_except_table2481
- GCC_except_table2485
- GCC_except_table2552
- GCC_except_table2553
- GCC_except_table2555
- GCC_except_table2556
- GCC_except_table2558
- GCC_except_table2563
- GCC_except_table2567
- GCC_except_table2570
- GCC_except_table2573
- GCC_except_table2576
- GCC_except_table2583
- GCC_except_table2600
- GCC_except_table2661
- GCC_except_table2993
- GCC_except_table2994
- GCC_except_table3082
- GCC_except_table3104
- GCC_except_table3138
- GCC_except_table3142
- GCC_except_table3186
- GCC_except_table3189
- GCC_except_table3190
- GCC_except_table3192
- GCC_except_table3214
- GCC_except_table3222
- GCC_except_table3227
- GCC_except_table3233
- GCC_except_table3506
- GCC_except_table3562
- GCC_except_table3935
- GCC_except_table3983
- GCC_except_table4248
- GCC_except_table4306
- GCC_except_table4313
- GCC_except_table4321
- GCC_except_table4436
- GCC_except_table4463
- GCC_except_table4464
- GCC_except_table4526
- GCC_except_table4530
- GCC_except_table4532
- GCC_except_table4534
- GCC_except_table4557
- GCC_except_table4631
- GCC_except_table4632
- GCC_except_table4633
- GCC_except_table4634
- GCC_except_table4636
- GCC_except_table4638
- GCC_except_table4640
- GCC_except_table4642
- GCC_except_table4646
- GCC_except_table4648
- GCC_except_table4667
- GCC_except_table4669
- GCC_except_table4672
- GCC_except_table4673
- GCC_except_table4674
- GCC_except_table4676
- GCC_except_table4677
- GCC_except_table4678
- GCC_except_table4679
- GCC_except_table4681
- GCC_except_table4683
- GCC_except_table4690
- GCC_except_table4693
- GCC_except_table4697
- GCC_except_table4702
- GCC_except_table4706
- GCC_except_table4707
- GCC_except_table4708
- GCC_except_table4709
- GCC_except_table4710
- GCC_except_table4711
- GCC_except_table4713
- GCC_except_table4716
- GCC_except_table5346
- GCC_except_table5350
- GCC_except_table5355
- GCC_except_table5373
- GCC_except_table5382
- GCC_except_table5631
- GCC_except_table5632
- GCC_except_table5645
- GCC_except_table692
- GCC_except_table799
- GCC_except_table814
- GCC_except_table816
- GCC_except_table819
- __GlobalEnsureInitialized
CStrings:
+ "### Clear TXT record failed: %#m\n"
+ "### Limit excessive MAC addresses: count=%d, max=%d"
+ "### Limit excessive MAC addresses: peer=%@, count=%d, max=%d"
+ ".."
+ "Bad new path"
+ "Bad old path"
+ "Empty filename: %@"
+ "Evicting stale TXT record for %s.%s%s%%%u: %#{txt}"
+ "Remove failed: path=%@"
+ "Rename failed: %@ -> %@"
+ "Unsafe filename: %@"
+ "appInfoPostAuth"
+ "macAddrs"
+ "v24@?0^{BonjourAdvertiserPrivate={__CFRuntimeBase=QAQ}^{LogCategory}@^{_DNSServiceRef_t}I^{__CFData}@?^{__CFString}q@I@QC*QI[17c]*Ci**SCI}8*16"
+ "void _PairingSessionLimitPeerInfo(PairingSessionRef)"
```
