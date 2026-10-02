## UserNotificationsUIKit

> `/System/Library/AccessibilityBundles/UserNotificationsUIKit.axbundle/UserNotificationsUIKit`

```diff

-3048.0.0.0.0
-  __TEXT.__text: 0xe0e8
+3050.3.1.0.0
+  __TEXT.__text: 0xe0a0
   __TEXT.__objc_methlist: 0x1354
   __TEXT.__const: 0x38
-  __TEXT.__gcc_except_tab: 0x288
-  __TEXT.__cstring: 0x2916
-  __TEXT.__oslogstring: 0xb9
+  __TEXT.__gcc_except_tab: 0x274
+  __TEXT.__cstring: 0x2919
+  __TEXT.__oslogstring: 0xfd
   __TEXT.__unwind_info: 0x5d8
   __TEXT.__objc_stubs: 0x0
   __TEXT.__auth_stubs: 0x0

   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__objc_selrefs: 0x8b0
   __DATA_CONST.__objc_superrefs: 0xc0
-  __DATA_CONST.__got: 0x170
+  __DATA_CONST.__got: 0x168
   __AUTH_CONST.__const: 0x2e0
   __AUTH_CONST.__cfstring: 0x2ee0
   __AUTH_CONST.__objc_const: 0x2b00

   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libobjc.A.dylib
   Functions: 423
-  Symbols:   1012
-  CStrings:  415
+  Symbols:   1010
+  CStrings:  416
 
Symbols:
+ -[NCNotificationListCellAccessibility _axNotificationContentLabel]
+ ___57-[NCNotificationListCellAccessibility accessibilityLabel]_block_invoke
- -[NCNotificationListCellAccessibility _accessibilityOpenAction]
- GCC_except_table192
- _OBJC_CLASS_$_UIControl
- ___63-[NCNotificationListCellAccessibility _accessibilityOpenAction]_block_invoke
Functions:
~ +[NCNotificationListCellAccessibility _accessibilityPerformValidations:] : 1388 -> 1412
~ -[NCNotificationListCellAccessibility accessibilityActivate] : 556 -> 588
~ ___60-[NCNotificationListCellAccessibility accessibilityActivate]_block_invoke_2 : 16 -> 12
~ -[NCNotificationListCellAccessibility accessibilityLabel] : 988 -> 344
~ -[NCNotificationListCellAccessibility accessibilityIdentifier] -> ___57-[NCNotificationListCellAccessibility accessibilityLabel]_block_invoke : 120 -> 8
~ -[NCNotificationListCellAccessibility _accessibilityOpenAction] -> -[NCNotificationListCellAccessibility _axNotificationContentLabel] : 300 -> 988
~ ___63-[NCNotificationListCellAccessibility _accessibilityOpenAction]_block_invoke -> -[NCNotificationListCellAccessibility accessibilityIdentifier] : 80 -> 120
~ -[NCToggleControlAccessibility _axPerformPreviewInteractionAction] : 204 -> 108
CStrings:
+ "Notification cell label empty on read; forcing static content setup"
+ "_staticContentProviderLoadingIfNecessary"
- "defaultActionForNotificationListCell:"
```
