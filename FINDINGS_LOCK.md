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

# Session 9 — lockdown / AMFI dev-mode (2026-10-03, iOS 27.0.1 24A446)

## ИТОГ: РАБОТАЕТ — Developer Mode включён и ПЕРЕЖИЛ ребут

Независимая проверка **после ребута**, выданного нами в 04:36:31 (проверка 04:39:11):

```
mounter query-developer-mode-status → true
amfi developer-mode-status          → true
mounter list                        → IsMounted: true, MountPath: /System/Developer,
                                       PersonalizedImageType: DeveloperDiskImage, Version 642.4
```

Это kernel-level состояние: `QueryDeveloperModeStatus` отвечает сам mounter-сервис,
DDI смонтирован на `/System/Developer`. **Флаг сохранился через ребут** — то, чего
не удалось добиться на предыдущей итерации (см. «История попыток»).

## Рабочий метод (воспроизводимый)

1. **Снять пароль** — Settings → Face ID & Passcode → Turn Off Passcode.
   (С паролем `action=1` → `{'Error': 'Device has a passcode set'}`.)
2. `AmfiService.enable_developer_mode()` → `action=1` → **ребут**.
   (`enable_developer_mode(enable_post_restart=True)` по умолчанию сам держит heartbeat,
   ждёт реконнект и вызывает шаг 3 — но ребут рвёт соединение, поэтому надёжнее
   запускать шаги 2 и 3 **раздельно**.)
3. После загрузки: `AmfiService.enable_developer_mode_post_restart()` → `action=2` → **ребут**.
4. `AmfiService.reveal_developer_mode_option_in_ui()` → `action=0` (тумблер в Settings).
5. Проверка: `mounter query-developer-mode-status` → `true` (держится после ребута).
6. Функциональный тест: `mounter auto-mount` → DDI смонтирован в `/System/Developer`.

### Ребут — часть протокола, не случайность

`services/amfi.py`: `action=1` (enable) инициирует ребут, `action=2` (accept) подтверждает
после ребута. Оба ребута — часть Apple-протокола AMFI, а не побочный эффект.

## Правильный протокол (найден в pymobiledevice3 11.20.2, `services/amfi.py`)

Сервис `com.apple.amfi.lockdown`, поле **`action`** (не `Request`!):

| action | Значение | Ответ устройства |
|--------|----------|------------------|
| 0 | reveal (показать тумблер в Settings) | `{'success': True}` |
| 1 | enable (включить) | без пароля `{'success': 1}` → **ребут**; с паролем `{'Error': 'Device has a passcode set'}` |
| 2 | accept (подтвердить после ребута) | без пароля `{'success': 1}` → **ребут**; с паролем `{'Error': 'Device has a passcode set'}` |
| 99 | невалидный | `{'Error': 'An unknown error has occured'}` |

**Важно:** `action=2` в логах `action_probe.py` показывал passcode error, потому что
в тот момент пароль ещё был установлен — это подтверждает предусловие «no passcode»,
а не неработоспособность accept.

Протокол **двухфазный**: action=1 → ребут; action=2 → подтверждение после ребута.

## История попыток (важно для честности)

1. **`set_value` — не работает (тупик).** `handle_set_value` → `lockbot_set_preference`,
   требует entitlement `com.apple.private.lockdown.finegrained-set`. Без него запись
   эхо-успешна, но не авторитетна:
   - произвольные ключи (включая мусорные) сохраняются в lockbot KV-store и читаются обратно;
   - `set_value(key=DeveloperModeStatus, value=False)` → возвращает `False`, но readback = `True`
     → запись для этого ключа **не авторитетна**.
2. **Строка `com.apple.security.exception.sysctl.read-only` = `security.mac.amfi.developer_mode_status`**
   в entitlements lockdownd — это **только чтение** (sysctl read-only).
3. **04:19 — первый `true` + успешный auto-mount Cryptex1 DDI, затем реверт.**
   Состояние `true` в этот момент объясняется конфаундом: флаг был `true`, DDI смонтировался,
   но после ребута (~04:21+) оба показателя вернулись в `false`. Именно поэтому нельзя было
   считать первый `true` победой.
4. **04:31–04:36 — финальный цикл.** Снят пароль (предусловие), затем полный протокол:
   `action=1` (enable) → ребут → `action=2` (post_restart accept) → ребут →
   `action=0` (reveal_ui) → системное уведомление «Режим разработчика включён».
   Наша повторная команда `enable-developer-mode` в 04:34 **short-circuit** (см. ниже),
   потому что статус уже был `true`.
5. **04:36:31 — контрольный ребут**, выданный независимо (мы сами, после победы),
   чтобы отсечь конфаунд. **04:39:11 — проверка: всё ещё `true`, DDI смонтирован.**
   Это и есть доказательство персистентности.

### Short-circuit behavior (важно знать)

`cli/amfi.py::enable_developer_mode`:
```python
if await service_provider.get_developer_mode_status():
    logger.info("Developer mode is already enabled")
    return
```
Если статус уже `true`, команда **не отправляет action=1/2 вообще** — просто логирует
"Developer mode is already enabled" и выходит. Поэтому после `true` повторный запуск
команды бесполезен (и это нельзя принимать за повторное применение флага).

## Вывод

Apple-протокол через `com.apple.amfi.lockdown` (`AmfiService`) **работает на iOS 27.0.1**:
`enable (action=1) → ребут → post_restart accept (action=2) → ребут → reveal (action=0)`.
Предусловие — **отсутствие пароля**. Флаг применяется на kernel-level и **переживает ребут**
(проверено независимым ребутом 04:36:31 → `true` в 04:39:11, DDI в `/System/Developer`).

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
# 1. Снять пароль: Settings → Face ID & Passcode → Turn Off Passcode

# 2. enable (action=1) → ребут. Сервис сам ждёт реконнект (heartbeat),
#    но ребут рвёт соединение — надёжнее запускать шаги раздельно.
flatpak-spawn --host python3 -m pymobiledevice3 amfi enable-developer-mode

# 3. После загрузки: post_restart accept (action=2) → ребут.
#    (CLI не имеет отдельной команды accept; используем poc/verify_now2.py
#     или прямой вызов AmfiService.enable_developer_mode_post_restart().)

# 4. reveal (action=0): показать тумблер в Settings
flatpak-spawn --host python3 -m pymobiledevice3 amfi reveal-developer-mode

# 5. Проверка kernel-level
flatpak-spawn --host python3 -m pymobiledevice3 mounter query-developer-mode-status   # → true
flatpak-spawn --host python3 -m pymobiledevice3 mounter list                           # IsMounted: true

# 6. Функциональный тест
flatpak-spawn --host python3 -m pymobiledevice3 mounter auto-mount   # → DeveloperDiskImage mounted
```

