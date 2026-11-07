## PowerlogCore

> `/System/Library/PrivateFrameworks/PowerlogCore.framework/PowerlogCore`

```diff

-3486.2.4.0.0
-  __TEXT.__text: 0xe8af4
-  __TEXT.__objc_methlist: 0x97a8
+3486.40.98.0.0
+  __TEXT.__text: 0xe9840
+  __TEXT.__objc_methlist: 0x9828
   __TEXT.__const: 0x1c38
-  __TEXT.__cstring: 0x4387e
-  __TEXT.__oslogstring: 0x8a24
-  __TEXT.__gcc_except_tab: 0x2a38
-  __TEXT.__unwind_info: 0x3108
+  __TEXT.__cstring: 0x43939
+  __TEXT.__oslogstring: 0x8caf
+  __TEXT.__gcc_except_tab: 0x2a58
+  __TEXT.__unwind_info: 0x3140
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x2600
+  __DATA_CONST.__const: 0x2640
   __DATA_CONST.__objc_classlist: 0x378
   __DATA_CONST.__objc_nlclslist: 0x80
   __DATA_CONST.__objc_catlist: 0x28
   __DATA_CONST.__objc_protolist: 0x60
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__weak_got: 0x8
-  __DATA_CONST.__objc_selrefs: 0x59a0
+  __DATA_CONST.__objc_selrefs: 0x59f0
   __DATA_CONST.__objc_protorefs: 0x20
   __DATA_CONST.__objc_superrefs: 0x2d0
-  __DATA_CONST.__objc_arraydata: 0x45e58
+  __DATA_CONST.__objc_arraydata: 0x45f18
   __DATA_CONST.__got: 0x7e8
   __AUTH_CONST.__const: 0x2540
-  __AUTH_CONST.__cfstring: 0x6cf60
+  __AUTH_CONST.__cfstring: 0x6d120
   __AUTH_CONST.__objc_const: 0xaa30
   __AUTH_CONST.__weak_auth_got: 0x10
-  __AUTH_CONST.__objc_intobj: 0x4cb0
+  __AUTH_CONST.__objc_intobj: 0x4cc8
   __AUTH_CONST.__objc_doubleobj: 0x14d0
   __AUTH_CONST.__objc_arrayobj: 0x1230
-  __AUTH_CONST.__objc_dictobj: 0xfcf8
+  __AUTH_CONST.__objc_dictobj: 0xfd70
   __AUTH_CONST.__auth_got: 0xdc0
   __AUTH_CONST.__auth_ptr: 0x0
   __AUTH.__objc_data: 0x460
   __DATA.__objc_ivar: 0x7d0
   __DATA.__data: 0x4a0
-  __DATA.__bss: 0x1709
+  __DATA.__bss: 0x16a9
   __DATA.__common: 0x10
   __DATA_DIRTY.__objc_data: 0x1e50
   __DATA_DIRTY.__data: 0x28
-  __DATA_DIRTY.__bss: 0x1198
+  __DATA_DIRTY.__bss: 0x11f8
   __DATA_DIRTY.__common: 0x8
   - /System/Library/Frameworks/CloudKit.framework/CloudKit
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation

   - /usr/lib/libsqlite3.dylib
   - /usr/lib/libsystemstats.dylib
   - /usr/lib/libz.1.dylib
-  Functions: 4953
-  Symbols:   7265
-  CStrings:  15273
+  Functions: 4969
+  Symbols:   7274
+  CStrings:  15299
 
Symbols:
+ +[PLDefaults(Submission) addActiveTaskingRequest:]
+ +[PLDefaults(Submission) removeActiveTaskingRequest:]
+ +[PLDefaults(Submission) removeAllActiveTaskingRequests]
+ +[PLDefaults(Submission) setLastUploadDate:ForSubmitReason:]
+ -[PLSubmissionConfig getSubmitReasonTypeToDefaultsKey]
+ -[PLSubmissionFilePLL declaredRetentionIsExactly24HoursForLegacyEntryKeyConfig:]
+ -[PLSubmissionFilePLL declaredRetentionIsExactly24HoursForTimeToLiveInDays:]
+ -[PLSubmissionFilePLL tableHas24HourRetention:]
+ -[PLSubmissionFilePLL trialsTaskingTrimFiltersForTables:beforeDate:]
+ -[PLSubmissions shouldNotifyTaskingReceivedAndCompletedForConfig:]
+ __OBJC_$_CLASS_METHODS_PLDefaults(Submission)
- GCC_except_table73
- __OBJC_$_CLASS_METHODS_PLDefaults
CStrings:
+ "Abandoning '%@' task after %lu stalled retries with no progress..."
+ "CollectionSummary"
+ "DistinctCategoryCount"
+ "IBLMNotificationDecision"
+ "Ignoring requested owner of unexpected class %{public}@"
+ "InternalOTA"
+ "InternalSafeguardOTA"
+ "Not applying requested ownership: move to submission destination failed: %{public}@"
+ "NotificationDecision"
+ "Notify of powerlog tasking request received: %@"
+ "PLDefaults: Attempted to add duplicate tasking request: %@"
+ "PLLastUploadDate"
+ "PLTaskingRequests"
+ "PPSSignpostControllerStalledRetryCount"
+ "Powerlog tasking completed: %@"
+ "Powerlog tasking request received: %@"
+ "Powerlog tasking submit reason: (%d) %@"
+ "Refusing submission request: destination path is missing or of unexpected class %{public}@"
+ "RunDuration"
+ "Send notification of tasking completed (%@)"
+ "SignpostServiceMetrics"
+ "TaskedOTA"
+ "TaskedUpgradeOTA"
+ "TotalSignpostCount"
+ "Trimming %lu trials tasking tables to 24h window (cutoff=%@)"
+ "Updated last upload date for %@"
+ "com.apple.powerlog.tasking_completed"
+ "com.apple.powerlog.tasking_received"
+ "displayX_apl"
- "Error moving file %@"
- "timestamp is NULL OR timestamp < %f"
- "timestamp is NULL OR timestamp < (SELECT max(timestamp) FROM 'PLConfigAgent_EventNone_Config' WHERE timestamp < %f)"
```
