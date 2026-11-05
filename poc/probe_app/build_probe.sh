#!/usr/bin/env bash
# build_probe.sh — Linux cross-compile of probe_app/main.m → ASTCProbe.ipa
# Reuses the ABrake27 pipeline (clang -c → ld64.lld → ldid → Payload zip).
# Public APIs only (UIKit/ImageIO) — installable via jailbreak / TrollStore /
# SideStore (free Apple ID).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
APP="ASTCProbe"
BUILD="$ROOT/build"
APPDIR="$BUILD/Payload/$APP.app"
OUT="$ROOT/$APP.ipa"
SDK="$ROOT/../SDK/iPhoneOS.sdk"
MINIOS="${MINIOS:-14.0}"

have(){ command -v "$1" >/dev/null 2>&1; }
step(){ printf '[*] %s\n' "$*"; }
die(){ printf '[x] %s\n' "$*" >&2; exit 1; }

CLANG="${CLANG:-clang}"
LD64="${LD64:-ld64.lld}"
LDID="${LDID:-ldid}"
[ -d "$SDK/System/Library/Frameworks" ] || die "SDK missing: $SDK"

rm -rf "$BUILD"; mkdir -p "$APPDIR/Fixtures4"
cp -a "$ROOT/Fixtures4/." "$APPDIR/Fixtures4/"

step "compile (ObjC, ARC off)"
"$CLANG" -c -target arm64-apple-ios"$MINIOS" -isysroot "$SDK" \
    -fobjc-arc -fmodules \
    -O2 -o "$BUILD/main.o" "$ROOT/main.m"

step "link (ld64.lld, two-step slice)"
"$LD64" -arch arm64 -platform_version ios "$MINIOS" 16.5 \
    -syslibroot "$SDK" \
    -framework UIKit -framework Foundation -framework CoreFoundation \
    -framework CoreGraphics -framework ImageIO \
    -lobjc -lSystem -lc++ \
    -e _main -stack_size 0x800000 \
    -o "$APPDIR/$APP" "$BUILD/main.o"

step "Info.plist"
cat > "$APPDIR/Info.plist" << 'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0"><dict>
<key>CFBundleExecutable</key><string>ASTCProbe</string>
<key>CFBundleIdentifier</key><string>com.abrake27.astcprobe</string>
<key>CFBundleName</key><string>ASTCProbe</string>
<key>CFBundleVersion</key><string>1.0</string>
<key>CFBundleShortVersionString</key><string>1.0</string>
<key>CFBundlePackageType</key><string>APPL</string>
<key>MinimumOSVersion</key><string>14.0</string>
<key>UIRequiresFullScreen</key><true/>
<key>LSRequiresIPhoneOS</key><true/>
<key>CFBundleSupportedPlatforms</key><array><string>iPhoneOS</string></array>
<key>DTPlatformName</key><string>iphoneos</string>
<key>DTSDKName</key><string>iphoneos16.5</string>
<key>DTPlatformVersion</key><string>16.5</string>
<key>CFBundleInfoDictionaryVersion</key><string>6.0</string>
<key>UIRequiredDeviceCapabilities</key><array><string>arm64</string></array>
</dict></plist>
EOF

step "sign (ldid, ad-hoc)"
cat > "$BUILD/ent.plist" << 'EPE'
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0"><dict>
<key>get-task-allow</key><true/>
<key>platform-application</key><true/>
</dict></plist>
EPE
"$LDID" -S"$BUILD/ent.plist" "$APPDIR/$APP"

step "package ipa"
(cd "$BUILD" && zip -qr "$OUT" Payload)
step "done: $OUT ($(du -h "$OUT" | cut -f1))"
