## resourcegrabberd

> Group: ⬆️ Updated

```diff

 		(require-not (global-name "com.apple.SystemConfiguration.configd"))
 		(require-not (global-name "com.apple.iapd.xpc"))
 		(require-not (global-name "com.apple.modelcatalog.catalog"))
+		(require-not (global-name "com.apple.nehelper"))
 		(require-not (xpc-service-name "com.apple.ImageIOXPCService"))
 		(require-not (global-name "com.apple.cfprefsd.daemon.system"))
 		(require-not (global-name "com.apple.runningboard"))

 		SYS_setxattr
 		SYS_fsetxattr
 		SYS_listxattr
+		SYS_flistxattr
 		SYS_fsctl
 		SYS_shm_open
 		SYS_sysctlbyname

 (allow system-necp-client-action
 	(necp-client-action
 		NECP_CLIENT_ACTION_ADD
+		NECP_CLIENT_ACTION_ADD_FLOW
 		NECP_CLIENT_ACTION_COPY_AGENT
 		NECP_CLIENT_ACTION_COPY_INTERFACE
 		NECP_CLIENT_ACTION_COPY_RESULT
+		NECP_CLIENT_ACTION_COPY_ROUTE_STATISTICS
 		NECP_CLIENT_ACTION_COPY_UPDATED_RESULT
 		NECP_CLIENT_ACTION_REMOVE)
 )
```
