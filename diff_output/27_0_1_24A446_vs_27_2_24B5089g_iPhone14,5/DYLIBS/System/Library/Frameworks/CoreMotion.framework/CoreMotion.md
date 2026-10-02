## CoreMotion

> `/System/Library/Frameworks/CoreMotion.framework/CoreMotion`

```diff

-3185.0.6.0.3
-  __TEXT.__text: 0x3ce334
-  __TEXT.__objc_methlist: 0xd854
-  __TEXT.__const: 0xcc90
+3186.0.17.0.1
+  __TEXT.__text: 0x3d0b34
+  __TEXT.__objc_methlist: 0xd994
+  __TEXT.__const: 0xcd60
   __TEXT.__swift5_typeref: 0x257
   __TEXT.__swift5_reflstr: 0x2e
   __TEXT.__swift5_assocty: 0x90
   __TEXT.__constg_swiftt: 0xb8
   __TEXT.__swift5_fieldmd: 0x70
   __TEXT.__swift5_capture: 0x40
-  __TEXT.__oslogstring: 0x2f686
-  __TEXT.__cstring: 0x47503
+  __TEXT.__oslogstring: 0x2fcb7
+  __TEXT.__cstring: 0x47a46
   __TEXT.__swift5_proto: 0x10
   __TEXT.__swift5_types: 0x10
   __TEXT.__swift_as_entry: 0x18
   __TEXT.__swift_as_ret: 0x18
   __TEXT.__swift_as_cont: 0x30
-  __TEXT.__gcc_except_tab: 0xd458
-  __TEXT.__unwind_info: 0xbc50
+  __TEXT.__gcc_except_tab: 0xd4dc
+  __TEXT.__unwind_info: 0xbcd8
   __TEXT.__eh_frame: 0x178
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x3d60
-  __DATA_CONST.__objc_classlist: 0x8d8
+  __DATA_CONST.__const: 0x3d20
+  __DATA_CONST.__objc_classlist: 0x8e0
   __DATA_CONST.__objc_protolist: 0xd0
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__weak_got: 0x10
-  __DATA_CONST.__objc_selrefs: 0x56a0
+  __DATA_CONST.__objc_selrefs: 0x5718
   __DATA_CONST.__objc_protorefs: 0x58
-  __DATA_CONST.__objc_superrefs: 0x7c0
+  __DATA_CONST.__objc_superrefs: 0x7c8
   __DATA_CONST.__objc_arraydata: 0x240
-  __DATA_CONST.__got: 0x818
-  __AUTH_CONST.__const: 0x15810
-  __AUTH_CONST.__cfstring: 0x13c00
-  __AUTH_CONST.__objc_const: 0x1db18
+  __DATA_CONST.__got: 0x828
+  __AUTH_CONST.__const: 0x158b8
+  __AUTH_CONST.__cfstring: 0x13d20
+  __AUTH_CONST.__objc_const: 0x1dd68
   __AUTH_CONST.__weak_auth_got: 0x28
   __AUTH_CONST.__objc_intobj: 0x288
   __AUTH_CONST.__objc_arrayobj: 0x90

   __AUTH_CONST.__objc_floatobj: 0x30
   __AUTH_CONST.__auth_got: 0x14c0
   __AUTH_CONST.__auth_ptr: 0x0
-  __AUTH.__objc_data: 0x4290
+  __AUTH.__objc_data: 0x320
   __AUTH.__data: 0x220
-  __DATA.__objc_ivar: 0x1798
-  __DATA.__data: 0xe18
+  __DATA.__objc_ivar: 0x17b8
+  __DATA.__data: 0xe10
   __DATA.__bss: 0x4b0
   __DATA.__common: 0x128
   __DATA_DIRTY.__objc_ivar: 0x1c0
-  __DATA_DIRTY.__objc_data: 0x15e0
+  __DATA_DIRTY.__objc_data: 0x55a0
   __DATA_DIRTY.__data: 0x138
   __DATA_DIRTY.__common: 0x89
   __DATA_DIRTY.__bss: 0x10e0

   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
-  Functions: 12679
-  Symbols:   1811
-  CStrings:  11394
+  Functions: 12717
+  Symbols:   1815
+  CStrings:  11439
 
Symbols:
+ _CLCopyAuthorization
+ _OBJC_CLASS_$_CMVO2MaxClassificationThreshold
+ _OBJC_METACLASS_$_CMVO2MaxClassificationThreshold
+ _kTCCServiceMotionSensors
CStrings:
+ "#Spi, CLCopyAuthorization failed"
+ "%@,<biologicalSex %ld, ageLowerBound %ld, ageUpperBound %ld, thresholdType %ld, slope %f, intercept %f>"
+ "+[CMWakeGestureManager toPropertyC:]"
+ "-[CLLocationInternalClient_CoreMotion copyAuthorizationFromBundleID:toBundleID:]_block_invoke"
+ "-[CMDeviceStateManager simulateDeviceStateEventForPropertyA:propertyA0:propertyA1:propertyB:propertyC:propertyD:delaySecs:]"
+ "-[CMDeviceStateManagerInternal feedDeviceStateEvent:propertyA0Type:propertyA1Type:propertyBType:propertyCType:propertyDType:timestamp:continuousTimestamp:timestampAPArrivalSecs:]"
+ "-[CMDeviceStateManagerInternal sendEventToClientPrivate]"
+ "/Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Sources/CoreMotionFramework/Framework/CoreMotion/DeviceState/CMDeviceStateManager.mm"
+ "21:39:32"
+ "Assertion failed: lambda2 != 0, file /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Sources/CoreMotionFramework/Oscar/Math/CMOQuaternion.cpp, line 172,invalid weights."
+ "Assertion failed: t >= 0 && t <= 1, file /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Sources/CoreMotionFramework/Oscar/Math/CMOQuaternion.cpp, line 320,Invalid time t for slerp."
+ "CL: CLCopyAuthorization"
+ "Dropping event after teardown in onDeviceStateData:."
+ "Invalid PropertyA input."
+ "Invalid simulated propertyA value"
+ "Invalid simulated propertyA0 value"
+ "Invalid simulated propertyA1 value"
+ "Invalid simulated propertyB value"
+ "Invalid simulated propertyC value"
+ "Invalid simulated propertyD value"
+ "No internal state, ignoring onNotification."
+ "No internal state, skipping teardown."
+ "No internal state; ignoring startUpdatesPrivateToQueue:withHandler:"
+ "No internal state; ignoring startUpdatesToQueue:withHandler:"
+ "ParameterK"
+ "PropertyA Ambiguous for PropertyB Ambiguous, ParameterD & ParameterE."
+ "Sep 15 2026"
+ "TempestDefaultLidAngleDeg"
+ "TempestForceDefaultLidAngle"
+ "[CMDeviceStateEvent isValidPropertyA:propertyA0]"
+ "[CMDeviceStateEvent isValidPropertyA:propertyA1]"
+ "[CMDeviceStateEvent isValidPropertyA:propertyA]"
+ "[CMDeviceStateEvent isValidPropertyB:propertyB]"
+ "[CMDeviceStateEvent isValidPropertyC:propertyC]"
+ "[CMDeviceStateEvent isValidPropertyD:propertyD]"
+ "[Gesture %{public}ld] Gesture%{public}s notification: %{public}d(%{public}@), Mode:%{public}@, Start:%{public}@, End:%{public}@, HostAwake, %{public}d, Inferred:%{public}u, IsSuppressionActive:%{public}d"
+ "[RelDMService][parseLidAngleDeg] checkedLidAngleDeg: %{public}.1f deg"
+ "distanceCalibratedPedometer"
+ "float CMRelDMService::parseLidAngleDeg(const float) const"
+ "inHandDoubleTapBaseDetectorReset"
+ "isSuppressionActive"
+ "kCMVO2MaxClassificationThresholdCodingKeyAgeLowerBound"
+ "kCMVO2MaxClassificationThresholdCodingKeyAgeUpperBound"
+ "kCMVO2MaxClassificationThresholdCodingKeyBiologicalSex"
+ "kCMVO2MaxClassificationThresholdCodingKeyIntercept"
+ "kCMVO2MaxClassificationThresholdCodingKeySlope"
+ "kCMVO2MaxClassificationThresholdCodingKeyThresholdType"
+ "pencilState"
+ "{\"msg%{public}.0s\":\"CLCopyAuthorization\", \"event\":%{public, location:escape_only}s}"
+ "{\"msg%{public}.0s\":\"Invalid simulated propertyA value\", \"event\":%{public, location:escape_only}s, \"condition\":%{private, location:escape_only}s}"
+ "{\"msg%{public}.0s\":\"Invalid simulated propertyA0 value\", \"event\":%{public, location:escape_only}s, \"condition\":%{private, location:escape_only}s}"
+ "{\"msg%{public}.0s\":\"Invalid simulated propertyA1 value\", \"event\":%{public, location:escape_only}s, \"condition\":%{private, location:escape_only}s}"
+ "{\"msg%{public}.0s\":\"Invalid simulated propertyB value\", \"event\":%{public, location:escape_only}s, \"condition\":%{private, location:escape_only}s}"
+ "{\"msg%{public}.0s\":\"Invalid simulated propertyC value\", \"event\":%{public, location:escape_only}s, \"condition\":%{private, location:escape_only}s}"
+ "{\"msg%{public}.0s\":\"Invalid simulated propertyD value\", \"event\":%{public, location:escape_only}s, \"condition\":%{private, location:escape_only}s}"
- "-[CMDeviceStateManager feedDeviceStateEvent:propertyA0Type:propertyA1Type:propertyBType:propertyCType:propertyDType:timestamp:continuousTimestamp:timestampAPArrivalSecs:]_block_invoke"
- "-[CMDeviceStateManager sendEventToClientPrivate]"
- "21:09:51"
- "Assertion failed: lambda2 != 0, file /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Sources/CoreMotionFramework/Oscar/Math/CMOQuaternion.cpp, line 152,invalid weights."
- "Assertion failed: t >= 0 && t <= 1, file /Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Sources/CoreMotionFramework/Oscar/Math/CMOQuaternion.cpp, line 300,Invalid time t for slerp."
- "Aug 20 2026"
- "Invalid propertyA input."
- "PropertyA ambiguous for PropertyB Ambiguous, ParameterD & ParameterE."
- "[Gesture %{public}ld] Gesture%{public}s notification: %{public}d(%{public}@), Mode:%{public}@, Start:%{public}@, End:%{public}@, HostAwake, %{public}d, Inferred:%{public}u"
- "sharedManager_%@"
```
