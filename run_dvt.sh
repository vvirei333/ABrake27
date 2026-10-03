#!/usr/bin/env bash
# run_dvt.sh — build + deploy EnableAMFIDevMode PoC via DVT device-path launch.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
POC_SRC="$ROOT/poc/poc.c"
POC_OUT="$ROOT/poc/build/EnableAMFIDevMode"
LAUNCHER="$ROOT/launch_dvt.py"

have()  { command -v "$1" >/dev/null 2>&1; }
log()   { printf '\033[1;34m[*]\033[0m %s\n' "$*"; }
warn()  { printf '\033[1;33m[!]\033[0m %s\n' "$*" >&2; }
die()   { printf '\033[1;31m[x]\033[0m %s\n' "$*" >&2; exit 1; }
ok()    { printf '\033[1;32m[+]\033[0m %s\n' "$*"; }

# ---- 1. usbmuxd ----
log "Checking usbmuxd..."
if ! pgrep -x usbmuxd >/dev/null 2>&1; then
    have systemctl && sudo systemctl start usbmuxd 2>/dev/null || true
    sleep 2
fi
pgrep -x usbmuxd >/dev/null 2>&1 && ok "usbmuxd running" || warn "usbmuxd not running"

# ---- 2. Device check ----
log "Checking iOS device connection..."
python3 -c "import pymobiledevice3" 2>/dev/null || die "pymobiledevice3 not installed"

UDID="${DEVICE_UDID:-}"
UDID_ARG=""
[ -n "$UDID" ] && UDID_ARG="--udid $UDID"

python3 -m pymobiledevice3 lockdown info $UDID_ARG >/dev/null 2>&1 \
    || die "No device connected / lockdown unreachable"

DEV_NAME=$(python3 -m pymobiledevice3 lockdown info $UDID_ARG 2>/dev/null \
    | python3 -c "import sys,json; print(json.load(sys.stdin).get('DeviceName','?'))" \
    2>/dev/null || echo "iPhone")
ok "Device '$DEV_NAME' connected"

if python3 -m pymobiledevice3 mounter query-developer-mode-status $UDID_ARG 2>/dev/null | grep -qi 'true'; then
    ok "Developer Mode: ENABLED"
else
    die "Developer Mode is OFF. Toggle it in Settings → Privacy & Security."
fi

[ -f "$LAUNCHER" ] || die "launch_dvt.py not found next to run_dvt.sh"
chmod +x "$LAUNCHER"

# ---- 3. Compile ----
log "Building PoC binary..."
ARCH="${POC_ARCH:-arm64}"
MINIOS="16.0"

CLANG="${CLANG:-}"
[ -z "$CLANG" ] && for c in clang clang-20 clang-19 clang-18 clang-17 clang-16; do
    have "$c" && { CLANG="$c"; break; }
done
[ -n "$CLANG" ] || die "clang not found"

SDK="${IOS_SDK:-}"
[ -z "$SDK" ] && for s in \
    "$ROOT/SDK/iPhoneOS.sdk" \
    "$ROOT/poc/SDK/iPhoneOS.sdk" \
    /opt/theos/sdks/iPhoneOS.sdk \
    "$HOME/theos/sdks/iPhoneOS.sdk" \
    /opt/iphoneos-sdk; do
    [ -d "$s/System/Library/Frameworks" ] && { SDK="$s"; break; }
done
[ -n "$SDK" ] || die "iPhoneOS.sdk not found"

SDKVER="17.0"
if [ -f "$SDK/SDKSettings.plist" ]; then
    python3 -c 'import plistlib,sys; print(plistlib.load(open(sys.argv[1],"rb")).get("Version",""))' \
        "$SDK/SDKSettings.plist" > /tmp/_v 2>/dev/null && SDKVER=$(cat /tmp/_v) || true
fi
SDKVER="$(printf '%s' "$SDKVER" | sed -n 's/^\([0-9][0-9]*\(\.[0-9][0-9]*\)*\).*/\1/p')"
[ -n "$SDKVER" ] || SDKVER="17.0"

