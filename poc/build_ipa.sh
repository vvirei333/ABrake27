#!/usr/bin/env bash
# build_ipa.sh — Linux cross-compile of poc.c → EnableAMFIDevMode.ipa
#
# Turns plain C + IOKit/CoreFoundation into an installable iOS .ipa on Linux.
#
# Requirements (CachyOS / Arch):
#   sudo pacman -S clang lld      # compiler + Mach-O linker (ld64.lld)
#   iOS SDK (theos style):        # https://github.com/theos/sdks → iPhoneOS.sdk
#   ldid (ad-hoc signing):        # https://github.com/ProcursusTeam/ldid
#   zip                           # already present on CachyOS
#
# Env overrides:
#   CLANG=/path/clang   IOS_SDK=/path/iPhoneOS.sdk   LDID=/path/ldid
#   LD64=/path/ld64.lld  MINIOS=16.0  SDKVER=17.0
#
# Build is split into two explicit steps per architecture slice:
#   1) clang -c -target <arch>-apple-ios...   → Mach-O object (poc.<arch>.o)
#   2) ld64.lld -arch <arch> -platform_version ios <min> <sdk> ... → executable
# This avoids clang's driver swallowing/resetting -arch and -platform_version
# when it delegates to lld through -fuse-ld=ld64.lld.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
APP="EnableAMFIDevMode"
BUILD="$ROOT/build"
APPDIR="$BUILD/Payload/$APP.app"
SRC="$ROOT/poc.c"
ENT="$ROOT/entitlements.plist"
OUT="$ROOT/$APP.ipa"
MINIOS="${MINIOS:-16.0}"

have(){ command -v "$1" >/dev/null 2>&1; }
warn(){ printf '[!] %s\n' "$*" >&2; }
die(){  printf '[x] %s\n' "$*" >&2; exit 1; }
step(){ printf '[*] %s\n' "$*"; }

# ---- 1. clang ---------------------------------------------------------
CLANG="${CLANG:-}"
[ -z "$CLANG" ] && for c in clang clang-20 clang-19 clang-18 clang-17 clang-16 clang-15; do
    have "$c" && { CLANG="$c"; break; }
done
[ -n "$CLANG" ] || die "clang not found → sudo pacman -S clang lld"
step "clang: $CLANG ($($CLANG --version | head -1))"

# ---- 2. iOS SDK --------------------------------------------------------
SDK="${IOS_SDK:-}"
[ -z "$SDK" ] && for s in \
    "$ROOT/SDK/iPhoneOS.sdk" \
    "${THEOS:-}/sdks/iPhoneOS.sdk" \
    /opt/theos/sdks/iPhoneOS.sdk \
    "$HOME/theos/sdks/iPhoneOS.sdk" \
    /opt/iphoneos-sdk \
    "$HOME/iPhoneOS.sdk"; do
    [ -d "$s/System/Library/Frameworks" ] && { SDK="$s"; break; }
done
[ -n "$SDK" ] || die "iPhoneOS.sdk not found → set IOS_SDK=/path/iPhoneOS.sdk (https://github.com/theos/sdks)"
step "sdk: $SDK"

# ---- 3. Mach-O linker (ld64.lld) --------------------------------------
LD64="${LD64:-}"
[ -z "$LD64" ] && for l in ld64.lld lld ld.lld; do
    have "$l" && { LD64="$(command -v "$l")"; break; }
done
[ -n "$LD64" ] || die "ld64.lld not found → sudo pacman -S lld"
step "linker: $LD64"

# ---- 4. ldid (entitlement injection) ----------------------------------
LDID="${LDID:-}"
[ -z "$LDID" ] && for l in ldid ldid2; do have "$l" && { LDID="$(command -v "$l")"; break; }; done
[ -n "$LDID" ] || warn "ldid not found → IPA will be unsigned (https://github.com/ProcursusTeam/ldid)"

# ---- 5. lipo (optional, for fat arm64+arm64e) --------------------------
LIPO=""
for l in llvm-lipo lipo; do have "$l" && { LIPO="$l"; break; }; done

# ---- build -------------------------------------------------------------
rm -rf "$BUILD"; mkdir -p "$APPDIR"
OBJDIR="$BUILD/obj"; mkdir -p "$OBJDIR"

# SDK version for -platform_version (falls back to MINIOS).
SDKVER="${SDKVER:-}"
if [ -z "$SDKVER" ] && [ -f "$SDK/SDKSettings.plist" ]; then
    SDKVER="$(sed -n 's/.*<key>Version<\/key>.*<string>\([0-9.]*\)<\/string>.*/\1/p' \
        "$SDK/SDKSettings.plist" 2>/dev/null | head -1)"
