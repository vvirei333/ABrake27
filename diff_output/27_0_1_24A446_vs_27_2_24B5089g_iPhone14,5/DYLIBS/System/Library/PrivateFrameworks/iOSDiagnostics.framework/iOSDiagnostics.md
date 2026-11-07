## iOSDiagnostics

> `/System/Library/PrivateFrameworks/iOSDiagnostics.framework/iOSDiagnostics`

```diff

-1374.2.2.0.0
-  __TEXT.__text: 0x58d8
-  __TEXT.__objc_methlist: 0xa44
+1374.40.40.0.0
+  __TEXT.__text: 0x64c0
+  __TEXT.__objc_methlist: 0xc4c
   __TEXT.__const: 0x90
-  __TEXT.__cstring: 0xb11
-  __TEXT.__oslogstring: 0x4f5
+  __TEXT.__cstring: 0xdd4
+  __TEXT.__oslogstring: 0x65c
   __TEXT.__gcc_except_tab: 0xd4
-  __TEXT.__unwind_info: 0x228
+  __TEXT.__unwind_info: 0x260
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0
   __TEXT.__objc_methname: 0x0
   __TEXT.__objc_methtype: 0x0
-  __DATA_CONST.__const: 0x3a8
-  __DATA_CONST.__objc_classlist: 0x48
-  __DATA_CONST.__objc_protolist: 0x68
+  __DATA_CONST.__const: 0x3c8
+  __DATA_CONST.__objc_classlist: 0x58
+  __DATA_CONST.__objc_protolist: 0x78
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0x740
+  __DATA_CONST.__objc_selrefs: 0x878
   __DATA_CONST.__objc_protorefs: 0x30
   __DATA_CONST.__objc_superrefs: 0x28
-  __DATA_CONST.__objc_arraydata: 0x8
-  __DATA_CONST.__got: 0x148
+  __DATA_CONST.__objc_arraydata: 0x18
+  __DATA_CONST.__got: 0x170
   __AUTH_CONST.__const: 0xa0
-  __AUTH_CONST.__cfstring: 0x5a0
-  __AUTH_CONST.__objc_const: 0x1c08
+  __AUTH_CONST.__cfstring: 0x680
+  __AUTH_CONST.__objc_const: 0x2298
   __AUTH_CONST.__objc_arrayobj: 0x18
+  __AUTH_CONST.__objc_dictobj: 0x28
   __AUTH_CONST.__auth_got: 0x0
-  __AUTH.__objc_data: 0x2d0
-  __DATA.__objc_ivar: 0x80
-  __DATA.__data: 0x4e0
+  __AUTH.__objc_data: 0x370
+  __DATA.__objc_ivar: 0x90
+  __DATA.__data: 0x5a0
   __DATA.__bss: 0x10
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
   - /System/Library/Frameworks/Foundation.framework/Foundation

   - /System/Library/PrivateFrameworks/RunningBoardServices.framework/RunningBoardServices
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 195
-  Symbols:   494
-  CStrings:  95
+  Functions: 218
+  Symbols:   547
+  CStrings:  114
 
Symbols:
+ -[DAAccessorySceneDelegate .cxx_destruct]
+ -[DAAccessorySceneDelegate hostingController]
+ -[DAAccessorySceneDelegate scene:willConnectToSession:options:]
+ -[DAAccessorySceneDelegate setHostingController:]
+ -[DAAccessorySceneDelegate setWindow:]
+ -[DAAccessorySceneDelegate window]
+ -[DADiagnosticsCompanionSceneSpecification userActivity]
+ -[DADiagnosticsRemoteViewController accessoryRegistration]
+ -[DADiagnosticsRemoteViewController serviceSupportedInterfaceOrientations]
+ -[DADiagnosticsRemoteViewController setAccessoryRegistration:]
+ -[DADiagnosticsRemoteViewController setServiceSupportedInterfaceOrientations:]
+ -[DADiagnosticsRemoteViewController supportedInterfaceOrientations]
+ -[DADiagnosticsRemoteViewController viewServiceDidDismissAccessoryContent]
+ -[DADiagnosticsRemoteViewController viewServiceDidRequestAccessoryContent]
+ -[DADiagnosticsRemoteViewController viewServiceDidSetSupportedInterfaceOrientations:]
+ _OBJC_CLASS_$_DAAccessorySceneDelegate
+ _OBJC_CLASS_$_DADiagnosticsCompanionSceneSpecification
+ _OBJC_CLASS_$_NSConstantDictionary
+ _OBJC_CLASS_$_UIResponder
+ _OBJC_CLASS_$_UISceneAccessory
+ _OBJC_CLASS_$_UISceneConfiguration
+ _OBJC_CLASS_$_UIWindow
+ _OBJC_IVAR_$_DAAccessorySceneDelegate._hostingController
+ _OBJC_IVAR_$_DAAccessorySceneDelegate._window
+ _OBJC_IVAR_$_DADiagnosticsRemoteViewController._accessoryRegistration
+ _OBJC_IVAR_$_DADiagnosticsRemoteViewController._serviceSupportedInterfaceOrientations
+ _OBJC_METACLASS_$_DAAccessorySceneDelegate
+ _OBJC_METACLASS_$_DADiagnosticsCompanionSceneSpecification
+ _OBJC_METACLASS_$_UIResponder
+ __OBJC_$_INSTANCE_METHODS_DAAccessorySceneDelegate
+ __OBJC_$_INSTANCE_METHODS_DADiagnosticsCompanionSceneSpecification
+ __OBJC_$_INSTANCE_VARIABLES_DAAccessorySceneDelegate
+ __OBJC_$_PROP_LIST_DAAccessorySceneDelegate
+ __OBJC_$_PROP_LIST_UIWindowSceneDelegate
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_OPT_DADiagnosticsRemoteViewControllerInterface
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_OPT_UISceneDelegate
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_OPT_UIWindowSceneDelegate
+ __OBJC_$_PROTOCOL_METHOD_TYPES_UISceneDelegate
+ __OBJC_$_PROTOCOL_METHOD_TYPES_UIWindowSceneDelegate
+ __OBJC_$_PROTOCOL_REFS_UISceneDelegate
+ __OBJC_$_PROTOCOL_REFS_UIWindowSceneDelegate
+ __OBJC_CLASS_PROTOCOLS_$_DAAccessorySceneDelegate
+ __OBJC_CLASS_RO_$_DAAccessorySceneDelegate
+ __OBJC_CLASS_RO_$_DADiagnosticsCompanionSceneSpecification
+ __OBJC_LABEL_PROTOCOL_$_UISceneDelegate
+ __OBJC_LABEL_PROTOCOL_$_UIWindowSceneDelegate
+ __OBJC_METACLASS_RO_$_DAAccessorySceneDelegate
+ __OBJC_METACLASS_RO_$_DADiagnosticsCompanionSceneSpecification
+ __OBJC_PROTOCOL_$_UISceneDelegate
+ __OBJC_PROTOCOL_$_UIWindowSceneDelegate
+ ___74-[DADiagnosticsRemoteViewController viewServiceDidDismissAccessoryContent]_block_invoke
+ ___74-[DADiagnosticsRemoteViewController viewServiceDidRequestAccessoryContent]_block_invoke
+ ___85-[DADiagnosticsRemoteViewController viewServiceDidSetSupportedInterfaceOrientations:]_block_invoke
CStrings:
+ "$"
+ "%s Failed to register accessory scene; the accessory surface will not appear"
+ "%s Nil hosting controller; cannot host accessory content"
+ "%s Nil process identity; cannot host accessory content"
+ "%s View service requires mask %lu but host supports %lu; keeping the host's"
+ "%s supportedInterfaceOrientations: %lu"
+ "-[DAAccessorySceneDelegate scene:willConnectToSession:options:]"
+ "-[DADiagnosticsRemoteViewController supportedInterfaceOrientations]"
+ "-[DADiagnosticsRemoteViewController viewServiceDidDismissAccessoryContent]"
+ "-[DADiagnosticsRemoteViewController viewServiceDidRequestAccessoryContent]"
+ "-[DADiagnosticsRemoteViewController viewServiceDidRequestAccessoryContent]_block_invoke"
+ "-[DADiagnosticsRemoteViewController viewServiceDidSetSupportedInterfaceOrientations:]"
+ "Accessory scene connected; hosting Diagnostics content"
+ "ServiceToHostActionType(unknown %ld)"
+ "ServiceToHostActionTypeDidDismissAccessoryContent"
+ "ServiceToHostActionTypeDidRequestAccessoryContent"
+ "ServiceToHostActionTypeDidSetSupportedInterfaceOrientations"
+ "com.apple.diagnostics.rvc.companion"
+ "companion"
+ "surface"
- "#"
```
