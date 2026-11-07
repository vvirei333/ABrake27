## ScreenReaderOutput

> `/System/Library/PrivateFrameworks/ScreenReaderOutput.framework/ScreenReaderOutput`

```diff

-465.0.0.0.0
-  __TEXT.__text: 0x9cbf4
-  __TEXT.__objc_methlist: 0x9008
+467.3.1.0.0
+  __TEXT.__text: 0x9dcb8
+  __TEXT.__objc_methlist: 0x9208
   __TEXT.__const: 0x183c
-  __TEXT.__cstring: 0x5b79
+  __TEXT.__cstring: 0x5c0c
   __TEXT.__swift5_typeref: 0xeec
   __TEXT.__constg_swiftt: 0x960
   __TEXT.__swift5_builtin: 0xb4
   __TEXT.__swift5_types: 0xa4
-  __TEXT.__oslogstring: 0x287d
+  __TEXT.__oslogstring: 0x287a
   __TEXT.__swift5_reflstr: 0x605
   __TEXT.__swift5_assocty: 0x78
   __TEXT.__swift5_fieldmd: 0x7f8

   __TEXT.__swift_as_ret: 0x5c
   __TEXT.__swift_as_cont: 0x9c
   __TEXT.__swift5_protos: 0x8
-  __TEXT.__gcc_except_tab: 0x193c
+  __TEXT.__gcc_except_tab: 0x194c
   __TEXT.__ustring: 0x9e
-  __TEXT.__unwind_info: 0x28b8
+  __TEXT.__unwind_info: 0x2900
   __TEXT.__eh_frame: 0xa30
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x1270
+  __DATA_CONST.__const: 0x1298
   __DATA_CONST.__objc_classlist: 0x328
   __DATA_CONST.__objc_catlist: 0x28
   __DATA_CONST.__objc_protolist: 0x140
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x4780
+  __DATA_CONST.__objc_selrefs: 0x4858
   __DATA_CONST.__objc_protorefs: 0x48
   __DATA_CONST.__objc_superrefs: 0x210
   __DATA_CONST.__objc_arraydata: 0x380
   __DATA_CONST.__got: 0x790
-  __AUTH_CONST.__const: 0x32a0
-  __AUTH_CONST.__cfstring: 0x5680
-  __AUTH_CONST.__objc_const: 0xbc58
+  __AUTH_CONST.__const: 0x3280
+  __AUTH_CONST.__cfstring: 0x5740
+  __AUTH_CONST.__objc_const: 0xbd48
   __AUTH_CONST.__objc_intobj: 0xa68
   __AUTH_CONST.__objc_dictobj: 0xa0
   __AUTH_CONST.__objc_doubleobj: 0x10

   __AUTH_CONST.__auth_ptr: 0x2c8
   __AUTH.__objc_data: 0x360
   __AUTH.__data: 0x80
-  __DATA.__objc_ivar: 0x8c8
-  __DATA.__data: 0x1680
-  __DATA.__bss: 0x1100
+  __DATA.__objc_ivar: 0x8d4
+  __DATA.__data: 0x1690
+  __DATA.__bss: 0x10f0
   __DATA.__common: 0x20
   __DATA_DIRTY.__objc_data: 0x1d10
   __DATA_DIRTY.__data: 0xc20

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 3974
-  Symbols:   5771
-  CStrings:  1077
+  Functions: 4011
+  Symbols:   5813
+  CStrings:  1081
 
Symbols:
+ -[SCROBrailleClient setTabularFocusRow:col:]
+ -[SCROBrailleClient setTabularZoomLevel:]
+ -[SCROBrailleClientXPC setTabularFocusRow:col:]
+ -[SCROBrailleClientXPC setTabularZoomLevel:]
+ -[SCROBrailleDisplay _cancelPendingCellWrites]
+ -[SCROBrailleDisplay handleCommandTabularZoomInEvent:forDispatcher:]
+ -[SCROBrailleDisplay handleCommandTabularZoomOutEvent:forDispatcher:]
+ -[SCROBrailleDisplayCommandDispatcher _handleTabularZoomInEvent:]
+ -[SCROBrailleDisplayCommandDispatcher _handleTabularZoomOutEvent:]
+ -[SCROBrailleDisplayManager _eventQueue_stepTabularZoomIn:]
+ -[SCROBrailleDisplayManager brailleDisplay:structuredBrailleRouterHitTabularCellWithKey:tableRow:tableCol:appToken:]
+ -[SCROBrailleDisplayManager brailleDisplay:structuredBrailleRouterHitTabularFocusedCellWithKey:appToken:]
+ -[SCROBrailleDisplayManager brailleDisplay:structuredBrailleRouterHitTabularStatusLineWithKey:appToken:]
+ -[SCROBrailleDisplayManager brailleDisplay:tabularZoomInWithKey:]
+ -[SCROBrailleDisplayManager brailleDisplay:tabularZoomOutWithKey:]
+ -[SCROBrailleDisplayManager setTabularFocusRow:col:]
+ -[SCROBrailleDisplayManager setTabularZoomLevel:]
+ -[SCROBrailleDisplayManager tabularZoomDidChange:]
+ -[SCROBrailleHandler handleTabularZoomDidChange:]
+ -[SCROBrailleHandlerXPC handleTabularZoomDidChange:]
+ -[SCROBrailleHandlerXPC setTabularFocusRow:col:]
+ -[SCROBrailleHandlerXPC setTabularZoomLevel:]
+ -[SCROBrailleKey _resetTabularCellRoute]
+ -[SCROBrailleKey isTabularCellRoute]
+ -[SCROBrailleKey setIsTabularCellRoute:]
+ -[SCROBrailleKey setTabularCellCol:]
+ -[SCROBrailleKey setTabularCellRow:]
+ -[SCROBrailleKey tabularCellCol]
+ -[SCROBrailleKey tabularCellRow]
+ GCC_except_table1021
+ GCC_except_table1085
+ GCC_except_table1087
+ GCC_except_table1089
+ GCC_except_table1091
+ GCC_except_table1153
+ GCC_except_table1181
+ GCC_except_table1186
+ GCC_except_table1190
+ GCC_except_table1193
+ GCC_except_table1195
+ GCC_except_table1226
+ GCC_except_table1233
+ GCC_except_table128
+ GCC_except_table129
+ GCC_except_table132
+ GCC_except_table1363
+ GCC_except_table1572
+ GCC_except_table1694
+ GCC_except_table1833
+ GCC_except_table1835
+ GCC_except_table1843
+ GCC_except_table1853
+ GCC_except_table1937
+ GCC_except_table1982
+ GCC_except_table1986
+ GCC_except_table2098
+ GCC_except_table2119
+ GCC_except_table2124
+ GCC_except_table2130
+ GCC_except_table2229
+ GCC_except_table2416
+ GCC_except_table2434
+ GCC_except_table2550
+ GCC_except_table2551
+ GCC_except_table2552
+ GCC_except_table2556
+ GCC_except_table2561
+ GCC_except_table2562
+ GCC_except_table2563
+ GCC_except_table2564
+ GCC_except_table2565
+ GCC_except_table2567
+ GCC_except_table2568
+ GCC_except_table2569
+ GCC_except_table2573
+ GCC_except_table2578
+ GCC_except_table2580
+ GCC_except_table2583
+ GCC_except_table2943
+ GCC_except_table2962
+ GCC_except_table2963
+ GCC_except_table2964
+ GCC_except_table3027
+ GCC_except_table3029
+ GCC_except_table3031
+ GCC_except_table3032
+ GCC_except_table3034
+ GCC_except_table3036
+ GCC_except_table440
+ GCC_except_table452
+ GCC_except_table484
+ GCC_except_table485
+ GCC_except_table507
+ GCC_except_table508
+ GCC_except_table518
+ GCC_except_table520
+ GCC_except_table538
+ GCC_except_table541
+ GCC_except_table544
+ GCC_except_table545
+ GCC_except_table548
+ GCC_except_table558
+ GCC_except_table578
+ GCC_except_table580
+ GCC_except_table581
+ GCC_except_table589
+ GCC_except_table591
+ GCC_except_table597
+ GCC_except_table612
+ GCC_except_table613
+ GCC_except_table614
+ GCC_except_table620
+ GCC_except_table621
+ GCC_except_table623
+ GCC_except_table627
+ GCC_except_table64
+ GCC_except_table645
+ GCC_except_table646
+ GCC_except_table649
+ GCC_except_table847
+ GCC_except_table888
+ GCC_except_table890
+ OBJC_IVAR_$_SCROBrailleKey._isTabularCellRoute
+ OBJC_IVAR_$_SCROBrailleKey._tabularCellCol
+ OBJC_IVAR_$_SCROBrailleKey._tabularCellRow
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_OPT_BRLLayoutManagerDelegate
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_OPT_SCROBrailleDisplayDelegate
+ ___104-[SCROBrailleDisplayManager brailleDisplay:structuredBrailleRouterHitTabularStatusLineWithKey:appToken:]_block_invoke
+ ___104-[SCROBrailleDisplayManager brailleDisplay:structuredBrailleRouterHitTabularStatusLineWithKey:appToken:]_block_invoke_2
+ ___105-[SCROBrailleDisplayManager brailleDisplay:structuredBrailleRouterHitTabularFocusedCellWithKey:appToken:]_block_invoke
+ ___105-[SCROBrailleDisplayManager brailleDisplay:structuredBrailleRouterHitTabularFocusedCellWithKey:appToken:]_block_invoke_2
+ ___116-[SCROBrailleDisplayManager brailleDisplay:structuredBrailleRouterHitTabularCellWithKey:tableRow:tableCol:appToken:]_block_invoke
+ ___116-[SCROBrailleDisplayManager brailleDisplay:structuredBrailleRouterHitTabularCellWithKey:tableRow:tableCol:appToken:]_block_invoke_2
+ ___49-[SCROBrailleDisplayManager setTabularZoomLevel:]_block_invoke
+ ___52-[SCROBrailleDisplayManager setTabularFocusRow:col:]_block_invoke
+ ___52-[SCROBrailleHandlerXPC handleTabularZoomDidChange:]_block_invoke
+ ___59-[SCROBrailleDisplayManager _eventQueue_stepTabularZoomIn:]_block_invoke
+ ___block_descriptor_80_e8_32s40s48s56s_e5_v8?0ls32l8s40l8s48l8s56l8
+ _kSCROBraillePrintTextRowsAttribute
- GCC_except_table1062
- GCC_except_table1064
- GCC_except_table1066
- GCC_except_table1068
- GCC_except_table1130
- GCC_except_table1158
- GCC_except_table1163
- GCC_except_table1167
- GCC_except_table1170
- GCC_except_table1172
- GCC_except_table1203
- GCC_except_table1210
- GCC_except_table126
- GCC_except_table127
- GCC_except_table130
- GCC_except_table1332
- GCC_except_table1537
- GCC_except_table1657
- GCC_except_table1796
- GCC_except_table1798
- GCC_except_table1806
- GCC_except_table1816
- GCC_except_table1900
- GCC_except_table1945
- GCC_except_table1949
- GCC_except_table2061
- GCC_except_table2082
- GCC_except_table2087
- GCC_except_table2093
- GCC_except_table2192
- GCC_except_table2379
- GCC_except_table2397
- GCC_except_table2513
- GCC_except_table2514
- GCC_except_table2515
- GCC_except_table2519
- GCC_except_table2524
- GCC_except_table2525
- GCC_except_table2526
- GCC_except_table2527
- GCC_except_table2528
- GCC_except_table2530
- GCC_except_table2531
- GCC_except_table2532
- GCC_except_table2536
- GCC_except_table2541
- GCC_except_table2543
- GCC_except_table2546
- GCC_except_table2890
- GCC_except_table2906
- GCC_except_table2925
- GCC_except_table2926
- GCC_except_table2990
- GCC_except_table2992
- GCC_except_table2994
- GCC_except_table2995
- GCC_except_table2997
- GCC_except_table2999
- GCC_except_table438
- GCC_except_table449
- GCC_except_table481
- GCC_except_table482
- GCC_except_table502
- GCC_except_table503
- GCC_except_table513
- GCC_except_table515
- GCC_except_table533
- GCC_except_table534
- GCC_except_table536
- GCC_except_table540
- GCC_except_table543
- GCC_except_table553
- GCC_except_table573
- GCC_except_table575
- GCC_except_table576
- GCC_except_table584
- GCC_except_table586
- GCC_except_table592
- GCC_except_table606
- GCC_except_table607
- GCC_except_table608
- GCC_except_table609
- GCC_except_table615
- GCC_except_table618
- GCC_except_table62
- GCC_except_table622
- GCC_except_table640
- GCC_except_table641
- GCC_except_table644
- GCC_except_table824
- GCC_except_table865
- GCC_except_table867
- GCC_except_table998
- ___isBrailleXPCOn_block_invoke
- _isBrailleXPCOn
- _isBrailleXPCOn.brailleXPCOn
- _isBrailleXPCOn.onceToken
CStrings:
+ "SCROBraillePrintTextRowsAttribute"
+ "VOTEventCommandBrailleTabularZoomIn"
+ "VOTEventCommandBrailleTabularZoomOut"
+ "_isTabularCellRoute"
+ "_tabularCellCol"
+ "_tabularCellRow"
+ "setTabularFocusRow requires XPC"
+ "setTabularZoomLevel ignoring out-of-range level"
+ "setTabularZoomLevel requires XPC"
- "Braille_XPC"
- "SCROBrailleClient using Mach"
- "SCROBrailleClient using XPC"
- "SCROBrailleHandler using Mach"
- "SCROBrailleHandler using XPC"
```
