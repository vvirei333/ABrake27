#!/usr/bin/env bash
# Host tool inventory for the DER-entitlements pipeline.
set -uo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
OUT="$HERE/_tools.txt"
: > "$OUT"
{
  echo "### host: $(uname -a)"
  for t in python3 python zsign ldid ldid2 jtool jtool2 codesign llvm-objdump objdump zip unzip openssl; do
    printf '%-14s -> ' "$t"
    command -v "$t" 2>/dev/null || echo "MISSING"
  done
  echo
  echo "### python3 version"
  python3 --version 2>&1
  echo
  echo "### ldid version"
  ldid -v 2>&1 | head -3
  echo
  echo "### ldid help (DER hints?)"
  ldid 2>&1 | grep -iE 'der|entitle' || echo "(no der/entitle mentions)"
} >> "$OUT" 2>&1
echo "written: $OUT"