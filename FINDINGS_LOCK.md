# iOS 27 AMFI Findings — 2026-10-03

## Entitlement
com.apple.private.amfi.developer-mode-control — beta asm lines 791, 832, 873, 897

## Selectors (HANDOFF s6)
11 = armSecurityBootMode (scalar=1) -> sub_fffffff008f46dd0
14 = calls sub_fffffff008f5ee38(0x25) -> decision
15 = getDevModeForceEnabled, writes flag -> sub_fffffff008f46f28
16 = completeSecurityBootMode -> sub_fffffff008f4e51c

## Key funcs
sub_fffffff008f4e0f0 = PMGR latch (HANDOFF был неправ)
sub_fffffff008f4e840 = reads flag bit0, calls 4e0f0 (line 9509)
sub_fffffff008f4e870 = logs "Developer Mode is off" (line 9528)
sub_fffffff008f4ea80 = clears dev-mode flag
sub_fffffff008f5d6e8 = XPC notify com.apple.amfi.developer_mode_state

## XPC target
com.apple.MobileFileIntegrity

## DER-only (РАБОТАЕТ)
zsign patched (archo.cpp:342) -> XML вырезан, DER остался
_verify_der_only.py -> ALL CHECKS PASSED
installd -> 0xe8008001 (нужен Apple Root CA)

## Дальше
1. Python XPC-клиент к com.apple.MobileFileIntegrity, селектор 11 = 1
2. Или: pymobiledevice3 lockdown services | grep -i amfi
