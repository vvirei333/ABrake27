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
sub_fffffff008f4ea80 = clears dev-mode flag (callers: 8f4e384, 8f4e3c4, 8f4e3e4)
sub_fffffff008f5d6e8 = XPC notify com.apple.amfi.developer_mode_state

---

# Session 11 — Line B: дизасм цепочки dev-mode (2026-10-03, beta asm)

## Цепочка принятия решения (sub_fffffff008f4e2xx = ConfigurationSettings)

Строки 9130–9230 `amfi_beta_full.asm`. Функция решает, включён ли Developer Mode:

```
9131  "AMFI: Enabling developer mode since we are restoring...."
9146  "AMFI: Disable developer mode since we couldn't get mobile obliteration status"
9158  "AMFI: Enabling developer mode since protected data is not available"
9172  "AMFI: Enabling developer mode since we are in mobile obliteration"
9182  "AMFI: developer mode is enabled in the trusted darwinos research variant"
9198  "AMFI: Developer Mode can not be enabled on trusted darwinOS."
9205  "AMFI: trying to get developer mode status from ACM"      <-- ACM!
9214  "AMFI: ACM status %i"
9220  "ACM says dev mode is %llu"
9226  "AMFI: Developer Mode Is On"
9191  "AMFI: developer mode is force enabled"
```

### Ветка ACM (строки 9202–9229) — ЭТО ключ

```asm
9202  9209: mov  w0, #0x25                 ; ACM command selector = 0x25 (37)
9210         bl   0xfffffff008f5ef20      ; LIBWRAP: ACMKernGetEnvironmentVariable
9217  ldr  x8, [sp, #0x20]                ; результат из стека
9223  cmp  x8, #0x1                        ; == 1 ?
9224  b.ne loc_fffffff008f4e474           ; если НЕ 1 -> идём в force-disable
9226  "AMFI: Developer Mode Is On"        ; + b loc_fffffff008f4e380 (Enable+clear)
9229  loc_fffffff008f4e474: bl 0xfffffff008f4eaf8  ; <- если ACM != 1 -> SET FALSE
```

**Логика:** AMFI спрашивает ACM командой `0x25`; если ACM вернул `1` → «Developer Mode Is On»
(переход на enable-путь), иначе → `sub_fffffff008f4eaf8` = **принудительно выставить «выключено»**.

### Флаг `data_fffffff00af8a658 + 0x7`

Читается ровно в 2 местах, ровно один байт, признак — **bit0**:

```
902   0xfffffff008f46f58:  add x8, x8, #0x658  (первое чтение, session 6: selector 15 path)
9186  0xfffffff008f4e3d8:  add x9, x9, #0x658  (второе чтение)
9187  0xfffffff008f4e3dc:  ldrb w9, [x9, #0x7]
9188  0xfffffff008f4e3e0:  tbnz w9, #0                 ; bit0 == 1 ?
9189  bl 0xfffffff008f4ea80                          ; только если bit0==0
9191  "AMFI: developer mode is force enabled"
```

### ЕДИНСТВЕННАЯ запись в `[x, #0x7]` во всём AMFI (строка 27213)

```asm
27153 sub_fffffff008f5e170:            ; = LibCall_BuildCommand (ACM KernelLib, LibCall.c)
27170   adrp x28, 0xfffffff00af8a000
27174   "LibCall_BuildCommand"
27188   adds x26, x19, #0x8           ; длина команды + 8
27191   bl   0xfffffff008f5ea6c        ; __DATA.__bss: выделение (ACM buffer pool)
27203   bl   0xfffffff008f5eb78        ; acm_mem_alloc_info
27208   mov  w8, #0x5244 / movk #0x5343 ; ASCII "CS" (Command Struct) magic
27208   str  w8, [x21]                 ; [0..3] = 0x43525344 "CS"
27209   strb w25, [x21, #0x4]          ; [4] = arg x0
27210   strb w23, [x21, #0x5]          ; [5] = arg x1
27211   strb w22, [x21, #0x6]          ; [6] = arg x2
27212   mov  w8, #0x2
27213   strb w8,  [x21, #0x7]          ; [7] = 2   <-- ЕДИНСТВЕННАЯ strb +0x7
27218   bl   0xfffffff008f7165c        ; memcpy payload после 8-байт заголовка
```

**Важно (уточнение к session 10):** это запись в **ACM command buffer** (магия «CS»), а НЕ
в флаг-переменную `data_fffffff00af8a658+0x7`. Совпадение смещения `#0x7` случайное —
базы разные (`x21` = свежий ACM-буфер, не `af8a658`). То есть **в AMFI вообще НЕТ записи
байта флага dev-mode** — только чтения (902, 9187). Это подтверждает: флаг пишется ВНЕ AMFI.

### ACM KernelLib обёртки (все через LibCall_ACMKernelControl, 27977–28160)

