## PrototypeToolsUI

> `/System/Library/PrivateFrameworks/PrototypeToolsUI.framework/PrototypeToolsUI`

```diff

-164.0.0.0.0
-  __TEXT.__text: 0x93fc
-  __TEXT.__objc_methlist: 0x1250
+165.1.2.0.0
+  __TEXT.__text: 0xa620
+  __TEXT.__objc_methlist: 0x13a0
   __TEXT.__const: 0xa8
   __TEXT.__gcc_except_tab: 0x68
-  __TEXT.__cstring: 0x32a
+  __TEXT.__cstring: 0x33c
   __TEXT.__ustring: 0x28e
-  __TEXT.__unwind_info: 0x3e8
+  __TEXT.__unwind_info: 0x430
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0
   __TEXT.__objc_classname: 0x0

   __DATA_CONST.__const: 0x460
   __DATA_CONST.__objc_classlist: 0xa8
   __DATA_CONST.__objc_catlist: 0x40
-  __DATA_CONST.__objc_protolist: 0x70
+  __DATA_CONST.__objc_protolist: 0x78
   __DATA_CONST.__objc_imageinfo: 0x8
-  __DATA_CONST.__objc_selrefs: 0xf08
+  __DATA_CONST.__objc_selrefs: 0x1038
   __DATA_CONST.__objc_protorefs: 0x10
   __DATA_CONST.__objc_superrefs: 0x90
-  __DATA_CONST.__got: 0x1f0
+  __DATA_CONST.__got: 0x220
   __AUTH_CONST.__const: 0x80
-  __AUTH_CONST.__cfstring: 0x320
-  __AUTH_CONST.__objc_const: 0x2bd0
+  __AUTH_CONST.__cfstring: 0x340
+  __AUTH_CONST.__objc_const: 0x2cc8
   __AUTH_CONST.__objc_intobj: 0x30
   __AUTH_CONST.__auth_got: 0x0
-  __DATA.__objc_ivar: 0xb0
-  __DATA.__data: 0x540
+  __DATA.__objc_ivar: 0xc8
+  __DATA.__data: 0x5a0
   __DATA.__bss: 0x48
   __DATA_DIRTY.__objc_data: 0x690
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation

   - /System/Library/PrivateFrameworks/PrototypeTools.framework/PrototypeTools
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 266
-  Symbols:   714
-  CStrings:  44
+  Functions: 291
+  Symbols:   761
+  CStrings:  46
 
Symbols:
+ +[PTUIRowTableViewCell _infoHeightForText:font:width:]
+ +[PTUIRowTableViewCell infoExpandedHeightForRow:width:]
+ +[PTUIRowTableViewCell infoTextFont]
+ +[PTUIRowTableViewCell rowTitleFont]
+ +[PTUISliderRowTableViewCell infoExpandedHeightForRow:width:]
+ -[PTUIButtonRowTableViewCell canExpandInfo]
+ -[PTUIChoiceRowTableViewCell canExpandInfo]
+ -[PTUIDrillDownRowTableViewCell canExpandInfo]
+ -[PTUIModuleController rowTableViewCellDidToggleInfo:]
+ -[PTUIRowTableViewCell _clampToTopBand:band:]
+ -[PTUIRowTableViewCell _infoChevronTapped:]
+ -[PTUIRowTableViewCell _infoDoubleTapped:]
+ -[PTUIRowTableViewCell _toggleInfo]
+ -[PTUIRowTableViewCell canExpandInfo]
+ -[PTUIRowTableViewCell delegate]
+ -[PTUIRowTableViewCell infoBar]
+ -[PTUIRowTableViewCell infoLabel]
+ -[PTUIRowTableViewCell initWithStyle:reuseIdentifier:]
+ -[PTUIRowTableViewCell layoutSubviews]
+ -[PTUIRowTableViewCell managesOwnLayout]
+ -[PTUIRowTableViewCell setDelegate:]
+ -[PTUIRowTableViewCell setInfoExpanded:]
+ -[PTUISliderRowTableViewCell canExpandInfo]
+ -[PTUISliderRowTableViewCell layoutSubviews]
+ -[PTUISliderRowTableViewCell managesOwnLayout]
+ _CGRectGetHeight
+ _CGRectGetMaxY
+ _CGRectGetWidth
+ _NSFontAttributeName
+ _OBJC_CLASS_$_NSDictionary
+ _OBJC_CLASS_$_NSHashTable
+ _OBJC_CLASS_$_UIImage
+ _OBJC_CLASS_$_UIImageSymbolConfiguration
+ _OBJC_CLASS_$_UIImageView
+ _OBJC_IVAR_$_PTUIModuleController._expandedRows
+ _OBJC_IVAR_$_PTUIRowTableViewCell._delegate
+ _OBJC_IVAR_$_PTUIRowTableViewCell._infoBar
+ _OBJC_IVAR_$_PTUIRowTableViewCell._infoChevron
+ _OBJC_IVAR_$_PTUIRowTableViewCell._infoLabel
+ _OBJC_IVAR_$_PTUISliderRowTableViewCell._sliderStack
+ __OBJC_$_CLASS_METHODS_PTUISliderRowTableViewCell
+ __OBJC_$_PROTOCOL_INSTANCE_METHODS_PTUIRowTableViewCellDelegate
+ __OBJC_$_PROTOCOL_METHOD_TYPES_PTUIRowTableViewCellDelegate
+ __OBJC_$_PROTOCOL_REFS_PTUIRowTableViewCellDelegate
+ __OBJC_LABEL_PROTOCOL_$_PTUIRowTableViewCellDelegate
+ __OBJC_PROTOCOL_$_PTUIRowTableViewCellDelegate
+ _objc_opt_respondsToSelector
CStrings:
+ "A"
+ "chevron.right"
```
