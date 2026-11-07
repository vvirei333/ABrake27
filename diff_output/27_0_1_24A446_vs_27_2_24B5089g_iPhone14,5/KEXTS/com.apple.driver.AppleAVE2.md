## com.apple.driver.AppleAVE2

> `com.apple.driver.AppleAVE2`

```diff

-913.43.1.0.0
+913.48.1.0.0
   __TEXT.__const: 0x4b6f0
-  __TEXT.__cstring: 0x4804a
-  __TEXT.__os_log: 0x5cabd
-  __TEXT_EXEC.__text: 0x1d0028
+  __TEXT.__cstring: 0x48053
+  __TEXT.__os_log: 0x5cac2
+  __TEXT_EXEC.__text: 0x1d0048
   __TEXT_EXEC.__auth_stubs: 0x7b0
   __DATA.__data: 0x2c8
   __DATA.__common: 0x130
Functions:
~ sub_fffffff0083e9cc8 -> sub_fffffff008412688 : 1896 -> 1900
~ sub_fffffff0083eabf0 -> sub_fffffff0084135b4 : 1732 -> 1736
~ sub_fffffff0083f6358 -> sub_fffffff00841ed20 : 23076 -> 23104
~ sub_fffffff008575690 -> sub_fffffff00859e074 : 48 -> 44
CStrings:
+ "%lld %d AVE %s: %s:%d %s | invalid MB/CTU stats firmware buffer %p %d %lld %p %lld | %d"
+ "%lld %d AVE %s: %s:%d %s | invalid MB/CTU stats firmware buffer %p %d %lld %p %lld | %d\n"
+ "19:56:46"
+ "2 <= pInfo->VideoParamsDriver.userDPBnumFrames && pInfo->VideoParamsDriver.userDPBnumFrames <= (((16) > (15) ? (16) : (15)) + 1)"
+ "913.48.1"
+ "Sep 13 2026"
+ "num_ref_frame <= ((16) > (15) ? (16) : (15))"
+ "pInfo->sBufPFSet.saMBStats[m].iAddr != 0"
- "%lld %d AVE %s: %s:%d %s | invalid MB/CTU stats firmware buffer %p %d %lld %p %lld"
- "%lld %d AVE %s: %s:%d %s | invalid MB/CTU stats firmware buffer %p %d %lld %p %lld\n"
- "2 <= pInfo->VideoParamsDriver.userDPBnumFrames && pInfo->VideoParamsDriver.userDPBnumFrames <= (((16) > (16) ? (16) : (16)) + 1)"
- "21:32:58"
- "913.43.1"
- "Aug 13 2026"
- "num_ref_frame <= ((16) > (16) ? (16) : (16))"
- "pInfo->sBufPFSet.sMBStats.iAddr != 0"
```
