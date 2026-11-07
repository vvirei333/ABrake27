## MPSNDArray

> `/System/Library/Frameworks/MetalPerformanceShaders.framework/Frameworks/MPSNDArray.framework/MPSNDArray`

```diff

-130.0.19.0.0
-  __TEXT.__text: 0x1131a4
+130.1.1.0.0
+  __TEXT.__text: 0x113020
   __TEXT.__objc_methlist: 0x7274
   __TEXT.__const: 0x9c9b0
   __TEXT.__gcc_except_tab: 0x4ed8
-  __TEXT.__cstring: 0x126c1
+  __TEXT.__cstring: 0x125b3
   __TEXT.__oslogstring: 0x27
   __TEXT.__unwind_info: 0x1b78
   __TEXT.__eh_frame: 0xb8

   __DATA_CONST.__objc_protorefs: 0x10
   __DATA_CONST.__objc_superrefs: 0x858
   __DATA_CONST.__got: 0x350
-  __AUTH_CONST.__const: 0x4800
-  __AUTH_CONST.__cfstring: 0x9520
+  __AUTH_CONST.__const: 0x4878
+  __AUTH_CONST.__cfstring: 0x94e0
   __AUTH_CONST.__objc_const: 0xf7d0
   __AUTH_CONST.__weak_auth_got: 0x28
   __AUTH_CONST.__auth_got: 0x5b0
   __AUTH_CONST.__auth_ptr: 0x0
-  __AUTH.__objc_data: 0x50
   __AUTH.__thread_vars: 0x30
   __AUTH.__thread_bss: 0x20
   __DATA.__objc_ivar: 0x7a4
-  __DATA.__data: 0x9ec
+  __DATA.__data: 0x68c
   __DATA.__bss: 0x650
-  __DATA_DIRTY.__objc_data: 0x54b0
+  __DATA_DIRTY.__objc_data: 0x5500
+  __DATA_DIRTY.__data: 0x360
   __DATA_DIRTY.__bss: 0x88
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/Foundation.framework/Foundation

   - /usr/lib/libobjc.A.dylib
   Functions: 2477
   Symbols:   5103
-  CStrings:  1718
+  CStrings:  1716
 
Functions:
~ __ZL36EncodeConstantInitializationInternalPKvPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK23NDArrayMultiaryCallInfob : 1768 -> 1716
~ -[MPSNDArrayLinearAttention extractShapesFromQueries:keys:values:decayGates:betaValues:initialState:outputState:output:] : 2736 -> 2888
~ __ZL18validateArrayShapeP10MPSNDArrayP8NSStringSt16initializer_listImE : 284 -> 328
~ __ZL24is_qmm_generic_supportedRK46NDArrayQuantizedMatrixMultiplicationEncodeDataP14QmmGenericArgs : 2032 -> 2048
~ __ZL23EncodeQuantizedGatherNDPKvPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK23NDArrayMultiaryCallInfo : 18592 -> 18616
~ __ZL15EncodeReductionPKvPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK23NDArrayMultiaryCallInfo : 11600 -> 11212
~ __ZL19EncodeArrayIdentityPKvPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK23NDArrayMultiaryCallInfo : 2868 -> 2872
~ __ZL34EncodeQuantizedSDPATileBasedCommonPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK23NDArrayMultiaryCallInfoP9MPSDeviceP10MPSLibraryPK44MPSNDArrayQuantizedScaledDotProductAttention7MTLSize : 10764 -> 10840
~ __ZL19EncodeSDPACommonNewPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK23NDArrayMultiaryCallInfoP9MPSDeviceP10MPSLibraryPK35MPSNDArrayScaledDotProductAttentionj : 5992 -> 5784
~ __ZL30EncodeQuantizedSDPAVectorBasedPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK23NDArrayMultiaryCallInfoP9MPSDeviceP10MPSLibraryPK44MPSNDArrayQuantizedScaledDotProductAttention : 6828 -> 6704
~ __ZL32MPSNDArraySDPACreateUserConstantR36MPSNDArraySDPAStateFunctionConstants : 524 -> 568
~ __ZNK38MPSNDArrayConvolutionDeviceBehaviorA1819GetKernelParametersEP9MPSKernelR50MPSNDArrayConvolutionGradientWithWeightsParametersPv11MPSDataTypeS5_S5_ : 2644 -> 2648
~ __ZL12getArrayType11MPSDataType : 536 -> 556
CStrings:
+ "%@ %p \"%@\" Only MPSDataTypeInt32 destinations are supported for Argument Reductions.\n"
+ "Float8e8m0 inputs cannot be dequantized into Float16 outputs."
- "%@ %p \"%@\" For a MPSDataTypeInt32 source, detination must also be MPSDataTypeInt32.\n"
- "%@ %p \"%@\" For a MPSDataTypeUInt32 source, detination must also be MPSDataTypeUInt32.\n"
- "%@ %p \"%@\" Only MPSDataTypeUInt32 or MPSDataTypeInt32 destinations are supported for Argument Reductions.\n"
- "%@ %p \"%@\" This combination of data types is only supported for MPSNDArrayReduction where the operation is an argument minimum or maximum\n"
```
