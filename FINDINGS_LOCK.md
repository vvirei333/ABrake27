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

---

# Session 9 — lockdown / AMFI dev-mode attempt (2026-10-03, iOS 27.0.1 24A446)

## Итог: НЕ РАБОТАЕТ (отрицательный результат)

`mounter query-developer-mode-status` → **false** (независимая kernel-level проверка)
`mounter auto-mount` → **ERROR: Developer Mode is disabled** (функциональный тест)

Dev-mode **НЕ включён** на kernel-level. Протокол Apple пройден до конца, но флаг
не применился на iOS 27.0.1.

## Правильный протокол (найден в pymobiledevice3 11.20.2, `services/amfi.py`)

Сервис `com.apple.amfi.lockdown`, поле **`action`** (не `Request`!):

| action | Значение | Ответ устройства |
|--------|----------|------------------|
| 0 | reveal (показать тумблер в Settings) | `{'success': True}` |
| 1 | enable (включить) | без пароля `{'success': 1}` → **ребут**; с паролем `{'Error': 'Device has a passcode set'}` |
| 2 | accept (подтвердить после ребута) | `{'Error': 'Device has a passcode set'}` |
| 99 | невалидный | `{'Error': 'An unknown error has occured'}` |

Протокол **двухфазный**: action=1 → ребут; action=2 → подтверждение после ребута.

## Почему НЕ сработало

1. **action=1 требует отсутствия пароля.** С паролем → `{'Error': 'Device has a passcode set'}`.
   После снятия пароля action=1 → `{'success': 1}` и ребут.
2. **Флаг не применился даже после ребута:** kernel-level query = false, DDI не монтируется.
3. **`set_value` — тупик.** `handle_set_value` → `lockbot_set_preference`, требует entitlement
   `com.apple.private.lockdown.finegrained-set`. Без него запись эхо-успешна, но не авторитетна:
   - `set_value(domain=com.apple.security.mac.amfi, key=<любой>, value=<любой>)` — произвольные
     ключи (включая мусорные) сохраняются и читаются обратно (lockbot KV-store).
   - `set_value(key=DeveloperModeStatus, value=False)` → возвращает `False`, но readback = `True`
     → запись для этого ключа **не авторитетна**.
4. **Строка `com.apple.security.exception.sysctl.read-only` = `security.mac.amfi.developer_mode_status`**
   в entitlements lockdownd — это **только чтение** (sysctl read-only).

## Что видели по ходу (важно для честности)

- В окне ~04:19 `get_developer_mode_status()` = True **и** `mounter QueryDeveloperModeStatus` = True,
  `mounter auto-mount` успешно смонтировал Cryptex1 DDI.
- После ребута (~04:21+) оба = False, `mounter list` = 0 образов, `auto-mount` = "Developer Mode is disabled".
- Т.е. состояние **не сохранилось**; kernel-level dev-mode на iOS 27.0.1 не активен.

## Вывод

iOS 27.0.1 требует **дополнительного подтверждения** для активации dev-mode:
entitlement на клиенте (`com.apple.private.amfi.developer-mode-control`), либо
Settings.app toggle с UI-подтверждением, либо Apple-signed install.
Lockdown/AMFI-протокол сам по себе флаг не поднимает.

## Артефакты сессии 9

| Файл | Назначение |
|------|-----------|
| `poc/lockdown_devmode.py` | high-level lockdown API пробы |
| `poc/probe_amfi_service.py` | брутфорс формата запросов AMFI-сервиса |
| `poc/final_verify.py` | generic-ack доказательство |
| `poc/action_probe.py` | **реальный протокол `{"action": N}`** |
| `poc/semantics_probe.py` | семантика lockbot KV-store |
| `poc/spoof_test.py` | проверка подмены статуса |
| `poc/state_check.py` | полный снимок состояния + mounter query |
| `poc/verify_now.py`, `poc/verify_now2.py` | независимые перепроверки |

## Воспроизведение

```bash
cd poc
flatpak-spawn --host python3 state_check.py          # kernel-level status
flatpak-spawn --host python3 action_probe.py         # протокол AMFI
flatpak-spawn --host python3 -m pymobiledevice3 mounter query-developer-mode-status
flatpak-spawn --host python3 -m pymobiledevice3 mounter auto-mount   # → Developer Mode is disabled
```

