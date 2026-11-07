## SoftwareUpdateUIService

> Group: ⬆️ Updated

```diff

 		(require-not (global-name "com.apple.mobileactivationd"))
 		(require-not (global-name "com.apple.dasd.end-prewarm"))
 		(require-not (global-name "com.apple.biometrickitd"))
+		(require-not (global-name "com.apple.muranod.listener"))
 		(require-not (require-any
 			(global-name "com.apple.remote-text-editing-legacy")
 			(global-name "com.apple.sharing.remote-text-editing")

 		(require-not (global-name "com.apple.aa.daemon.xpc"))
 		(require-not (global-name "com.apple.distributed_notifications@1v3"))
 		(require-not (global-name "com.apple.handwritingd.remoterecognition"))
+		(require-not (global-name "UIASTNotificationCenter"))
 		(require-not (global-name "com.apple.accessibility.voices"))
 		(require-not (global-name "com.apple.coremedia.routingcontext.xpc"))
 		(require-not (global-name "com.apple.springboard.services"))

 		SYS_getattrlistbulk
 		SYS_openat
 		SYS_openat_nocancel
+		SYS_renameat
 		SYS_faccessat
 		SYS_fstatat
 		SYS_fstatat64

 				io_registry_create_iterator
 				io_registry_entry_from_path
 				io_registry_entry_get_name
+				io_registry_entry_get_child_iterator
 				io_registry_get_root_entry
 				io_service_open_extended
 				io_connect_method
```
