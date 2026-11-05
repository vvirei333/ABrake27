# ASTCProbe.ipa — behavioral PoC (ABrake27)

Test app for the ImageIO ASTC/IAKC delivery lead (see research/intel/ma_decomp/VERDICT.md).
**Public API only** — no exploit code. It feeds 18 crafted fixtures through the in-process
ImageIO decode path and logs progress with fsync BEFORE each decode; a crash names the
file that reached the vulnerable code (last "PROBE ... — decoding NOW" line in probe_log.txt).

## Install
- **Jailbroken iOS 27.0.1**: install via Filza/`appinst` — ad-hoc signature is fine.
- **TrollStore**: drop the ipa.
- **SideStore/AltStore**: re-sign with free Apple ID.

## Read results
Log file: app container `Documents/probe_log.txt` (also shown on screen).
- Crash + `.ips` in Analytics with `ASTCReadPlugin`/`CGImageSourceCreateWithData` frames
  → delivery to the vulnerable code CONFIRMED.
- "ALL SURVIVED" → delivery/trigger not reached in-process (the mediaanalysisd path
  must then be tested with files placed in Photos instead — see research/behavioral_kit/).

## Build (Linux, no Xcode)
```
sudo pacman -S clang lld ldid  # toolchain
git clone --depth 1 --filter=blob:none --sparse https://github.com/theos/sdks.git theos-sdks
cd theos-sdks && git sparse-checkout set iPhoneOS16.5.sdk
cp -r iPhoneOS16.5.sdk ../ABrake27/poc/SDK/iPhoneOS.sdk
cd ../ABrake27/poc/probe_app && ./build_probe.sh
```
