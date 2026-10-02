## druid

> Group: ⬆️ Updated

```diff

 		(require-not (global-name "com.apple.mobilegestalt.xpc"))
 		(require-not (global-name "com.apple.FileProvider"))
 		(require-not (global-name "com.apple.TextInput"))
+		(require-not (global-name "com.apple.dictationengined"))
+		(require-not (global-name "com.apple.callkit.callcontrollerhost"))
 		(require-not (require-any
 			(global-name "com.apple.DragUI.druid.system")
 			(global-name "com.apple.ensemble.dragserver")

 		SYS_memorystatus_control
 		SYS_guarded_close_np
 		SYS_guarded_kqueue_np
+		SYS_change_fdguard_np
 		SYS_proc_rlimit_control
 		SYS_getattrlistbulk
 		SYS_clonefileat

 		MSC__kernelrpc_mach_port_construct_trap
 		MSC__kernelrpc_mach_port_destruct_trap
 		MSC_mach_reply_port
+		MSC_thread_self_trap
 		MSC_task_self_trap
 		MSC_host_self_trap
 		MSC_semaphore_signal_trap
```
