# AppleSEPUserClient — full dispatch-table analysis

kernelcache: 24A446__iPhone14,5 / kernelcache.release.iPhone14,5
module (CONFIRMED by embedded strings): **AppleSEPManager kext — AppleSEPUserClient**

## 1. The dispatch model (CORRECTED & verified)
- **ONE dispatch array**, not 19 tables. Base **0xfffffff007ec73f8**, **96 selectors**,
  stride 0x18, layout IOExternalMethodDispatch2022
  `{func(8), scalarInputCount(u32), structInputSize(u32), scalarOutputCount(u32), structOutputSize(u32)}`.
  `0xffffffff` in a size field = kIOUCVariableStructureSize.
- The earlier "table5=17 / table6=19 / table7=31 …" were sub-runs of this one array,
  split by runs of null entries (= unimplemented selectors). The "table7 base 0x7ec77d0"
  is just `&array[41]` (0x7ec77d0 - 0x7ec73f8 = 0x3d8 = 41*0x18) and is never referenced.
- Dispatcher thunk @ **0xfffffff00916a564** (see /tmp/sep_extmethod_table5.c, /tmp/sep_dispatcher.c):
      ldr   x8,[x0,#0xd8]          ; this->sepManager (null-checked)
      umull x8, w1, w8 (w8=0x18)   ; selector * 0x18
      adrp/add x9 = 0x7ec73f8      ; array base
      add   x16, x9, x8            ; &array[selector]
      cmp   w1, #0x60              ; BOUND: selector < 96
      ldr   x16,[0x7ece000+0xc68 -> +0x550] ; IOUserClient2022 generic dispatch helper
      braa  x16                    ; authenticated call
  i.e. generic `dispatchExternalMethod(selector, args, &array, 96, target)`.
- 84 selectors implemented, 12 null: 17, 37, 38, 39, 40, 72, 77, 78, 79, 80, 87, 88.

## 2. Our wrappers, resolved
- wrapper1 `0x02163730` = **selector 15** (InvalidateNonce wrapper)
- wrapper2 `0x02165a30` = **selector 68** (GenerateNonceAndSlot wrapper)
- Both tail-call the shared nonce body **0xfffffff00916a7ec** (param_3 bool selects read vs generate).
- `getOrGenerateNonce` @ **0xfffffff0091918d0** is internal (called by the nonce body; no selector).

## 3. Reliably-named selector regions (from own-body __PRETTY_FUNCTION__/strings)
(name_hint in /tmp/sep_full_table.csv is only trustworthy for [self] rows; rows that
"resolve" to setFirmwareBytes/hilo via tail-call following are NOT per-selector truth.)
- sel 1          : "this command is removed" (DispatchRemovedCommand)
- sel 6/7/8      : AppleSEPManager::setFirmwareBytes dispatchers (scalarIn=4, structIn=VAR)
- sel 18         : AppleSEPARTService
- sel 42/43      : "sep-booted" gate
- sel 44-47      : xART / EACS ("xART not supported, EACS is a nop")
- sel 48-64      : "hilo" endpoint cluster (SEP message endpoint)
- sel 69         : "test panic"
- sel 81/82      : AppleSEPUserClient::DispatchDynamicObjectOp
- sel 83/92/93   : xART paths
- sel 89         : AppleSEPSharedMemoryChannel

## 4. Security review of priority handlers
| selector | handler / body | gate | copy site | verdict |
|---|---|---|---|---|
| 6/7/8 setFirmwareBytes | body 0x9179538 -> FUN_9165c98 | entitlement + state(==2) + **reload guard** (0xe00002d5) | fixed 0xe8 alloc; firmware via IOMemoryDescriptor; FUN_9165c98 stores {addr,len} ptrs, no user-size IOMalloc/memcpy | **low risk** at these layers; audit FUN_9165c98->FUN_9165d14 for the descriptor length bound |
| 15/68 nonce | body 0x916a7ec | xART check + "sep-booted" | memcpy thunk_aa40d30(out,nonce,size) **guarded by** `structureOutputSize(param_2+0x60) >= nonceSize` else 0xe00002db | **safe** — proper output-size bound before copy, reports actual size |
| 41 (old t7 s0) | FUN_9168708 (large, merged) | — | decompile unreliable ("type prop not settling") | needs manual Ghidra split |
| 61 (old t7 s20) | FUN_9168a84 (large, merged) | — | **out_struct=0x300200 is a chained-fixup artifact, not a 3 MB output** | needs manual Ghidra split |

IOExternalMethodArguments offsets observed: +0x20 scalarInput, +0x28 scalarInputCount,
+0x40 structureInput, +0x48 structureInputSize, +0x58 structureOutput, +0x60 structureOutputSize.

## 5. Output files
- /tmp/sep_full_table.csv          — all 96 selectors (func_va, counts, is_null, body_va, name_hint)
- /tmp/sep_extmethod_table5.c      — dispatcher + indexing proof (base, *0x18, bound 0x60)
- /tmp/sep_dispatcher.c            — decompile of 0x916a564
- /tmp/table5_externalMethod.c     — FUN_916a404 (containing handler)
- /tmp/setFirmwareBytes.c, /tmp/FUN_9165c98.c   — firmware path (sel6/7/8)
- /tmp/sel15_68_nonce_body.c       — nonce handler (sel15/68)
- /tmp/t5_sel6..9.c, /tmp/t7_sel0.c, /tmp/t7_sel20.c  — priority wrapper decompiles
- /tmp/three_funcs_ids.txt         — string-cluster identification of the module

## 6. Caveats
- name_hint over-follows shared tail-calls; trust [self] rows and this doc's section 3.
- Ghidra did not apply the embedded signature strings as symbol names (FUN_ only).
- sel41/sel61 live inside huge merged functions; their decompiles and the 0x300200
  size are unreliable (fixup artifact).

## 7. Recommended next steps
1. Manually relabel/split FUN_9168708 (sel41) and FUN_9168a84 (sel61) in Ghidra GUI for clean decompiles.
2. Audit FUN_9165d14 (firmware descriptor consumer) for the actual length bound.
3. Examine the "hilo" endpoint cluster (sel 48-64) and DispatchDynamicObjectOp (sel 81/82) —
   dynamic-object ops are a classic SEP UC attack surface.
