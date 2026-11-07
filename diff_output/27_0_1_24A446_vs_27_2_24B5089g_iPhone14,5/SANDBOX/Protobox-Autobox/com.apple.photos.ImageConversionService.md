## com.apple.photos.ImageConversionService

> Group: ⬆️ Updated

```diff

 		(require-not (global-name "com.apple.coremedia.formatreader.xpc"))
 		(require-not (global-name "com.apple.coremedia.mediaplaybackd.formatreader.xpc"))
 		(require-not (global-name "com.apple.system.libinfo.muser"))
+		(require-not (global-name "com.apple.timed.xpc"))
 		(require-not (require-any
 			(global-name "com.apple.coremedia.mediaplaybackd.videocompositor.xpc")
 			(global-name "com.apple.coremedia.videocompositor")

 		SYS_munlock
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
