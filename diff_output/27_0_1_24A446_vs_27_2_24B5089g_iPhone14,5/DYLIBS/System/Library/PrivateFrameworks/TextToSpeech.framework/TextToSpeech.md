## TextToSpeech

> `/System/Library/PrivateFrameworks/TextToSpeech.framework/TextToSpeech`

```diff

-723.4.0.0.0
-  __TEXT.__text: 0x347428
+727.3.1.0.0
+  __TEXT.__text: 0x34ad40
   __TEXT.__objc_methlist: 0x3ca8
-  __TEXT.__const: 0x3fa69
+  __TEXT.__const: 0x3fb49
   __TEXT.__dlopen_cstrs: 0x150
-  __TEXT.__constg_swiftt: 0x8378
-  __TEXT.__swift5_typeref: 0x7872
-  __TEXT.__swift5_fieldmd: 0x6268
-  __TEXT.__cstring: 0x84ae
-  __TEXT.__swift5_types: 0x7a8
-  __TEXT.__swift5_capture: 0x3280
-  __TEXT.__swift5_reflstr: 0x4e40
+  __TEXT.__constg_swiftt: 0x85a4
+  __TEXT.__swift5_typeref: 0x7934
+  __TEXT.__swift5_fieldmd: 0x6360
+  __TEXT.__cstring: 0x855d
+  __TEXT.__swift5_types: 0x7b0
+  __TEXT.__swift5_capture: 0x3310
+  __TEXT.__swift5_reflstr: 0x4fd0
   __TEXT.__swift5_assocty: 0x1690
   __TEXT.__swift5_proto: 0x1348
   __TEXT.__swift_as_entry: 0xca4
-  __TEXT.__swift_as_ret: 0xdcc
-  __TEXT.__swift_as_cont: 0x1260
-  __TEXT.__swift5_builtin: 0x49c
-  __TEXT.__oslogstring: 0x2d24
+  __TEXT.__swift_as_ret: 0xdd0
+  __TEXT.__swift_as_cont: 0x1268
+  __TEXT.__swift5_builtin: 0x4b0
+  __TEXT.__oslogstring: 0x2f94
   __TEXT.__swift5_protos: 0x5c
-  __TEXT.__swift5_mpenum: 0x13c
+  __TEXT.__swift5_mpenum: 0x144
   __TEXT.__gcc_except_tab: 0x1e24
   __TEXT.__ustring: 0x2c6
-  __TEXT.__unwind_info: 0xca30
-  __TEXT.__eh_frame: 0x17260
+  __TEXT.__unwind_info: 0xcaa8
+  __TEXT.__eh_frame: 0x17380
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x19a0
+  __DATA_CONST.__const: 0x19b0
   __DATA_CONST.__objc_classlist: 0x368
   __DATA_CONST.__objc_catlist: 0x48
   __DATA_CONST.__objc_protolist: 0xb0
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__weak_got: 0x10
-  __DATA_CONST.__objc_selrefs: 0x2968
+  __DATA_CONST.__objc_selrefs: 0x2980
   __DATA_CONST.__objc_protorefs: 0x48
   __DATA_CONST.__objc_superrefs: 0xc0
   __DATA_CONST.__objc_arraydata: 0x12d0
   __DATA_CONST.__got: 0xd90
-  __AUTH_CONST.__const: 0x177a0
+  __AUTH_CONST.__const: 0x179d0
   __AUTH_CONST.__cfstring: 0x5f00
-  __AUTH_CONST.__objc_const: 0xa960
+  __AUTH_CONST.__objc_const: 0xab00
   __AUTH_CONST.__weak_auth_got: 0x28
   __AUTH_CONST.__objc_arrayobj: 0xed0
   __AUTH_CONST.__objc_intobj: 0x18
   __AUTH_CONST.__objc_doubleobj: 0x30
   __AUTH_CONST.__objc_dictobj: 0x78
-  __AUTH_CONST.__auth_got: 0x2ad0
+  __AUTH_CONST.__auth_got: 0x2ae0
   __AUTH_CONST.__auth_ptr: 0x1470
-  __AUTH.__objc_data: 0x3070
-  __AUTH.__data: 0x4258
+  __AUTH.__objc_data: 0x3258
+  __AUTH.__data: 0x40d0
   __DATA.__objc_ivar: 0x32c
-  __DATA.__data: 0x3d00
-  __DATA.__bss: 0x26bb8
-  __DATA.__common: 0x510
+  __DATA.__data: 0x3d48
+  __DATA.__bss: 0x26c58
+  __DATA.__common: 0x518
   __DATA_DIRTY.__objc_data: 0x520
-  __DATA_DIRTY.__data: 0x10f0
+  __DATA_DIRTY.__data: 0x12d0
   __DATA_DIRTY.__bss: 0xbc0
   __DATA_DIRTY.__common: 0x18
   - /System/Library/Frameworks/AVFAudio.framework/AVFAudio

   - /usr/lib/swift/libswift_StringProcessing.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 16043
+  Functions: 16102
   Symbols:   1372
-  CStrings:  1647
+  CStrings:  1655
 
CStrings:
+ "$ioCycleHeadroomMultiplier"
+ "$maxIOCycleHeadroom"
+ "AVSpeechSynthesisVoice * _Nullable AXAVSpeechSynthesisVoiceFromTTSAXResource(TTSAXResource *__strong _Nullable)"
+ "AudioQueue diag [%ld refills, %.*fHz]: dispatchLatency avg=%.*fms max=%.*fms, maxWork=%.*fms, minInFlight=%ld, underflows=%ld, deadlineMisses=%ld, genSkips=%ld, poolReuse=%ld alloc=%ld sizeMiss=%ld freeDepth=%ld, ioCycle=%.*fms bufDur=%.*fms buffersPerIOCycle=%.*f"
+ "AudioQueue missed refill deadline #%ld: emitted silence with %ld buffer(s) pending — refill did not stage within a buffer duration. maxDispatchLatency=%.*fms, maxWork=%.*fms, staged=%ld, ioCycle=%.*fms, buffersPerIOCycle=%.*f stagedTarget=%ld adaptiveFloor=%ld"
+ "AudioQueue session timings (%{public}s): ioBufferDuration=%.*fms (requested %.*fms), outputLatency=%.*fms, headroom=%.*fms, otherAudioPlaying=%{bool}d, bufferDuration=%.*fms, buffersPerIOCycle=%.*f, stagedTarget=%ld, ioCycleFloor=%.*fms, effectivePriming=%.*fms, effectiveMaxBuffered=%.*fms"
+ "AudioQueue underflow #%ld: nothing pending, emitted silence. maxDispatchLatency=%.*fms, maxWork=%.*fms, refills=%ld"
+ "Callback-thread enqueue failed: %d"
+ "NSBundle * _Nonnull VOTBundle(void)"
+ "TTSSettingsIoCycleHeadroomMultiplier"
+ "TTSSettingsMaxIOCycleHeadroom"
+ "com.apple.Accessibility.TextToSpeech.AudioQueueSessionConfig"
+ "priming"
+ "queue build"
+ "queue start"
+ "route change"
- "$seamFadeDuration"
- "AVSpeechSynthesisVoice *AXAVSpeechSynthesisVoiceFromTTSAXResource(TTSAXResource *__strong)"
- "AudioQueue diag [%ld refills, %.*fHz]: dispatchLatency avg=%.*fms max=%.*fms, maxWork=%.*fms, minInFlight=%ld, underflows=%ld, genSkips=%ld, poolReuse=%ld alloc=%ld sizeMiss=%ld freeDepth=%ld"
- "AudioQueue underflow #%ld: injecting silence. maxDispatchLatency=%.*fms, maxWork=%.*fms, minInFlight=%ld, sizeMisses=%ld, refills=%ld"
- "Interleaved mono to %u channels using Accelerate"
- "NSBundle *VOTBundle(void)"
- "TTSSettingsSeamFadeDuration"
- "com.apple.Accessibiliy.TextToSpeech"
```
