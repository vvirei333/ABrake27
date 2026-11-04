# ABrake27

**iOS 27 kernelcache reverse engineering — firmware diffing, AMFI/SEP RE, and Linux-native tooling (arm64/arm64e)**

[![Platform](https://img.shields.io/badge/target-iOS%2027.0.1%20%2F%2027.2-blue?logo=apple)](docs/WHITEPAPER.md)
[![Method](https://img.shields.io/badge/method-binary%20diff%20%2B%20RE-yellow?logo=ghidra)](#documentation)
[![Arch](https://img.shields.io/badge/arch-arm64e-green?logo=arm)](#repo-layout)
[![Status](https://img.shields.io/badge/status-paused%20%28no%20device%29-orange)](#status)

> **Research-grade, documentation-first project.** Binary diff of iOS 27.0.1 (24A446) vs 27.2 beta (24B5089g) on iPhone14,5, reverse-engineering the AMFI and AppleSEPUserClient `IOUserClient` dispatch surfaces, and a fully verified, reproducible **Developer Mode enablement path through Apple's stock lockdown protocol** — all done from Linux, no Mac, no Xcode.
>
> **Flagship open lead:** silent ASTC/DDS hardening in ImageIO with the delivery chain mapped — iMessage attachment → BlastDoor → IAKC container (first public documentation of the format) → mediaanalysisd → ASTC parser. See [STATUS.md](STATUS.md) and [research/intel/ma_decomp/VERDICT.md](research/intel/ma_decomp/VERDICT.md).

## Status

**Project paused.** The research device (iPhone 13) has been sold; all remaining work is static (firmware/binary analysis), which the repo tooling fully supports. The authoritative state summary lives in **[STATUS.md](STATUS.md)**; the complete session-by-session journal in **[HANDOFF.md](HANDOFF.md)** (31 sessions).

What was achieved while active:

- 31 documented sessions across firmware diff, kernelcache RE, and userland diff
- 4 research threads fully closed (2 as negative findings, 2 as documentation)
- 1 reproducible verified result (Developer Mode protocol)
- 2 open leads: ImageIO ASTC/DDS hardening (flagship), `rlebuf` format-string

## What This Repo Contains

### 1. Firmware diff (iOS 27.0.1 vs 27.2 beta, iPhone14,5)

Kernelcache (`MH_FILESET`, arm64e), kexts, sandbox profiles, entitlements — full reports in `diff_output/`. Methodology: normalized structural diffing with `difflib.SequenceMatcher` to separate logic changes from relocation noise, plus a "vtable + registry membership" reachability shortcut.

### 2. AMFI / SEP reverse engineering

- **AppleMobileFileIntegrityUserClient** — 18 selectors decoded (both builds); `selector 11 = armSecurityBootMode`; dev-mode flag analysis (AMFI only *reads* the flag — ACM is the source of truth via command `0x25`)
- **AppleSEPUserClient** — full dispatch surface decoded: 19 `IOExternalMethodDispatch2022` tables, 124 selectors, chained-fixup format (ARM64E) documented in [HANDOFF.md](HANDOFF.md)
- Whitepaper: [docs/WHITEPAPER.md](docs/WHITEPAPER.md)

### 3. Developer Mode via stock lockdown protocol (verified, reproducible)

The iOS Developer Mode chain can be driven entirely through `com.apple.amfi.lockdown` with `pymobiledevice3` on Linux — no jailbreak, no IPA, no entitlement forging. Verified persistent at kernel level (`mounter query-developer-mode-status → true`, DDI mounted at `/System/Developer`) across an independent reboot. Full protocol and honesty log: [FINDINGS_LOCK.md](FINDINGS_LOCK.md).

**Prerequisite:** remove the passcode (Settings → Face ID & Passcode → Turn Off Passcode).

```bash
# 1) enable → action=1 → REBOOT #1
python3 -m pymobiledevice3 amfi enable-developer-mode

# 2) after boot: post-restart accept → action=2 → REBOOT #2
#    (CLI has no separate accept command — use poc/verify_now2.py)

# 3) reveal the Settings toggle → action=0
python3 -m pymobiledevice3 amfi reveal-developer-mode

# Verify (kernel-level, independent of the AMFI service):
python3 -m pymobiledevice3 mounter query-developer-mode-status   # → true
python3 -m pymobiledevice3 mounter list                          # IsMounted: true
```

| action | Meaning | Effect |
|--------|---------|--------|
| `0` | reveal | Shows the Developer Mode toggle in Settings |
| `1` | enable | Sets the flag, **reboots** the device |
| `2` | accept | Post-restart confirmation, **reboots** again |

> ⚠️ `pymobiledevice3` **short-circuits** when the status is already `true`. The two reboots are **part of Apple's protocol**, not incidental.

### 4. Linux-native iOS cross-compiler

`poc/build_ipa.sh` produces a signed `.ipa` on CachyOS/Arch using `clang` + `ld64.lld` + `ldid` — zero Apple/Xcode dependencies. Two steps per architecture slice (avoids the clang driver swallowing `-arch`/`-platform_version` when delegating to `ld64.lld`). Auto-detects toolchain, graceful arm64e → arm64 fallback.

<details>
<summary><b>Build & environment variables</b> (click to expand)</summary>

```bash
sudo pacman -S clang lld zip && yay -S ldid
mkdir -p poc/SDK
git clone https://github.com/theos/sdks poc/tmp && mv poc/tmp/iPhoneOS*.sdk poc/SDK/iPhoneOS.sdk

cd poc && IOS_SDK=/path/to/iPhoneOS.sdk ./build_ipa.sh   # → EnableAMFIDevMode.ipa
```

| Variable  | Default      | Description                                  |
|-----------|--------------|----------------------------------------------|
| `CLANG`   | auto-detect  | Path to clang binary                         |
| `IOS_SDK` | auto-detect  | Path to iPhoneOS.sdk                         |
| `LD64`    | auto-detect  | Path to ld64.lld linker                      |
| `LDID`    | auto-detect  | Path to ldid (skipped if absent → unsigned)  |
| `MINIOS`  | `16.0`       | Minimum iOS deployment target                |
| `SDKVER`  | auto-detect  | SDK version for `-platform_version`          |

</details>

> **Note:** the PoC's IOKit path (`AppleMobileFileIntegrity` selector 11) requires the platform-restricted entitlement `com.apple.private.amfi.developer-mode-control` — a non-Apple-signed binary is refused by the userclient. The **supported** way to enable Developer Mode is the lockdown protocol above. `run_dvt.sh` automates the alternative CoreDevice/RSD-tunnel deploy path (build works; on-device deploy WIP — see HANDOFF Session 12).

## Findings Summary

| Thread | Result | Details |
|--------|--------|---------|
| AMFI Developer Mode (lockdown protocol) | ✅ **Verified working** | Persistent across reboot; [FINDINGS_LOCK.md](FINDINGS_LOCK.md) |
| AMFI dev-mode flag internals | ✅ Documented | AMFI only reads; ACM is source of truth (cmd `0x25`) |
| AMFI DER-entitlement patch | ✅ Documented | Beta closes the DER-omission hole |
| AppleSEPUserClient dispatch map | ✅ Documented | 19 tables / 124 selectors; `data/sep_full_table.csv` |
| CVE-2025-43520 TOCTOU hypothesis | ❌ **Closed — false** | Session 15: key addresses misidentified heuristically |
| GPSCopy OOB write (ImageIO) | ❌ **Closed — unreachable** | Real bug, silently patched, but zero callers in shipped userland |
| SpringBoard SBIconStateArchiver | ❌ Closed — robustness fix | New code written defensively; not type confusion |
| **ImageIO ASTC/DDS hardening** | 🔶 **OPEN — flagship** | **Delivery chain mapped 2026-11-04**: iMessage attachment → BlastDoor → IAKC container (first public documentation of the format) → mediaanalysisd → ASTC parser; zero-click iMessage candidate. Severity HIGH, conditional CRITICAL pending behavioral confirmation |
| CVE-2026-113915 race framework (MediaAnalysis) | 🔶 OPEN — new lead 2026-11-04 | TOCTOU windows mapped statically (audit-token check vs analysis-read, index-paired sandboxTokens); decompiles in `research/intel/ma_decomp/race_*.c` |
| `rlebuf` format-string lead | 🔶 OPEN — unlocalized | See WRITEUP Session 25 |

Details in **[WRITEUP.md](WRITEUP.md)**.

## Documentation

| File | Content |
|------|---------|
| [STATUS.md](STATUS.md) | ★ Current state, open threads, next steps — start here |
| [HANDOFF.md](HANDOFF.md) | Full session journal (Sessions 1–31), chained-fixup reference, methodology |
| [WRITEUP.md](WRITEUP.md) | Four self-contained research writeups (SEP map, SpringBoard, GPSCopy, ASTC/DDS) |
| [FINDINGS_LOCK.md](FINDINGS_LOCK.md) | Locked AMFI findings + Developer Mode protocol honesty log |
| [docs/WHITEPAPER.md](docs/WHITEPAPER.md) | Binary-diff whitepaper |
| [docs/](docs/) | SEP dispatch analysis, verdicts |

## Repo Layout

```
.
├── diff_output/             # Full markdown diff reports (KEXTS, DYLIBS, SANDBOX, ...)
├── docs/                    # WHITEPAPER, SEP dispatch analysis, verdicts
├── data/                    # sep_full_table.csv (decoded dispatch table)
├── research/                # CVE-2025-43520 XNU source refs, ImageIO session notes
├── poc/                     # PoC source + Linux build system + lockdown probes
│   ├── poc.c                #   AMFI + ACM IOKit client (C99)
│   ├── build_ipa.sh         #   ★ Linux cross-compiler (clang + ld64.lld + ldid)
│   ├── action_probe.py      #   ★ Real AMFI protocol {"action": N}
│   ├── verify_now2.py       #   Post-restart accept (action=2) + verification
│   └── ...                  #   lockdown/state probes, signing helpers
├── run_dvt.sh               # ★ CoreDevice/DVT deploy (build + usbmuxd + RSD tunnel + launch)
├── launch_dvt.py
├── harness/
│   └── astc_harness.swift   # Minimal ASTC decode harness (macOS, Swift)
├── tools/
│   ├── macho_tool.py        #   stdlib-only Mach-O arm64e parser + AArch64 decoder
│   ├── dump_vm_upl.py       #   function dumper (uses macho_tool)
│   └── ghidra_*.py          #   Ghidra headless scripts (dump/find/resolve)
├── HANDOFF.md               # Session journal (Sessions 1–31)
├── STATUS.md                # ★ Current state + open threads
├── WRITEUP.md               # Research writeups
├── FINDINGS_LOCK.md         # Locked AMFI findings
└── README.md                # You are here
```

## Open Call for Collaboration

The **ASTC/DDS finding** (see [WRITEUP.md](WRITEUP.md), section 4) is structurally complete: the patch, the decode-path registration, and the MediaAnalysis chain are all documented from disassembly. What's missing is **behavioral confirmation** — running a crafted `.astc` file through `mediaanalysisd` on iOS 27.0.1 stable to confirm the delivery path (iCloud sync / AirDrop → Photos → background analysis).

If you have a research-provisioned iPhone 13/14 on iOS 27.0.1, or a macOS host with the same ImageIO build, see `harness/astc_harness.swift` for a minimal Mac-side harness. Reach out via the repo's Issues tab.

## Scope & License

This project is for **educational and security research purposes only** — reverse engineering and defensive analysis. No weaponized exploits, no code that runs on devices you don't own. Usage on devices you do not own or without authorization may violate laws; the authors assume no liability.

## Credits

- **XNU** — Apple's open-source kernel (VFS/VM reference code)
- **Ghidra** — NSA / GHIDRA project
- **ipsw** — blacktop
- **pymobiledevice3** — doronz88
- **libimobiledevice** — ideviceinstaller, libimobiledevice team
- **ldid** — ProcursusTeam
- **theos/sdks** — theos
- Reverse engineering & tooling — @vvirei333

---

*Built on CachyOS Linux. No Mac required. No Xcode. Just clang, lld, and curiosity.*
