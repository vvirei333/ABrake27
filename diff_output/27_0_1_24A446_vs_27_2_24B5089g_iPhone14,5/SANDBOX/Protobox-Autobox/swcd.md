## swcd

> Group: ⬆️ Updated

```diff

 		(require-not (global-name "com.apple.lsd.mapdb"))
 		(require-not (global-name "com.apple.networkscored"))
 		(require-not (global-name "com.apple.system.libinfo.muser"))
+		(require-not (global-name "com.apple.timed.xpc"))
 		(require-not (global-name "com.apple.managedconfiguration.profiled.public"))
 		(require-not (global-name "com.apple.runningboard"))
 		(require-not (global-name "com.apple.diagnosticd"))

 		SYS_fsetattrlist
 		SYS_getxattr
 		SYS_fgetxattr
+		SYS_listxattr
 		SYS_flistxattr
 		SYS_fsctl
 		SYS_ffsctl
```
