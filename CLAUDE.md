cat > "/run/media/ivan/New Volume/My Projects/iphone-ios27-diff/CLAUDE.md" <<'EOF'
# ABrake27 — iOS 27 firmware diff / kernel binary analysis

## What this project is
Security research project: binary diff of iOS 27.0.1 vs 27.2 kernelcache (iPhone14,5,
arm64e), reverse-engineering the AMFI IOUserClient dispatch table, and analysis of
XNU VFS/VM code paths (CVE-2025-43520 class).

**Nature of work: reverse engineering and defensive analysis.** We disassemble the
kernel, understand its control flow, and document findings. We do NOT develop
weaponized exploits or write code that runs on someone else's device.

## Key files
- `HANDOFF.md` — authoritative session journal. Read this first for current state.
- `FINDINGS_LOCK.md` — short findings summary.
- `tools/macho_tool.py` — stdlib-only Mach-O arm64e parser + AArch64 decoder.
- `tools/dump_vm_upl.py` — dumper for specific functions (uses macho_tool).
- `research/CVE-2025-43520/vfs_cluster.c` — upstream XNU source reference.
- `kernelcaches/stable/24A446__iPhone14,5/kernelcache.release.iPhone14,5` — target binary.
- `kernelcaches/beta/24B5089g__iPhone14,5/kernelcache.release.iPhone14,5` — beta binary.

## Working style
- Analyses are cumulative: update HANDOFF.md after each session.
- Use `tools/macho_tool.py` for VA↔offset and instruction decode. It's weak on
  logical-immediate and complex loads — expect `???` output and cross-check by hex.
- When the decoder is insufficient, recommend Ghidra instead of hacking around it.
- All findings must cite concrete addresses + hex instructions (no guessing).

## Current session (Session 13)
Goal: verify whether `vm_object_upl_request` (callee of `vm_map_get_upl` at 0xfffffff00a2ff4bc)
sets the `UPL_PHYS_CONTIG` (bit 6 = 0x40) flag on the UPL it creates.

Context: Session 11 established that `cluster_write_contig`/`cluster_read_contig` do NOT
re-validate `UPL_PHYS_CONTIG` after their second call to `vm_map_get_upl`. Open question:
is that re-validation happening deeper, inside `vm_map_get_upl`'s callees?

Task for this session:
1. Write `tools/dump_callees.py` that dumps `0xfffffff00a2ff4bc` (size ~0x800)
   and `0xfffffff00a40e150` (size ~0x600) with VA + hex + mnemonic per line.
2. Search the dump for installation of bit 6 in the UPL flags:
   - `movz w?, #0x40` → hex prefix `0x5280080`
   - `movz x?, #0x40` → hex prefix `0xd280080`
   - `orr w?, w?, #0x40` (logical immediate)
   - `tst w?, #0x40` / `tbz w?, #6` / `tbnz w?, #6`
3. Report concrete findings with addresses and hex.

## What NOT to ask me to do
- Write kernel read/write primitives
- Write race triggers or PUAF code
- Design exploit chains or bypasses
- Produce weaponized PoC code
These are outside the scope of this project (which is analysis and documentation).

## Target audience
One-man research, Linux-only (CachyOS), no Mac, no Ghidra license issues.
EOF