## ARKitUI

> `/System/Library/SubFrameworks/ARKitUI.framework/ARKitUI`

```diff

-781.0.7.0.0
-  __TEXT.__text: 0x2b9b4
+781.40.3.0.0
+  __TEXT.__text: 0x2bdcc
   __TEXT.__objc_methlist: 0x2988
-  __TEXT.__const: 0x948
-  __TEXT.__oslogstring: 0x192e
-  __TEXT.__cstring: 0xdcf
+  __TEXT.__const: 0x958
+  __TEXT.__oslogstring: 0x1b1f
+  __TEXT.__cstring: 0xdf2
   __TEXT.__gcc_except_tab: 0xcd8
   __TEXT.__unwind_info: 0xc20
   __TEXT.__objc_stubs: 0x0

   - /usr/lib/libc++.1.dylib
   - /usr/lib/libobjc.A.dylib
   Functions: 987
-  Symbols:   2153
-  CStrings:  235
+  Symbols:   2154
+  CStrings:  241
 
Symbols:
+ _NSStringFromCGSize
Functions:
~ -[ARSCNCompositor setCurrentSize:] : 236 -> 232
~ -[ARSCNCompositor orientedVerticesWithResolution:] : 360 -> 344
~ -[ARSCNView _assignViewLayerToSessionOnMainThread] : 164 -> 380
~ -[ARSCNView _viewRotationAngleDidChange:] : 276 -> 416
~ -[ARSCNView session:didChangeViewRotationAngle:] : 420 -> 308
~ -[ARSCNView _applyPreviewRotationFromAngle:hasOldAngle:toAngle:] : 588 -> 892
~ -[ARSCNView _publishOrientationSwapAtAngle:fromAngle:] : 1360 -> 1640
~ -[ARSCNView didMoveToWindow] : 336 -> 576
CStrings:
+ "%{public}@ <%p>: Assigned viewLayer to session <%p>. window=%d, bounds=%@, sessionAngle=%.0f"
+ "%{public}@ <%p>: Counter-rotating %.0f -> %.0f: oldDelta=%.1f, duration=%.3f"
+ "%{public}@ <%p>: No previous angle; skipping counter-rotation for %.0f."
+ "%{public}@ <%p>: Publishing orientation swap %ld -> %ld (angle %.0f -> %.0f). baseline=%@ (has=%d), pendingRotationBaselineSize=%@, snapshotState=%ld"
+ "%{public}@ <%p>: didMoveToWindow: window=%d, bounds=%@, viewRotationAngle=%.0f, hasBaselineBounds=%d"
+ "%{public}@ <%p>: viewRotationAngle updated to %.0f (from %.0f, hasBaselineBounds %d, %s)"
+ "adopting silently"
+ "counter-rotating"
- "%{public}@ <%p>: viewRotationAngle updated to %.0f"
- "viewRotationAngle updated to %.0f"
```
