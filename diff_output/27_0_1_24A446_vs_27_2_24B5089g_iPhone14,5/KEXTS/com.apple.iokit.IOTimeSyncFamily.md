## com.apple.iokit.IOTimeSyncFamily

> `com.apple.iokit.IOTimeSyncFamily`

```diff

-1501.6.0.0.0
-  __TEXT.__cstring: 0x3ee0
-  __TEXT.__os_log: 0x8cdf
+1510.8.0.0.0
+  __TEXT.__cstring: 0x3eb8
+  __TEXT.__os_log: 0x8c04
   __TEXT.__const: 0x1e8
-  __TEXT_EXEC.__text: 0x32410
+  __TEXT_EXEC.__text: 0x31b44
   __TEXT_EXEC.__auth_stubs: 0x810
   __DATA.__data: 0xd0
   __DATA.__common: 0x688
   __DATA.__bss: 0x39
   __DATA_CONST.__mod_init_func: 0x100
   __DATA_CONST.__mod_term_func: 0x100
-  __DATA_CONST.__const: 0xc550
-  __DATA_CONST.__kalloc_type: 0xe00
+  __DATA_CONST.__const: 0xc510
+  __DATA_CONST.__kalloc_type: 0xd40
   __DATA_CONST.__kalloc_var: 0x280
   __DATA_CONST.__auth_got: 0x408
   __DATA_CONST.__got: 0xc0
   __DATA_CONST.__auth_ptr: 0x8
-  Functions: 1488
+  Functions: 1474
   Symbols:   0
-  CStrings:  730
+  CStrings:  728
 
CStrings:
+ "  %s(%s): Egress Untimestamped Packet Count: %u, Count since last log entry: %u (timestamping type %u, untimestamped general message mask 0x%x)\n"
+ "  %s(%s): Failed to transmit message of type %s untimestamped packet with error 0x%08x\n"
+ "  %s(%s): Ignoring platform mask 0x%x, boot-arg set mask 0x%x\n"
+ "  %s(%s): No provider, cannot identify the Wi-Fi driver"
+ "  %s(%s): Skip egress timestamp request for general messages, mask 0x%x\n"
+ "  %s(%s): Wi-Fi driver CFBundleIdentifier is \"%s\", chipset %s"
+ "12111112122212121211222121122222121111211112111122222221111111212222222"
+ "1211111212221212121122212112222212111121111211112222222111111121222222211"
+ "121111121222121212112221211222221211112111121111222222211111112122222222222"
+ "<unreadable>"
+ "AppleBCMWLAN"
+ "AppleCentauriAlpha"
+ "AppleSunriseWLAN"
+ "CFBundleIdentifier"
+ "Skip egress timestamp request for general messages, mask 0x%x\n"
+ "TransmittedEgressUntimestampedCounter"
+ "Unknown"
+ "UntimestampedGeneralMessageMask"
+ "com.apple.AppleSunriseWLAN"
+ "com.apple.DriverKit-AppleBCMWLAN"
+ "com.apple.driver.AppleCentauriAlpha"
+ "getTransmitTimestamp(packet, &timestamp) == kIOReturnSuccess"
+ "timesync_untimestamped_general"
- "/Library/Caches/com.apple.xbs/<UUID>/TemporaryDirectory.<TMP>/Sources/TimeSync_kext/IOTimeSyncFamily/TimeSensitiveNetworking/TSNBSDTestInterface.cpp"
- "121111121222121212112221211222221211112111121111222222211111112122222"
- "12111112122212121211222121122222121111211112111122222221111111212222211"
- "12111112122212121211222121122222121111211112111122222221111111212222222221"
- "12222"
- "2222222222222222221"
- "Dropping %llu packets from sequence diff (%llu -> %llu)"
- "First t1 timestamp = %llu"
- "First t2 timestamp = %llu"
- "Maximum timestamp, resetting replay"
- "Starting timestamp replay"
- "Stopped timestamp replay"
- "Stopping timestamp replay"
- "Unexpected sync received on GM"
- "[%u] delay request Replayed t3 = %llu -> %llu"
- "[%u] delay request Replayed t4 = %llu -> %llu"
- "[%u] delay response Replayed t4 = %llu -> %llu"
- "[%u] follow up Replayed t1, %llu -> %llu"
- "[%u] sync Replayed t1, %llu -> %llu"
- "[%u] sync Replayed t2, %llu -> %llu"
- "getTransmitTimestamp(packet, &timestamp, &futurePermitted) == kIOReturnSuccess"
- "length == packetLength"
- "payload != nullptr"
- "site.TSNBSDTestInterfaceReplayTimestamps"
- "site.TSReplayTimestamps"
```
