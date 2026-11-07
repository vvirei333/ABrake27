## assistant_service

> Group: ⬆️ Updated

```diff

 		(require-not (global-name "com.apple.springboard.services"))
 		(require-not (global-name "com.apple.backboard.display.services"))
 		(require-not (global-name "com.apple.siri-distributed-evaluation"))
+		(require-not (global-name "com.apple.ScreenTimeAgent.persistence"))
 		(require-not (global-name "com.apple.managedconfiguration.profiled.public"))
 		(require-not (global-name "com.apple.sessionservices"))
 		(require-not (global-name "com.apple.pasteboard.pasted"))

 		mach_vm_region_recurse
 		mach_vm_region
 		_mach_make_memory_entry
+		mach_vm_page_range_query
 		mach_vm_range_create
 		mach_vm_reallocate
 		mach_memory_entry_ownership
```