fi
SDKVER="${SDKVER:-$MINIOS}"
step "platform: ios  min=$MINIOS  sdk=$SDKVER"

# Two clean steps per slice (avoids clang swallowing -arch/-platform_version):
#   1) clang -c    → Mach-O object, no linking
#   2) ld64.lld    → executable, with explicit -arch and -platform_version
build_slice() {
    local arch="$1" out="$2"
    local obj="$OBJDIR/poc.$arch.o"

    step "  [$arch] compile -> $obj"
    "$CLANG" -c \
        -target "$arch-apple-ios$MINIOS" \
        -isysroot "$SDK" \
        -O2 -Wall -Wextra \
        "$SRC" -o "$obj" || return 1

    step "  [$arch] link    -> $out"
    "$LD64" \
        -arch "$arch" \
        -platform_version ios "$MINIOS" "$SDKVER" \
        -syslibroot "$SDK" \
        -o "$out" \
        -framework IOKit \
        -framework CoreFoundation \
        -lSystem \
        "$obj" || return 1
}

# arm64 always.
build_slice arm64 "$APPDIR/$APP.arm64" || die "arm64 build failed"

# arm64e only if the toolchain can both compile AND link it.
ARM64E_OK=0
if printf 'int x;\n' | "$CLANG" -x c -c -target "arm64e-apple-ios$MINIOS" -o /dev/null - 2>/dev/null; then
    if build_slice arm64e "$APPDIR/$APP.arm64e"; then
        ARM64E_OK=1
    else
        warn "arm64e compiles but fails to link — shipping arm64 only"
    fi
else
    step "arm64e target unsupported by this clang"
fi

if [ "$ARM64E_OK" = 1 ]; then
    if [ -n "$LIPO" ]; then
        if "$LIPO" -create "$APPDIR/$APP.arm64" "$APPDIR/$APP.arm64e" -output "$APPDIR/$APP"; then
            rm -f "$APPDIR/$APP.arm64" "$APPDIR/$APP.arm64e"
            step "binary: arm64 + arm64e (fat)"
        else
            warn "lipo -create failed — shipping arm64 only"
            mv "$APPDIR/$APP.arm64" "$APPDIR/$APP"
            rm -f "$APPDIR/$APP.arm64e"
        fi
    else
        mv "$APPDIR/$APP.arm64" "$APPDIR/$APP"
        warn "no lipo (llvm-lipo) → shipping arm64 only"
    fi
else
    mv "$APPDIR/$APP.arm64" "$APPDIR/$APP"
    step "binary: arm64 only"
fi

# Guarantee the final executable is in place before signing/packaging.
[ -f "$APPDIR/$APP" ] || die "missing executable $APPDIR/$APP"

# ---- Info.plist --------------------------------------------------------
step "writing Info.plist"
PLIST_TMP="$BUILD/Info.plist"
cat > "$PLIST_TMP" <<PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>CFBundleExecutable</key><string>$APP</string>
	<key>CFBundleIdentifier</key><string>com.research.enableamfidevmode</string>
	<key>CFBundleName</key><string>$APP</string>
	<key>CFBundlePackageType</key><string>APPL</string>
	<key>CFBundleShortVersionString</key><string>1.0</string>
	<key>CFBundleVersion</key><string>1</string>
	<key>MinimumOSVersion</key><string>$MINIOS</string>
	<key>LSRequiresIPhoneOS</key><true/>
	<key>platform-application</key><true/>
</dict>
</plist>
PLIST

# Guarantee the plist is copied INSIDE the .app bundle before zipping.
cp -f "$PLIST_TMP" "$APPDIR/Info.plist"
[ -s "$APPDIR/Info.plist" ] || die "Info.plist missing from $APPDIR"

# ---- sign --------------------------------------------------------------
if [ -n "$LDID" ]; then
    step "signing with entitlements.plist ($LDID)"
    "$LDID" -S"$ENT" "$APPDIR/$APP"
else
    warn "unsigned binary (ldid missing)"
fi

# ---- package -----------------------------------------------------------
[ -f "$APPDIR/$APP" ]       || die "missing executable $APPDIR/$APP"
[ -s "$APPDIR/Info.plist" ] || die "missing Info.plist $APPDIR/Info.plist"
step "packaging $OUT"
( cd "$BUILD" && zip -qry "$OUT" Payload )
step "done: $OUT"

# ---- verify archive ----------------------------------------------------
if have unzip; then
    if unzip -l "$OUT" | grep -q "Payload/$APP.app/Info.plist"; then
        step "verified: Payload/$APP.app/Info.plist present in $OUT"
    else
        warn "Info.plist NOT found inside the IPA archive!"
    fi
fi
