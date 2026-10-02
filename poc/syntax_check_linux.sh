#!/usr/bin/env bash
# syntax_check_linux.sh — validate poc.c on Linux without an iOS SDK.
# Compiles against stubs/iokit_stub.h with SYNTAX_CHECK_ONLY defined.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
CC="${CC:-gcc}"

echo "[*] syntax-checking $ROOT/poc.c with $CC"
"$CC" -std=c11 -Wall -Wextra -Wno-unused-function \
	-DSYNTAX_CHECK_ONLY \
	-I"$ROOT" \
	-fsyntax-only \
	"$ROOT/poc.c"

echo "[*] cross-checking magic constants present in the kernel disassembly"
if grep -q '0x53435244' "$ROOT/../amfi_beta_full.asm" 2>/dev/null; then
	echo "[+] found 0x53435244 (\"DRCS\") in amfi_beta_full.asm"
else
	echo "[!] 0x53435244 not a text literal in the disassembly (it is an immediate);"
	echo "    confirm via LibCall_BuildCommand at 0xfffffff008f5e240."
fi
echo "[+] syntax check passed"
