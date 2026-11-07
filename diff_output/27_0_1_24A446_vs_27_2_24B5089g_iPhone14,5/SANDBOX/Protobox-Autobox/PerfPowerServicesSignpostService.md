## PerfPowerServicesSignpostService

> Group: ⬆️ Updated

```diff

 		(global-name "com.apple.dt.testmanagerd.uiprocess")
 		(require-not (global-name "com.apple.lsd.mapdb"))
 		(require-not (global-name "com.apple.system.notification_center"))
+		(require-not (global-name "com.apple.powerlog.plxpclogger.xpc"))
 		(require-not (global-name "com.apple.diagnosticd"))
 		(require-not (global-name "com.apple.system.libinfo.muser"))
 		(require-not (global-name "com.apple.logd.admin"))
 		(require-not (global-name "com.apple.logd"))
+		(require-not (xpc-service-name "com.apple.PerfPowerTelemetryClientRegistrationService"))
 		(require-not (global-name "com.apple.containermanagerd"))
 		(require-not (global-name "com.apple.containermanagerd.system"))
 		(require-not (global-name "com.apple.cfprefsd.daemon.system"))

 		SYS_setrlimit
 		SYS_mmap
 		SYS_lseek
+		SYS_ftruncate
 		SYS_sysctl
 		SYS_getumask
 		SYS_open_dprotected_np
```
