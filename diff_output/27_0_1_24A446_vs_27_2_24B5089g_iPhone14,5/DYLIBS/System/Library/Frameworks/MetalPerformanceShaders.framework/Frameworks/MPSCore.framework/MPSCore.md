## MPSCore

> `/System/Library/Frameworks/MetalPerformanceShaders.framework/Frameworks/MPSCore.framework/MPSCore`

```diff

-130.0.19.0.0
-  __TEXT.__text: 0x96a4c
+130.1.1.0.0
+  __TEXT.__text: 0x94eac
   __TEXT.__objc_methlist: 0x27fc
   __TEXT.__const: 0x2974
-  __TEXT.__cstring: 0xa812
+  __TEXT.__cstring: 0xa85d
   __TEXT.__oslogstring: 0x7f
-  __TEXT.__gcc_except_tab: 0x4dd8
+  __TEXT.__gcc_except_tab: 0x4da4
   __TEXT.__unwind_info: 0x1e60
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0

   __AUTH_CONST.__weak_auth_got: 0x18
   __AUTH_CONST.__auth_got: 0x4d8
   __AUTH_CONST.__auth_ptr: 0x0
-  __AUTH.__objc_data: 0x1e0
   __DATA.__objc_ivar: 0x32c
-  __DATA.__data: 0x9a8
+  __DATA.__data: 0x400
   __DATA.__common: 0x28
   __DATA.__bss: 0x30
   __DATA_DIRTY.__objc_ivar: 0x64
-  __DATA_DIRTY.__objc_data: 0xe10
+  __DATA_DIRTY.__objc_data: 0xff0
+  __DATA_DIRTY.__data: 0x5a8
   __DATA_DIRTY.__bss: 0x230
   __DATA_DIRTY.__common: 0x20
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation

   - /usr/lib/libobjc.A.dylib
   Functions: 1732
   Symbols:   800
-  CStrings:  893
+  CStrings:  901
 
Functions:
~ __ZN12MPSKernelDAG25appendConversionFunctionsEPU21objcproto10MTLLibrary11objc_objectP14NSMutableArrayIPU22objcproto11MTLFunction11objc_objectEPb : 7304 -> 4596
~ sub_24a7eb998 -> sub_24e3afebc : 1088 -> 1312
~ __ZN12MPSKernelDAG13getDAGAndHashEPU21objcproto10MTLLibrary11objc_objectP14MPSDAGKernelOpP19NSMutableDictionaryIP8NSStringPU22objcproto11MTLFunction11objc_objectEP14NSMutableArrayIS6_ERDv4_yPb : 16092 -> 11968
~ __ZN12MPSKernelDAG6castOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1248 -> 1304
~ __ZN12MPSKernelDAG10exponentOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG15exponentBase2OpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG16exponentBase10OpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG11logarithmOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG16logarithmBase2OpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG17logarithmBase10OpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG8squareOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG12squareRootOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG19reverseSquareRootOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG12reciprocalOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG10absoluteOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG10negativeOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG6signOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG9signbitOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG6ceilOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG7floorOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG7roundOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG6rintOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG5sinOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1436 -> 1492
~ __ZN12MPSKernelDAG5cosOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1436 -> 1492
~ __ZN12MPSKernelDAG5tanOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1436 -> 1492
~ __ZN12MPSKernelDAG6sinhOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG6coshOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG6tanhOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG6asinOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG6acosOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG6atanOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG7asinhOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG7acoshOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG7atanhOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG5notOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1436 -> 1492
~ __ZN12MPSKernelDAG12isInfiniteOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG10isFiniteOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG7isNaNOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1436 -> 1492
~ __ZN12MPSKernelDAG5erfOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1428 -> 1484
~ __ZN12MPSKernelDAG11broadcastOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG12bitwiseNOTOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG17bitwisePopcountOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG10realPartOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG10imagPartOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG11conjugateOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1448 -> 1504
~ __ZN12MPSKernelDAG11absSquareOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1448 -> 1504
~ __ZN12MPSKernelDAG12dequantizeOpEP10BaseTensorRKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1552 -> 1608
~ __ZN12MPSKernelDAG13intAdditionOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1456 -> 1512
~ __ZN12MPSKernelDAG10additionOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1448 -> 1504
~ __ZN12MPSKernelDAG13subtractionOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1456 -> 1512
~ __ZN12MPSKernelDAG16multiplicationOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1452 -> 1508
~ __ZN12MPSKernelDAG10divisionOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1448 -> 1504
~ __ZN12MPSKernelDAG8moduloOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1448 -> 1504
~ __ZN12MPSKernelDAG7powerOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG9minimumOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1452 -> 1508
~ __ZN12MPSKernelDAG9maximumOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1452 -> 1508
~ __ZN12MPSKernelDAG9isEqualOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1452 -> 1508
~ __ZN12MPSKernelDAG12isNotEqualOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1452 -> 1508
~ __ZN12MPSKernelDAG10lessThanOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1448 -> 1504
~ __ZN12MPSKernelDAG17lessThanEqualToOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1452 -> 1508
~ __ZN12MPSKernelDAG13greaterThanOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1456 -> 1512
~ __ZN12MPSKernelDAG20greaterThanEqualToOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1452 -> 1508
~ __ZN12MPSKernelDAG5andOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1436 -> 1492
~ __ZN12MPSKernelDAG4orOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1436 -> 1492
~ __ZN12MPSKernelDAG6nandOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG5norOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1436 -> 1492
~ __ZN12MPSKernelDAG5xorOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1436 -> 1492
~ __ZN12MPSKernelDAG6xnorOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1440 -> 1496
~ __ZN12MPSKernelDAG7atan2OpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG12bitwiseANDOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1452 -> 1508
~ __ZN12MPSKernelDAG11bitwiseOROpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1448 -> 1504
~ __ZN12MPSKernelDAG12bitwiseXOROpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1452 -> 1508
~ __ZN12MPSKernelDAG18bitwiseLeftShiftOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1444 -> 1500
~ __ZN12MPSKernelDAG19bitwiseRightShiftOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1448 -> 1504
~ __ZN12MPSKernelDAG15complexCreateOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1452 -> 1508
~ __ZN12MPSKernelDAG14complexScaleOpEP10BaseTensorS1_RKNSt3__16vectorIlNS2_9allocatorIlEEEE11MPSDataTypePKc : 1456 -> 1512
~ __ZN21MPSKernelMiddlefixDAG13getDAGAndHashEPU21objcproto10MTLLibrary11objc_objectP14MPSDAGKernelOpP19NSMutableDictionaryIP8NSStringPU22objcproto11MTLFunction11objc_objectEP14NSMutableArrayIS6_ERDv4_yPb : 16960 -> 11592
~ sub_24a84e06c -> sub_24e411154 : 2560 -> 2596
~ sub_24a850918 -> sub_24e413a24 : 3564 -> 4328
~ __ZNK9MPSDevice19isDataTypeSupportedE11MPSDataType : 416 -> 432
CStrings:
+ "130.1.1"
+ "_2xf8e4m3"
+ "_2xf8e5m2"
+ "_3xf8e4m3"
+ "_3xf8e5m2"
+ "_4xf8e4m3"
+ "_4xf8e5m2"
+ "_f8e4m3"
+ "_f8e5m2"
- "130.0.19"
```
