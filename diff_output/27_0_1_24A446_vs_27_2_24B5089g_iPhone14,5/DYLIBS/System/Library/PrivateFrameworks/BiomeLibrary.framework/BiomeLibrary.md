## BiomeLibrary

> `/System/Library/PrivateFrameworks/BiomeLibrary.framework/BiomeLibrary`

```diff

-436.6.0.0.0
-  __TEXT.__text: 0x7584dc
-  __TEXT.__objc_methlist: 0x50564
-  __TEXT.__const: 0x47d8
-  __TEXT.__swift5_typeref: 0x17e
+441.25.0.0.0
+  __TEXT.__text: 0x75abe0
+  __TEXT.__objc_methlist: 0x5061c
+  __TEXT.__const: 0x48b8
+  __TEXT.__swift5_typeref: 0x184
   __TEXT.__swift5_capture: 0x30
-  __TEXT.__cstring: 0x4e9fa
-  __TEXT.__constg_swiftt: 0x5b8
-  __TEXT.__swift5_fieldmd: 0x210
-  __TEXT.__swift5_types: 0x84
+  __TEXT.__cstring: 0x4ed27
+  __TEXT.__constg_swiftt: 0x5e4
+  __TEXT.__swift5_fieldmd: 0x220
+  __TEXT.__swift5_types: 0x88
   __TEXT.__oslogstring: 0x47
-  __TEXT.__unwind_info: 0xf678
+  __TEXT.__unwind_info: 0xf6b0
   __TEXT.__eh_frame: 0x40
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x1ebc8
-  __DATA_CONST.__objc_classlist: 0x2320
+  __DATA_CONST.__const: 0x1ee88
+  __DATA_CONST.__objc_classlist: 0x2328
   __DATA_CONST.__objc_protolist: 0x48
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x129d8
+  __DATA_CONST.__objc_selrefs: 0x12a38
   __DATA_CONST.__objc_protorefs: 0x8
   __DATA_CONST.__objc_superrefs: 0x1b40
-  __DATA_CONST.__objc_arraydata: 0xb278
+  __DATA_CONST.__objc_arraydata: 0xb2b0
   __DATA_CONST.__got: 0x1c10
-  __AUTH_CONST.__const: 0x9b38
-  __AUTH_CONST.__cfstring: 0x4b4c0
-  __AUTH_CONST.__objc_const: 0xa2f50
+  __AUTH_CONST.__const: 0x9b78
+  __AUTH_CONST.__cfstring: 0x4b940
+  __AUTH_CONST.__objc_const: 0xa30e8
   __AUTH_CONST.__objc_arrayobj: 0x66c0
   __AUTH_CONST.__objc_intobj: 0x300
-  __AUTH_CONST.__auth_got: 0x3a0
+  __AUTH_CONST.__auth_got: 0x3b0
   __AUTH_CONST.__auth_ptr: 0x0
-  __AUTH.__objc_data: 0xb210
-  __AUTH.__data: 0x118
-  __DATA.__objc_ivar: 0x8220
+  __AUTH.__objc_data: 0x9fc0
+  __AUTH.__data: 0x50
+  __DATA.__objc_ivar: 0x823c
   __DATA.__data: 0x328
   __DATA.__bss: 0x18
-  __DATA_DIRTY.__objc_data: 0xb990
-  __DATA_DIRTY.__data: 0x430
+  __DATA_DIRTY.__objc_data: 0xcc90
+  __DATA_DIRTY.__data: 0x520
   __DATA_DIRTY.__bss: 0x8
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/Foundation.framework/Foundation

   - /usr/lib/swift/libswiftXPC.dylib
   - /usr/lib/swift/libswift_Builtin_float.dylib
   - /usr/lib/swift/libswiftos.dylib
-  Functions: 28727
-  Symbols:   53071
-  CStrings:  9772
+  Functions: 28765
+  Symbols:   53125
+  CStrings:  9809
 
Symbols:
+ +[BMSafariSearchEngine columns]
+ +[BMSafariSearchEngine eventWithData:dataVersion:]
+ +[BMSafariSearchEngine latestDataVersion]
+ +[BMSafariSearchEngine protoFields]
+ +[BMSafariSearchEngine validKeyPaths]
+ +[_BMSafariLibraryNode SearchEngine]
+ +[_BMSafariLibraryNode configurationForSearchEngine]
+ +[_BMSafariLibraryNode storeConfigurationForSearchEngine]
+ +[_BMSafariLibraryNode syncPolicyForSearchEngine]
+ -[BMAppInFocus initWithLaunchReason:type:starting:absoluteTimestamp:bundleID:parentBundleID:extensionHostID:shortVersionString:exactVersionString:dyldPlatform:isNativeArchitecture:displayType:transitionReason:]
+ -[BMAppInFocus transitionReason]
+ -[BMAppInFocus(Deprecation) initWithLaunchReason:type:starting:absoluteTimestamp:bundleID:parentBundleID:extensionHostID:shortVersionString:exactVersionString:dyldPlatform:isNativeArchitecture:displayType:]
+ -[BMCarKeyProvisioningData initWithOwnerPairingUrl:carBrand:alreadyProvisioned:carModel:carIdentifier:pairingCode:userIdentifier:provisioningCodeExpiration:spotlightUniqueIdentifier:spotlightDomainIdentifier:spotlightBundleIdentifier:dateSent:cccManufacturer:cccBrand:supportedTransports:sourceLanguage:messageIdentifier:]
+ -[BMCarKeyProvisioningData messageIdentifier]
+ -[BMCarKeyProvisioningData(Deprecation) initWithOwnerPairingUrl:carBrand:alreadyProvisioned:carModel:carIdentifier:pairingCode:userIdentifier:provisioningCodeExpiration:spotlightUniqueIdentifier:spotlightDomainIdentifier:spotlightBundleIdentifier:dateSent:cccManufacturer:cccBrand:supportedTransports:sourceLanguage:]
+ -[BMGeneratedImageFailureReason blockingSafetyModel]
+ -[BMGeneratedImageFailureReason blocklistCategory]
+ -[BMGeneratedImageFailureReason failureReason]
+ -[BMGeneratedImageFailureReason initWithTimestamp:identifier:userInterfaceLanguage:userSetRegionFormat:reason:feature:userPrompt:rewrittenPrompt:safetyCategory:blocklistCategory:blockingSafetyModel:failureReason:]
+ -[BMGeneratedImageFailureReason rewrittenPrompt]
+ -[BMGeneratedImageFailureReason safetyCategory]
+ -[BMGeneratedImageFailureReason userPrompt]
+ -[BMGeneratedImageFailureReason(Deprecation) initWithTimestamp:identifier:userInterfaceLanguage:userSetRegionFormat:reason:feature:]
+ -[BMSafariSearchEngine .cxx_destruct]
+ -[BMSafariSearchEngine dataVersion]
+ -[BMSafariSearchEngine description]
+ -[BMSafariSearchEngine initByReadFrom:]
+ -[BMSafariSearchEngine initWithJSONDictionary:error:]
+ -[BMSafariSearchEngine initWithSearchEngineIdentifier:]
+ -[BMSafariSearchEngine isEqual:]
+ -[BMSafariSearchEngine jsonDictionary]
+ -[BMSafariSearchEngine searchEngineIdentifier]
+ -[BMSafariSearchEngine serialize]
+ -[BMSafariSearchEngine writeTo:]
+ _BMAppInFocusTransitionReasonColumn
+ _BMCarKeyProvisioningDataMessageIdentifierColumn
+ _BMGeneratedImageFailureReasonBlockingSafetyModelAsString
+ _BMGeneratedImageFailureReasonBlockingSafetyModelColumn
+ _BMGeneratedImageFailureReasonBlockingSafetyModelDecode
+ _BMGeneratedImageFailureReasonBlockingSafetyModelFromString
+ _BMGeneratedImageFailureReasonBlockingSafetyModelFromString.sortedStrings
+ _BMGeneratedImageFailureReasonBlocklistCategoryAsString
+ _BMGeneratedImageFailureReasonBlocklistCategoryColumn
+ _BMGeneratedImageFailureReasonBlocklistCategoryDecode
+ _BMGeneratedImageFailureReasonBlocklistCategoryFromString
+ _BMGeneratedImageFailureReasonBlocklistCategoryFromString.sortedEnums
+ _BMGeneratedImageFailureReasonBlocklistCategoryFromString.sortedStrings
+ _BMGeneratedImageFailureReasonFailureReasonAsString
+ _BMGeneratedImageFailureReasonFailureReasonColumn
+ _BMGeneratedImageFailureReasonFailureReasonDecode
+ _BMGeneratedImageFailureReasonFailureReasonFromString
+ _BMGeneratedImageFailureReasonFailureReasonFromString.sortedEnums
+ _BMGeneratedImageFailureReasonFailureReasonFromString.sortedStrings
+ _BMGeneratedImageFailureReasonRewrittenPromptColumn
+ _BMGeneratedImageFailureReasonSafetyCategoryAsString
+ _BMGeneratedImageFailureReasonSafetyCategoryColumn
+ _BMGeneratedImageFailureReasonSafetyCategoryDecode
+ _BMGeneratedImageFailureReasonSafetyCategoryFromString
+ _BMGeneratedImageFailureReasonSafetyCategoryFromString.sortedEnums
+ _BMGeneratedImageFailureReasonSafetyCategoryFromString.sortedStrings
+ _BMGeneratedImageFailureReasonUserPromptColumn
+ _BMSafariSearchEngineIdentifier
+ _BMSafariSearchEngineSearchEngineIdentifierColumn
+ _NSSelectorFromString
+ _OBJC_CLASS_$_BMSafariSearchEngine
+ _OBJC_CLASS_$__TtC12BiomeLibrary41_BMIPBridgeUnilogSafariFeatureLibraryNode
+ _OBJC_IVAR_$_BMAppInFocus._transitionReason
+ _OBJC_IVAR_$_BMCarKeyProvisioningData._messageIdentifier
+ _OBJC_IVAR_$_BMGeneratedImageFailureReason._blockingSafetyModel
+ _OBJC_IVAR_$_BMGeneratedImageFailureReason._blocklistCategory
+ _OBJC_IVAR_$_BMGeneratedImageFailureReason._failureReason
+ _OBJC_IVAR_$_BMGeneratedImageFailureReason._rewrittenPrompt
+ _OBJC_IVAR_$_BMGeneratedImageFailureReason._safetyCategory
+ _OBJC_IVAR_$_BMGeneratedImageFailureReason._userPrompt
+ _OBJC_IVAR_$_BMSafariSearchEngine._dataVersion
+ _OBJC_IVAR_$_BMSafariSearchEngine._searchEngineIdentifier
+ _OBJC_METACLASS_$_BMSafariSearchEngine
+ _OBJC_METACLASS_$__TtC12BiomeLibrary41_BMIPBridgeUnilogSafariFeatureLibraryNode
+ _OUTLINED_FUNCTION_49
+ _OUTLINED_FUNCTION_50
+ __CLASS_METHODS__TtC12BiomeLibrary41_BMIPBridgeUnilogSafariFeatureLibraryNode
+ __DATA__TtC12BiomeLibrary41_BMIPBridgeUnilogSafariFeatureLibraryNode
+ __METACLASS_DATA__TtC12BiomeLibrary41_BMIPBridgeUnilogSafariFeatureLibraryNode
+ __OBJC_$_CLASS_METHODS_BMSafariSearchEngine
+ __OBJC_$_CLASS_PROP_LIST_BMSafariSearchEngine
+ __OBJC_$_INSTANCE_METHODS_BMGeneratedImageFailureReason(Deprecation)
+ __OBJC_$_INSTANCE_METHODS_BMSafariSearchEngine
+ __OBJC_$_INSTANCE_VARIABLES_BMSafariSearchEngine
+ __OBJC_$_PROP_LIST_BMSafariSearchEngine
+ __OBJC_CLASS_PROTOCOLS_$_BMSafariSearchEngine
+ __OBJC_CLASS_RO_$_BMSafariSearchEngine
+ __OBJC_METACLASS_RO_$_BMSafariSearchEngine
+ ___BMGeneratedImageFailureReasonBlockingSafetyModelFromString_block_invoke
+ ___BMGeneratedImageFailureReasonBlocklistCategoryFromString_block_invoke
+ ___BMGeneratedImageFailureReasonFailureReasonFromString_block_invoke
+ ___BMGeneratedImageFailureReasonSafetyCategoryFromString_block_invoke
+ _objc_opt_respondsToSelector
+ _symbolic _____ 12BiomeLibrary030_BMIPBridgeUnilogSafariFeatureB4NodeC
- +[BMSiriHomeHistory columns]
- +[BMSiriHomeHistory eventWithData:dataVersion:]
- +[BMSiriHomeHistory latestDataVersion]
- +[BMSiriHomeHistory protoFields]
- +[BMSiriHomeHistory validKeyPaths]
- +[_BMSiriRemembersLibraryNode HomeHistory]
- +[_BMSiriRemembersLibraryNode configurationForHomeHistory]
- +[_BMSiriRemembersLibraryNode storeConfigurationForHomeHistory]
- +[_BMSiriRemembersLibraryNode syncPolicyForHomeHistory]
- -[BMAppInFocus initWithLaunchReason:type:starting:absoluteTimestamp:bundleID:parentBundleID:extensionHostID:shortVersionString:exactVersionString:dyldPlatform:isNativeArchitecture:displayType:]
- -[BMCarKeyProvisioningData initWithOwnerPairingUrl:carBrand:alreadyProvisioned:carModel:carIdentifier:pairingCode:userIdentifier:provisioningCodeExpiration:spotlightUniqueIdentifier:spotlightDomainIdentifier:spotlightBundleIdentifier:dateSent:cccManufacturer:cccBrand:supportedTransports:sourceLanguage:]
- -[BMGeneratedImageFailureReason initWithTimestamp:identifier:userInterfaceLanguage:userSetRegionFormat:reason:feature:]
- -[BMSiriHomeHistory .cxx_destruct]
- -[BMSiriHomeHistory _entitiesJSONArray]
- -[BMSiriHomeHistory dataVersion]
- -[BMSiriHomeHistory description]
- -[BMSiriHomeHistory entities]
- -[BMSiriHomeHistory initByReadFrom:]
- -[BMSiriHomeHistory initWithInteraction:entities:]
- -[BMSiriHomeHistory initWithJSONDictionary:error:]
- -[BMSiriHomeHistory interaction]
- -[BMSiriHomeHistory isEqual:]
- -[BMSiriHomeHistory jsonDictionary]
- -[BMSiriHomeHistory serialize]
- -[BMSiriHomeHistory writeTo:]
- _BMSiriHomeHistoryEntitiesColumn
- _BMSiriHomeHistoryInteractionColumn
- _BMSiriRemembersHomeHistoryIdentifier
- _OBJC_CLASS_$_BMSiriHomeHistory
- _OBJC_IVAR_$_BMSiriHomeHistory._dataVersion
- _OBJC_IVAR_$_BMSiriHomeHistory._entities
- _OBJC_IVAR_$_BMSiriHomeHistory._interaction
- _OBJC_METACLASS_$_BMSiriHomeHistory
- __OBJC_$_CLASS_METHODS_BMSiriHomeHistory
- __OBJC_$_CLASS_PROP_LIST_BMSiriHomeHistory
- __OBJC_$_INSTANCE_METHODS_BMGeneratedImageFailureReason
- __OBJC_$_INSTANCE_METHODS_BMSiriHomeHistory
- __OBJC_$_INSTANCE_VARIABLES_BMSiriHomeHistory
- __OBJC_$_PROP_LIST_BMSiriHomeHistory
- __OBJC_CLASS_PROTOCOLS_$_BMSiriHomeHistory
- __OBJC_CLASS_RO_$_BMSiriHomeHistory
- __OBJC_METACLASS_RO_$_BMSiriHomeHistory
- ___28+[BMSiriHomeHistory columns]_block_invoke
- ___28+[BMSiriHomeHistory columns]_block_invoke_2
CStrings:
+ "!D"
+ "AppleProducts"
+ "BMAppInFocus with launchReason: %@, type: %@, starting: %@, absoluteTimestamp: %@, bundleID: %@, parentBundleID: %@, extensionHostID: %@, shortVersionString: %@, exactVersionString: %@, dyldPlatform: %@, isNativeArchitecture: %@, displayType: %@, transitionReason: %@"
+ "BMCarKeyProvisioningData with ownerPairingUrl: %@, carBrand: %@, alreadyProvisioned: %@, carModel: %@, carIdentifier: %@, pairingCode: %@, userIdentifier: %@, provisioningCodeExpiration: %@, spotlightUniqueIdentifier: %@, spotlightDomainIdentifier: %@, spotlightBundleIdentifier: %@, dateSent: %@, cccManufacturer: %@, cccBrand: %@, supportedTransports: %@, sourceLanguage: %@, messageIdentifier: %@"
+ "BMGeneratedImageFailureReason with timestamp: %@, identifier: %@, userInterfaceLanguage: %@, userSetRegionFormat: %@, reason: %@, feature: %@, userPrompt: %@, rewrittenPrompt: %@, safetyCategory: %@, blocklistCategory: %@, blockingSafetyModel: %@, failureReason: %@"
+ "BMSafariSearchEngine with searchEngineIdentifier: %@"
+ "CustomWords"
+ "Desecration"
+ "Drugs"
+ "E701EAE3-5E66-458A-84C1-A611E4B3C2E3"
+ "ErrorUnableToSignInWithUserName"
+ "ExternalGeneratorNetworkFailure"
+ "ExternalGeneratorRateLimited"
+ "Harassment"
+ "Hate"
+ "IdentityEditing"
+ "MapsAndFlags"
+ "Minor"
+ "ModelsDownloading"
+ "MultimodalGuardrail"
+ "NOT ALL {bundleID, parentBundleID, extensionHostID} IN $installed"
+ "Offensive"
+ "PCCNoNodesAvailable"
+ "Photorealism"
+ "PixelGuardrail"
+ "PublicFigure"
+ "Racy"
+ "Safari.SearchEngine"
+ "SearchEngine"
+ "SelfHarm"
+ "Suggestive"
+ "Terrorism"
+ "TextGuardrail"
+ "Toxic"
+ "Unilog.SafariFeature."
+ "ViolenceAndGore"
+ "blockingSafetyModel"
+ "blocklistCategory"
+ "recoversFromFutureDatedEvents"
+ "rewrittenPrompt"
+ "safetyCategory"
+ "searchEngineIdentifier"
+ "setRecoversFromFutureDatedEvents:"
+ "transitionReason"
+ "userPrompt"
- "!\""
- "2A547182-AF14-4DCE-BF23-C42E38DBEC9B"
- "BMAppInFocus with launchReason: %@, type: %@, starting: %@, absoluteTimestamp: %@, bundleID: %@, parentBundleID: %@, extensionHostID: %@, shortVersionString: %@, exactVersionString: %@, dyldPlatform: %@, isNativeArchitecture: %@, displayType: %@"
- "BMCarKeyProvisioningData with ownerPairingUrl: %@, carBrand: %@, alreadyProvisioned: %@, carModel: %@, carIdentifier: %@, pairingCode: %@, userIdentifier: %@, provisioningCodeExpiration: %@, spotlightUniqueIdentifier: %@, spotlightDomainIdentifier: %@, spotlightBundleIdentifier: %@, dateSent: %@, cccManufacturer: %@, cccBrand: %@, supportedTransports: %@, sourceLanguage: %@"
- "BMGeneratedImageFailureReason with timestamp: %@, identifier: %@, userInterfaceLanguage: %@, userSetRegionFormat: %@, reason: %@, feature: %@"
- "BMSiriHomeHistory with interaction: %@, entities: %@"
- "HomeHistory"
- "Siri.Remembers.HomeHistory"
```
