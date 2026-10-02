# AMFI Code-Signing Bypass & XNU VFS Race — iOS 27.0.1 → 27.2 Beta 2

> **Whitepaper** · binary diff of the Apple Mobile File Integrity (AMFI) kernel extension
> between iOS `27.0.1 (24A446)` and `27.2 beta 2 (24B5089g)`, plus a deep-dive into
> `CVE-2025-43520` (DarkSword) in the XNU VFS cluster layer.
>
> **Device:** iPhone 13 (`iPhone14,5`, Apple A15 Bionic / `T8110`)
> **Kernels:** `xnu-13432.2.10~2/RELEASE_ARM64_T8110` (stable) · `xnu-13432.40.162~93/RELEASE_ARM64_T8110` (beta)

---

## Table of Contents

1. [Executive Summary](#1-executive-summary)
2. [Deep Binary Diff: `vnode_check_signature`](#2-deep-binary-diff-vnode_check_signature)
3. [The Force-Enabled Debug Bridge](#3-the-force-enabled-debug-bridge)
4. [CVE-2025-43520 (DarkSword) VFS Race Condition](#4-cve-2025-43520-darksword-vfs-race-condition)
5. [Research Disclaimer](#5-research-disclaimer)
6. [Artifacts & Reproducibility](#6-artifacts--reproducibility)

---

## 1. Executive Summary

This repository documents a **read-only, static-analysis** comparison of the AMFI kernel
extension across two iOS firmware generations, with the goal of enumerating
**AMFI bypass / code-signing weaknesses** relevant to *local sideloading* of unsigned
binaries on a device the researcher fully owns.

Two independent results are reported:

| # | Finding | Class | Impact |
|---|---------|-------|--------|
| **F1** | AMFI's `amfi_audit_no_entitlements()` (reached from `vnode_check_signature`) **does not validate DER-encoded entitlements** on iOS 27.0.1. A `CodeDirectory` that reports "no entitlements" is trusted after only an XML-blob emptiness check. | Missing code-signing validation | Self-signed IPA without a DER entitlement section passes the no-entitlement audit path. |
| **F2** | iOS 27.2 beta 2 **introduces a DER entitlement validator** into the exact same function, closing F1. | Patch (the "what changed") | Confirms F1 was a real, silent hole that Apple closed in the beta. |
| **F3** | `CVE-2025-43520` (DarkSword): a classic **TOCTOU** between the first and second `vm_map_get_upl()` calls in the XNU VFS cluster layer. | Race condition (CWE-362) | Privilege escalation / physmem out-of-bounds read-write. |

**Bottom line:** the iOS 27.2 beta 2 AMFI delta is small and surgical — the meaningful
change is a *single added DER check* inside the no-entitlement audit. Everything else
that superficially looks "new" (the `"developer mode is force enabled"` path, the
`com.apple.private.amfi.developer-mode-control` entitlement, the
`cs_enforcement_disable` boot-arg, the `/chosen` device-tree properties
`amfi-allows-trust-cache-load` and `amfi-only-platform-code`, and local-signing support
via `_set_local_signing_public_key`) is **present in both firmware versions** and is
therefore *not* a beta-specific change.

> ⚠️ **Important:** this work is pure static reverse-engineering. No device was flashed,
> no unsigned binary was executed, and no live exploit was run. See
> [Research Disclaimer](#5-research-disclaimer).

---

## 2. Deep Binary Diff: `vnode_check_signature`

### 2.1 Where the check lives

Both kernels route the "no entitlements" audit through a function that is a **direct child
of `vnode_check_signature`**, identifiable by the log string:

```text
"AMFI: vnode_check_signature called with platform %d\n"
```

| Firmware | Parent (`vnode_check_signature`) | No-entitlement audit (`amfi_audit_no_entitlements`) | Call site |
|----------|----------------------------------|-----------------------------------------------------|-----------|
| **stable 27.0.1** | `sub_fffffff008e995f4` (asm line 17123) | `sub_fffffff008e943dc` (asm line 11301) | `bl` at asm line 17668 |
| **beta 27.2 b2**  | `sub_fffffff008f55498` (asm line 17150) | `sub_fffffff008f5021c` (asm line 11301) | `bl` at asm line 17695 |

The two parents are instruction-for-instruction identical in structure: a pre-check
(`sub_fffffff008f50dd8` in beta ↔ `sub_fffffff008e94f34` in stable), then the
no-entitlement audit, then the identity-obtain branch
(`sub_fffffff008f7116c` in beta ↔ `sub_fffffff008eb52c8` in stable, both preceded by a
`kalloc_type` descriptor load).

### 2.2 The function bodies — stable vs beta

#### iOS 27.0.1 — `sub_fffffff008e943dc` (lines 11301–11340)

```
sub_fffffff008e943dc:
    ...
    bl   0xfffffff008eb52f8     ; XML entitlement extractor (single, only path)
    cbz  w0, loc_e94414
    ; -> "AMFI: Entitlement extraction failure in no entitlement check."
    ...
loc_e94414:
    ldur x9, [fp, #-0x8]       ; XML blob ptr
    ldr  x8, [sp, #0x10]       ; XML blob length
    cmp  x9, #0
    ccmp x8, #0, #0, eq        ; (ptr==0 && len==0)?
    b.eq loc_e94460
    ; -> "AMFI: Entitlements present in no entitlement check. (length: %ld, ptr: %s)"
    ...
    mov  w0, #0                ; 0 == "entitlements present" -> FAIL the audit
    ret
loc_e94460:
    mov  w0, #1                ; 1 == "no entitlements" -> PASS the audit
    ret
```

**Key observation:** the *only* entitlement source consulted is the **XML** blob. If the
`CodeDirectory` claims it has no entitlements (`cd_has_entitlements == 0`) and the XML
blob is empty, the function returns `1` ("no entitlements") **without ever inspecting the
DER (Distinguished Encoding Rules) entitlement section** that modern code signatures embed
in the `CSMAGIC_EMBEDDED_ENTITLEMENTS` region.

#### iOS 27.2 beta 2 — `sub_fffffff008f5021c` (lines 11301–11367)

```
sub_fffffff008f5021c:
    ...
    bl   0xfffffff008f7119c     ; XML entitlement extractor (first path)
    cbz  w0, loc_f5025c
    ; -> "AMFI: Entitlement extraction failure in no entitlement check."
    ...
loc_f5025c:
    ldur x9, [fp, #-0x18]      ; XML blob ptr
    ldr  x8, [sp, #0x20]       ; XML blob length
    cmp  x9, #0
    ccmp x8, #0, #0, eq
    b.eq loc_f50298
    ; -> "AMFI: Entitlements present in no entitlement check. (length: %ld, ptr: %s)"
    ...
loc_f50298:                    ; XML was empty -> NEW: also check DER
    stp  xzr, xzr, [sp, #0x10]
    add  x1, sp, #0x18
    add  x2, sp, #0x10
    mov  x0, x19
    bl   0xfffffff008f7118c     ; *** DER entitlement extractor (NEW in beta) ***
    cbz  w0, loc_f502bc
    ; -> "AMFI: DER entitlement extraction failure in no entitlement check."  (NEW string)
    ...
loc_f502bc:
    ldp  x8, x9, [sp, #0x10]   ; DER blob ptr/len
    cbnz x9, loc_f502d0
    cbnz x8, loc_f502d0
    mov  w0, #1                ; BOTH XML and DER empty -> "no entitlements" -> PASS
    ...
loc_f502d0:
    ; -> "AMFI: DER entitlements present in no entitlement check. (length: %ld, ptr: %s)" (NEW string)
    mov  w0, #0                ; DER present -> FAIL the audit
```

### 2.3 Thunk / veneer table

The XML and DER extractors live in the **stub/veneer tail table** of the AMFI slice. The
disassembly slice available for this project ends at `0xfffffff008f70aa8`, so the veneer
bodies themselves sit just beyond the captured region.

| Address | Role | Visibility in slice |
|---------|------|---------------------|
| `0xfffffff008f710fc` | flag-bit probe (bit #2) called from `sub_fffffff008f501fc` | veneer, out of slice |
| `0xfffffff008f7118c` | **DER** entitlement extractor (beta-only call in this function) | veneer, out of slice |
| `0xfffffff008f7119c` | **XML** entitlement extractor | veneer, out of slice |
| `0xfffffff008eb52f8` | XML extractor (stable's in-slice target) | in slice |

### 2.4 New beta-only strings (evidence of the patch)

```text
"AMFI: DER entitlement extraction failure in no entitlement check."              ; asm line 11342
"AMFI: DER entitlements present in no entitlement check. (length: %ld, ptr: %s)" ; asm line 11359
```

These two strings exist **only** in the beta 2 disassembly. The matching XML-only strings
exist in both.

### 2.5 Conclusion of the diff

| Condition (no-entitlement audit) | 27.0.1 result | 27.2 b2 result |
|----------------------------------|---------------|----------------|
| XML blob present (non-empty) | FAIL audit | FAIL audit |
| XML empty, DER **present** | **PASS audit (BUG)** | **FAIL audit (fixed)** |
| XML empty, DER empty | PASS audit | PASS audit |

> **F1 / F2 resolution:** iOS 27.0.1 contains a real gap — a `CodeDirectory` advertising
> "no entitlements" was validated against the XML blob only, ignoring DER entitlements.
> iOS 27.2 beta 2 closes this by adding a DER extraction + non-emptiness rejection. A
> self-signed binary whose entitlements are DER-encoded would evade the audit on 27.0.1
> but be rejected on the beta.

---

## 3. The Force-Enabled Debug Bridge

Developer Mode on iOS is gated through several mutually-redundant enablement paths. One of
them is a **single-byte "force-enabled" flag** consulted by AMFI.

### 3.1 The flag (`+0x7` byte)

| Firmware | Data symbol | Byte | Read sites (asm line / function) |
|----------|-------------|------|----------------------------------|
| **stable 27.0.1** | `data_fffffff00aeaa188` (`__DATA.__data`) | `+0x7` | line 902 (`sub_fffffff008e8b118`) · line 9186 (`sub_fffffff008e92594`) |
| **beta 27.2 b2**  | `data_fffffff00af8a658` (`__DATA.__data`) | `+0x7` | line 902 (`sub_fffffff008f46f28`) · line 9186 (`sub_fffffff008f4e3d4`) |

The bit is read with `ldrb w8,[x8,#0x7]` followed by `tbnz w8,#0` (test bit 0) in the
developer-mode decision function `sub_fffffff008f4e0f0` (beta) / `sub_fffffff008e92c40`
(stable). The surrounding decision ladder prints, in order:

```text
"AMFI: Enabling developer mode since protected data is not available"
"AMFI: Enabling developer mode since we are restoring...."
"AMFI: Enabling developer mode since we are in mobile obliteration"
"AMFI: developer mode is enabled in the trusted darwinos research variant"
"AMFI: developer mode is force enabled"
"AMFI: Developer Mode can not be enabled on trusted darwinOS."
```

### 3.2 `com.apple.private.amfi.developer-mode-control`

This private entitlement guards the AMFI/MIG handlers that *read back* the developer-mode
state (`armSecurityBootMode`, etc.). It is referenced at exactly **four call sites** in
**both** firmware versions:

| Firmware | Call sites (asm line) |
|----------|------------------------|
| stable | 791, 832, 873, 897 |
| beta   | 791, 832, 873, 897 |

Each handler does `check_entitlement("com.apple.private.amfi.developer-mode-control")` and,
on failure, returns `0xE00002C1` (a `MIG`/`IOReturn` "not entitled" code). Because this is
unchanged between the two builds, it is **not** part of the beta delta.

> **Note:** the canonical entitlement string is
> `com.apple.private.amfi.developer-mode-control` (not "developer-node-control").



### 3.3 Where the force flag is *written* (ACM / SEP bridge)

A full write-site scan of the AMFI disassembly for `data_fffffff00af8a658+0x7` found
**only read sites**. The single apparent write (`strb w8,[x21,#0x7]`, asm line 27213)
turns out to be a store into an **AppleCredentialManager (ACM) `LibCall_BuildCommand`
buffer** (`x21`), not into the AMFI global. This strongly implies the force-enabled byte is
**set from outside AMFI** — most plausibly by the **Apple Credential Manager (ACM) kext**
after a round-trip through the **Secure Enclave (SEP)**:

```
AMFI (reader)                          ACM / SEP (writer)
─────────────                          ──────────────────
ldrb w8,[data+0x7]   <─────────────── strb  (dev-mode force)
tbnz w8,#0
"developer mode is force enabled"
```

`sub_fffffff008f4e0f0` (beta) / `sub_fffffff008e92c40` (stable) is the *decision* function
that folds the flag together with mobile-obliteration state, the trusted darwinOS research
variant, and the device-tree trust-cache relaxation.

### 3.4 Corrected hypotheses (NOT beta-specific)

During the diff, several strings were initially flagged as "beta-only". Cross-referencing
the stable disassembly **disproved** each of them:

| String / symbol | stable | beta | Verdict |
|-----------------|--------|------|---------|
| `"AMFI: developer mode is force enabled"` | line 9191 | line 9191 | present in both |
| `com.apple.private.amfi.developer-mode-control` | 4 sites | 4 sites | present in both |
| `cs_enforcement_disable` boot-arg | line 15957 | line 15984 | present in both |
| `amfi-allows-trust-cache-load` (DT `/chosen`) | line 6127 | line 6127 | present in both |
| `amfi-only-platform-code` (DT `/chosen`) | line 15993 | line 16020 | present in both |
| `_set_local_signing_public_key` (local signing) | 7 refs | 7 refs | present in both |

The device-tree properties are read from `/chosen` and both firmware versions validate the
property size before trusting it:

```text
"AMFI: amfi-allows-trust-cache-load has unexpected size (%u)."
"AMFI: amfi-only-platform-code has unexpected size (%u)!"
"AMFI: no amfi-only-platform-code device tree node!"
```

The size check is a `cmp w0, #4` (the property must be a 4-byte integer); anything else is
rejected — identical behavior in both builds.

---

## 4. CVE-2025-43520 (DarkSword) VFS Race Condition

### 4.1 Summary

| Field | Value |
|-------|-------|
| CVE | `CVE-2025-43520` |
| Name | DarkSword (chained with ClearSword) |
| Type | Race Condition / TOCTOU |
| CWE | `CWE-362` (Concurrent Execution using Shared Resource with Improper Synchronization) |
| CVSS | 5.5 (Medium) |
| Location | `bsd/vfs/vfs_cluster.c` — `cluster_io_type`, `cluster_write_contig`, `cluster_read_contig` |

### 4.2 Root cause

`cluster_io_type()` is called first to classify an I/O request. It queries the VM subsystem
**with** `UPL_QUERY_OBJECT_TYPE` and, if the returned flags contain `UPL_PHYS_CONTIG`,
classifies the I/O as `IO_CONTIG` — meaning "treat this buffer as physically contiguous and
perform device-memory I/O directly against `upl_phys_page()`".

The `cluster_*_contig()` routines then call `vm_map_get_upl()` a **second time without**
`UPL_QUERY_OBJECT_TYPE` and — crucially — **never re-validate** the returned `upl_flags`.
They unconditionally compute:

```c
src_paddr = ((addr64_t)upl_phys_page(pl, 0) << PAGE_SHIFT) + upl_offset; // write path
dst_paddr = ((addr64_t)upl_phys_page(pl, 0) << PAGE_SHIFT) + upl_offset; // read path
```

Between the first (classifying) call and the second (consuming) call, the attacker can
**remap the virtual address** from a contiguous object onto a non-contiguous one. The
kernel then walks a page list it believes is physically contiguous, producing an
out-of-bounds read/write through `upl_phys_page`.

### 4.3 ASCII timeline of the race window

```
   Attacker thread                    Kernel (VFS cluster layer)
   ───────────────                    ─────────────────────────────
                                      cluster_write_ext / cluster_read_ext
                                          │
                                          ▼
                                      cluster_io_type()
                                          │  vm_map_get_upl(..., UPL_QUERY_OBJECT_TYPE)
                                          │  upl_flags & UPL_PHYS_CONTIG ?
                                          ▼
                                      *io_type = IO_CONTIG   ◄── T1 (classification)
                                          │
        ╔═════════════════════════════════╪═══════════════════════════════════╗
        ║  RACE WINDOW                    │  (attacker remaps the user VA)    ║
        ║                                 │  vm_map / mach_vm_unmap + remap   ║
        ╚═════════════════════════════════╪═══════════════════════════════════╝
                                          │
                                          ▼
                                      cluster_write_contig() / cluster_read_contig()
                                          │  vm_map_get_upl(...)   ◄── T2 (NO UPL_QUERY_OBJECT_TYPE)
                                          │  returned upl_flags are NOT re-checked
                                          ▼
                                      src_paddr / dst_paddr = upl_phys_page(pl, 0) << PAGE_SHIFT
                                          │
                                          ▼
                                      cluster_io(... CL_DEV_MEMORY ...)  ◄── physmem OOB R/W
```

### 4.4 Precise locations (`research/CVE-2025-43520/vfs_cluster.c`, XNU `main`)

| Function | First check (`cluster_io_type`) | Second `vm_map_get_upl` (no re-validation) | Dangerous `upl_phys_page` use |
|----------|--------------------------------|--------------------------------------------|-------------------------------|
| `cluster_write_contig` | caller at lines 3032 / 3130; body at 6214 | **line 3679** | `src_paddr` at **line 3704** |
| `cluster_read_contig`  | caller at lines 4639 / 4668; body at 6214 | **line 6069** | `dst_paddr` at **line 6094** |
| `cluster_io_type`      | — | `vm_map_get_upl` at **line 6248** (`UPL_QUERY_OBJECT_TYPE`) | sets `IO_CONTIG` at **line 6262–6263** |

In `cluster_io_type` (line 6214) the query is correct:

```c
upl_flags = UPL_QUERY_OBJECT_TYPE;
...
if (upl_flags & UPL_PHYS_CONTIG) {
    *io_type = IO_CONTIG;          // line 6262-6263
} else if (iov_len >= min_length) {
    *io_type = IO_DIRECT;
} else {
    *io_type = IO_COPY;
}
```

But in `cluster_write_contig` (line 3624) the consuming call omits the query flag and never
re-checks:

```c
upl_flags = UPL_FILE_IO | UPL_COPYOUT_FROM | UPL_NO_SYNC |
    UPL_CLEAN_IN_PLACE | UPL_SET_INTERNAL | UPL_SET_LITE | UPL_SET_IO_WIRE; // NO UPL_QUERY_OBJECT_TYPE
kret = vm_map_get_upl(map, ..., &upl_flags, ...);   // line 3679
...
src_paddr = ((addr64_t)upl_phys_page(pl, 0) << PAGE_SHIFT) + upl_offset; // line 3704
```

`cluster_read_contig` (line 5993) mirrors the same pattern at lines **6069** and **6094**.

---

## 5. Research Disclaimer

This project is **strictly academic / educational security research** and is released for
the purposes of:

- understanding how Apple's code-signing enforcement evolves across iOS releases,
- documenting the precise binary delta between two public firmware builds,
- explaining a *publicly disclosed* kernel race condition (`CVE-2025-43520`).

**The authors:**

- do **not** condone, encourage, or assist piracy, malware, or the distribution of
  unsigned applications in violation of Apple's terms;
- performed **no** unauthorized access — all analysis is read-only, on firmware the
  researcher legally downloaded;
- did **not** flash, jailbreak, or execute code on any device as part of this work.

The information is provided "as is", without warranty of any kind. Use it only on devices
you own and only in jurisdictions where such research is lawful. The findings here describe
vulnerabilities **already fixed** in the latest betas (F1/F2) and an **already-disclosed**
CVE (F3) — they are published for defensive study and documentation, not exploitation.

---

## 6. Artifacts & Reproducibility

| Artifact | Description |
|----------|-------------|
| `amfi_stable_full.asm` | Full arm64e disassembly of AMFI, iOS 27.0.1 (`24A446`) |
| `amfi_beta_full.asm`  | Full arm64e disassembly of AMFI, iOS 27.2 beta 2 (`24B5089g`) |
| `research/CVE-2025-43520/vfs_cluster.c` | Upstream XNU `main` source used for the race analysis |
| `HANDOFF.md` | Internal session handoff notes (full context, incl. all raw addresses) |
| `diff_output/` | Generated firmware-diff reports (dyld, kexts, files, machos, sandbox, entitlements, …) |

**Reproduce the diff:** obtain the two IPSWs (`27.0.1 24A446`, `27.2 beta 2 24B5089g`) for
`iPhone14,5`, extract the `kernelcache.release.iPhone14,5` Mach-O from each, and disassemble
the AMFI segment. The DER no-entitlement check is the only semantic change in the
`vnode_check_signature → amfi_audit_no_entitlements` path.

> **Not committed to git:** the multi-GB `ipsws/`, `kernelcaches/`, and `extracted/`
> directories (see `.gitignore`). Only the analysis artifacts are versioned.

---

*© 2026 — `vvirel333`. For defensive security research only.*
