# ABrake27

**Linux-native cross-compiler + PoC for iOS AMFI Developer Mode activation (arm64/arm64e)**

[![Platform](https://img.shields.io/badge/platform-iOS%2016.0%2B-blue?logo=apple)](https://github.com/vvirei333/ABrake27)
[![Build](https://img.shields.io/badge/build-Linux%20clang%20%2B%20ld64.lld-green?logo=linux)](https://github.com/vvirei333/ABrake27)
[![Arch](https://img.shields.io/badge/arch-arm64%20%7C%20arm64e-yellow?logo=arm)](https://github.com/vvirei333/ABrake27)

> **Research-grade toolkit.** Diff iOS 27.0.1 vs 27.2 firmware, reverse-engineer the AMFI `IOUserClient` dispatch table, and cross-compile a bare-metal IOKit PoC from **Linux** — no Xcode required.

---

## What This Is

- **IPS Firmware Diff** — kernelcache, kexts, sandbox, entitlements between iOS 27.0.1 and 27.2 (iPhone 14,5).
- **AMFI dispatch table reverse-engineering** — mapped every `IOExternalMethodDispatch` slot, identified `selector 11 = armSecurityBootMode`.
- **Standalone C PoC** — `poc/poc.c` opens `AppleMobileFileIntegrity`/`AppleCredentialManager`, calls `armSecurityBootMode`, and logs the result. No Foundation/UIKit bloat — pure C + IOKit.
- **Linux cross-compiler** — `poc/build_ipa.sh` produces a signed `.ipa` on CachyOS/Arch using `clang` + `ld64.lld` + `ldid`. **Zero Apple/Xcode dependencies.**

---

## Quick Start (Linux → iPhone in 4 minutes)

### Prerequisites (CachyOS / Arch)

```bash
sudo pacman -S clang lld zip          # compiler + Mach-O linker
yay -S ldid                           # entitlement injector (AUR)
# iOS SDK:
mkdir -p poc/SDK
git clone https://github.com/theos/sdks poc/tmp && mv poc/tmp/iPhoneOS*.sdk poc/SDK/iPhoneOS.sdk
```

### Build

```bash
cd poc
IOS_SDK=/path/to/iPhoneOS.sdk ./build_ipa.sh
# Output: EnableAMFIDevMode.ipa
```

### Install on iPhone

```bash
# Via ideviceinstaller (libimobiledevice):
ideviceinstaller --install EnableAMFIDevMode.ipa

# Via TrollStore (if jailbroken/CT-bypass device):
# → TrollStore app → "+" → pick EnableAMFIDevMode.ipa

# Via SideStore/AltStore:
# → Add to SideStore → sign with your Apple ID
```

### Run

```bash
# On device (SSH / NewTerm):
./EnableAMFIDevMode 1
cat /tmp/amfi_devmode_poc.log
# Then REBOOT to activate Developer Mode
```

---

## How It Works

Two clean steps per architecture slice (avoids `clang` driver swallowing `-arch`/`-platform_version` when delegating to `ld64.lld`):

1. **clang -c** — Mach-O object, no linking
2. **ld64.lld** — executable with explicit `-arch arm64 -platform_version ios <min> <sdk>`

Auto-detects `clang-20...15`, `ld64.lld`/`lld`, `llvm-lipo`, `ldid`. Graceful fallback: arm64e → arm64 if toolchain lacks ptrauth support.

---

## Repo Layout

```
.
├── ipsws/                   # iOS firmware images (NOT versioned — multi-GB)
├── kernelcaches/            # Extracted kernelcaches (arm64e Mach-O)
├── extracted/               # RootFS dumps + entitlements scan
├── diff_output/             # Full markdown diff reports (KEXTS, DYLIBS, SANDBOX...)
├── research/                # CVE analysis, XNU source excerpts
├── docs/WHITEPAPER.md       # Full AMFI binary-diff whitepaper (iOS 27.0.1 → 27.2)
├── poc/                     # ★ PoC source + Linux build system
│   ├── poc.c                #   AMFI + ACM IOKit client (C99)
│   ├── stubs/iokit_stub.h   #   Minimal IOKit header for Linux syntax check
│   ├── entitlements.plist   #   Required entitlements for armSecurityBootMode
│   ├── build_ipa.sh         #   ★ Linux cross-compiler (clang + ld64.lld + ldid)
│   └── syntax_check_linux.sh
├── HANDOFF.md               # Full session log (Russian + English)
└── README.md                # You are here
```

---

## Deep Dive

📄 **[Full Whitepaper → `docs/WHITEPAPER.md`](docs/WHITEPAPER.md)** — binary diff of `vnode_check_signature`,
the force-enabled debug bridge, the `IOExternalMethodDispatch` table decode, and the CVE-2025-43520
(DarkSword) VFS race analysis.

---

## Environment Overrides

| Variable  | Default                  | Description                                      |
|-----------|--------------------------|--------------------------------------------------|
| `CLANG`   | auto-detect              | Path to clang binary                             |
| `IOS_SDK` | auto-detect              | Path to iPhoneOS.sdk                             |
| `LD64`    | auto-detect              | Path to ld64.lld linker                          |
| `LDID`    | auto-detect              | Path to ldid (skip if absent → unsigned IPA)     |
| `MINIOS`  | `16.0`                   | Minimum iOS deployment target                    |
| `SDKVER`  | auto-detect from SDK     | SDK version for -platform_version                |

---

## License

This project is for **educational and security research purposes only**.  
Usage of the PoC on devices you do not own or without Apple's authorization may violate laws.  
The authors assume no liability.

---

## Credits

- **CVE-2025-43520** — DarkSword TOCTOU race in XNU VFS (`bsd/vfs/vfs_cluster.c`)
- **TrollStore** — opa334 / ProcursusTeam
- **ldid** — ProcursusTeam
- **theos/sdks** — theos
- **libimobiledevice** — ideviceinstaller, libimobiledevice team
- Reverse engineering & PoC development — @vvirei333

---

*Built on CachyOS Linux. No Mac required. No Xcode. Just clang, lld, and a dream.* 🔥
