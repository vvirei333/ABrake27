#!/usr/bin/env bash
# build_ipa.sh — compile poc.c and package it as EnableAMFIDevMode.ipa
#
# Host requirements: macOS + Xcode Command Line Tools (clang, SDK); `zip`.
# Optional: ldid (https://github.com/ProcursusTeam/ldid) to ad-hoc sign with
#           entitlements.plist. Without ldid the IPA is unsigned.
#
# NOTE: this repository was analysed on Linux (gcc only); use syntax_check_linux.sh
#       to validate the source there. This script must run on macOS to make the IPA.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
APP_NAME="EnableAMFIDevMode"
BUILD="$ROOT/build"
APPDIR="$BUILD/Payload/$APP_NAME.app"
SRC="$ROOT/poc.c"

echo "[*] workspace: $ROOT"

SDKROOT="$(xcrun --sdk iphoneos --show-sdk-path)"
echo "[*] iOS SDK: $SDKROOT"

rm -rf "$BUILD"
mkdir -p "$APPDIR"

# Universal arm64 (+arm64e if the toolchain accepts it) device build.
ARCH_FLAGS=(-arch arm64)
if clang -target arm64e-apple-ios14.0 -x c -c /dev/null -o /dev/null 2>/dev/null; then
	ARCH_FLAGS+=(-arch arm64e)
	echo "[*] building arm64 + arm64e"
else
	echo "[*] building arm64 only (arm64e unsupported by this toolchain)"
fi

echo "[*] compiling $APP_NAME"
xcrun --sdk iphoneos clang \
	-fobjc-arc \
	-O2 -Wall -Wextra \
	-isysroot "$SDKROOT" \
	-mios-version-min=16.0 \
	"${ARCH_FLAGS[@]}" \
	-framework Foundation \
	"$SRC" \
	-o "$APPDIR/$APP_NAME"

echo "[*] writing Info.plist"
cat > "$APPDIR/Info.plist" <<'PLIST'
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>CFBundleExecutable</key><string>EnableAMFIDevMode</string>
	<key>CFBundleIdentifier</key><string>com.research.enableamfidevmode</string>
	<key>CFBundleName</key><string>EnableAMFIDevMode</string>
	<key>CFBundlePackageType</key><string>APPL</string>
	<key>CFBundleShortVersionString</key><string>1.0</string>
	<key>CFBundleVersion</key><string>1</string>
	<key>MinimumOSVersion</key><string>16.0</string>
	<key>LSRequiresIPhoneOS</key><true/>
	<key>platform-application</key><true/>
</dict>
</plist>
PLIST

if command -v ldid >/dev/null 2>&1; then
	echo "[*] signing with entitlements.plist (ldid)"
	ldid -S"$ROOT/entitlements.plist" "$APPDIR/$APP_NAME"
else
	echo "[!] ldid not found — IPA will be unsigned (install with a signing service)."
fi

echo "[*] packaging IPA"
( cd "$BUILD" && zip -qry "$ROOT/$APP_NAME.ipa" Payload )
echo "[+] done: $ROOT/$APP_NAME.ipa"
