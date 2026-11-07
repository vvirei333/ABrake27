## CoreBrightness

> `/System/Library/PrivateFrameworks/CoreBrightness.framework/CoreBrightness`

```diff

-2300.2.9.0.0
-  __TEXT.__text: 0x17b78c
-  __TEXT.__objc_methlist: 0xdc6c
-  __TEXT.__cstring: 0xd2f5
-  __TEXT.__oslogstring: 0x1ad8d
-  __TEXT.__const: 0x1b6b8
-  __TEXT.__gcc_except_tab: 0x28d4
+2300.40.39.0.0
+  __TEXT.__text: 0x17d528
+  __TEXT.__objc_methlist: 0xde50
+  __TEXT.__cstring: 0xd345
+  __TEXT.__const: 0x1b6e0
+  __TEXT.__oslogstring: 0x1aefd
+  __TEXT.__gcc_except_tab: 0x28e8
   __TEXT.__dlopen_cstrs: 0x218
   __TEXT.__swift5_typeref: 0xf3b
   __TEXT.__constg_swiftt: 0xd64

   __TEXT.__swift5_capture: 0x3d0
   __TEXT.__swift5_mpenum: 0x28
   __TEXT.__swift5_protos: 0x8
-  __TEXT.__unwind_info: 0x58f0
+  __TEXT.__unwind_info: 0x5968
   __TEXT.__eh_frame: 0xb90
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x31b8
-  __DATA_CONST.__objc_classlist: 0x790
+  __DATA_CONST.__const: 0x3220
+  __DATA_CONST.__objc_classlist: 0x7a0
   __DATA_CONST.__objc_catlist: 0x18
-  __DATA_CONST.__objc_protolist: 0x398
+  __DATA_CONST.__objc_protolist: 0x3a0
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__weak_got: 0x10
-  __DATA_CONST.__objc_selrefs: 0x5c80
+  __DATA_CONST.__objc_selrefs: 0x5d70
   __DATA_CONST.__objc_protorefs: 0x158
-  __DATA_CONST.__objc_superrefs: 0x638
+  __DATA_CONST.__objc_superrefs: 0x640
   __DATA_CONST.__objc_arraydata: 0xcf8
   __DATA_CONST.__got: 0x7e8
-  __AUTH_CONST.__const: 0x3fa0
-  __AUTH_CONST.__cfstring: 0xed00
-  __AUTH_CONST.__objc_const: 0x38c38
+  __AUTH_CONST.__const: 0x3fc0
+  __AUTH_CONST.__cfstring: 0xedc0
+  __AUTH_CONST.__objc_const: 0x392c0
   __AUTH_CONST.__weak_auth_got: 0x28
   __AUTH_CONST.__objc_doubleobj: 0x80
   __AUTH_CONST.__objc_intobj: 0xd98
   __AUTH_CONST.__objc_arrayobj: 0x420
-  __AUTH_CONST.__objc_dictobj: 0x550
   __AUTH_CONST.__objc_floatobj: 0x1b0
+  __AUTH_CONST.__objc_dictobj: 0x550
   __AUTH_CONST.__auth_got: 0x13b0
   __AUTH_CONST.__auth_ptr: 0x490
-  __AUTH.__objc_data: 0x2c90
+  __AUTH.__objc_data: 0x2d30
   __AUTH.__data: 0x788
-  __DATA.__objc_ivar: 0x1860
-  __DATA.__data: 0x35160
-  __DATA.__bss: 0x6b40
+  __DATA.__objc_ivar: 0x1888
+  __DATA.__data: 0x351c0
+  __DATA.__bss: 0x6b50
   __DATA.__common: 0x10
   __DATA_DIRTY.__objc_data: 0x2238
   __DATA_DIRTY.__data: 0x4e8

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 9043
-  Symbols:   10659
-  CStrings:  4865
+  Functions: 9094
+  Symbols:   10737
+  CStrings:  4877
 
Symbols:
+ +[CBDisplayBrightnessClient copyNSNumberForKey:client:handle:andError:]
+ +[CBRampProfileSpring defaultSpringProfile]
+ -[CBCEModule copyCachedInferenceForEvent:]
+ -[CBCEModule invalidateInferenceCache]
+ -[CBCEModule shouldRunInferenceAtTime:]
+ -[CBColorModuleShared CEModulePropertyHandler:key:]
+ -[CBColorPolicyFilter colorAdaptationActive]
+ -[CBColorPolicyFilter setColorAdaptationActive:]
+ -[CBDisplayBrightnessClient currentSDRNitsWithError:]
+ -[CBDisplayBrightnessClient maxSDRDisplayNitsWithError:]
+ -[CBRampManager insertNewRampOrigin:target:length:frequency:identifier:profile:]
+ -[CBRampManager insertNewRampOrigin:target:length:frequency:startRamp:identifier:profile:]
+ -[CBRampProfileLinear normalizedOutputForProgress:]
+ -[CBRampProfileSpring _cacheNormalizer]
+ -[CBRampProfileSpring _springValAtT:]
+ -[CBRampProfileSpring damping]
+ -[CBRampProfileSpring init]
+ -[CBRampProfileSpring initialVelocity]
+ -[CBRampProfileSpring mass]
+ -[CBRampProfileSpring normalizedOutputForProgress:]
+ -[CBRampProfileSpring setDamping:]
+ -[CBRampProfileSpring setInitialVelocity:]
+ -[CBRampProfileSpring setMass:]
+ -[CBRampProfileSpring setStiffness:]
+ -[CBRampProfileSpring stiffness]
+ -[CBRingLight resetUserAdjustmentState]
+ -[CBRingLight statusInfo]
+ -[NightModeControl stop]
+ -[VMBLControl addDisplayModuleForBrightnessControlProxy:]
+ -[VMBLControl findDisplays]
+ -[VMBLControl handleCAWindowServerDisplay:]
+ -[VMBLControl sendBrightnessTransactionRequestForDisplayUUID:builtIn:]
+ -[VMBLControl sendBrightnessTransactionRequestOnQueueForDisplayUUID:builtIn:]
+ -[VMBLControl sendHeadroomRequestOnQueue:forDisplayUUID:builtIn:]
+ -[VMDisplayModule setPropertyOnQueue:forKey:]
+ GCC_except_table41
+ GCC_except_table48
+ _OBJC_CLASS_$_CBRampProfileLinear
+ _OBJC_CLASS_$_CBRampProfileSpring
+ _OBJC_IVAR_$_CBCEModule._cachedResult
+ _OBJC_IVAR_$_CBCEModule._cadenceSeconds
+ _OBJC_IVAR_$_CBCEModule._lastInferenceTime
+ _OBJC_IVAR_$_CBCPMSModule._currentHDRNits
+ _OBJC_IVAR_$_CBColorPolicyFilter._ceModelID
+ _OBJC_IVAR_$_CBColorPolicyFilter._colorAdaptationActive
+ _OBJC_IVAR_$_CBRampProfileSpring._damping
+ _OBJC_IVAR_$_CBRampProfileSpring._initialVelocity
+ _OBJC_IVAR_$_CBRampProfileSpring._mass
+ _OBJC_IVAR_$_CBRampProfileSpring._normalizer
+ _OBJC_IVAR_$_CBRampProfileSpring._stiffness
+ _OBJC_IVAR_$_CBRingLight._overriddenByUser
+ _OBJC_METACLASS_$_CBRampProfileLinear
+ _OBJC_METACLASS_$_CBRampProfileSpring
+ __OBJC_$_CLASS_METHODS_CBRampProfileSpring
+ __OBJC_$_INSTANCE_METHODS_CBRampProfileLinear
+ __OBJC_$_INSTANCE_METHODS_CBRampProfileSpring
+ __OBJC_$_INSTANCE_VARIABLES_CBRampProfileSpring
+ __OBJC_$_PROP_LIST_CBRampProfileLinear
+ __OBJC_$_PROP_LIST_CBRampProfileSpring
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_CBRampProfile
+ __OBJC_$_PROTOCOL_METHOD_TYPES_CBRampProfile
+ __OBJC_$_PROTOCOL_REFS_CBRampProfile
+ __OBJC_CLASS_PROTOCOLS_$_CBRampProfileLinear
+ __OBJC_CLASS_PROTOCOLS_$_CBRampProfileSpring
+ __OBJC_CLASS_RO_$_CBRampProfileLinear
+ __OBJC_CLASS_RO_$_CBRampProfileSpring
+ __OBJC_LABEL_PROTOCOL_$_CBRampProfile
+ __OBJC_METACLASS_RO_$_CBRampProfileLinear
+ __OBJC_METACLASS_RO_$_CBRampProfileSpring
+ __OBJC_PROTOCOL_$_CBRampProfile
+ ___29-[VMDisplayModule invalidate]_block_invoke
+ ___45-[VMDisplayModule setPropertyOnQueue:forKey:]_block_invoke
+ ___58-[VMBLControl sendHeadroomRequest:forDisplayUUID:builtIn:]_block_invoke
+ ___70-[VMBLControl sendBrightnessTransactionRequestForDisplayUUID:builtIn:]_block_invoke
+ ___90-[CBRampManager insertNewRampOrigin:target:length:frequency:startRamp:identifier:profile:]_block_invoke
+ _____DisplayReportCommit_block_invoke_2
+ ___block_descriptor_49_e8_32o40o_e5_v8?0ls32l8s40l8
+ ___block_descriptor_57_e8_32o40o48o_e5_v8?0ls32l8s40l8s48l8
+ _interpolate_value_in_table
+ _kCBSPIBrightnessCommitUpdate
+ _kCBSPIBrightnessCommitUpdateNitsFinal
+ _kCBSPIBrightnessCommitUpdateNitsInitial
+ _load_mapping_table_from_defaults
+ _mapping_table_is_valid
+ _save_mapping_table_to_defaults
- -[CBColorModuleShared CEOverridePropertyHandler:key:]
- -[CBRingLight getStatusInfo]
- -[VMBLControl requestBrightnessTransactionForDisplayUUID:builtIn:]
- _OBJC_IVAR_$_CBCPMSModule._currentSDRNits
- _OBJC_IVAR_$_CBRingLight._overridenByUser
- ___18-[BLControl start]_block_invoke_7
- ___83-[VMDisplayModule initWithBrightnessControl:displayUUID:builtIn:delegate:andQueue:]_block_invoke_2
CStrings:
+ "Adding module for display with ID = %d uuid:%@ builtIn:%d"
+ "Angle=%f"
+ "BrightnessCommitUpdate"
+ "CECadence"
+ "CPMSCurrentHDRNits"
+ "Grimaldi lux cap = %.2f"
+ "HarmonyStrength"
+ "Ignoring negative CE cadence %f"
+ "OverriddenByUser"
+ "Setting CE inference cadence to %f s"
+ "WSDisplays: %{public}@"
+ "[%@]cached strength: %.2f, confidence: %f"
+ "[BRT update: %s]: Begin slider drag"
+ "[BRT update: %s]: begin ramp L: %0.2f -> %0.2f P: %0.2f -> %0.2f (hwMax-perceptual) t: %f rate: %0.2f nits/s %0.2fhz"
+ "[CPMS] Current HDR brightness updated: %f -> %f"
+ "[CPMS] Sending nits cap ramp to display: target=%f duration=%fs start=%f"
+ "[CPMS] Using current HDR nits (%f) instead of cap (%f) for ramp duration calculation"
+ "[Color Mitigation] lux=%.1f nits=%.1f mitigated=%d ceEnabled=%d ttActive=%d ceAttempted=%d source=%s confidence=%.3f threshold=%.3f crossedThreshold=%d strength=%.3f"
+ "[Display Transition] ALS suppression OFF"
+ "[Display Transition] ALS suppression OFF - handling skipped"
+ "[Display Transition] ALS suppression ON"
+ "[Display] CPMS cap ramp: seeding origin %f -> %f (target %f, headroom %f)"
+ "[Display] CPMS ramp request: target=%f duration=%f start=%f"
+ "_S=%f"
+ "grimaldi-lux-cap"
+ "headroomRequestDelegate is nil, cannot request brightness transaction"
+ "initialNits"
+ "startNits"
- "ALS transition suppression: %s"
- "CPMSCurrentSDRNits"
- "OverridenByUser"
- "Received angle %f"
- "Setting PLT angle to %f"
- "Transitioning to Flipbook, forcing NaN IB to CA!"
- "[%x]: _S=%f"
- "[CPMS] Current SDR brightness updated: %f -> %f"
- "[CPMS] Sending nits cap ramp to display: target=%f duration=%fs"
- "[CPMS] Using current SDR nits (%f) instead of cap (%f) for ramp duration calculation"
- "[Color Mitigation] lux=%.1f nits=%.1f mitigated=%d ceEnabled=%d ceAttempted=%d source=%s confidence=%.3f threshold=%.3f crossedThreshold=%d strength=%.3f"
- "[Display] CPMS ramp request: target=%f duration=%f"
- "error: unknown notification type (%@)"
- "key=%@ (type=%tu) value=%@  block=%p queue=%p"
- "key=%@ property=%@ queue=%p clientBlock=%p"
- "no callback or queue available - ignoring notification"
```
