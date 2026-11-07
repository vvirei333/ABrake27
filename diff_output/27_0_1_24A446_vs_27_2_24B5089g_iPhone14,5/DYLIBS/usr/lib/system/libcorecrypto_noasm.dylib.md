## libcorecrypto_noasm.dylib

> `/usr/lib/system/libcorecrypto_noasm.dylib`

```diff

-2109.0.22.0.0
-  __TEXT.__text: 0x86ab0
-  __TEXT.__const: 0x20208
-  __TEXT.__cstring: 0x5940
+2109.40.18.0.0
+  __TEXT.__text: 0x870e8
+  __TEXT.__const: 0x20248
+  __TEXT.__cstring: 0x5a03
   __TEXT.__fips_hmacs: 0x20
   __TEXT.__oslogstring: 0x60
-  __TEXT.__unwind_info: 0x1c08
+  __TEXT.__unwind_info: 0x1c00
   __TEXT.__eh_frame: 0x4a8
   __TEXT.__auth_stubs: 0x0
   __DATA_CONST.__const: 0x2108
   __DATA_CONST.__got: 0x0
-  __AUTH_CONST.__const: 0x1a70
+  __AUTH_CONST.__const: 0x1b40
   __AUTH_CONST.__auth_got: 0x118
   __AUTH_CONST.__auth_ptr: 0x0
   __AUTH.__data: 0x148

   - /usr/lib/system/libsystem_platform.dylib
   - /usr/lib/system/libsystem_pthread.dylib
   - /usr/lib/system/libsystem_trace.dylib
-  Functions: 2485
-  Symbols:   2778
-  CStrings:  534
+  Functions: 2503
+  Symbols:   2789
+  CStrings:  537
 
Symbols:
+ _OUTLINED_FUNCTION_10
+ _OUTLINED_FUNCTION_11
+ _OUTLINED_FUNCTION_12
+ _OUTLINED_FUNCTION_9
+ _ccmldsa44
+ _ccmldsa44_params
+ _ccmldsa_poly_bitpack_z_g1_17
+ _ccmldsa_poly_bitpack_z_g1_19
+ _ccmldsa_poly_bitunpack_z_g1_17
+ _ccmldsa_poly_bitunpack_z_g1_19
+ _ccmldsa_poly_simplebitpack_w1_4bit
+ _ccmldsa_poly_simplebitpack_w1_6bit
+ _rej_rnd_kat_44
+ _seed_kat_44
- _ccmldsa_poly_bitpack_z
- _ccmldsa_poly_bitunpack_z
- _ccmldsa_poly_simplebitpack_w1
CStrings:
+ "FIPSPOST_USER [%llu] %s:%d: FAILED: ccmldsa_sign (rejection, ML-DSA-44): %d\n"
+ "FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch rejection sig (ML-DSA-44): %d\n"
+ "fipspost_post_mldsa_sign_rejection_kat_44"
```