LD64="${LD64:-}"
[ -z "$LD64" ] && for l in ld64.lld lld; do
    have "$l" && { LD64="$(command -v "$l")"; break; }
done
[ -n "$LD64" ] || die "ld64.lld not found"

mkdir -p "$(dirname "$POC_OUT")"
OBJ="$POC_OUT.$ARCH.o"

"$CLANG" -std=c11 -O2 -Wall -Wextra \
    -target "$ARCH-apple-ios$MINIOS" \
    -isysroot "$SDK" \
    -I"$ROOT/poc" \
    -c "$POC_SRC" -o "$OBJ" || die "Compile failed"

"$LD64" -arch "$ARCH" \
    -platform_version ios "$MINIOS" "$SDKVER" \
    -syslibroot "$SDK" \
    -undefined dynamic_lookup \
    -no_uuid \
    -o "$POC_OUT" \
    -framework IOKit -framework CoreFoundation -lSystem \
    "$OBJ" || die "Link failed"

ok "Binary built: $POC_OUT ($ARCH)"

# ---- 4. Ad-hoc sign (in-place) ----
have zsign || die "zsign not found: yay -S zsign"

TMP_ENT="/tmp/poc_ent.plist"
cat > "$TMP_ENT" <<'ENT'
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>get-task-allow</key><true/>
    <key>platform-application</key><true/>
    <key>com.apple.private.security.no-container</key><true/>
</dict>
</plist>
ENT

log "Ad-hoc signing in-place with zsign..."
SIGN_TMP="$POC_OUT.signed"
cp "$POC_OUT" "$SIGN_TMP"
zsign -a -e "$TMP_ENT" -f "$SIGN_TMP" 2>&1 | sed 's/^/    /' || die "zsign failed"
[ -f "$SIGN_TMP" ] || die "zsign did not produce a signed file"
file "$SIGN_TMP" | grep -q 'Mach-O' || die "signed file is not Mach-O"
mv -f "$SIGN_TMP" "$POC_OUT"
ok "Signed (ad-hoc): $POC_OUT"

# ---- 5. Upload to device via AFC ----
# IMPORTANT: `pymobiledevice3 afc push` works with paths RELATIVE to the AFC
# root, which on iOS is /var/mobile/Media.  Passing an absolute path makes AFC
# concatenate it, producing "file not found".  So we use a bare filename.
AFC_REL="EnableAMFIDevMode"
DEVICE_BIN="/var/mobile/Media/$AFC_REL"      # real path used by DVT later

log "Uploading to device (AFC root /var/mobile/Media, as '$AFC_REL') ..."
python3 -m pymobiledevice3 afc push "$POC_OUT" "$AFC_REL" $UDID_ARG 2>&1 \
    || die "AFC push failed"
ok "Uploaded → device:$DEVICE_BIN"

# ---- 6. Launch via DVT (device path, not bundle id) ----
log "Launching via DVT device-path..."

POC_ARGS="${POC_QUIET:+-q}"
for arg in "$@"; do
    POC_ARGS="$POC_ARGS $arg"
done
POC_ARGS="${POC_ARGS# }"

echo ""
echo "--- DVT OUTPUT --------------------------------------------"
set +e
if [ -n "$POC_ARGS" ]; then
    python3 "$LAUNCHER" "$DEVICE_BIN" $POC_ARGS
else
    python3 "$LAUNCHER" "$DEVICE_BIN"
fi
RET=$?
set -e
echo "--- DVT OUTPUT END ----------------------------------------"
echo ""

if [ $RET -eq 0 ]; then
    ok "DVT launch succeeded (exit code $RET)"
else
    warn "DVT launch returned exit code $RET"
    warn "Check: 1) Device unlocked  2) Developer Mode ON  3) USB connected"
fi

# ---- 7. Cleanup ----
rm -f "$OBJ" "$TMP_ENT"
log "Done. Binary kept at: $POC_OUT"