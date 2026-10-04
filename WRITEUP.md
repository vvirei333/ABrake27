# iOS 27 AppleSEPUserClient — Dispatch Table Reverse Engineering

**Reverse-engineering the AppleSEPUserClient dispatch surface on iOS 27.0.1 (24A446, iPhone14,5)**

> Status: research in progress. Session 20, 2026-10-04.

---

## TL;DR

We decoded the complete `IOExternalMethodDispatch2022` surface exposed by `AppleSEPUserClient` in the iOS 27.0.1 stable kernelcache for `iPhone14,5` (A15).

- **19 dispatch tables** found in a single `__DATA_CONST` region
- **124 selector entries** total, each 24 bytes (`IOExternalMethodDispatch2022`)
- **Identified 6 method names** via embedded `__PRETTY_FUNCTION__` strings: `DispatchUserClientInvalidateNonce`, `DispatchUserClientGenerateNonceAndSlot`, `DispatchUserClientCommitHash`, `LoadRestoreFirmwareWithART`, `getOrGenerateNonce`, and one unnamed SEP cluster helper
- **Documented 12 selectors** with no framework-level argument validation (unexplored surface)
- All work done offline via a stdlib-only Mach-O parser (`tools/macho_tool.py`) — no IDA, no Binary Ninja required

This is a **map, not an exploit**. The purpose is to document the IOKit surface exposed by Secure Enclave's kernel-side client on current iOS.

---

## Context

### What is AppleSEPUserClient

`AppleSEPUserClient` is the IOKit user client subclass for `AppleSEPManager`, the kernel extension that brokers communication between iOS kernel and the Secure Enclave Processor (SEP).

Userspace processes with the appropriate entitlements can `IOServiceOpen` against this client and invoke selectors via `IOConnectCallMethod`. Each selector maps to a kernel-side handler via an `IOExternalMethodDispatch` table.

### Why this matters for research

- The dispatch table enumerates the entire callable surface of the client
- Each entry declares how many scalar inputs, structure inputs, and outputs the kernel will accept
- Entries with `structInputSize = kIOUCVariableStructureSize` (0xffffffff) delegate size validation entirely to the handler — a common class of bug introduction
- The `AppleSEPManager` kernel extension has not been publicly documented in detail for iOS 17+

### Target

| Field | Value |
|---|---|
| Device | iPhone14,5 (iPhone 13, A15) |
| OS | iOS 27.0.1 (build 24A446) |
| Kernel | `Darwin Kernel Version 27.0.0: Thu Aug 13 21:40:46 PDT 2026; root:xnu-13432.2.10~2/RELEASE_ARM64_T8110` |
| Binary | `kernelcache.release.iPhone14,5` (Mach-O arm64e, MH_FILESET, ~64 MB) |

---

## Methodology

All analysis was done **offline** from the kernelcache file with a small Python toolkit. No vendor disassembler was used for the initial pass.

### Tool: `tools/macho_tool.py`

A stdlib-only Mach-O parser + AArch64 decoder. Provides:

- `load_segments(path)` — parse `LC_SEGMENT_64` records, return `(name, vmaddr, vmsize, fileoff, filesize)` tuples
- `va_to_off(segs, va)` — translate a virtual address to a file offset
- `decode(insn, va)` — decode a single AArch64 instruction (partial coverage)
- `linear_disasm(segs, va, end)` — iterate instructions in a range

Known limitation: the decoder does not currently handle all instruction forms (some outputs are `???`), and `adrp` operand strings are malformed — the page/imm must be extracted from the instruction bits directly.

### Chained fixups: `__DATA_CONST` slot format

The kernelcache uses `LC_DYLD_CHAINED_FIXUPS` with the ARM64E format. Each 8-byte slot in `__DATA_CONST` encodes either a rebase or a bind operation:
