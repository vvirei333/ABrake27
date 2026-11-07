## tccd

> `/System/Library/PrivateFrameworks/TCC.framework/Support/tccd`

### Sections with Same Size but Changed Content

- `__TEXT.__const`
- `__DATA_CONST.__objc_catlist`
- `__DATA_CONST.__objc_protolist`
- `__DATA_CONST.__objc_protorefs`
- `__DATA_CONST.__objc_superrefs`
- `__DATA_CONST.__objc_arrayobj`
- `__DATA_CONST.__auth_got`
- `__DATA_CONST.__auth_ptr`
- `__DATA.__data`

```diff

-913.0.1.0.0
-  __TEXT.__text: 0x8bcf8
+919.0.0.0.0
+  __TEXT.__text: 0x8fe24
   __TEXT.__auth_stubs: 0x1650
-  __TEXT.__objc_stubs: 0xb6a0
-  __TEXT.__objc_methlist: 0x550c
-  __TEXT.__cstring: 0x12a48
+  __TEXT.__objc_stubs: 0xbb60
+  __TEXT.__objc_methlist: 0x5754
+  __TEXT.__cstring: 0x1366f
   __TEXT.__const: 0x6f8
-  __TEXT.__gcc_except_tab: 0x2fe8
-  __TEXT.__objc_methname: 0x130ae
-  __TEXT.__oslogstring: 0x108a8
-  __TEXT.__objc_classname: 0x6da
-  __TEXT.__objc_methtype: 0x235f
-  __TEXT.__dlopen_cstrs: 0x90
-  __TEXT.__info_plist: 0x3ee
-  __TEXT.__unwind_info: 0x1a60
-  __DATA_CONST.__const: 0x28c0
-  __DATA_CONST.__cfstring: 0x8b00
-  __DATA_CONST.__objc_classlist: 0x1f0
+  __TEXT.__gcc_except_tab: 0x31fc
+  __TEXT.__objc_methname: 0x138f5
+  __TEXT.__oslogstring: 0x11095
+  __TEXT.__objc_classname: 0x6f2
+  __TEXT.__objc_methtype: 0x2383
+  __TEXT.__dlopen_cstrs: 0xd9
+  __TEXT.__info_plist: 0x3f8
+  __TEXT.__unwind_info: 0x1ad8
+  __DATA_CONST.__const: 0x2920
+  __DATA_CONST.__cfstring: 0x8e40
+  __DATA_CONST.__objc_classlist: 0x1f8
   __DATA_CONST.__objc_catlist: 0x8
   __DATA_CONST.__objc_protolist: 0x88
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__objc_protorefs: 0x8
   __DATA_CONST.__objc_superrefs: 0x1a0
-  __DATA_CONST.__objc_intobj: 0x660
-  __DATA_CONST.__objc_arraydata: 0x1608
+  __DATA_CONST.__objc_intobj: 0x678
+  __DATA_CONST.__objc_doubleobj: 0x10
+  __DATA_CONST.__objc_arraydata: 0x1630
   __DATA_CONST.__objc_arrayobj: 0xf0
-  __DATA_CONST.__objc_dictobj: 0xeb0
+  __DATA_CONST.__objc_dictobj: 0xf28
   __DATA_CONST.__auth_got: 0xb38
-  __DATA_CONST.__got: 0x4b8
+  __DATA_CONST.__got: 0x4e0
   __DATA_CONST.__auth_ptr: 0x38
-  __DATA.__objc_const: 0xa350
-  __DATA.__objc_selrefs: 0x3708
-  __DATA.__objc_ivar: 0x728
-  __DATA.__objc_data: 0x1360
+  __DATA.__objc_const: 0xa758
+  __DATA.__objc_selrefs: 0x3840
+  __DATA.__objc_ivar: 0x770
+  __DATA.__objc_data: 0x13b0
   __DATA.__data: 0x738
-  __DATA.__bss: 0x439
+  __DATA.__bss: 0x441
   __DATA.__common: 0x30
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/CoreGraphics.framework/CoreGraphics

   - /usr/lib/libbsm.0.dylib
   - /usr/lib/libobjc.A.dylib
   - /usr/lib/libsqlite3.dylib
-  Functions: 3016
-  Symbols:   506
-  CStrings:  5904
+  Functions: 3105
+  Symbols:   512
+  CStrings:  6055
 
Symbols:
+ _OBJC_CLASS_$_NSConstantDoubleNumber
+ _OBJC_CLASS_$_NSNumberFormatter
+ _kCFUserNotificationAlertAccessibilityIdentifierKey
+ _kCFUserNotificationAlternateButtonAccessibilityIdentifierKey
+ _kCFUserNotificationDefaultButtonAccessibilityIdentifierKey
+ _kCFUserNotificationOtherButtonAccessibilityIdentifierKey
+ _time
- _MGGetBoolAnswer
CStrings:
+ "#AuthorizationPromptServiceClient TCCDUserTrackingTransparencyMonitor 1-year reprompt triggered for service:%@ client: %@ last_modified:%ld"
+ "#AuthorizationPromptServiceClient TCCDUserTrackingTransparencyMonitor is %@ to reprompt to happen for service:%@ client: %@ serviceCooldown:%f"
+ "#ManagedTCCDefaults could not resolve a bundle identifier for the requesting process; not prompting"
+ "#tccIcon %@ is accessing TCCCopyIconIdentifierForService without %{private}s"
+ "#tccIcon TCCCopyIconIdentifierForService is called with invalid service value(%{public}d)"
+ "#tccIcon TCCCopyIconIdentifierForService: %s"
+ "#tccIcon TCCCopyIconIdentifierForService: %s -> %s"
+ "#tccIcon TCCCopyIconIdentifierForService: no identifier mapping for %s"
+ "%s os not eligible with eligibility status: %llu"
+ "%s: %{public}@ accessed Health data %lu time(s) since %{public}@"
+ "%s: %{public}@ did not expand; falling back to the countless sentence"
+ "%s: HealthKit framework not available, no access count for %{public}@"
+ "%s: access report failed for %{public}@: %{public}@"
+ "%s: both source_bundle_id and destination_bundle_id are required"
+ "%s: copied %lu authorization(s) from %{public}@ to %{public}@; skipped %lu: %{public}@"
+ "%s: could not create the access store for %{public}@, no access count"
+ "%s: destination %{public}@ is not an installed bundle"
+ "%s: failed to copy %{public}@ from %{public}@ to %{public}@"
+ "%s: failed to copy fine-grained rows for %{public}@"
+ "%s: failed to create the fine-grained table for %{public}@"
+ "%s: failed to read authorizations for %{public}@"
+ "%s: failed to read existing authorizations for %{public}@"
+ "%s: failed to read managed_overrides for %{public}@ / %{public}@"
+ "%s: last drain for %{public}@ is %.0fs in the future, ignoring the throttle"
+ "%s: no access report for %{public}s/%{public}s, deferring to a later unlock (%lu of %lu)"
+ "%s: no localized string for %{public}@; falling back to the countless sentence"
+ "%s: overriding OS_ELIGIBILITY_DOMAIN_CICINDELA eligibility via defaults: %{BOOL}d"
+ "%s: refusing to copy — %{public}@ is MDM managed (source managed: %d, destination managed: %d). Every service will be reported skipped."
+ "%s: rolled back copy from %{public}@ to %{public}@ (error %d)"
+ "%s: source and destination bundle identifiers are identical (%{public}@)"
+ "%s: still no access report for %{public}s/%{public}s after %lu deferrals, showing the prompt without a count"
+ "%s: timed out waiting for the access report for %{public}@"
+ "+[TCCDReminderMonitor milestoneOverrideFromDefaultsForKey:]"
+ "-"
+ "-[TCCDPlatformIOS isEligibleForMotionSensorDataRegulation]"
+ "-[TCCDPlatformIOSFamily isChinaSKUDevice]"
+ "-[TCCDPlatformIOSFamily isEligibleForATTReprompt]"
+ "-[TCCDPlatformIOSFamily isEligibleForFullSheetATTAllowed]"
+ "-[TCCDPlatformIOSFamily isEligibleForFullSheetATTRequired]"
+ "-[TCCDReminderMonitor enqueueReminderWithContext:deferrals:]"
+ "-[TCCDReminderMonitor healthDataAccessCountForBundleIdentifier:]"
+ "-[TCCDReminderMonitor healthDataAccessCountForBundleIdentifier:]_block_invoke"
+ "-[TCCDReminderMonitor isServiceThrottled:atTime:]"
+ "-[TCCDReminderMonitor reminderInfoTextForService:accessCount:]"
+ "-[TCCDReminderMonitor reportResourceUsage:]_block_invoke"
+ "-[TCCDReminderMonitor showReminderPrompt:result:accessCount:]"
+ "@\"NSObject<OS_dispatch_queue>\"16@0:8"
+ "@\"NSString\"16@?0@\"TCCDRequestContext\"8"
+ "A\""
+ "AddressBookChinaPolicyOverride"
+ "CREATE TABLE IF NOT EXISTS admin (key TEXT PRIMARY KEY NOT NULL, value INTEGER NOT NULL);INSERT OR IGNORE INTO admin VALUES ('version', 37);CREATE TABLE IF NOT EXISTS policies (    id        INTEGER    NOT NULL PRIMARY KEY,     bundle_id    TEXT    NOT NULL,     uuid        TEXT    NOT NULL,     display        TEXT    NOT NULL,     UNIQUE (bundle_id, uuid));CREATE TABLE IF NOT EXISTS active_policy (    client        TEXT    NOT NULL,     client_type    INTEGER    NOT NULL,     policy_id    INTEGER NOT NULL,     PRIMARY KEY (client, client_type),     FOREIGN KEY (policy_id) REFERENCES policies(id) ON DELETE CASCADE ON UPDATE CASCADE);CREATE INDEX IF NOT EXISTS active_policy_id ON active_policy(policy_id);CREATE TABLE IF NOT EXISTS access (    service        TEXT        NOT NULL,     client         TEXT        NOT NULL,     client_type    INTEGER     NOT NULL,     auth_value     INTEGER     NOT NULL,     auth_reason    INTEGER     NOT NULL,     auth_version   INTEGER     NOT NULL,     csreq          BLOB,     policy_id      INTEGER,     indirect_object_identifier_type    INTEGER,     indirect_object_identifier         TEXT NOT NULL DEFAULT 'UNUSED',     indirect_object_code_identity      BLOB,     flags          INTEGER,     last_modified  INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     pid            INTEGER,     pid_version    INTEGER,     boot_uuid      TEXT NOT NULL DEFAULT 'UNUSED',     last_reminded  INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     one_time_reprompt_eligible INTEGER,     reminder_count INTEGER NOT NULL DEFAULT 0,     PRIMARY KEY (service, client, client_type, indirect_object_identifier),    FOREIGN KEY (policy_id) REFERENCES policies(id) ON DELETE CASCADE ON UPDATE CASCADE);CREATE TABLE IF NOT EXISTS access_overrides (    service        TEXT    NOT NULL PRIMARY KEY);CREATE TABLE IF NOT EXISTS expired (    service        TEXT        NOT NULL,     client         TEXT        NOT NULL,     client_type    INTEGER     NOT NULL,     csreq          BLOB,     last_modified  INTEGER     NOT NULL ,     expired_at     INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     PRIMARY KEY (service, client, client_type));CREATE TABLE IF NOT EXISTS integrity_flag (    key TEXT PRIMARY KEY NOT NULL,    value INTEGER NOT NULL);INSERT OR IGNORE INTO integrity_flag VALUES ('integrity_flag', 0);CREATE TABLE IF NOT EXISTS managed_overrides (    service        TEXT        NOT NULL,     client         TEXT        NOT NULL,     client_type    INTEGER     NOT NULL,     auth_value     INTEGER     NOT NULL DEFAULT 1,     auth_reason    INTEGER     NOT NULL,     auth_version   INTEGER     NOT NULL,     csreq          BLOB,     policy_id      INTEGER,     indirect_object_identifier_type    INTEGER,     indirect_object_identifier         TEXT NOT NULL DEFAULT 'UNUSED',     indirect_object_code_identity      BLOB,     flags          INTEGER     NOT NULL DEFAULT 0,     last_modified  INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     one_time_reprompt_eligible INTEGER,     admin_auth_value    INTEGER NOT NULL,    PRIMARY KEY (service, client, client_type, indirect_object_identifier),     FOREIGN KEY (policy_id) REFERENCES policies(id) ON DELETE CASCADE ON UPDATE CASCADE);"
+ "Granting %@ access to %@ because OS_ELIGIBILITY_DOMAIN_CICINDELA is NOT_ELIGIBLE"
+ "HKDataTypeAccessStore"
+ "INSERT INTO %@ (service, category, category_type, client, client_type, auth_value, auth_reason, indirect_object_identifier) SELECT service, category, category_type, ?2, client_type, auth_value, auth_reason, indirect_object_identifier FROM %@ WHERE client = ?1 AND client_type = ?3 AND auth_reason != ?4"
+ "INSERT INTO access (service, client, client_type, auth_value, auth_reason, auth_version, csreq, policy_id,  indirect_object_identifier_type, indirect_object_identifier, indirect_object_code_identity,  flags, last_modified, pid, pid_version, boot_uuid, last_reminded, one_time_reprompt_eligible,  reminder_count) SELECT service, ?2, client_type, auth_value, auth_reason, auth_version, csreq, policy_id,  indirect_object_identifier_type, indirect_object_identifier, indirect_object_code_identity,  flags & ?5, CAST(strftime('%s','now') AS INTEGER), NULL, NULL, 'UNUSED',  CAST(strftime('%s','now') AS INTEGER), 1, 0 FROM access WHERE client = ?1 AND client_type = ?3 AND service = ?4  AND auth_reason != ?6"
+ "ManagedSettings: %{public}@ is not eligible for managed_overrides; skipping %{public}@:%{public}@"
+ "ManagedSettings: existing access auth (%lld) differs from admin (%lld) for %{public}@:%{public}@, migrating with user's existing auth and pending disclosure"
+ "ManagedSettings: pruned ineligible managed_overrides rows for %{public}@ (result=%d)"
+ "ManagedSettings: skipping %{public}@:%{public}@ - admin value %{public}@ resolved to None and there is no existing record"
+ "MotionSensorDataRegulationEligibilityOverride"
+ "Override: pruned ineligible managed_overrides rows for %{public}@ (result=%d)"
+ "REMINDER_ACCESS_INFO_COUNT"
+ "REMINDER_ACCESS_INFO_COUNT_ONE"
+ "SELECT DISTINCT client FROM managed_overrides WHERE client_type = ?1 AND (client = ?2 OR client = ?3)"
+ "SELECT DISTINCT service FROM managed_overrides"
+ "SELECT auth_value, one_time_reprompt_eligible, last_modified FROM access WHERE client = ? AND service = ?"
+ "SELECT service FROM access WHERE client = ?1 AND client_type = ?2 UNION SELECT service FROM managed_overrides WHERE client = ?1 AND client_type = ?2"
+ "SELECT service, auth_value, auth_reason, auth_version, flags, indirect_object_identifier FROM access WHERE client = ?1 AND client_type = ?2 AND auth_reason != ?3"
+ "T@\"NSArray\",C,N,V_researchMilestoneOverride"
+ "T@\"NSString\",&,N,V_reminderAccessCountFormatLocalizationKey"
+ "T@\"NSString\",&,N,V_reminderAccessCountSingularLocalizationKey"
+ "T@\"NSString\",C,N,V_service"
+ "TB,N,V_doesNotSupportCache"
+ "TB,N,V_isCoarseRow"
+ "TB,N,V_mdm_eligibleForManagedOverrides"
+ "TB,R,V_isEligibleForATTReprompt"
+ "TB,R,V_isEligibleForFullSheetATTAllowed"
+ "TB,R,V_isEligibleForFullSheetATTRequired"
+ "TB,R,V_isEligibleForMotionSensorDataRegulation"
+ "TCCAccessCopyAuthorizations"
+ "TCCCopyIconIdentifierForService"
+ "TCCDCopiedAuthorization"
+ "TCCD_MSG_MESSAGE_ELIGIBLE_FOR_REPROMPT"
+ "Ti,N,V_authReason"
+ "Ti,N,V_authValue"
+ "Ti,N,V_authVersion"
+ "Ti,N,V_eligibleForReprompt"
+ "Ti,N,V_flags"
+ "Ti,N,V_reprompted"
+ "Ti,N,V_requestIsForOneTimeReprompt"
+ "UPDATE access SET one_time_reprompt_eligible = 1 WHERE service = 'kTCCServiceUserTracking'"
+ "UPDATE admin SET value = 37 WHERE key = 'version'"
+ "UPDATED one_time_reprompt_eligible for clients with existing kTCCServiceUserTracking record"
+ "_authVersion"
+ "_doesNotSupportCache"
+ "_eligibleForReprompt"
+ "_isCoarseRow"
+ "_isEligibleForATTReprompt"
+ "_isEligibleForFullSheetATTAllowed"
+ "_isEligibleForFullSheetATTRequired"
+ "_isEligibleForMotionSensorDataRegulation"
+ "_mdm_eligibleForManagedOverrides"
+ "_pruneIneligibleManagedOverrides"
+ "_reminderAccessCountFormatLocalizationKey"
+ "_reminderAccessCountSingularLocalizationKey"
+ "_reprompted"
+ "_requestIsForOneTimeReprompt"
+ "_researchMilestoneOverride"
+ "accessCount"
+ "add-modify-added-button"
+ "alert"
+ "allKeys"
+ "allow-button"
+ "arrayWithObject:"
+ "authVersion"
+ "com.apple.TCC.managed_overrides_audit"
+ "com.apple.developer.healthkit.research"
+ "com.apple.graphic-icon.app-tracking-transparency"
+ "com.apple.graphic-icon.app-tracking-transparency.regional-alternate"
+ "com.apple.private.tcc.internal.transfer-authorizations"
+ "componentsJoinedByString:"
+ "db_copy_authorizations_between_bundle_ids_block_invoke"
+ "db_copy_authorizations_between_bundle_ids_block_invoke_2"
+ "db_copy_authorizations_between_bundle_ids_block_invoke_3"
+ "deferrals"
+ "deny-button"
+ "destination_bundle_id"
+ "doesNotSupportCache"
+ "eligible"
+ "eligibleForReprompt"
+ "enqueueReminderWithContext:deferrals:"
+ "fetchAccessReportForBundleIdentifier:objectTypes:since:modeMask:completion:"
+ "getUsageDescriptionKeyForAuthorization:"
+ "handle_TCCAccessCopyAuthorizations"
+ "healthAccessCountForContext:client:"
+ "healthDataAccessCountForBundleIdentifier:"
+ "healthResearchReminderMilestoneOverride"
+ "iconIdentifier"
+ "iconIdentifierForValidatedService:eligible:"
+ "isCoarseRow"
+ "isEligibleForATTReprompt"
+ "isEligibleForFullSheetATTAllowed"
+ "isEligibleForFullSheetATTRequired"
+ "isEligibleForMotionSensorDataRegulation"
+ "kTCCServiceAccessoryWorker"
+ "kTCCServiceAccessoryWorkerGPU"
+ "kTCCServiceMotionSensors"
+ "learn-more-button"
+ "limited-button"
+ "localizedStringFromNumber:numberStyle:"
+ "mdm_eligibleForManagedOverrides"
+ "milestoneOverrideFromDefaultsForKey:"
+ "newATTAllowed"
+ "newATTReprompt"
+ "newATTRequired"
+ "not eligible"
+ "pppc_eligibleForManagedOverrides"
+ "pruneIneligibleManagedOverrides"
+ "r*24@0:8i16B20"
+ "reminder"
+ "reminderAccessCountFormatLocalizationKey"
+ "reminderAccessCountFormatLocalizationKeyNameForServiceName:"
+ "reminderAccessCountSingularLocalizationKey"
+ "reminderAccessCountSingularLocalizationKeyNameForServiceName:"
+ "reminderInfoTextForService:accessCount:"
+ "reprompted"
+ "requestIsForOneTimeReprompt"
+ "researchMilestoneOverride"
+ "session-pid-button"
+ "setAuthValue:"
+ "setAuthVersion:"
+ "setDoesNotSupportCache:"
+ "setEligibleForReprompt:"
+ "setIsCoarseRow:"
+ "setMdm_eligibleForManagedOverrides:"
+ "setReminderAccessCountFormatLocalizationKey:"
+ "setReminderAccessCountSingularLocalizationKey:"
+ "setReprompted:"
+ "setRequestIsForOneTimeReprompt:"
+ "setResearchMilestoneOverride:"
+ "showReminderPrompt:result:accessCount:"
+ "source_bundle_id"
+ "staged"
+ "unknown"
+ "v24@?0@\"HKDataTypeAccessReport\"8@\"NSError\"16"
+ "\xf0\xf0\xf0\xf0!\xf0c"
- "#AuthorizationPromptServiceClient TCCDUserTrackingTransparencyMonitor allowing reprompt to happen? canPrompt: %@ for service:%@ client: %@ calledWithNewAPI: %d serviceCooldown:%f"
- "#AuthorizationPromptServiceClient TCCDUserTrackingTransparencyMonitor eligibleToShowPrompt for service:%@ client: %@ authVal:%d one_time_reprompt_eligible:%d calledWithNewAPI: %d"
- "#AuthorizationPromptServiceClient one_time_reprompt_eligible allowed previously denied but now setting to unknown"
- "#AuthorizationPromptServiceClient prompt is NOT eligibleToShow for %@ %@"
- "%@|%@"
- "%s #AuthorizationPromptServiceClient %@ for service %@ is %@ eligible for the full sheet prompt"
- "%s #AuthorizationPromptServiceClient %@ for service %@ is not eligible to show a ATT - FF is not enabled"
- "%s #AuthorizationPromptServiceClient %@ for service %@ is not eligible to show a fullsheet prompt - FF is not enabled"
- "%s os eligibility status: %llu: called for %@ for service %@ #AuthorizationPromptServiceClient"
- "+[TCCDReminderMonitor milestoneOverrideFromDefaults]"
- "-[TCCDReminderMonitor enqueueReminderWithContext:]"
- "-[TCCDReminderMonitor reportResourceUsage:]_block_invoke_2"
- "-[TCCDReminderMonitor showReminderPrompt:result:]"
- "-[TCCDRequestContext(SynchronousPrompt) serviceIsEligibleToPromptForFullSheet:]"
- "@\"NSMutableSet\""
- "@\"NSString\"32@?0@\"TCCDService\"8Q16@\"TCCDAccessIdentity\"24"
- "A"
- "A!"
- "CREATE TABLE IF NOT EXISTS admin (key TEXT PRIMARY KEY NOT NULL, value INTEGER NOT NULL);INSERT OR IGNORE INTO admin VALUES ('version', 36);CREATE TABLE IF NOT EXISTS policies (    id        INTEGER    NOT NULL PRIMARY KEY,     bundle_id    TEXT    NOT NULL,     uuid        TEXT    NOT NULL,     display        TEXT    NOT NULL,     UNIQUE (bundle_id, uuid));CREATE TABLE IF NOT EXISTS active_policy (    client        TEXT    NOT NULL,     client_type    INTEGER    NOT NULL,     policy_id    INTEGER NOT NULL,     PRIMARY KEY (client, client_type),     FOREIGN KEY (policy_id) REFERENCES policies(id) ON DELETE CASCADE ON UPDATE CASCADE);CREATE INDEX IF NOT EXISTS active_policy_id ON active_policy(policy_id);CREATE TABLE IF NOT EXISTS access (    service        TEXT        NOT NULL,     client         TEXT        NOT NULL,     client_type    INTEGER     NOT NULL,     auth_value     INTEGER     NOT NULL,     auth_reason    INTEGER     NOT NULL,     auth_version   INTEGER     NOT NULL,     csreq          BLOB,     policy_id      INTEGER,     indirect_object_identifier_type    INTEGER,     indirect_object_identifier         TEXT NOT NULL DEFAULT 'UNUSED',     indirect_object_code_identity      BLOB,     flags          INTEGER,     last_modified  INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     pid            INTEGER,     pid_version    INTEGER,     boot_uuid      TEXT NOT NULL DEFAULT 'UNUSED',     last_reminded  INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     one_time_reprompt_eligible INTEGER,     reminder_count INTEGER NOT NULL DEFAULT 0,     PRIMARY KEY (service, client, client_type, indirect_object_identifier),    FOREIGN KEY (policy_id) REFERENCES policies(id) ON DELETE CASCADE ON UPDATE CASCADE);CREATE TABLE IF NOT EXISTS access_overrides (    service        TEXT    NOT NULL PRIMARY KEY);CREATE TABLE IF NOT EXISTS expired (    service        TEXT        NOT NULL,     client         TEXT        NOT NULL,     client_type    INTEGER     NOT NULL,     csreq          BLOB,     last_modified  INTEGER     NOT NULL ,     expired_at     INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     PRIMARY KEY (service, client, client_type));CREATE TABLE IF NOT EXISTS integrity_flag (    key TEXT PRIMARY KEY NOT NULL,    value INTEGER NOT NULL);INSERT OR IGNORE INTO integrity_flag VALUES ('integrity_flag', 0);CREATE TABLE IF NOT EXISTS managed_overrides (    service        TEXT        NOT NULL,     client         TEXT        NOT NULL,     client_type    INTEGER     NOT NULL,     auth_value     INTEGER     NOT NULL DEFAULT 1,     auth_reason    INTEGER     NOT NULL,     auth_version   INTEGER     NOT NULL,     csreq          BLOB,     policy_id      INTEGER,     indirect_object_identifier_type    INTEGER,     indirect_object_identifier         TEXT NOT NULL DEFAULT 'UNUSED',     indirect_object_code_identity      BLOB,     flags          INTEGER     NOT NULL DEFAULT 0,     last_modified  INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     one_time_reprompt_eligible INTEGER,     admin_auth_value    INTEGER NOT NULL,    PRIMARY KEY (service, client, client_type, indirect_object_identifier),     FOREIGN KEY (policy_id) REFERENCES policies(id) ON DELETE CASCADE ON UPDATE CASCADE);"
- "ManagedSettings: existing access auth (%lld) differs from admin (%lld) for %{public}@:%{public}@, migrating with user's existing auth"
- "SELECT auth_value, one_time_reprompt_eligible FROM access WHERE client = ? AND service = ?"
- "T@\"NSMutableSet\",&,N,V_notifiedEnableRecordKeys"
- "UPDATE admin SET value = 36 WHERE key = 'version'"
- "_notifiedEnableRecordKeys"
- "com.apple.TCC.managed_defaults_audit"
- "getUsageDescriptionKeyForAuthorization:forClient:"
- "green-tea"
- "is"
- "is not"
- "milestoneOverrideFromDefaults"
- "notifiedEnableRecordKeys"
- "serviceIsEligibleToPromptForFullSheet:"
- "setNotifiedEnableRecordKeys:"
- "v16@?0@\"TCCDService\"8"
- "\xf0\xf0\xf0\xf1\xf0c"
```
