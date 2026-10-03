#!/usr/bin/env bash
# Host-side inspection: run via flatpak-spawn --host from the sandbox.
# Writes results beside itself so the sandbox can read them.
set -uo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
OUT="$HERE/_inspect_out.txt"
BIN="/tmp/ipaX/Payload/EnableAMFIDevMode.app/EnableAMFIDevMode"
: > "$OUT"

{
  echo "=== ldid -e (entitlements) ==="
  ldid -e "$BIN" 2>&1
  echo
  echo "=== ldid -h (cdhash) ==="
  ldid -h "$BIN" 2>&1
  echo
  echo "=== file ==="
  file "$BIN" 2>&1
  echo
  echo "=== mach-o load commands (LC_*) ==="
  llvm-objdump --macho --all-headers "$BIN" 2>&1 | grep -iE 'LC_CODE_SIGNATURE|LC_SEGMENT_64|entitlement|LC_LOAD_DYLIB|LC_UNIXTHREAD' 
  echo
  echo "=== code signature presence (codesign -d style via ldid) ==="
  codesign -dvvv "$BIN" 2>&1 || echo "(no codesign binary)"
  echo
  echo "=== entitlements.plist on disk ==="
  cat "$HERE/entitlements.plist" 2>&1
  echo
  echo "=== DONE ==="
} >> "$OUT" 2>&1

echo "written to $OUT"