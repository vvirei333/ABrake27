## Email

> `/System/Library/PrivateFrameworks/Email.framework/Email`

```diff

-3901.100.1.2.14
-  __TEXT.__text: 0xda6dc
-  __TEXT.__objc_methlist: 0xd0ac
-  __TEXT.__gcc_except_tab: 0x1b088
-  __TEXT.__const: 0x18dc
-  __TEXT.__cstring: 0xc37f
-  __TEXT.__oslogstring: 0x6913
-  __TEXT.__dlopen_cstrs: 0x160
+3901.200.41.0.0
+  __TEXT.__text: 0xd91bc
+  __TEXT.__objc_methlist: 0xce24
+  __TEXT.__const: 0x18c2
+  __TEXT.__gcc_except_tab: 0x1ad70
+  __TEXT.__cstring: 0xc369
   __TEXT.__ustring: 0x170
+  __TEXT.__oslogstring: 0x67f3
+  __TEXT.__dlopen_cstrs: 0x160
   __TEXT.__swift5_typeref: 0x4aa
   __TEXT.__constg_swiftt: 0x538
   __TEXT.__swift5_builtin: 0xa0
-  __TEXT.__swift5_reflstr: 0x40f
+  __TEXT.__swift5_reflstr: 0x41f
   __TEXT.__swift5_fieldmd: 0x610
   __TEXT.__swift5_assocty: 0x120
   __TEXT.__swift5_proto: 0x130

   __TEXT.__swift5_capture: 0x48
   __TEXT.__swift5_protos: 0x4
   __TEXT.__swift5_mpenum: 0x8
-  __TEXT.__unwind_info: 0x81d0
+  __TEXT.__unwind_info: 0x8128
   __TEXT.__eh_frame: 0x328
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x4610
-  __DATA_CONST.__objc_classlist: 0x590
+  __DATA_CONST.__const: 0x45e8
+  __DATA_CONST.__objc_classlist: 0x580
   __DATA_CONST.__objc_catlist: 0x78
-  __DATA_CONST.__objc_protolist: 0x340
+  __DATA_CONST.__objc_protolist: 0x320
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x62b8
-  __DATA_CONST.__objc_protorefs: 0x118
-  __DATA_CONST.__objc_superrefs: 0x480
+  __DATA_CONST.__objc_selrefs: 0x6158
+  __DATA_CONST.__objc_protorefs: 0x110
+  __DATA_CONST.__objc_superrefs: 0x478
   __DATA_CONST.__objc_arraydata: 0x1e8
-  __DATA_CONST.__got: 0xc98
-  __AUTH_CONST.__const: 0x1ea0
-  __AUTH_CONST.__cfstring: 0xa560
-  __AUTH_CONST.__objc_const: 0x16f60
+  __DATA_CONST.__got: 0xc58
+  __AUTH_CONST.__const: 0x1f40
+  __AUTH_CONST.__cfstring: 0xa400
+  __AUTH_CONST.__objc_const: 0x16b90
   __AUTH_CONST.__objc_intobj: 0x348
   __AUTH_CONST.__objc_arrayobj: 0x108
   __AUTH_CONST.__objc_dictobj: 0x50
-  __AUTH_CONST.__auth_got: 0xbc8
+  __AUTH_CONST.__auth_got: 0xbd0
   __AUTH_CONST.__auth_ptr: 0x268
-  __AUTH.__objc_data: 0x200
+  __AUTH.__objc_data: 0x250
   __AUTH.__data: 0x158
-  __DATA.__objc_ivar: 0xc4c
-  __DATA.__data: 0x2a40
+  __DATA.__objc_ivar: 0xc44
+  __DATA.__data: 0x28c0
   __DATA.__bss: 0x23e0
-  __DATA_DIRTY.__objc_data: 0x3808
+  __DATA_DIRTY.__objc_data: 0x3718
   __DATA_DIRTY.__data: 0x250
-  __DATA_DIRTY.__bss: 0xad0
+  __DATA_DIRTY.__bss: 0xac0
   - /System/Library/Frameworks/Accounts.framework/Accounts
   - /System/Library/Frameworks/CFNetwork.framework/CFNetwork
   - /System/Library/Frameworks/Contacts.framework/Contacts

   - /usr/lib/swift/libswift_DarwinFoundation1.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 5173
-  Symbols:   8986
-  CStrings:  2166
+  Functions: 5157
+  Symbols:   8927
+  CStrings:  2151
 
Symbols:
+ +[EMListUnsubscribeCommand mailtoUnsubscribeCommandWithListID:address:sender:senderForUnsubscribeMessage:subject:body:accountObjectID:headerUnsubscribeTypes:]
+ +[EMMessageBodyParsingUtils strippedQuoteBlockFromHTMLBody:]
+ -[EMAccountRepository accountIfAvailableForIdentifier:]
+ -[EMListUnsubscribeMailtoValues accountObjectID]
+ -[EMListUnsubscribeMailtoValues initWithAddresss:subject:body:accountObjectID:]
+ -[EMMailboxCategoryCloudStorage test_drain]
+ -[EMMailboxRepository _cachedAllMailboxObjectIDs]
+ -[EMMailboxRepository _cachedMailboxObjectIDsForMailboxType:]
+ -[EMMailboxRepository _cachedMailboxTypeForMailboxObjectID:cacheValid:]
+ -[EMMailboxRepository _failMailboxesPromiseAsTemporarilyUnavailable]
+ -[EMMailboxRepository availableMailboxTypeResolver]
+ -[EMMailboxRepository isMailboxCacheWarm]
+ -[EMMailboxRepository mailboxesFuture]
+ -[EMMailboxScope initWithMailboxObjectIDs:forExclusion:]
+ -[EMUbiquitouslyPersistedDictionary test_drainDelegateNotifications]
+ -[EMUbiquitouslyPersistedDictionary test_drainMutations]
+ -[_EMAvailableMailboxTypeResolver .cxx_destruct]
+ -[_EMAvailableMailboxTypeResolver allMailboxObjectIDs]
+ -[_EMAvailableMailboxTypeResolver initWithRepository:]
+ -[_EMAvailableMailboxTypeResolver mailboxObjectIDsForMailboxType:]
+ -[_EMAvailableMailboxTypeResolver mailboxTypeForMailboxObjectID:]
+ _OBJC_CLASS_$__EMAvailableMailboxTypeResolver
+ _OBJC_IVAR_$_EMAccountRepository._accountsRequestInFlight
+ _OBJC_IVAR_$_EMListUnsubscribeMailtoValues._accountObjectID
+ _OBJC_IVAR_$_EMMailbox._repository
+ _OBJC_IVAR_$_EMMailboxRepository._availableMailboxTypeResolver
+ _OBJC_IVAR_$__EMAvailableMailboxTypeResolver._repository
+ _OBJC_METACLASS_$__EMAvailableMailboxTypeResolver
+ __OBJC_$_CATEGORY_NSArray_$_EMSmartMailbox
+ __OBJC_$_INSTANCE_METHODS_NSArray(EMSmartMailbox|EMMessageListItem|EMSender)
+ __OBJC_$_INSTANCE_METHODS__EMAvailableMailboxTypeResolver
+ __OBJC_$_INSTANCE_VARIABLES__EMAvailableMailboxTypeResolver
+ __OBJC_$_PROP_LIST__EMAvailableMailboxTypeResolver
+ __OBJC_CLASS_PROTOCOLS_$__EMAvailableMailboxTypeResolver
+ __OBJC_CLASS_RO_$__EMAvailableMailboxTypeResolver
+ __OBJC_METACLASS_RO_$__EMAvailableMailboxTypeResolver
+ ___43-[EMMailboxCategoryCloudStorage test_drain]_block_invoke
+ ___55-[EMAccountRepository accountIfAvailableForIdentifier:]_block_invoke
+ ___56-[EMUbiquitouslyPersistedDictionary test_drainMutations]_block_invoke
+ ___56-[EMUbiquitouslyPersistedDictionary test_drainMutations]_block_invoke_2
+ ___56-[EMUbiquitouslyPersistedDictionary test_drainMutations]_block_invoke_3
+ ___61-[EMMailboxRepository _cachedMailboxObjectIDsForMailboxType:]_block_invoke
+ ___68-[EMUbiquitouslyPersistedDictionary test_drainDelegateNotifications]_block_invoke
+ ___68-[EMUbiquitouslyPersistedDictionary test_drainDelegateNotifications]_block_invoke_2
+ ___68-[EMUbiquitouslyPersistedDictionary test_drainDelegateNotifications]_block_invoke_3
+ ___68-[EMUbiquitouslyPersistedDictionary test_drainDelegateNotifications]_block_invoke_4
+ ___remoteInterfaceForConnection_block_invoke
+ _os_unfair_lock_trylock
+ _remoteInterfaceForConnection
- +[EMAccountAuthentication log]
- +[EMListUnsubscribeCommand _accountWithIdentifier:]
- +[EMListUnsubscribeCommand accountFinderBlock]
- +[EMListUnsubscribeCommand mailtoUnsubscribeCommandWithListID:address:sender:senderForUnsubscribeMessage:subject:body:account:headerUnsubscribeTypes:]
- +[EMListUnsubscribeCommand setAccountFinderBlock:]
- +[EMListUnsubscribeDetector _validateHeaders:dkimVerified:]
- +[EMListUnsubscribeDetector receivingAccountFromMessage:]
- +[EMListUnsubscribeDetector unsubscribeTypeForHeader:]
- +[EMListUnsubscribeDetector validatedUnsubscribeTypeForHeader:dkimVerified:]
- -[EMAccountAuthentication .cxx_destruct]
- -[EMAccountAuthentication _hostnamesHaveSameTopLevelDomain:deliveryAccount:]
- -[EMAccountAuthentication _shouldAutoUpdateDeliveryAccount:forChangedReceivingAccount:]
- -[EMAccountAuthentication _updateDeliveryAccountCredentialIfNecessaryForAccountWithAccount:]
- -[EMAccountAuthentication _updateDeliveryAccountCredentialIfNecessaryForReceivingAccount:]
- -[EMAccountAuthentication accountFactory]
- -[EMAccountAuthentication initWithAccountFactory:]
- -[EMAccountAuthentication updateDeliveryAccountCredentialIfNecessaryForAccountWithIdentifier:]
- -[EMAccountAuthentication updateDeliveryAccountCredentialIfNecessaryForAccountWithSystemAccount:]
- -[EMHideMyEmail isConfiguredForAccountWithAltDSID:error:]
- -[EMListUnsubscribeDetector .cxx_destruct]
- -[EMListUnsubscribeDetector _listIDString:]
- -[EMListUnsubscribeDetector _normalizedAddress:]
- -[EMListUnsubscribeDetector _persistentKeyForHeaders:]
- -[EMListUnsubscribeDetector _senderString:]
- -[EMListUnsubscribeDetector acceptCommand:]
- -[EMListUnsubscribeDetector commandForMessage:dkimVerified:]
- -[EMListUnsubscribeDetector commandForMessage:mailToOnly:dkimVerified:]
- -[EMListUnsubscribeDetector ignoreCommand:]
- -[EMListUnsubscribeDetector initWithMutableDictionary:]
- -[EMListUnsubscribeDetector init]
- -[EMListUnsubscribeDetector removeAllPersistedCommands]
- -[EMListUnsubscribeDetector shouldIgnoreMessageWithHeaders:]
- -[EMListUnsubscribeMailtoValues account]
- -[EMListUnsubscribeMailtoValues initWithAddresss:subject:body:account:]
- -[EMMailDropMetadata isBannerWithMultiple]
- -[EMUbiquitouslyPersistedDictionary _waitForPendingMutationsForTesting]
- -[_EMUnsubscribeInfo .cxx_destruct]
- -[_EMUnsubscribeInfo initWithHeaders:]
- -[_EMUnsubscribeInfo setMailtoURL:]
- -[_EMUnsubscribeInfo setPostContent:]
- -[_EMUnsubscribeInfo setPostURL:]
- _ECMessageHeaderKeyListID
- _ECMessageHeaderKeyListUnsubscribe
- _ECMessageHeaderKeyListUnsubscribePost
- _OBJC_CLASS_$_ACAccountCredential
- _OBJC_CLASS_$_ECDKIMVerifier
- _OBJC_CLASS_$_EMAccountAuthentication
- _OBJC_CLASS_$_EMListUnsubscribeDetector
- _OBJC_CLASS_$__EMUnsubscribeInfo
- _OBJC_IVAR_$_EMAccountAuthentication._accountFactory
- _OBJC_IVAR_$_EMListUnsubscribeDetector._persistentDictionary
- _OBJC_IVAR_$_EMListUnsubscribeMailtoValues._account
- _OBJC_IVAR_$_EMListUnsubscribeMailtoValues._accountIdentifier
- _OBJC_IVAR_$__EMUnsubscribeInfo._mailtoURL
- _OBJC_IVAR_$__EMUnsubscribeInfo._postContent
- _OBJC_IVAR_$__EMUnsubscribeInfo._postURL
- _OBJC_METACLASS_$_EMAccountAuthentication
- _OBJC_METACLASS_$_EMListUnsubscribeDetector
- _OBJC_METACLASS_$__EMUnsubscribeInfo
- __OBJC_$_CATEGORY_NSArray_$_EMMessageListItem
- __OBJC_$_CLASS_METHODS_EMAccountAuthentication
- __OBJC_$_CLASS_METHODS_EMListUnsubscribeDetector
- __OBJC_$_INSTANCE_METHODS_EMAccountAuthentication
- __OBJC_$_INSTANCE_METHODS_EMListUnsubscribeDetector
- __OBJC_$_INSTANCE_METHODS_NSArray(EMMessageListItem|EMSender|EMSmartMailbox)
- __OBJC_$_INSTANCE_METHODS__EMUnsubscribeInfo
- __OBJC_$_INSTANCE_VARIABLES_EMAccountAuthentication
- __OBJC_$_INSTANCE_VARIABLES_EMListUnsubscribeDetector
- __OBJC_$_INSTANCE_VARIABLES__EMUnsubscribeInfo
- __OBJC_$_PROP_LIST_ECMailAccount
- __OBJC_$_PROP_LIST_EDAccount
- __OBJC_$_PROP_LIST_EDReceivingAccount
- __OBJC_$_PROP_LIST_EMAccountAuthentication
- __OBJC_$_PROP_LIST_NSArray_$_EMMessageListItem
- __OBJC_$_PROTOCOL_INSTANCE_METHODS_ECAccountPropertyProviding
- __OBJC_$_PROTOCOL_INSTANCE_METHODS_ECMailAccount
- __OBJC_$_PROTOCOL_INSTANCE_METHODS_EDAccount
- __OBJC_$_PROTOCOL_INSTANCE_METHODS_EDReceivingAccount
- __OBJC_$_PROTOCOL_METHOD_TYPES_ECAccountPropertyProviding
- __OBJC_$_PROTOCOL_METHOD_TYPES_ECMailAccount
- __OBJC_$_PROTOCOL_METHOD_TYPES_EDAccount
- __OBJC_$_PROTOCOL_METHOD_TYPES_EDReceivingAccount
- __OBJC_$_PROTOCOL_REFS_ECMailAccount
- __OBJC_$_PROTOCOL_REFS_EDAccount
- __OBJC_$_PROTOCOL_REFS_EDReceivingAccount
- __OBJC_CLASS_RO_$_EMAccountAuthentication
- __OBJC_CLASS_RO_$_EMListUnsubscribeDetector
- __OBJC_CLASS_RO_$__EMUnsubscribeInfo
- __OBJC_LABEL_PROTOCOL_$_ECAccountPropertyProviding
- __OBJC_LABEL_PROTOCOL_$_ECMailAccount
- __OBJC_LABEL_PROTOCOL_$_EDAccount
- __OBJC_LABEL_PROTOCOL_$_EDReceivingAccount
- __OBJC_METACLASS_RO_$_EMAccountAuthentication
- __OBJC_METACLASS_RO_$_EMListUnsubscribeDetector
- __OBJC_METACLASS_RO_$__EMUnsubscribeInfo
- __OBJC_PROTOCOL_$_ECAccountPropertyProviding
- __OBJC_PROTOCOL_$_ECMailAccount
- __OBJC_PROTOCOL_$_EDAccount
- __OBJC_PROTOCOL_$_EDReceivingAccount
- __OBJC_PROTOCOL_REFERENCE_$_EDReceivingAccount
- ___30+[EMAccountAuthentication log]_block_invoke
- ___54-[EMMailboxRepository mailboxObjectIDsForMailboxType:]_block_invoke
- ___71-[EMListUnsubscribeDetector commandForMessage:mailToOnly:dkimVerified:]_block_invoke
- ___71-[EMUbiquitouslyPersistedDictionary _waitForPendingMutationsForTesting]_block_invoke
- ___71-[EMUbiquitouslyPersistedDictionary _waitForPendingMutationsForTesting]_block_invoke_2
- ___71-[EMUbiquitouslyPersistedDictionary _waitForPendingMutationsForTesting]_block_invoke_3
- ___block_descriptor_48_ea8_32s_e9_16?0^8ls32l8
- _sAccountFinderBlock
CStrings:
+ "-[EMMailboxCategoryCloudStorage test_drain]"
+ "-[EMUbiquitouslyPersistedDictionary test_drainDelegateNotifications]"
+ "-[EMUbiquitouslyPersistedDictionary test_drainMutations]"
+ "A1"
+ "EFPropertyKey_accountObjectID"
+ "EMMailboxCategoryCloudStorage.m"
+ "Error establishing xpc connection: %{public}@"
+ "Hide My Email address %{public}@ is NOT available in the list of %lu HME addresses"
+ "Hide My Email address %{public}@ is available in the list of %lu HME addresses"
+ "The checking for HME address %{public}@ is valid failed (%lu HME addresses found): %{public}@, adding telemetry for isHideMyEmailAddressValid session"
- "$1$2"
- "<%{public}@> Timeout validating headers for: %@"
- "@16@?0^@8"
- "A"
- "Account is not a receiving account. No delivery account to update: %@"
- "Attempt to update password if needed for delivery account %@"
- "EFPropertyKey_account.identifier"
- "EMListUnsubscribeDetector.m"
- "Error establishing xpc connection : %@"
- "Hide My Email address is available: %{BOOL}d in the list of HME addresses"
- "L:%@"
- "No delivery account password found. Nothing to do"
- "Receiving account password changed: %@"
- "S:%@"
- "Should not try to update delivery account password"
- "The checking for HME address is valid failed:%{public}@, adding telemetry for isHideMyEmailAddressValid session"
- "Updating password for %@ did not work. Reverting password"
- "Updating password worked for delivery account: %@"
- "^[^<>]*<([^>]+)>\\s*$|^(.+)$"
- "accepted"
- "accountFinderBlock is not set"
- "com.apple.mail.listUnsubscribeInfo"
- "dictionary"
- "failed to find an account for identifier"
- "ignored"
```
