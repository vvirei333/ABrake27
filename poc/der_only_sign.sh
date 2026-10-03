#!/usr/bin/env bash
# DER-only signing pipeline for EnableAMFIDevMode.
#
# Uses the locally patched zsign (poc/zsign_src/bin/zsign) whose
# src/archo.cpp has been changed to omit the legacy XML entitlements blob
# (CSSLOT_ENTITLEMENTS / 0xfade7171) while keeping the DER entitlements blob
# (CSSLOT_DER_ENTITLEMENTS / 0xfade7172). See the PATCH(der-only) comments.
#
# Everything runs against the host filesystem via `flatpak-spawn --host`, so
# paths here are host paths.
set -uo pipefail

POC="/run/media/ivan/New Volume/My Projects/iphone-ios27-diff/poc"
LOG="$POC/_der_only_sign.log"

: > "$LOG"
exec >>"$LOG" 2>&1

echo "=== DER-only signing pipeline: $(date -Is) ==="
cd "$POC" || { echo "FATAL: cannot cd to $POC"; exit 1; }

ZSIGN="$POC/zsign_src/bin/zsign"
APP="$POC/build/Payload/EnableAMFIDevMode.app"
ENT="$POC/entitlements.plist"
OUT="$POC/EnableAMFIDevMode_der.ipa"

echo "--- sanity ---"
echo "pwd: $(pwd)"
echo "zsign: $ZSIGN"
ls -la "$ZSIGN" 2>&1
"$ZSIGN" --version 2>&1 || true
echo "app: $APP"
ls -la "$APP" 2>&1
echo "entitlements: $ENT"
ls -la "$ENT" 2>&1

echo
echo "--- step 1: self-signed certificate ---"
if [ ! -f "$POC/cert.p12" ]; then
    openssl req -x509 -newkey rsa:2048 \
        -keyout "$POC/key.pem" -out "$POC/cert.pem" \
        -days 365 -nodes -subj "/CN=ABrake27" 2>&1
    openssl pkcs12 -export -out "$POC/cert.p12" \
        -inkey "$POC/key.pem" -in "$POC/cert.pem" \
        -password pass:1234 2>&1
else
    echo "cert.p12 already present, reusing"
fi
ls -la "$POC/cert.p12" "$POC/key.pem" "$POC/cert.pem" 2>&1
echo "CERT_EXIT=$?"

echo
echo "--- step 2: sign (DER-only, CMS) ---"
rm -f "$OUT"
"$ZSIGN" -k "$POC/cert.p12" -p 1234 -e "$ENT" -o "$OUT" "$APP" 2>&1
SIGN_RC=$?
echo "SIGN_EXIT=$SIGN_RC"

if [ ! -f "$OUT" ]; then
    echo "--- step 2b: retry ad-hoc (-a) ---"
    "$ZSIGN" -a -e "$ENT" -o "$OUT" "$APP" 2>&1
    SIGN_RC=$?
    echo "ADHOC_SIGN_EXIT=$SIGN_RC"
fi

ls -la "$OUT" 2>&1

echo
echo "--- step 3: verify blobs (DER-only) ---"
# Dump the signed Mach-O extracted from the IPA (the IPA itself is a zip).
UNPACK="$POC/build/_unpack_der"
rm -rf "$UNPACK"; mkdir -p "$UNPACK"
unzip -o -q "$OUT" -d "$UNPACK" 2>&1
BIN="$UNPACK/Payload/EnableAMFIDevMode.app/EnableAMFIDevMode"
echo "inner binary: $BIN"
python3 "$POC/_blobdump.py" "$BIN" 2>&1 | grep -E "7171|7172|superblob|index\[" || true
echo "--- strict verification ---"
python3 "$POC/_verify_der_only.py" "$BIN" 2>&1
VERIFY_RC=$?
echo "VERIFY_EXIT=$VERIFY_RC"

echo
echo "--- step 4: install ---"
if [ "$VERIFY_RC" -ne 0 ]; then
    echo "verification failed; skipping install"
elif ! command -v ideviceinstaller >/dev/null 2>&1; then
    echo "ideviceinstaller not found; skipping install"
else
    ideviceinstaller --install "$OUT" 2>&1
    echo "INSTALL_EXIT=$?"
fi

echo "DONE"
