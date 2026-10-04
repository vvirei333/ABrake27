# hilo shared serializer — scope & verdict

## Candidates (from bl-scan /tmp/hilo_blscan.csv)
Top shared callees across the 21 hilo handlers:
- 0x9178410 — "hilo" capability gate (copyProperty), 20 selectors
- 0x9179278 — hilo endpoint getter, 17 selectors
The actual marshalling is in the endpoint object's virtual methods (reached via blr +0xe8/+0x120
AFTER the gate), plus the concrete sinks FUN_915f788 / FUN_915f2b8 / FUN_915e730.

## Reverse bl-scan (who reaches the serializer)
| sink | callers | in-hilo | outside | note |
|---|---|---|---|---|
| FUN_915f788 (sel61 send) | 1 | 1 | 0 | fully gated |
| FUN_915f2b8 (sel56 consumer) | 1 | 1 | 0 | fully gated |
| FUN_915e730 (core IOMD mapper) | 10 | 0 | 10 | all callers inside serializer module 0x915exxx (internal recursion) |
| 0x9179278 (endpoint getter) | 21 | 17 | 4 | 4 outside = internal SEPManager code 0x917bxxx/0x917cxxx, not user selectors |

No ungated external entry reaches the serializer. It is reachable **only** through the
AppleSEPUserClient hilo selectors (45–66), which require: (a) ability to open AppleSEPUserClient
(entitlement-gated at UC creation — the real boundary, not analysed here), and (b) the "hilo"
device/provider property.

## Core primitive audit — FUN_915e730 (30-min decompile review)
It is a **bounds-checked IOMemoryDescriptor map wrapper**, not a TLV parser:
    uVar1 = iomd->getLength();            // vtable +0xb0
    if (uVar1 < needed_size /*param_3*/) {
        log("IOMemoryDescriptor size 0x%lx, needed at least size 0x%lx");
        return 0xe00002c2;                // reject undersized descriptor
    }
    map = iomd->createMapping(...);        // +0x94ca70
    *out_map = map; *out_vaddr = map->getAddress(); // +0x78
- length-arithmetic: single `actual < needed` compare, correct direction, rejects too-small.
- TLV loop: none here.
- count * size: none.
- signed/unsigned: sizes are ulong from IOMD getLength(); compared unsigned.

## VERDICT
| field | value |
|---|---|
| helper_va | 0x9179278 (endpoint) / FUN_915f788, FUN_915f2b8, FUN_915e730 (sinks) |
| all_callers | hilo selectors 45–66 only; serializer-internal recursion; no ungated path |
| gated | YES (hilo property + AppleSEPUserClient open-entitlement) |
| verdict | **OUT-OF-SCOPE / SAFE** — reachable only behind the gate; the one core primitive audited validates sizes correctly; no length/TLV/overflow bug found |

Residual (documented, not pursued): a full line audit of the endpoint vtable +0xe8 TLV parser and
the remaining serializer siblings (0x915e9f4..0x915fcbc) would be the only way to fully clear the
deserialization layer — but all of it sits behind the same gate, so priority is low.
