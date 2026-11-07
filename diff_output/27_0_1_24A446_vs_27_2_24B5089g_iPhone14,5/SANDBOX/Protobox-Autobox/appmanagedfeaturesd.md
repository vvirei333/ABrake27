## appmanagedfeaturesd

> Group: ⬆️ Updated

```diff

 		(require-not (global-name "com.apple.duetactivityscheduler"))
 		(require-not (global-name "com.apple.frontboard.systemappservices"))
 		(require-not (global-name "com.apple.managedconfiguration.teslad"))
+		(require-not (global-name "com.apple.commcenter.coretelephony.xpc"))
 		(require-not (global-name "com.apple.mobileactivationd"))
 		(require-not (global-name "com.apple.appstored.xpc"))
 		(require-not (global-name "com.apple.manageddeviced"))

 			SYS_guarded_open_np
 			SYS_change_fdguard_np
 			SYS_openat
+			SYS_renameat
 			SYS_faccessat
 			SYS_fstatat
 			SYS_fstatat64

 		NECP_CLIENT_ACTION_COPY_RESULT
 		NECP_CLIENT_ACTION_COPY_ROUTE_STATISTICS
 		NECP_CLIENT_ACTION_COPY_UPDATED_RESULT
+		NECP_CLIENT_ACTION_COPY_UPDATED_RESULT_FINAL
 		NECP_CLIENT_ACTION_MAP_SYSCTLS
 		NECP_CLIENT_ACTION_REMOVE
 		NECP_CLIENT_ACTION_REMOVE_FLOW
```
