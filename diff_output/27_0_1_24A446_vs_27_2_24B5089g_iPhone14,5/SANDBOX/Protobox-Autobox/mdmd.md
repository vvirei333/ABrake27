## mdmd

> Group: ⬆️ Updated

```diff

 
 (deny ipc-posix-sem-open)
 (allow ipc-posix-sem-open
-	(ipc-posix-name "purplebuddy.sentinel")
+	(require-any
+		(ipc-posix-name "dmc_isCurrentUserConfigured")
+		(ipc-posix-name "purplebuddy.sentinel")
+	)
 )
 
 (deny ipc-posix-shm-read-data)

 		(require-not (global-name "com.apple.mobilegestalt.xpc"))
 		(require-not (global-name "com.apple.osanalytics.osanalyticshelper"))
 		(require-not (global-name "com.apple.lsd.icons"))
-		(require-not (global-name "com.apple.remotemanagementd"))
+		(require-not (require-any
+			(global-name "com.apple.DeviceRecoveryService")
+			(global-name "com.apple.remotemanagementd")
+		))
 		(require-not (global-name "com.apple.duetactivityscheduler"))
 		(require-not (global-name "com.apple.accessibility.AXBackBoardServer"))
 		(require-not (global-name "com.apple.cdp.daemon"))

 		(require-not (global-name "com.apple.apsd"))
 		(require-not (global-name "com.apple.tccd"))
 		(require-not (global-name "com.apple.accountsd.accountmanager"))
+		(require-not (xpc-service-name "com.apple.ImageIOXPCService"))
 		(require-not (global-name "com.apple.coremedia.admin"))
 		(require-not (global-name "com.apple.SBUserNotification"))
 		(require-not (global-name "com.apple.mobile.usermanagerd.xpc"))

 		(require-not (global-name "com.apple.locationd.registration"))
 		(require-not (global-name "com.apple.cfnetwork.cfnetworkagent"))
 		(require-not (global-name "com.apple.dnssd.service"))
+		(require-not (global-name "com.apple.FileCoordination"))
 		(require-not (global-name "com.apple.dmd"))
 		(require-not (global-name "com.apple.devicemanagementclient.managedappsd"))
 		(require-not (global-name "com.apple.usymptomsd"))

 		(require-not (xpc-service-name "com.apple.SiriTTSService.TrialProxy"))
 		(require-not (xpc-service-name "com.apple.MTLCompilerService"))
 		(require-not (xpc-service-name "com.apple.icloud.FindMyDevice.FindMyDeviceHelperXPCService"))
-		(require-not (xpc-service-name "com.apple.ImageIOXPCService"))
-		(require-not (global-name "com.apple.FileCoordination"))
 		(require-not (global-name "com.apple.CoreAuthentication.daemon.libxpc"))
 		(require-not (global-name "com.apple.CoreAuthentication.daemon"))
 		(require-not (global-name "com.apple.CARenderServer"))

 		SYS_sysctl
 		SYS_getumask
 		SYS_open_dprotected_np
+		SYS_openat_dprotected_np
 		SYS_getattrlist
 		SYS_setattrlist
 		SYS_fgetattrlist

 		SYS_clonefileat
 		SYS_openat
 		SYS_openat_nocancel
+		SYS_renameat
 		SYS_faccessat
 		SYS_fstatat
 		SYS_fstatat64
```
