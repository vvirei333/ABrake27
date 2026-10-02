## DMCEnrollmentProvider

> `/System/Library/PrivateFrameworks/DMCEnrollmentProvider.framework/DMCEnrollmentProvider`

```diff

-113.2.5.0.0
-  __TEXT.__text: 0x4dbe0
-  __TEXT.__objc_methlist: 0x6ea4
+113.40.17.0.0
+  __TEXT.__text: 0x50444
+  __TEXT.__objc_methlist: 0x7254
   __TEXT.__const: 0x504
-  __TEXT.__oslogstring: 0x245f
-  __TEXT.__cstring: 0x2f28
-  __TEXT.__gcc_except_tab: 0x76c
-  __TEXT.__dlopen_cstrs: 0x47
+  __TEXT.__oslogstring: 0x24cf
+  __TEXT.__cstring: 0x2f98
+  __TEXT.__gcc_except_tab: 0x7b4
   __TEXT.__ustring: 0xa4
+  __TEXT.__dlopen_cstrs: 0x66
   __TEXT.__swift5_typeref: 0x1b6
   __TEXT.__swift5_capture: 0x9c
   __TEXT.__swift_as_entry: 0x1c

   __TEXT.__swift5_fieldmd: 0x54
   __TEXT.__swift5_proto: 0x10
   __TEXT.__swift5_types: 0xc
-  __TEXT.__unwind_info: 0x1508
+  __TEXT.__unwind_info: 0x15b8
   __TEXT.__eh_frame: 0x430
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x1140
-  __DATA_CONST.__objc_classlist: 0x2f8
+  __DATA_CONST.__const: 0x1218
+  __DATA_CONST.__objc_classlist: 0x310
   __DATA_CONST.__objc_catlist: 0x40
-  __DATA_CONST.__objc_protolist: 0x198
+  __DATA_CONST.__objc_protolist: 0x1a0
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x4830
+  __DATA_CONST.__objc_selrefs: 0x49c8
   __DATA_CONST.__objc_protorefs: 0x8
-  __DATA_CONST.__objc_superrefs: 0x238
+  __DATA_CONST.__objc_superrefs: 0x250
   __DATA_CONST.__objc_arraydata: 0x90
-  __DATA_CONST.__got: 0xed8
-  __AUTH_CONST.__const: 0x4c0
-  __AUTH_CONST.__cfstring: 0x3020
-  __AUTH_CONST.__objc_const: 0x10818
+  __DATA_CONST.__got: 0xef8
+  __AUTH_CONST.__const: 0x4a0
+  __AUTH_CONST.__cfstring: 0x30c0
+  __AUTH_CONST.__objc_const: 0x114a0
   __AUTH_CONST.__objc_arrayobj: 0xa8
-  __AUTH_CONST.__objc_intobj: 0x120
+  __AUTH_CONST.__objc_intobj: 0x138
   __AUTH_CONST.__objc_floatobj: 0x30
-  __AUTH_CONST.__auth_got: 0x7e8
+  __AUTH_CONST.__auth_got: 0x7c8
   __AUTH_CONST.__auth_ptr: 0x0
-  __AUTH.__objc_data: 0x1a10
+  __AUTH.__objc_data: 0x1b00
   __AUTH.__data: 0xc0
-  __DATA.__objc_ivar: 0x5b4
-  __DATA.__data: 0x13f8
+  __DATA.__objc_ivar: 0x5f8
+  __DATA.__data: 0x1458
   __DATA.__bss: 0x260
   __DATA.__common: 0x18
   __DATA_DIRTY.__objc_data: 0x370

   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libmis.dylib
   - /usr/lib/libobjc.A.dylib
+  - /usr/lib/swift/libswiftAVFoundation.dylib
   - /usr/lib/swift/libswiftAccelerate.dylib
   - /usr/lib/swift/libswiftCompression.dylib
   - /usr/lib/swift/libswiftCore.dylib

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 2143
-  Symbols:   4125
-  CStrings:  626
+  Functions: 2221
+  Symbols:   4256
+  CStrings:  634
 
Symbols:
+ +[DMCEnrollmentConfirmationView _newConfirmationButton]
+ +[DMCEnrollmentConfirmationView _trayButtonHeight]
+ +[DMCEnrollmentConfirmationView trayHeightForButtonCount:]
+ +[DMCEnrollmentConfirmationView trayHorizontalMargin]
+ +[DMCProfileViewController _subscriptionsRowForElevatedPayloadTypes:]
+ -[DMCBYODEnrollmentFlowUIPresenter removeExistingAppCompletionHandler]
+ -[DMCBYODEnrollmentFlowUIPresenter removeExistingAppViewController:didReceiveAction:canceled:]
+ -[DMCBYODEnrollmentFlowUIPresenter requestRemovalOfExistingApplicationForReason:iTunesStoreID:allowSkip:completionHandler:]
+ -[DMCBYODEnrollmentFlowUIPresenter setRemoveExistingAppCompletionHandler:]
+ -[DMCEnrollmentConsentViewController _consentDisclosureCellDataForDeviceEnrollment:]
+ -[DMCEnrollmentConsentViewController _organizationCardCellData]
+ -[DMCEnrollmentConsentViewController _setupManagedProfileSectionsForDeviceEnrollment:]
+ -[DMCEnrollmentConsentViewController initWithDelegate:username:profile:enrollmentType:requiredAppRequest:requiredAppViewGroup:]
+ -[DMCEnrollmentConsentViewController requiredAppRequest]
+ -[DMCEnrollmentConsentViewController requiredAppViewGroup]
+ -[DMCEnrollmentConsentViewController setRequiredAppRequest:]
+ -[DMCEnrollmentConsentViewController setRequiredAppViewGroup:]
+ -[DMCEnrollmentFlowRestoreViewController _footnoteCellWithText:]
+ -[DMCEnrollmentFlowRestoreViewController _setupSectionsWithManagedAppleID:conflictingApps:]
+ -[DMCEnrollmentManagementDetailsOverviewViewController _requiredAppCellDataWithRequest:viewGroup:]
+ -[DMCEnrollmentRemoveExistingAppViewController .cxx_destruct]
+ -[DMCEnrollmentRemoveExistingAppViewController _setupNavigationBar]
+ -[DMCEnrollmentRemoveExistingAppViewController allowSkip]
+ -[DMCEnrollmentRemoveExistingAppViewController confirmationView]
+ -[DMCEnrollmentRemoveExistingAppViewController delegate]
+ -[DMCEnrollmentRemoveExistingAppViewController initWithDelegate:reason:lockupRequest:lockupViewGroup:allowSkip:]
+ -[DMCEnrollmentRemoveExistingAppViewController leftBarButtonTapped:]
+ -[DMCEnrollmentRemoveExistingAppViewController reason]
+ -[DMCEnrollmentRemoveExistingAppViewController setAllowSkip:]
+ -[DMCEnrollmentRemoveExistingAppViewController setConfirmationView:]
+ -[DMCEnrollmentRemoveExistingAppViewController setDelegate:]
+ -[DMCEnrollmentRemoveExistingAppViewController setReason:]
+ -[DMCEnrollmentRemoveExistingAppViewController updateContinueButtonStatus]
+ -[DMCEnrollmentRemoveExistingAppViewController viewWillAppear:]
+ -[DMCEnrollmentTableViewCardCell .cxx_destruct]
+ -[DMCEnrollmentTableViewCardCell _initWithTitles:subtitles:]
+ -[DMCEnrollmentTableViewCardCell _rowViewWithTitle:subtitle:showSeparator:titleLabels:subtitleLabels:]
+ -[DMCEnrollmentTableViewCardCell _subtitleFont]
+ -[DMCEnrollmentTableViewCardCell _titleFont]
+ -[DMCEnrollmentTableViewCardCell cardTopConstraint]
+ -[DMCEnrollmentTableViewCardCell cellHeight]
+ -[DMCEnrollmentTableViewCardCell cell]
+ -[DMCEnrollmentTableViewCardCell customTopMargin]
+ -[DMCEnrollmentTableViewCardCell estimatedCellHeight]
+ -[DMCEnrollmentTableViewCardCell initWithTitle:subtitle:]
+ -[DMCEnrollmentTableViewCardCell initWithTitles:]
+ -[DMCEnrollmentTableViewCardCell layoutSubviews]
+ -[DMCEnrollmentTableViewCardCell setCardTopConstraint:]
+ -[DMCEnrollmentTableViewCardCell setCustomTopMargin:]
+ -[DMCEnrollmentTableViewCardCell setSubtitleLabels:]
+ -[DMCEnrollmentTableViewCardCell setTitleLabels:]
+ -[DMCEnrollmentTableViewCardCell subtitleLabels]
+ -[DMCEnrollmentTableViewCardCell titleLabels]
+ -[DMCEnrollmentTableViewTextCell _attributedLinkTextWithIcon:attributes:]
+ -[DMCEnrollmentTableViewTextCell _linkIconImage]
+ -[DMCEnrollmentTableViewTextCell configureLinkText:iconName:forceLineBreak:linkAction:]
+ -[DMCEnrollmentTableViewTextCell linkIconName]
+ -[DMCEnrollmentTableViewTextCell linkRangeLength]
+ -[DMCEnrollmentTableViewTextCell setLinkIconName:]
+ -[DMCEnrollmentTableViewTextCell setLinkRangeLength:]
+ -[DMCEnrollmentTemplateTableViewController _keyboardFrameDidChange:]
+ -[DMCEnrollmentTemplateTableViewController _setupKeyboardNotifications]
+ -[DMCEnrollmentTemplateTableViewController keyboardOverlapAtLastScroll]
+ -[DMCEnrollmentTemplateTableViewController keyboardOverlap]
+ -[DMCEnrollmentTemplateTableViewController setKeyboardOverlap:]
+ -[DMCEnrollmentTemplateTableViewController setKeyboardOverlapAtLastScroll:]
+ -[DMCEnrollmentTemplateTableViewController viewDidLayoutSubviews]
+ -[DMCProfileViewController _elevatedPayloadRowForTableRow:]
+ -[DMCProfileViewController _numberOfElevatedPayloadRows]
+ -[DMCProfileViewController _setSubscriptionsLoading:]
+ -[DMCProfileViewController _setupSubscriptionsUIWithAccountManager:]
+ -[DMCProfileViewController _subscriptionsRow]
+ -[DMCProfileViewController _tableView:subscriptionsCellForRowAtIndexPath:]
+ -[DMCProfileViewController initWithMDMProfileForRMAccountWithAccountManager:]
+ -[DMCProfileViewController reloadSpecifiersForProvider:oldSpecifiers:animated:]
+ -[DMCProfileViewController setSubscriptionsIsLoading:]
+ -[DMCProfileViewController setSubscriptionsSpecifierProvider:]
+ -[DMCProfileViewController specifierProvider:didFinishLoadingSpecifier:]
+ -[DMCProfileViewController specifierProvider:showViewController:]
+ -[DMCProfileViewController specifierProvider:willBeginLoadingSpecifier:]
+ -[DMCProfileViewController subscriptionsIsLoading]
+ -[DMCProfileViewController subscriptionsSpecifierProvider]
+ -[DMCSubscriptionsSpecifierProvider .cxx_destruct]
+ -[DMCSubscriptionsSpecifierProvider amsProvider]
+ -[DMCSubscriptionsSpecifierProvider cachedSpecifier]
+ -[DMCSubscriptionsSpecifierProvider delegate]
+ -[DMCSubscriptionsSpecifierProvider initWithAccountManager:]
+ -[DMCSubscriptionsSpecifierProvider invalidateSpecifier]
+ -[DMCSubscriptionsSpecifierProvider selectSpecifier]
+ -[DMCSubscriptionsSpecifierProvider setAmsProvider:]
+ -[DMCSubscriptionsSpecifierProvider setCachedSpecifier:]
+ -[DMCSubscriptionsSpecifierProvider setDelegate:]
+ -[DMCSubscriptionsSpecifierProvider setSpecifierIsCached:]
+ -[DMCSubscriptionsSpecifierProvider specifierIsCached]
+ -[DMCSubscriptionsSpecifierProvider specifier]
+ GCC_except_table21
+ GCC_except_table30
+ GCC_except_table31
+ GCC_except_table80
+ _AppleMediaServicesUILibraryCore.frameworkLibrary
+ _OBJC_CLASS_$_DMCEnrollmentRemoveExistingAppViewController
+ _OBJC_CLASS_$_DMCEnrollmentTableViewCardCell
+ _OBJC_CLASS_$_DMCSubscriptionsSpecifierProvider
+ _OBJC_CLASS_$_NSTextAttachment
+ _OBJC_CLASS_$_UIStackView
+ _OBJC_IVAR_$_DMCBYODEnrollmentFlowUIPresenter._removeExistingAppCompletionHandler
+ _OBJC_IVAR_$_DMCEnrollmentConsentViewController._requiredAppRequest
+ _OBJC_IVAR_$_DMCEnrollmentConsentViewController._requiredAppViewGroup
+ _OBJC_IVAR_$_DMCEnrollmentRemoveExistingAppViewController._allowSkip
+ _OBJC_IVAR_$_DMCEnrollmentRemoveExistingAppViewController._confirmationView
+ _OBJC_IVAR_$_DMCEnrollmentRemoveExistingAppViewController._delegate
+ _OBJC_IVAR_$_DMCEnrollmentRemoveExistingAppViewController._reason
+ _OBJC_IVAR_$_DMCEnrollmentTableViewCardCell._cardTopConstraint
+ _OBJC_IVAR_$_DMCEnrollmentTableViewCardCell._customTopMargin
+ _OBJC_IVAR_$_DMCEnrollmentTableViewCardCell._subtitleLabels
+ _OBJC_IVAR_$_DMCEnrollmentTableViewCardCell._titleLabels
+ _OBJC_IVAR_$_DMCEnrollmentTableViewTextCell._linkIconName
+ _OBJC_IVAR_$_DMCEnrollmentTableViewTextCell._linkRangeLength
+ _OBJC_IVAR_$_DMCEnrollmentTemplateTableViewController._keyboardOverlap
+ _OBJC_IVAR_$_DMCEnrollmentTemplateTableViewController._keyboardOverlapAtLastScroll
+ _OBJC_IVAR_$_DMCProfileViewController._subscriptionsIsLoading
+ _OBJC_IVAR_$_DMCProfileViewController._subscriptionsSpecifierProvider
+ _OBJC_IVAR_$_DMCSubscriptionsSpecifierProvider._amsProvider
+ _OBJC_IVAR_$_DMCSubscriptionsSpecifierProvider._cachedSpecifier
+ _OBJC_IVAR_$_DMCSubscriptionsSpecifierProvider._delegate
+ _OBJC_IVAR_$_DMCSubscriptionsSpecifierProvider._specifierIsCached
+ _OBJC_METACLASS_$_DMCEnrollmentRemoveExistingAppViewController
+ _OBJC_METACLASS_$_DMCEnrollmentTableViewCardCell
+ _OBJC_METACLASS_$_DMCSubscriptionsSpecifierProvider
+ _UIFontTextStyleFootnote
+ _UIKeyboardDidChangeFrameNotification
+ _UIKeyboardWillChangeFrameNotification
+ __OBJC_$_CLASS_METHODS_DMCEnrollmentConfirmationView
+ __OBJC_$_CLASS_METHODS_DMCProfileViewController
+ __OBJC_$_INSTANCE_METHODS_DMCEnrollmentRemoveExistingAppViewController
+ __OBJC_$_INSTANCE_METHODS_DMCEnrollmentTableViewCardCell
+ __OBJC_$_INSTANCE_METHODS_DMCSubscriptionsSpecifierProvider
+ __OBJC_$_INSTANCE_VARIABLES_DMCEnrollmentRemoveExistingAppViewController
+ __OBJC_$_INSTANCE_VARIABLES_DMCEnrollmentTableViewCardCell
+ __OBJC_$_INSTANCE_VARIABLES_DMCSubscriptionsSpecifierProvider
+ __OBJC_$_PROP_LIST_DMCEnrollmentRemoveExistingAppViewController
+ __OBJC_$_PROP_LIST_DMCEnrollmentTableViewCardCell
+ __OBJC_$_PROP_LIST_DMCSubscriptionsSpecifierProvider
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_AAUISpecifierProviderDelegate
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_DMCEnrollmentRemoveExistingAppViewControllerDelegate
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_OPT_AAUISpecifierProviderDelegate
+ __OBJC_$_PROTOCOL_METHOD_TYPES_AAUISpecifierProviderDelegate
+ __OBJC_$_PROTOCOL_METHOD_TYPES_DMCEnrollmentRemoveExistingAppViewControllerDelegate
+ __OBJC_$_PROTOCOL_REFS_AAUISpecifierProviderDelegate
+ __OBJC_$_PROTOCOL_REFS_DMCEnrollmentRemoveExistingAppViewControllerDelegate
+ __OBJC_CLASS_PROTOCOLS_$_DMCEnrollmentTableViewCardCell
+ __OBJC_CLASS_PROTOCOLS_$_DMCProfileViewController
+ __OBJC_CLASS_RO_$_DMCEnrollmentRemoveExistingAppViewController
+ __OBJC_CLASS_RO_$_DMCEnrollmentTableViewCardCell
+ __OBJC_CLASS_RO_$_DMCSubscriptionsSpecifierProvider
+ __OBJC_LABEL_PROTOCOL_$_AAUISpecifierProviderDelegate
+ __OBJC_LABEL_PROTOCOL_$_DMCEnrollmentRemoveExistingAppViewControllerDelegate
+ __OBJC_METACLASS_RO_$_DMCEnrollmentRemoveExistingAppViewController
+ __OBJC_METACLASS_RO_$_DMCEnrollmentTableViewCardCell
+ __OBJC_METACLASS_RO_$_DMCSubscriptionsSpecifierProvider
+ __OBJC_PROTOCOL_$_AAUISpecifierProviderDelegate
+ __OBJC_PROTOCOL_$_DMCEnrollmentRemoveExistingAppViewControllerDelegate
+ ___112-[DMCEnrollmentRemoveExistingAppViewController initWithDelegate:reason:lockupRequest:lockupViewGroup:allowSkip:]_block_invoke
+ ___112-[DMCEnrollmentRemoveExistingAppViewController initWithDelegate:reason:lockupRequest:lockupViewGroup:allowSkip:]_block_invoke_2
+ ___118-[DMCBYODEnrollmentFlowUIPresenter requestUserConsentWithProfileData:managedAppleID:enrollmentType:completionHandler:]_block_invoke_2
+ ___118-[DMCBYODEnrollmentFlowUIPresenter requestUserConsentWithProfileData:managedAppleID:enrollmentType:completionHandler:]_block_invoke_3
+ ___118-[DMCBYODEnrollmentFlowUIPresenter requestUserConsentWithProfileData:managedAppleID:enrollmentType:completionHandler:]_block_invoke_4
+ ___123-[DMCBYODEnrollmentFlowUIPresenter requestRemovalOfExistingApplicationForReason:iTunesStoreID:allowSkip:completionHandler:]_block_invoke
+ ___123-[DMCBYODEnrollmentFlowUIPresenter requestRemovalOfExistingApplicationForReason:iTunesStoreID:allowSkip:completionHandler:]_block_invoke_2
+ ___123-[DMCBYODEnrollmentFlowUIPresenter requestRemovalOfExistingApplicationForReason:iTunesStoreID:allowSkip:completionHandler:]_block_invoke_3
+ ___53-[DMCProfileViewController _setSubscriptionsLoading:]_block_invoke
+ ___60-[DMCEnrollmentTableViewCardCell _initWithTitles:subtitles:]_block_invoke
+ ___60-[DMCEnrollmentTableViewCardCell _initWithTitles:subtitles:]_block_invoke_2
+ ___94-[DMCBYODEnrollmentFlowUIPresenter removeExistingAppViewController:didReceiveAction:canceled:]_block_invoke
+ ___94-[DMCBYODEnrollmentFlowUIPresenter removeExistingAppViewController:didReceiveAction:canceled:]_block_invoke_2
+ ___AppleMediaServicesUILibraryCore_block_invoke
+ ___block_descriptor_49_e8_32s_e49_v24?0"ASCLockupRequest"8"ASCLockupViewGroup"16ls32l8
+ ___block_descriptor_57_e8_32s40s_e5_v8?0ls32l8s40l8
+ ___block_descriptor_64_e8_32s40s48s_e49_v24?0"ASCLockupRequest"8"ASCLockupViewGroup"16ls32l8s40l8s48l8
+ ___block_descriptor_65_e8_32s40s48s_e5_v8?0ls32l8s40l8s48l8
+ ___block_descriptor_72_e8_32s40s48s56s_e5_v8?0ls32l8s40l8s48l8s56l8
+ ___block_descriptor_80_e8_32s40s48s56s64s72s_e25_v32?0"NSString"8Q16^B24ls32l8s40l8s48l8s56l8s64l8s72l8
+ ___block_descriptor_80_e8_32s40s48s56s64s_e5_v8?0ls32l8s40l8s48l8s56l8s64l8
+ ___getAMSUIManageSubsriptionSpecifierProviderClass_block_invoke
+ __swift_FORCE_LOAD_$_swiftAVFoundation
+ __swift_FORCE_LOAD_$_swiftAVFoundation_$_DMCEnrollmentProvider
+ _audit_stringAppleMediaServicesUI
+ _getAMSUIManageSubsriptionSpecifierProviderClass.softClass
- -[DMCEnrollmentConsentViewController _commonCellDataForRegularBYODDisclosure]
- -[DMCEnrollmentConsentViewController _platterCellDataForRegularADDEDisclosure]
- -[DMCEnrollmentConsentViewController _platterCellDataForRegularADUEDisclosure]
- -[DMCEnrollmentConsentViewController _platterCellDataWithImage:text:]
- -[DMCEnrollmentConsentViewController infoCell]
- -[DMCEnrollmentConsentViewController initWithDelegate:username:profile:enrollmentType:]
- -[DMCEnrollmentConsentViewController requiredAppID]
- -[DMCEnrollmentConsentViewController setInfoCell:]
- -[DMCEnrollmentConsentViewController setRequiredAppID:]
- -[DMCEnrollmentInstallAppButtonView preferredHeight]
- -[DMCEnrollmentInstallAppButtonView setPreferredHeight:]
- -[DMCEnrollmentTemplateTableViewController _adjustFloatyViewFrameWithKeyboardFrame:animationDuration:]
- -[DMCEnrollmentTemplateTableViewController _setupNotification]
- -[DMCEnrollmentTemplateTableViewController _touchViewFrame:]
- -[DMCEnrollmentTemplateTableViewController _updateFloatyViewForKeyboardFrame:duration:]
- -[DMCEnrollmentTemplateTableViewController gapBetweenButtons]
- -[DMCEnrollmentTemplateTableViewController keyboardDidShow:]
- -[DMCEnrollmentTemplateTableViewController keyboardWillHide:]
- -[DMCEnrollmentTemplateTableViewController keyboardWillShow:]
- -[DMCEnrollmentTemplateTableViewController setGapBetweenButtons:]
- GCC_except_table17
- GCC_except_table18
- GCC_except_table26
- GCC_except_table27
- GCC_except_table73
- _OBJC_IVAR_$_DMCEnrollmentConsentViewController._infoCell
- _OBJC_IVAR_$_DMCEnrollmentConsentViewController._requiredAppID
- _OBJC_IVAR_$_DMCEnrollmentInstallAppButtonView._preferredHeight
- _OBJC_IVAR_$_DMCEnrollmentTemplateTableViewController._gapBetweenButtons
- _StoreKitLibrary
- _StoreKitLibraryCore.frameworkLibrary
- _UIKeyboardDidShowNotification
- _UIKeyboardFrameEndUserInfoKey
- _UIKeyboardWillHideNotification
- _UIKeyboardWillShowNotification
- __OBJC_$_PROTOCOL_INSTANCE_METHODS_OPT_DevicePINControllerDelegate
- __OBJC_$_PROTOCOL_METHOD_TYPES_DevicePINControllerDelegate
- __OBJC_$_PROTOCOL_REFS_DevicePINControllerDelegate
- __OBJC_LABEL_PROTOCOL_$_DevicePINControllerDelegate
- __OBJC_PROTOCOL_$_DevicePINControllerDelegate
- ___102-[DMCEnrollmentTemplateTableViewController _adjustFloatyViewFrameWithKeyboardFrame:animationDuration:]_block_invoke
- ___58-[DMCEnrollmentConsentViewController _requiredAppCellData]_block_invoke
- ___58-[DMCEnrollmentConsentViewController _requiredAppCellData]_block_invoke_2
- ___61-[DMCEnrollmentTemplateTableViewController keyboardWillHide:]_block_invoke
- ___87-[DMCEnrollmentTemplateTableViewController _updateFloatyViewForKeyboardFrame:duration:]_block_invoke
- ___StoreKitLibraryCore_block_invoke
- ___block_descriptor_32_e20_v20?0B8"NSError"12l
- ___block_descriptor_80_e8_32s_e5_v8?0ls32l8
- ___getSKStoreProductParameterITunesItemIdentifierSymbolLoc_block_invoke
- ___getSKStoreProductViewControllerClass_block_invoke
- _abort_report_np
- _audit_stringStoreKit
- _dlerror
- _dlsym
- _free
- _getSKStoreProductParameterITunesItemIdentifierSymbolLoc.ptr
- _getSKStoreProductViewControllerClass.softClass
CStrings:
+ "\""
+ "AMSUIManageSubsriptionSpecifierProvider"
+ "AMSUIManageSubsriptionSpecifierProvider is unavailable"
+ "DMC_REMOVE_EXISTING_APP_REMOVE_BUTTON"
+ "DMC_REMOVE_EXISTING_APP_SKIP_BUTTON"
+ "DMC_REMOVE_EXISTING_ESSO_APP_BODY"
+ "DMC_REMOVE_EXISTING_ESSO_APP_TITLE"
+ "DMC_REMOVE_EXISTING_REQUIRED_APP_BODY"
+ "DMC_REMOVE_EXISTING_REQUIRED_APP_TITLE"
+ "No account manager available for the Subscriptions row"
+ "The Subscriptions row has no load action to perform"
+ "UI_ALREADY_INSTALLED"
+ "UI_APPS_ALREADY_INSTALLED_BLURB"
+ "UI_APP_ALREADY_INSTALLED_BLURB"
+ "UI_APP_MAY_BE_INSTALLED"
+ "UI_HAS_BACKUP_AVAILABLE_%@"
+ "UI_LAST_BACKUP_%@"
+ "a"
+ "building.2.fill"
+ "info.circle.fill"
+ "softlink:r:path:/System/Library/PrivateFrameworks/AppleMediaServicesUI.framework/AppleMediaServicesUI"
+ "v32@?0@\"NSString\"8Q16^B24"
- "Could not load product info for store!! : %{public}@"
- "SKStoreProductParameterITunesItemIdentifier"
- "SKStoreProductViewController"
- "UI_ALLOW_REMOTE_MANAGEMENT_CONSENT"
- "UI_ALLOW_REMOTE_MANAGEMENT_QUESTION"
- "UI_ESSO_REQUIRED_APP_BLURB"
- "UI_HAS_BACKUP_FROM_%@_%@"
- "UI_REQUIRED_APP_LINK"
- "UI_UNABLE_TO_RESTORE_APP"
- "UI_UNABLE_TO_RESTORE_APPS"
- "Unable to find class %s"
- "exclamationmark.triangle.fill"
- "person.line.dotted.person.fill"
- "softlink:r:path:/System/Library/Frameworks/StoreKit.framework/StoreKit"
```
