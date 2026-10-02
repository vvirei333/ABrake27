## modelcatalogd

> Group: ⬆️ Updated

```diff

 		(require-not (global-name "com.apple.logd"))
 		(require-not (global-name "com.apple.analyticsd"))
 		(require-not (global-name "com.apple.containermanagerd.system"))
+		(require-not (xpc-service-name "com.apple.SetStoreUpdateService"))
 		(require-not (xpc-service-name "com.apple.ModelCatalog.ModelCatalogCompilationService"))
 		(require-not (global-name "com.apple.ERFoundationExtensionDaemon"))
 		(require-not (global-name "com.apple.DiskArbitration.diskarbitrationd"))

 		SYS_getattrlist
 		SYS_fgetattrlist
 		SYS_getxattr
+		SYS_fsetxattr
 		SYS_listxattr
 		SYS_fsctl
 		SYS_shm_open
```