| Функция | Строка | ACM cmd | Назначение |
|---|---|---|---|
| `sub_fffffff008f5ed44` (ACMKernControl) | 27977 | w0=0x24 | control code (dev-mode = **0x24**) |
| `sub_fffffff008f5ee38` (ACMKernSetEnvironmentVariable) | 28042 | — | set env var |
| `sub_fffffff008f5ef20` (ACMKernGetEnvironmentVariable) | 28104 | w0=0x25 | get env var (**dev-mode = 0x25**) |
| `sub_fffffff008f5e37c` (LibCall_ACMKernelControl) | ~27320 | — | реальный `blraa` в ACM transport |
| `sub_fffffff008f5e170` (LibCall_BuildCommand) | 27153 | — | строит «CS» command struct |

**Ни одна из этих обёрток НЕ вызывается через `bl sub_...` внутри AMFI** —
grep `bl.*sub_fffffff008f5ed44` = пусто. Они вызываются через PAC-подписанные указатели
(`pacibsp`/`pacda`/`blraa`), т.е. это экспортируемые таблицы функций, потребляемые
другими kext (и ACM).

### Вывод Line B (окончательный для этой сессии)

1. **AMFI никогда не пишет** байт `af8a658+0x7` — найдены только 2 чтения (902, 9187).
2. **ACM — источник истины**: AMFI спрашивает ACM командой `0x25`; если ACM вернёт `≠1`,
   AMFI заходит в ветку «принудительно выключено» (`sub_fffffff008f4eaf8`).
3. Запись делает **ACM kernel transport** (`ACMKernelTransport`, строка 27150),
   недостижимый из userspace AMFI-клиента.
4. Значит **userspace PoC selector 11 НЕ изменит** сохранённую ACM-переменную `0x25`.
   Нужен либо ACM-привилегированный канал, либо патч ACM, либо работа до загрузки ACM.

### Что это меняет для PoC

- `strb w?, [data_af8a658+0x7]` как kernel write-site — **не существует** в AMFI.
- Цель для write-примитива, если он появится: **ACM kernel environment variable**
  (команда `0x25` для чтения; set-аналог — через `ACMKernSetEnvironmentVariable`,
  строка 28042, selectors не видны статически).
- Практический путь остаётся: **SideStore / валидная подпись** → запуск бинарника с
  entitlement `com.apple.private.amfi.developer-mode-control` → selector 11 (см. ниже).

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

---

# CVE-2025-43520 — Binary verification (Session 12 re-check)

Independent re-verification of the Session-11 kernelcache claims against
`kernelcaches/stable/24A446__iPhone14,5/kernelcache.release.iPhone14,5`
(Mach-O arm64e, `__TEXT_EXEC`), using `tools/macho_tool.py` from this repo:

| Symbol | VA | Prologue (verified bytes) |
|--------|----|---------------------------|
| `cluster_write_contig` | `0xfffffff00a3b4f00` | `stp x22,x21` / `stp x20,x19` / `stp x29,x30` |
| `cluster_read_contig`  | `0xfffffff00a3bb554` | `sub sp,#0x1c0` / `stp x28,x27…` |
| `vm_map_get_upl`       | `0xfffffff00a3b10fc` | `hint #127` (paciasp) / `sub sp,#0x1c0` |
| `upl_phys_page`        | `0xfffffff00a71aeb4` | `hint #95` / `cbz x0` / `ldr w8,[x0,#0x14]` / `ldr w9,[x0,#0x20]` |

Second `vm_map_get_upl` call sites (the TOCTOU point):

```
cluster_write_contig:  movz x9,#0x104 → orr w5,w8,w9
                       0xfffffff00a3b52f0  bl 0xfffffff00a3b10fc   ; vm_map_get_upl (2nd)
                       0xfffffff00a3b52f4  cbnz w0, 0xfffffff00a3b53d8
                       0xfffffff00a3b5300  bl 0xfffffff00a71aeb4   ; upl_phys_page(pl,0) — NO re-check

cluster_read_contig:   movz x9,#0x145 → orr w5,w8,w9
                       0xfffffff00a3bb994  bl 0xfffffff00a3b10fc   ; vm_map_get_upl (2nd)
                       0xfffffff00a3bb998  cbnz w0, 0xfffffff00a3bbbdc
                       0xfffffff00a3bb9a4  bl 0xfffffff00a71aeb4   ; upl_phys_page(pl,0) — NO re-check
```

Full-range bit-6 (`0x40`) scan (`tst/ands` imm + `tbz/tbnz #6`): **no `UPL_PHYS_CONTIG`
re-validation** after either second call. The only logical-immediate test in
`cluster_read_contig` is at `0xfffffff00a3bbcf8` (`tst x16,#0x3ff`), which is not bit 6.

**Caveat (honesty):** absence of the re-check in `cluster_*_contig` is confirmed in the
binary, but exploitability also depends on the fix possibly living **inside**
`vm_map_get_upl` / `upl_phys_page` (not yet disassembled end-to-end) — see HANDOFF «Сессия 11 —
Следующие шаги». So this is *not* a claim of «ready-to-exploit».

