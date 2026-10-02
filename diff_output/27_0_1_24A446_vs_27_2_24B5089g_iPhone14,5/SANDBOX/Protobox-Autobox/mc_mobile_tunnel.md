## mc_mobile_tunnel

> Group: ⬆️ Updated

```diff

 		(require-not (global-name "com.apple.containermanagerd"))
 		(require-not (global-name "com.apple.runningboard"))
 		(require-not (global-name "com.apple.dnssd.service"))
+		(require-not (global-name "com.apple.FileCoordination"))
 		(require-not (global-name "com.apple.dmd"))
 		(require-not (global-name "com.apple.usymptomsd"))
 		(require-not (global-name "com.apple.PowerManagement.control"))

 		(require-not (xpc-service-name "com.apple.MTLCompilerService"))
 		(require-not (xpc-service-name "com.apple.ImageIOXPCService"))
 		(require-not (xpc-service-name "com.apple.datamigrator"))
-		(require-not (global-name "com.apple.FileCoordination"))
 		(require-not (global-name "com.apple.CoreAuthentication.daemon.libxpc"))
 		(require-not (global-name "com.apple.CoreAuthentication.daemon"))
 		(require-not (global-name "com.apple.CARenderServer"))

 		SYS_connectx
 		SYS_getattrlistbulk
 		SYS_openat
+		SYS_renameat
 		SYS_faccessat
 		SYS_fstatat
 		SYS_fstatat64
+		SYS_unlinkat
 		SYS_mkdirat
 		SYS_bsdthread_ctl
 		SYS_guarded_open_dprotected_np
```
