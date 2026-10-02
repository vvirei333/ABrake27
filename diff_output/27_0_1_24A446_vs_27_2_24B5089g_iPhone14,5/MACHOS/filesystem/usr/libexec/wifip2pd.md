## wifip2pd

> `/usr/libexec/wifip2pd`

### Sections with Same Size but Changed Content

- `__TEXT.__objc_methlist`
- `__TEXT.__swift5_entry`
- `__TEXT.__swift5_types`
- `__TEXT.__swift5_builtin`
- `__TEXT.__swift5_assocty`
- `__TEXT.__swift5_proto`
- `__TEXT.__swift5_protos`
- `__TEXT.__objc_methname`
- `__TEXT.__swift5_mpenum`
- `__DATA_CONST.__cfstring`
- `__DATA_CONST.__objc_classlist`
- `__DATA_CONST.__objc_protolist`
- `__DATA_CONST.__objc_protorefs`
- `__DATA_CONST.__got`
- `__DATA_CONST.__auth_ptr`
- `__DATA.__objc_selrefs`
- `__DATA.__objc_data`

```diff

-885.85.4.1.0
-  __TEXT.__text: 0x5e52f8
-  __TEXT.__auth_stubs: 0x5240
+887.7.0.0.0
+  __TEXT.__text: 0x5e6aa4
+  __TEXT.__auth_stubs: 0x51c0
   __TEXT.__objc_stubs: 0x4720
   __TEXT.__objc_methlist: 0x1bf4
-  __TEXT.__const: 0x404b0
-  __TEXT.__swift5_typeref: 0xd367
+  __TEXT.__const: 0x40500
+  __TEXT.__swift5_typeref: 0xd379
   __TEXT.__swift5_entry: 0x8
-  __TEXT.__cstring: 0xfa28
-  __TEXT.__oslogstring: 0x226bc
-  __TEXT.__constg_swiftt: 0x103f4
-  __TEXT.__swift5_fieldmd: 0x169d8
+  __TEXT.__cstring: 0xfa0a
+  __TEXT.__oslogstring: 0x227ec
+  __TEXT.__constg_swiftt: 0x1041c
+  __TEXT.__swift5_fieldmd: 0x169e4
   __TEXT.__swift5_types: 0x12e0
   __TEXT.__swift5_builtin: 0x1748
-  __TEXT.__swift5_reflstr: 0x14bd9
+  __TEXT.__swift5_reflstr: 0x14bc9
   __TEXT.__swift5_assocty: 0x2d78
   __TEXT.__swift5_proto: 0x3074
   __TEXT.__objc_classname: 0x10f7
   __TEXT.__objc_methtype: 0x2347
   __TEXT.__swift5_protos: 0x108
-  __TEXT.__swift5_capture: 0x7fc8
+  __TEXT.__swift5_capture: 0x804c
   __TEXT.__objc_methname: 0xa305
   __TEXT.__swift5_mpenum: 0x1a8
-  __TEXT.__swift_as_entry: 0x204
-  __TEXT.__swift_as_ret: 0x168
-  __TEXT.__swift_as_cont: 0x5f4
-  __TEXT.__info_plist: 0x5b4
-  __TEXT.__unwind_info: 0x107e8
-  __TEXT.__eh_frame: 0x1e664
-  __DATA_CONST.__const: 0x39f28
+  __TEXT.__swift_as_entry: 0x20c
+  __TEXT.__swift_as_ret: 0x174
+  __TEXT.__swift_as_cont: 0x608
+  __TEXT.__info_plist: 0x5ae
+  __TEXT.__unwind_info: 0x10858
+  __TEXT.__eh_frame: 0x1e74c
+  __DATA_CONST.__const: 0x3a018
   __DATA_CONST.__cfstring: 0x20
   __DATA_CONST.__objc_classlist: 0x1e0
   __DATA_CONST.__objc_protolist: 0x2f0
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__objc_protorefs: 0x178
-  __DATA_CONST.__auth_got: 0x2928
+  __DATA_CONST.__auth_got: 0x28e8
   __DATA_CONST.__got: 0x1030
   __DATA_CONST.__auth_ptr: 0x7950
-  __DATA.__objc_const: 0xac90
+  __DATA.__objc_const: 0xacb0
   __DATA.__objc_selrefs: 0x16e0
   __DATA.__objc_data: 0x1920
-  __DATA.__data: 0x15068
+  __DATA.__data: 0x15088
   __DATA.__bss: 0x5e2d0
   __DATA.__common: 0xb88
   - /System/Library/Frameworks/Combine.framework/Combine

   - /usr/lib/swift/libswift_DarwinFoundation1.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 24922
-  Symbols:   2319
-  CStrings:  5523
+  Functions: 25001
+  Symbols:   2309
+  CStrings:  5530
 
Symbols:
+ _$s7Network10NWEndpointO20customMetadataForKey3key10Foundation4DataVSgSS_tF
+ _$s7Network10NWEndpointO23setCustomMetadataForKey3key8metadataySS_10Foundation4DataVSgtF
- _$s7Network10NWEndpointO9txtRecordAA11NWTXTRecordVSgvg
- _$s7Network11NWTXTRecordV5EntryO4data10Foundation4DataVSgvg
- _$s7Network11NWTXTRecordV5EntryOMa
- _$s7Network11NWTXTRecordV5EntryOMn
- _$s7Network11NWTXTRecordV8getEntry3forAC0D0OSgSS_tF
- _$s7Network11NWTXTRecordVMa
- _$s7Network11NWTXTRecordVMn
- _nw_endpoint_copy_txt_record
- _nw_endpoint_set_txt_record
- _nw_txt_record_create_dictionary
- _nw_txt_record_remove_key
- _nw_txt_record_set_key
CStrings:
+ "%s APPLE80211_M_DRIVER_AVAILABLE available: %d reason: %d"
+ "%s APPLE80211_M_DRIVER_AVAILABLE with powerOn false"
+ "5b4900baeac11f144b8c4cb9be7ef1c0108b627ed27e8e9251c819fbf83c9169"
+ "75c46db78806764c088fff258f8506514e47b881a11bde6428ca968cd4149466"
+ "AWDL did wake"
+ "AWDL interface was re-created (system awake: %{bool}d)"
+ "AWDL will sleep"
+ "Infra did wake"
+ "Infra will sleep"
+ "NAN interface was re-created (system awake: %{bool}d)"
+ "Stamping system wake time during interface recovery (missed didWake)"
+ "WiFiP2P-887.7 Sep 14 2026 21:09:03"
+ "dynamicSDB clearing switch on termination (%s)"
+ "{\n  \"WiFiAwareAllowedBundleIds\": {\n    \"1a47b75f277f751a90f646ac29a803c217d2adead75395170b1560b17f7f2036\": {\n      \"WiFiAwareServices\": {\n        \"16d312e15f9fc0f0d3afe123643ef87a7d5931c9c0a20fad4d4b7e5437fbe3b1\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"fc5dffdf4976ca511c94308b7127e24a3438fc1601ee5a14b280f5be406fab85\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"80453f55f73ca85d53129654ee46594da65c36de5e29bbd25ab2c92f10287320\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"faafbf458bc7ce338116b6f8899d295f14a8a5fa3f6be35ddbf46de1b6c7cb29\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"5472b0142bcd5459e6c1aa43da4a2dc40dfe1322ff8347ed588fd00cc2635b61\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"f9cc62017314cf68099bf41a065acb2382e3736c1dd02f732cda2ce4f4409acc\": {\n          \"Subscribable\": {},\n          \"Publishable\": {}\n        },\n        \"b78ea1b8befc41791c5ac79de4f86ffb6a7ca292594fe828658fba6f7d536f98\": {\n          \"Subscribable\": {},\n          \"Publishable\": {}\n        },\n        \"1eba025099c4738479a39c0b86228083c99998abef4b9e3c0057acc8b5439af7\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"0c4219ae3b688399b21badfad557e634d93b3a1ca3c97309ab484515c9acc63f\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"bcbc3bb79d13c7035f4714f577c921acb79b9964e50605270f4326aca7e5be75\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        }\n      }\n    },\n    \"b4428f06eb56af96137ab8be825cf39eb14da470cfb16288cecbf6150bf1407f\": {\n      \"WiFiAwareServices\": {\n        \"e382035d0948265f6063e30982a28dd46bfcf49db94616eb2ded6d4631ed8526\": {\n          \"Publishable\": {}\n        }\n      }\n    },\n    \"b8b57902f7a1837694d1f8dcbe2a78979531177d2d5276888bcb238147a6b199\": {\n      \"WiFiAwareServices\": {\n        \"5f37407f83ebfcc7812cdef70bfaf77d12f8936cf580fdbaa52466796022cf55\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        }\n      }\n    },\n    \"812fca7104a89523c4eb10ac1787f0affcbec722a79c2533e2e111ff444f687e\": {\n      \"WiFiAwareServices\": {\n        \"a9137806d08cc42ad90b18033f6f56d4991f6191e87579328cfa394a3fccecd4\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"28391d0d07d1a526ae2e2e787b51f48b6e1a2eb9428aa770c5c4defce2db08bc\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        }\n      }\n    },\n    \"bd7aab65102c85c905606317c5aaa42032479913443be77b49c4408a7b71317e\": {\n      \"WiFiAwareServices\": {\n        \"e382035d0948265f6063e30982a28dd46bfcf49db94616eb2ded6d4631ed8526\": {\n          \"Subscribable\": {}\n        }\n      }\n    },\n    \"1bf4098ea50dc97eafd59b6fe20dabf62f66df148ce06a1c05a718f322eeabbc\": {\n      \"WiFiAwareServices\": {\n        \"5f37407f83ebfcc7812cdef70bfaf77d12f8936cf580fdbaa52466796022cf55\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        }\n      }\n    }\n  }\n}"
+ "{\n  \"fadc606c11f2d062cda42e72e84225f555d038ac8d042e0b02d16748e297da12\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"iOS\"\n      ],\n      \"ClientID\": [\n        \"ASKAdvertiser\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    }\n  },\n  \"04b665517fd674e95bb7b58e9438bb6f9db179d3fb4de8666644903ba60889e7\": {\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    },\n    \"NoConsoleUser\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    }\n  },\n  \"9f32725dbbe8da0bf16b9a21ddec5afcfa6207e42aad25b78ea050c6c99af03b\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"macOS\"\n      ],\n      \"ClientID\": [\n        \"Airplay\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"macOS\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"macOS\"\n      ]\n    }\n  },\n  \"856d38aa09a33a40e7c5d47501ece74b3c7bc7ee98c3b1f16d185cf0dc55644f\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"iOS\"\n      ],\n      \"ClientID\": [\n        \"ASK\",\n        \"DDUI\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    }\n  },\n  \"20fce584eb3230ebc1335d9d223c6d7de8e79053a60e5df91d3dda591d653643\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"tvOS\"\n      ],\n      \"ClientID\": [\n        \"Airplay\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"tvOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Timeout\": 120,\n      \"Platforms\": [\n        \"iOS\",\n        \"tvOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"tvOS\"\n      ]\n    }\n  },\n  \"a65b78699f41e1d1cfcb7d2083f0144b6e110aea034fd30324d254dbacb4ee30\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"iOS\"\n      ],\n      \"ClientID\": [\n        \"MARS\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    }\n  },\n  \"c4926ed9d1e75634456ae19a9669621ae000460e11db493e9b3fac1219a4dc01\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\",\n        \"tvOS\",\n        \"visionOS\"\n      ],\n      \"ClientID\": [\n        \"CLI\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\",\n        \"tvOS\",\n        \"visionOS\",\n        \"watchOS\"\n      ]\n    },\n    \"TDS\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\",\n        \"tvOS\",\n        \"visionOS\",\n        \"watchOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\",\n        \"tvOS\",\n        \"visionOS\",\n        \"watchOS\"\n      ]\n    }\n  },\n  \"66dd2832d63189cd266b3b1564a49953b9c68f53915569d40091811da6142045\": {\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"visionOS\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"visionOS\"\n      ]\n    }\n  },\n  \"7efdc3bd90656ff745c875425aab32eafa7753ba44b1eec94ccc62a8d1ddebb7\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ],\n      \"ClientID\": [\n        \"Airplay\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ],\n      \"Timeout\": 120\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ]\n    }\n  },\n  \"61fc9852bf900cfc105f92207859187533c2168411c2f0664958785df0d24a09\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ],\n      \"ClientID\": [\n        \"Terminus\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ]\n    }\n  },\n  \"8d94243ca151866b7d27dbfbfe1095e7d4b5a0fdc2aa64b1eb8cdd7d776234cd\": {\n    \"Publish\": {\n      \"Platforms\": [\n        \"macOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"macOS\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"macOS\"\n      ]\n    }\n  },\n  \"e2a86308de6ab986f8e7fb974589ca5d0f1e3b0cc714e668f07e1405377374d1\": {\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    },\n    \"NoConsoleUser\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    }\n  },\n  \"400eb662412a790c348c51310c635049029295d891a98ca1761356d3e105865e\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"iOS\"\n      ],\n      \"ClientID\": [\n        \"Migration\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    }\n  }\n}"
+ "ℹ️ No %s configured for %s policy: %s"
- "3bdd21e5283593aefb6605925afdc83dfd5b1b86494fe5595b25629f16bf114b"
- "Driver interface was re-created"
- "RSSI: %s"
- "WiFiP2P-885.85.4.1 Sep 18 2026 22:09:14"
- "a2d35bf8101ed72be57b26e20beada1f77f72fac75b8acf8fed3e6a78fe7db1d"
- "nan_event: %s APPLE80211_M_DRIVER_AVAILABLE with powerOn false %d"
- "setTXTRecordEntry failed: NWEndpoint(nw) returned nil, endpoint may be in inconsistent state"
- "{\n  \"6c3c55d5c3cbc7beef912af640ec26c0ff0e7ca1537b2884a2d36ae9f7d5ad64\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"iOS\"\n      ],\n      \"ClientID\": [\n        \"ASKAdvertiser\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    }\n  },\n  \"23d79b2b14c5d7c164ab376c55dc74781fcdaa6f18adcac259491f5ff47726d1\": {\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    },\n    \"NoConsoleUser\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    }\n  },\n  \"8f2c214eb2c91b8e85f7944bb91f2e2273f6fc53b477f8a82385640c2be65a9c\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"macOS\"\n      ],\n      \"ClientID\": [\n        \"Airplay\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"macOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"macOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"macOS\"\n      ]\n    }\n  },\n  \"79179b50a1708698ce727049487d30e97b648d1e5147bcc6bb1449b5f663b1b4\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"iOS\"\n      ],\n      \"ClientID\": [\n        \"ASK\",\n        \"DDUI\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    }\n  },\n  \"b2ddb00c18aaa1576a154184e0cae512c383a57f4e7188e624f3d067c68f81dd\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"tvOS\"\n      ],\n      \"ClientID\": [\n        \"Airplay\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"tvOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"tvOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"tvOS\"\n      ]\n    }\n  },\n  \"c991fce9a203487b967289177e9f414e4f455617c03aa844def3d0e047dc14bb\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"iOS\"\n      ],\n      \"ClientID\": [\n        \"MARS\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    }\n  },\n  \"8f9547ecc9cd27e39443a29bc9ba027a93d357e4a2fb12ece1642ff85b7cae8f\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\",\n        \"tvOS\",\n        \"visionOS\"\n      ],\n      \"ClientID\": [\n        \"CLI\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\",\n        \"tvOS\",\n        \"visionOS\",\n        \"watchOS\"\n      ]\n    },\n    \"TDS\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\",\n        \"tvOS\",\n        \"visionOS\",\n        \"watchOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\",\n        \"tvOS\",\n        \"visionOS\",\n        \"watchOS\"\n      ]\n    }\n  },\n  \"21e9279e206ccce2c5235a1ab2ad88ef45c662913af19e657f1c312869307a2d\": {\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"visionOS\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"visionOS\"\n      ]\n    }\n  },\n  \"62187df34191d9b44b8630cf3dd2d0318823a8a672628d337c880edeebef5233\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ],\n      \"ClientID\": [\n        \"Airplay\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ]\n    }\n  },\n  \"cd7db2fc26f9d1f825b3763a131435bf4d2056f28e177d9ddc9443c3a258f15e\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ],\n      \"ClientID\": [\n        \"Terminus\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"tvOS\"\n      ]\n    }\n  },\n  \"56ec178ffb9fe3da83b332e17bb5df97a99c3cb1e586afc6b0e853a11523324b\": {\n    \"Publish\": {\n      \"Platforms\": [\n        \"macOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"macOS\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"macOS\"\n      ]\n    }\n  },\n  \"a07a62568168d811a9f74316d922f715dfa2ecfc9fdf0b4c0ff3d20c26940cef\": {\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    },\n    \"NoConsoleUser\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\",\n        \"macOS\"\n      ]\n    }\n  },\n  \"47179cf9dc95ccaf274c6e5a9bf70e23d37d411e52c9150b0f5950f9cc57bb8c\": {\n    \"Pairing\": {\n      \"Platforms\": [\n        \"iOS\"\n      ],\n      \"ClientID\": [\n        \"Migration\"\n      ]\n    },\n    \"Datapath\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Publish\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    },\n    \"Subscribe\": {\n      \"Platforms\": [\n        \"iOS\"\n      ]\n    }\n  }\n}"
- "{\n  \"WiFiAwareAllowedBundleIds\": {\n    \"79eb1900e9034bfdca1042eaa7861c54bff4f2b3e1fae032d0969ff9052b3852\": {\n      \"WiFiAwareServices\": {\n        \"19fbbaf83462bd64ac78d3eabdff5f0a19bc515b789bc8d1a527e07e2a34c32a\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"3a14143bd72674547e1b3bb43632a9836056dc8a0d57c0587356f00a96e25b4f\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"a8378af38cec6de49457be39b57cb31abd034c882cd906f576b51ca32e58628a\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"cb23e818e52c370b7b149d672708a3f10379a5d8e1baa2686d6a84796a6e3608\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"6c68fed2056d97f3273bf8b7b1fd9ae7ed0f3af8fb507446d60ce003581bf5a3\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"188002802b007094ad3e15c13e6742101aafa3ea8feba49f2d18bad3ab390c0c\": {\n          \"Subscribable\": {},\n          \"Publishable\": {}\n        },\n        \"7ad7cf1f9066fdb09f73da2c1f8c32662e2670a2f6e83ca9551560cdd1c81348\": {\n          \"Subscribable\": {},\n          \"Publishable\": {}\n        },\n        \"0b13651e0aea4aa69ce89350378253bb603314eadbd35956a3a620949cebcaf3\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"ac4bc5449689c62096fca6f165611682e9b3b6972fe15902db3b6c4079abbe15\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"e92d8b213635e2f7162460279b196e82450ac6fdd1538619c2f222e235ea5756\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        }\n      }\n    },\n    \"155f716be8a708513031f1364c4d8273727c1adb9ddf830948ac58522624680f\": {\n      \"WiFiAwareServices\": {\n        \"381c7d43f9a070771237c5abd2f082963747c262beaef9987e11b37e35c5be4f\": {\n          \"Publishable\": {}\n        }\n      }\n    },\n    \"f36dc0f71e5615bf4abf2a29cd20408d3d5bb0a72fc47ca9f5503c79d69aa3d9\": {\n      \"WiFiAwareServices\": {\n        \"3ea312a1fe319a22cff8b4846d8b5f83403090df00f17da1dfcaa8da5597838a\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        }\n      }\n    },\n    \"210048c6fa7af27f73831ea6e1e5ebd3fc5c5bb6a9c8d2eca3a4beb5a2b108e2\": {\n      \"WiFiAwareServices\": {\n        \"f20ff891907cfcfe3505a12c7600d6ad6641cd8ab28dca7fd21b51326cd614ac\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        },\n        \"bf678a91199689052b08d303c699a42b27c8c1e55894edfaf8536a26ba1d4ab6\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        }\n      }\n    },\n    \"eb8cd1c93f30b2c637b979f0d2a0fb0dd2e17d6d1b4c048c466a9fcd03eaa6c9\": {\n      \"WiFiAwareServices\": {\n        \"381c7d43f9a070771237c5abd2f082963747c262beaef9987e11b37e35c5be4f\": {\n          \"Subscribable\": {}\n        }\n      }\n    },\n    \"d65289bbf4d109eda2319a62894afc6aa4c2f3a55a8cd077f8e1e33f4dc7192c\": {\n      \"WiFiAwareServices\": {\n        \"3ea312a1fe319a22cff8b4846d8b5f83403090df00f17da1dfcaa8da5597838a\": {\n          \"Publishable\": {},\n          \"Subscribable\": {}\n        }\n      }\n    }\n  }\n}"
```
