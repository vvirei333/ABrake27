## GAXBackboardServer

> `/System/Library/AccessibilityBundles/GAXBackboardServer.bundle/GAXBackboardServer`

### Sections with Same Size but Changed Content

- `__TEXT.__gcc_except_tab`
- `__DATA_CONST.__objc_classlist`
- `__DATA_CONST.__objc_protolist`
- `__DATA_CONST.__objc_superrefs`
- `__DATA_CONST.__objc_intobj`
- `__DATA_CONST.__got`
- `__DATA.__objc_data`
- `__DATA.__data`

```diff

-1064.0.0.0.0
-  __TEXT.__text: 0x2b720
+1067.3.1.0.0
+  __TEXT.__text: 0x2bbe8
   __TEXT.__auth_stubs: 0xc40
-  __TEXT.__objc_stubs: 0x6980
-  __TEXT.__objc_methlist: 0x28ac
+  __TEXT.__objc_stubs: 0x6a20
+  __TEXT.__objc_methlist: 0x28ec
   __TEXT.__const: 0x188
   __TEXT.__gcc_except_tab: 0x84c
-  __TEXT.__objc_methname: 0x8d7a
-  __TEXT.__cstring: 0x4737
-  __TEXT.__oslogstring: 0x41e2
+  __TEXT.__objc_methname: 0x8e80
+  __TEXT.__cstring: 0x47a4
+  __TEXT.__oslogstring: 0x42db
   __TEXT.__objc_classname: 0x2ed
-  __TEXT.__objc_methtype: 0x18ca
-  __TEXT.__unwind_info: 0xaa0
-  __DATA_CONST.__const: 0x16b8
-  __DATA_CONST.__cfstring: 0x3720
+  __TEXT.__objc_methtype: 0x18cd
+  __TEXT.__unwind_info: 0xaa8
+  __DATA_CONST.__const: 0x16b0
+  __DATA_CONST.__cfstring: 0x3760
   __DATA_CONST.__objc_classlist: 0x90
   __DATA_CONST.__objc_catlist: 0x8
   __DATA_CONST.__objc_protolist: 0x60

   __DATA_CONST.__auth_got: 0x630
   __DATA_CONST.__got: 0x350
   __DATA_CONST.__auth_ptr: 0x8
-  __DATA.__objc_const: 0x2a30
-  __DATA.__objc_selrefs: 0x1ed8
-  __DATA.__objc_ivar: 0x1a8
+  __DATA.__objc_const: 0x2a68
+  __DATA.__objc_selrefs: 0x1f00
+  __DATA.__objc_ivar: 0x1ac
   __DATA.__objc_data: 0x5a0
   __DATA.__data: 0x588
   __DATA.__bss: 0xa8

   - /usr/lib/libMobileGestalt.dylib
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 967
-  Symbols:   583
-  CStrings:  2262
+  Functions: 974
+  Symbols:   586
+  CStrings:  2273
 
Symbols:
+ _GAXIPCPayloadKeyHostedApplicationCornerRadii
+ _GAXUIMessageKeyHostedApplicationCornerRadii
+ _deserializeGAXBackboardState
CStrings:
+ "-[AXSpringBoardServer(GAXAdditions) gaxUpdateStateOfHostedApplicationWithIdentifier:scaleFactorNumber:centerStringRepresentation:cornerRadiiStringRepresentation:animationDurationNumber:]"
+ "App layout has %d app elements of %d total, from same app %i: %{public}@"
+ "GAXIPCPayloadKeyHostedApplicationCornerRadii"
+ "Reconciling implicit GAX client check-in for still-frontmost session app %@ (pid:%@). Its one-shot check-in ping was lost, not absent"
+ "Session app is still frontmost but its GAX client never checked in; reconciling the lost check-in"
+ "TB,N,V_cachedIsLostModeActive"
+ "TB,N,V_didReadLostModeState"
+ "_cachedIsLostModeActive"
+ "_didReadLostModeState"
+ "cachedIsLostModeActive"
+ "didReadLostModeState"
+ "didReconcileCheckInForEffectiveSessionApp"
+ "didReconcileSessionAppCheckInForIntegrityVerifier:"
+ "gaxUpdateStateOfHostedApplicationWithIdentifier:scaleFactorNumber:centerStringRepresentation:cornerRadiiStringRepresentation:animationDurationNumber:"
+ "hosted application corner radii"
+ "setCachedIsLostModeActive:"
+ "setDidReadLostModeState:"
+ "v56@0:8@16@24@32@40@48"
- "-[AXSpringBoardServer(GAXAdditions) gaxUpdateStateOfHostedApplicationWithIdentifier:scaleFactorNumber:centerStringRepresentation:animationDurationNumber:]"
- "App layout has %d elements from same app %i: %{public}@"
- "TB,N,V_isLostModeActive"
- "_isLostModeActive"
- "gaxUpdateStateOfHostedApplicationWithIdentifier:scaleFactorNumber:centerStringRepresentation:animationDurationNumber:"
- "setIsLostModeActive:"
- "v48@0:8@16@24@32@40"
```
