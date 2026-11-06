# The GPU vector on iOS 27.x — why it died in 27.2 (defensive analysis)

Framing: research/documentation. No exploit code. This document assesses the
publicly-discussed attack chain `GPU OOB → GPU R/W → (sandbox escape) → kernel R/W`
against the binary evidence ABrake27 collected on iOS 27.0.1 (24A446) and 27.2 (24B119).

## 1. Why the GPU vector is the modern entry surface

- **Reachable from any App Store app**: Metal API, no entitlements, no special
  profile. Most other surfaces (media daemons, XPC services) are progressively
  entitlement- or profile-gated.
- **Large un-hardened code**: AGX kernel driver + IOGPU + GPU firmware command
  path. Kernel mitigations (PAC, PPL) do not cover GPU command streams.
- **Cross-process aliasing by design**: IOGPU maps buffers into the app's
  address space; physical pages are shared with other processes and the kernel.
  An OOB in the driver therefore tends to yield *cross-process* reads quickly.

## 2. Link-by-link

| link | difficulty | basis |
|---|---|---|
| GPU OOB (entry) | medium | driver attack surface, Metal-reachable |
| → GPU R/W | easy | buffer aliasing via corrupted IOGPU mappings |
| → sandbox escape | easy (read-prim.) | cross-process physical page sharing |
| → kernel R/W | **hard — this is the SPTM wall** | see §3 |

## 3. The SPTM wall — and our diff that shows Apple sealing it

On iOS 27.x, GPU page tables (UAT/SAPT) are managed exclusively through the
SPTM call gate. ABRake27 documented the endpoint family from the SPTM binary
itself (research/intel/sptm/SPTM_DIFF.md):

```
SPTM_UAT_ENDPOINT_INIT_STATE / DESTROY_STATE
SPTM_UAT_ENDPOINT_MAP_TABLE / UNMAP_TABLE
SPTM_UAT_ENDPOINT_MAP_BEGIN / MAP_CONTINUE
SPTM_UAT_ENDPOINT_PREPARE_FW_UNMAP_BEGIN / CONTINUE
SPTM_UAT_ENDPOINT_UNMAP_BEGIN / UNMAP_CONTINUE
SPTM_UAT_ENDPOINT_SET_CTX_ID / REMOVE_CTX_ID / GET_INFO
SPTM_UAT_ENDPOINT_REVOKE_SAPT_MULTIPAGE
```

Page-table modification from kernel context cannot bypass SPTM (PPL wall) —
so the last link of the chain ("GPU R/W → kernel R/W") is not a kernel
primitive at all; it requires abusing **SPTM itself**.

### 3.1 The stale-TLB window (27.0.1) — first-public finding

Our SPTM diff (820.0.22 → 820.40.24) shows:
- 27.0.1: GMMU TLBI is issued at page **retype** time fire-and-forget — no
  verification that the invalidation landed (`perform_gmmu_tlbi_if_needed`,
  no verification register).
- 27.2: adds `verify-gmmu-tlbis-at-sync` boot flag, `gmmu-tlbi-verification-reg`
  (DT key), bit-index validation ∈ [0,63], and a `Failed to verify TLBI`
  failure path.

Retype is the hottest page-type transition in the GPU world (CPU↔GPU memory
churns constantly). A stale GMMU TLB entry after a retype is a **CPU/GPU
type-confusion primitive** — precisely the bridge between "GPU R/W" and
"reaching kernel-owned memory". Apple's own 27.2 hardening confirms this
window was real attack surface.

### 3.2 The CVE-2026-86950 datapoint

The Hexacon untethered demo (iPhone 18 Pro, 27.0.1) is attributed to
CVE-2026-86950 (CoreGraphics OOB write, in-the-wild). Our marker diff located
Apple's silent fix: `CG-SEC-187882049` range/colorspace check in
`_CGPDFShadingType5Init` + `CG-SEC-187882136` CMap containment in
`_cmap_convert` (research/intel/ma_decomp/VERDICT.md). CoreGraphics is the
*content* side of the same pipeline that feeds the GPU — consistent with
chains that start at content parsing and end at the GPU.

## 4. Verdict

```
GPU OOB (Metal, sandboxed, no entitlements)   — viable entry, wide surface
  → GPU R/W                                    — easy (aliasing)
  → sandbox escape (cross-process reads)       — easy
  → kernel R/W                                 — SPTM wall; on 27.0.1 the
                                                 stale-TLB/retype window was
                                                 the plausible bridge; 27.2
                                                 verified TLBI and closed it.
```

The chain's weakest link on 27.0.1 was exactly the SPTM/UAT boundary — which
is why 27.2's first-order silent hardening targets it (TLBI verification),
alongside AMFI DER-probe, sandbox-kext validation, and vm_map lock diagnostics
(kernel/KERNEL_DIFF.md). The GPU vector as a *kernel* path is best considered
closed on ≥27.2 until a published SPTM-abuse primitive exists.

## 5. Method map (how this was established)
- SPTM im4p extraction + full normalized diff → VERDICT.md
- SEC-marker sweep (`SEC-[0-9]{6,12}`) across dyld cache chunks → instant map
  of Apple's silent security additions
- Whole-kext diff for per-component attribution
