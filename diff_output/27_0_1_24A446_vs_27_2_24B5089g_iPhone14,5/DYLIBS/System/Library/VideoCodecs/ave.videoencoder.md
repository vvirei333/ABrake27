## ave.videoencoder

> `/System/Library/VideoCodecs/ave.videoencoder`

```diff

-913.43.1.0.0
-  __TEXT.__text: 0x172018
+913.48.1.0.0
+  __TEXT.__text: 0x172238
   __TEXT.__init_offsets: 0xc
   __TEXT.__const: 0x25294
   __TEXT.__gcc_except_tab: 0x6e4
-  __TEXT.__cstring: 0x4c884
+  __TEXT.__cstring: 0x4c971
   __TEXT.__unwind_info: 0xa48
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0

   - /usr/lib/libobjc.A.dylib
   Functions: 1535
   Symbols:   2336
-  CStrings:  6354
+  CStrings:  6358
 
Functions:
~ __Z31AVE_Prop_AVC_SetDPBRequirementsPvS_PK10__CFStringPKv : 2092 -> 2364
~ __Z32AVE_Prop_HEVC_SetDPBRequirementsPvS_PK10__CFStringPKv : 2504 -> 2776
CStrings:
+ "%lld %d AVE %s: %s:%d %s | VCP has mismatch DPB number of frames with AVE %p %lld %p %p %p %d %d "
+ "%lld %d AVE %s: %s:%d %s | VCP has mismatch DPB number of frames with AVE %p %lld %p %p %p %d %d \n"
+ "(iNumOfFrames / 2) >= 0 && (iNumOfFrames / 2) <= (((16) > (15) ? (16) : (15)) + 1)"
+ "19:55:37"
+ "913.48.1"
+ "Sep 13 2026"
+ "num <= (((16) > (15) ? (16) : (15)) + 1)"
+ "num_frames <= (16 + 1)"
+ "num_frames <= 16"
+ "pSnapshot->num_ref_frame <= ((16) > (15) ? (16) : (15))"
- "(iNumOfFrames / 2) >= 0 && (iNumOfFrames / 2) <= (((16) > (16) ? (16) : (16)) + 1)"
- "21:31:54"
- "913.43.1"
- "Aug 13 2026"
- "num <= (((16) > (16) ? (16) : (16)) + 1)"
- "pSnapshot->num_ref_frame <= ((16) > (16) ? (16) : (16))"
```
