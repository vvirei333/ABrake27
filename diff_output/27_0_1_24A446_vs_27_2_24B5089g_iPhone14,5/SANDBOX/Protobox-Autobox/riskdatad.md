## riskdatad

> Group: ⬆️ Updated

```diff

 (deny mach-lookup
 	(require-all
 		(global-name "com.apple.dt.testmanagerd.uiprocess")
+		(require-not (global-name "com.apple.systemstatus"))
 		(require-not (global-name "com.apple.lsd.mapdb"))
 		(require-not (global-name "com.apple.trustd"))
 		(require-not (global-name "com.apple.ak.auth.xpc"))

 		(require-not (global-name "com.apple.networkscored"))
 		(require-not (global-name "com.apple.system.libinfo.muser"))
 		(require-not (global-name "com.apple.telephonyutilities.callservicesdaemon.callcapabilities"))
+		(require-not (global-name "com.apple.timed.xpc"))
 		(require-not (global-name "com.apple.wifi.manager"))
 		(require-not (global-name "com.apple.telephonyutilities.callservicesdaemon.callstatecontroller"))
 		(require-not (global-name "com.apple.distributed_notifications@1v3"))
```
