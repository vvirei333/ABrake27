## Diagnostic-8264

> `/Applications/DiagnosticsService.app/PlugIns/Diagnostic-8264.appex/Diagnostic-8264`

### Sections with Same Size but Changed Content

- `__TEXT.__objc_methlist`
- `__TEXT.__const`
- `__TEXT.__unwind_info`

```diff

-1307.2.4.0.0
-  __TEXT.__text: 0x4eac
+1307.40.51.0.0
+  __TEXT.__text: 0x4eb4
   __TEXT.__auth_stubs: 0x380
   __TEXT.__objc_stubs: 0x10a0
   __TEXT.__objc_methlist: 0x38c

   - /usr/lib/libamsupport.dylib
   - /usr/lib/libauthinstall.dylib
   - /usr/lib/libobjc.A.dylib
-  Functions: 70
+  Functions: 71
   Symbols:   111
   CStrings:  389
 
Functions:
~ sub_100003710 : 2036 -> 1980
+ sub_100005da0
```
