## siriactionsd

> Group: ⬆️ Updated

```diff

 		(require-not (global-name "com.apple.biome.ContextSync"))
 		(require-not (global-name "com.apple.accessories.externalaccessory-server"))
 		(require-not (global-name "com.apple.coreduetd.context"))
+		(require-not (global-name "com.apple.siri.uaf.subscription.service"))
 		(require-not (global-name "com.apple.imagent.embedded.auth"))
 		(require-not (global-name "com.apple.diagd"))
 		(require-not (global-name "com.apple.xpc.activity.unmanaged"))

 		mach_vm_region_recurse
 		mach_vm_region
 		_mach_make_memory_entry
+		mach_vm_page_range_query
 		mach_vm_deferred_reclamation_buffer_flush
 		mach_vm_range_create
 		mach_vm_reallocate
```
