## AnnounceDaemon

> `/System/Library/PrivateFrameworks/AnnounceDaemon.framework/AnnounceDaemon`

```diff

-331.0.0.0.0
-  __TEXT.__text: 0x563dc
+337.0.0.0.0
+  __TEXT.__text: 0x564c4
   __TEXT.__objc_methlist: 0x3734
   __TEXT.__const: 0x1988
   __TEXT.__cstring: 0x22d4
-  __TEXT.__oslogstring: 0x5758
+  __TEXT.__oslogstring: 0x57b8
   __TEXT.__gcc_except_tab: 0xb0c
   __TEXT.__constg_swiftt: 0x350
   __TEXT.__swift5_typeref: 0xa60

   - /usr/lib/swift/libswiftsimd.dylib
   Functions: 1845
   Symbols:   2855
-  CStrings:  798
+  CStrings:  800
 
Functions:
~ -[ANAnnouncementCoordinator(ANAnnouncementManagement_Internal) updateLastPlayedDateForAnnouncement:endpointID:] : 172 -> 292
~ -[ANAnnouncementCoordinator(ANAnnouncementManagement_Internal) updatePlayingState:forAnnouncement:endpointID:] : 188 -> 300
CStrings:
+ "Skip updating last played date for endpoint %@"
+ "Skip updating playing state for endpoint %@"
```
