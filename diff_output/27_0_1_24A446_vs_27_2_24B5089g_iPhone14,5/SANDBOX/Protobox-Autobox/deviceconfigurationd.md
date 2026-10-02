## deviceconfigurationd

> Group: ⬆️ Updated

```diff

 			SYS_psynch_rw_upgrade
 			SYS_psynch_mutexwait
 			SYS_psynch_mutexdrop
+			SYS_psynch_cvbroad
+			SYS_psynch_cvwait
 			SYS_psynch_rw_rdlock
 			SYS_psynch_rw_wrlock
 			SYS_psynch_rw_unlock
 			SYS_psynch_rw_unlock2
+			SYS_psynch_cvclrprepost
 			SYS_issetugid
 			SYS___pthread_kill
 			SYS___pthread_sigmask

 
 (deny system-kas-info)
 
-(with-filter (mac-policy-name "AMFI")
+(with-filter (mac-policy-name "Sandbox")
 	(deny system-mac-syscall
 		(require-all
-			(require-not (mac-syscall-number 90))
-			(require-not (mac-syscall-number 96))
-			(require-not (mac-syscall-number 102))
+			(require-not (mac-syscall-number 4))
+			(require-not (mac-syscall-number 67))
+			(require-not (mac-syscall-number 2))
 		)
 	)
 )
 (deny system-mac-syscall
 	(require-any
-		(require-not (mac-policy-name "Sandbox"))
-		(require-not (mac-syscall-number 2))
+		(require-not (mac-policy-name "AMFI"))
+		(require-not (mac-syscall-number 90))
 	)
 )
 
```
