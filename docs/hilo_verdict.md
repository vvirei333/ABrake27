# hilo cluster (AppleSEPUserClient selectors 45–66) — analysis

## Structure (corrected)
`FUN_9168a84` (3860 B) was a Ghidra MIS-MERGE of **21 separate functions**, one per selector.
Each has its own prologue (pacibsp/bti + stp). Dispatch entries point directly at each function
(no wrapper). Split via removeFunction + createFunction at each entry (pass10) → clean per-selector
decompiles in /tmp/hilo_sel{48,51,52,54,56,59,61,64}.c.

selector -> entry VA (offset in old blob):
45 0x9168c18(+0x194) 46 0x9168f18 47 0x9168f94 48 0x916902c 49 0x91690c8 50 0x9169164
51 0x91691dc 52 0x9169254 53 0x91692cc 54 0x9169398 55 0x9169410 56 0x9169488 57 0x9169500
58 0x9169580 59 0x9169614 60 0x916969c 61 0x9169728 62 0x9169824 63 0x916989c 64 0x916990c 66 0x9169990
(NB: the per-function decompiles still bleed adjacent code at the tail — Ghidra trampoline
artifact; only the FIRST block, up to the first `FUN_9190xxx()` "sibling" call, is the real handler.)

## Common structure of every hilo handler
1. `if (!FUN_9178410(this->sepManager /*+0xd8*/, "hilo")) return 0xe00002c2;`
   -> **capability gate: provider must expose the "hilo" property** (DAT_fffffff0076c80f8="hilo").
2. `ep = FUN_9179278(this->sepManager, 15000);`  -> get hilo endpoint (timeout 15000).
3. selector-specific op, mostly dispatched to the hilo serializer vtable (+0xe8/+0x120) or
   a shared sink (FUN_915f788 / FUN_915f2b8 / FUN_915e730).

## Per-selector input validation (bug-pattern checklist)
| sel | input | validation | verdict |
|---|---|---|---|
| 48 | scalarIn=1 | count==1 AND scalarInput[0] <= 1 | bounded enum |
| 49 | scalarIn=1 | count==1 AND scalarInput[0] <= 0x29 | bounded enum |
| 51/54 | structIn=VAR | structInput ptr -> serializer vtable +0xe8 (parses own TLV) | delegated |
| 52 | structOut=VAR | — | output path |
| 56 | structIn=VAR | structInput -> FUN_915f2b8 (consumer) | delegated |
| 59 | structIn=64 | **structInputSize must == 0x40 exactly** | safe (exact size) |
| 60 | structOut=176 | fixed | — |
| 61 | scalarIn=2 {addr,len} | count==2; **len <= 0x4000** then IOMemoryDescriptor(addr,len); -> FUN_915f788 | safe (len capped 16KB) |
| 64 | scalarIn=1 bool | scalarInput[0]!=0 -> FUN_915cffc(ep,bool) | bounded bool |

Notes:
- The scary `structOutputSize=0x300200` on sel61 is NOT used as a copy size — sel61's data is
  user memory wrapped (len<=0x4000) in an IOMemoryDescriptor. The 0x300200 is dispatch-table
  metadata / fixup artifact. Confirmed not a 3 MB copy.
- `SoftwareBreakpoint(0xc471, ...)` calls are PAC/CFI guard traps, not logic.

## Bug-pattern findings
- **TLV length w/o bound**: not in the handlers; the VAR-struct selectors (51/54/56) hand the
  buffer to the shared SEP-message serializer (vtable +0xe8, FUN_915e730/915f788/915f2b8).
  If a TLV/length bug exists, it is in that **shared serializer layer**, not per-selector.
- **unsigned underflow / count*size overflow**: none visible in the handlers.
- **explicit user length**: only sel61, and it is capped at 0x4000 before use.
- **check-then-set / replay state**: handlers grab the endpoint fresh each call (FUN_9179278,
  15000 ms); no obvious TOCTOU in the dispatch layer.

## Verdict
The hilo dispatch handlers themselves are **well-gated (the "hilo" capability) and input-validated**
(enum ranges, exact struct sizes, 0x4000 cap on the one raw-length path). No bug at this layer.
The remaining attack surface is the **shared hilo message (de)serializer**:
- FUN_915f788  (sel61 send sink, takes user memdesc)
- FUN_915f2b8  (sel56 struct consumer)
- FUN_915e730  (sel61 alt path)
- vtable +0xe8 serializer reached by sel48/49/51/54
These parse variable-length SEP IPC payloads and are the right next target — but they are shared,
widely-exercised code, so lower probability than a per-selector mistake (none found here).

Files: /tmp/hilo_sel{48,51,52,54,56,59,61,64}.c ; gate="hilo" @0x76c80f8.
