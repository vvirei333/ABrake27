# HANDOFF — iPhone iOS 27.0 vs 27.2 diff / разбор CVE-2025-43520

> Файл для передачи контекста между ИИ-сессиями. Обновлять после каждой сессии.
> Дата последнего обновления: сессия 3 (см. журнал ниже).

## Что это

Проект диффа прошивок iPhone14,5:
- `ipsws/stable_27.0.1_24A446.ipsw`, `ipsws/beta_27.2_24B5089g.ipsw` (~11 ГБ каждый).
- `kernelcaches/{stable,beta}/<build>/kernelcache.release.iPhone14,5` (Mach-O arm64e) + `.a2s` (GOT-заглушки, 9591 байт, символьной таблицы функций НЕТ).
- `extracted/{stable,beta}/.../root/...` — распакованный rootfs.
- `diff_output/27_0_1_24A446_vs_27_2_24B5089g_iPhone14,5/` — markdown-отчёты по дизассемблеру (DYLIBS, KEXTS, FILES, MACHOS, SANDBOX, IBOOT, FIRMWARE, Entitlements).
- `amfi_stable_full.asm`, `amfi_beta_full.asm` — полный дизасм AMFI.

**Версии ядер (из `strings` по kernelcache):**
- stable: `Darwin Kernel Version 27.0.0 ... root:xnu-13432.2.10~2/RELEASE_ARM64_T8110`
- beta:   `Darwin Kernel Version 27.2.0 ... root:xnu-13432.40.162~93/RELEASE_ARM64_T8110`

**ВАЖНО:** исходников XNU в проекте НЕТ. Это IPSW-дифф, а не дерево кода.
`vfs_cluster.c` — это файл из публичного дерева Apple (`bsd/vfs/vfs_cluster.c`), в воркспейсе его нет.

## Задача сессии 1

Проверить, есть ли в `vfs_cluster.c` логические ошибки класса Race Condition / TOCTOU
при проверке флагов буфера, аналогичные CVE-2025-43520, в `cluster_write_contig`,
`cluster_read_contig` и соседних методах (отсутствие повторной валидации `UPL_PHYS_CONTIG`).

## Что сделано

1. Подтверждено: `vfs_cluster.c` и символы `UPL_PHYS_CONTIG`/`cluster_*_contig` в воркспейсе отсутствуют
   (проверено `search_codebase` по 4583 файлам и `find` по диску).
2. Скачан реальный upstream-исходник XNU (`main`) → сохранён в `research/CVE-2025-43520/vfs_cluster.c`
   (8400 строк) и в рабочую копию `/tmp/xnu/vfs_cluster.c`.
   ВНИМАНИЕ: `/tmp` эфемерный; при необходимости перекачать:
   `curl -sSL -o /tmp/xnu/vfs_cluster.c https://raw.githubusercontent.com/apple-oss-distributions/xnu/main/bsd/vfs/vfs_cluster.c`
3. Изучены источники по CVE-2025-43520 (NVD/Mallory, gist Muirey03, зеркало `wh1te4ever/xnu_1day_practice`).
4. Проанализированы `cluster_io_type`, `cluster_write_contig`, `cluster_read_contig`,
   `cluster_write_direct`, `cluster_align_phys_io` и все сайты `vm_map_get_upl`/`upl_phys_page`.
5. Проверено наличие функций в обоих kernelcache (`strings`).

## Находки (главное)

### CVE-2025-43520 — суть
- CWE-362, «Apple XNU VFS Kernel Race Condition Memory Corruption», CVSS 5.5, цепочка DarkSword.
- Механизм — **TOCTOU** между первым и вторым вызовом `vm_map_get_upl` в `bsd/vfs/vfs_cluster.c`:
  1. `cluster_write_ext`/`cluster_read_ext` → `cluster_io_type()`.
  2. `cluster_io_type()` делает `vm_map_get_upl(..., upl_flags = UPL_QUERY_OBJECT_TYPE, ...)`
     и по `upl_flags & UPL_PHYS_CONTIG` выставляет `IO_CONTIG` (иначе `IO_DIRECT`/`IO_COPY`).
  3. При `IO_CONTIG` вызывается `cluster_write_contig()` / `cluster_read_contig()`.
  4. Эти функции **второй раз** вызывают `vm_map_get_upl` (уже без `UPL_QUERY_OBJECT_TYPE`)
     и **НЕ перепроверяют** вернувшийся `upl_flags`.
  5. Далее берётся `upl_phys_page(pl, 0)` и считается, что весь диапазон физически непрерывен.
  6. Между T1 и T2 атакующий перемапливает VA на НЕпрерывный объект → OOB R/W по physmem.

### Точные строки в `/tmp/xnu/vfs_cluster.c` (main, 8400 строк)
| Функция | Первый чек (cluster_io_type) | Второй `vm_map_get_upl` | Опасное использование |
|---|---|---|---|
| `cluster_write_contig` | вызовы стр. 3032 / 3130 | стр. **3679** | `src_paddr = upl_phys_page(pl,0)` — стр. **3704** |
| `cluster_read_contig`  | вызовы стр. 4639 / 4668 | стр. **6069** | `dst_paddr = upl_phys_page(pl,0)` — стр. **6094** |

`cluster_io_type()` — определение на стр. 6214; проверка флага на стр. **6262** (`if (upl_flags & UPL_PHYS_CONTIG) *io_type = IO_CONTIG;`).
После `num_upl++` (стр. 3690 write / 6083 read) проверки НЕТ.

### Официальный фикс Apple
Вставить после `num_upl++` в ОБЕИХ функциях:
```c
if (!(upl_flags & UPL_PHYS_CONTIG)) {
    /* The created UPL needs to have the UPL_PHYS_CONTIG flag. */
    error = EINVAL;
    goto wait_for_cwrites;   /* в cluster_read_contig — wait_for_creads */
}
```
Проверено: в скачанном `main` этого патча НЕТ — единственное вхождение `UPL_PHYS_CONTIG`
во всём файле — стр. 6262. То есть публичный drop либо отстаёт, либо снят до фикса.

### Соседние методы (проверено — этой гонкой НЕ затронуты)
- `cluster_write_direct` (стр. 3357) тоже зовёт `vm_map_get_upl`, но НЕ делает допущения о
  непрерывности: идёт по страницам и валидирует каждую (`upl_valid_page`, стр. 3382–3389).
- `cluster_align_phys_io` (стр. 7253, `upl_phys_page` на стр. 7317) работает с UPL ФАЙЛА (ubc);
  физический адрес приходит из доверенного contig-пути.
- Все сайты `vm_map_get_upl` в файле: 3357 (write_direct), 3679 (write_contig), 6069 (read_contig),
  6248 (io_type). Опасны только два contig-варианта.

### Статус для нашего устройства (iOS 27.0 / 27.2)
- CVE-2025-43520 закрыт в iOS/iPadOS **26.1**, т.е. ЗАДОЛГО до 27.x.
- Значит на 27.0.1/27.2 этот конкретный баг уже пропатчен → «поиграться» им на актуальной
  прошивке не выйдет; нужен девайс/эмулятор на iOS ≤ 26.0.
- Строки `cluster_read_contig`/`cluster_write_contig`/`vfs_cluster.c` присутствуют в обоих kernelcache.
- Факт наличия фикса по `strings` не проверяется (фикс — ветка EINVAL, не строка).
  Для проверки нужен дизасм (Ghidra/IDA) и поиск проверки бита `UPL_PHYS_CONTIG`
  сразу после второго `vm_map_get_upl` (якоря — строки `"cluster_write_contig"`, `"cluster_read_contig"`).
  Символьной таблицы в kernelcache нет (`.a2s` — только GOT).

## Следующие шаги (для новой сессии)
1. Дизассемблировать `cluster_write_contig`/`cluster_read_contig` из
   `kernelcaches/stable/24A446__iPhone14,5/kernelcache.release.iPhone14,5` (и beta),
   проверить наличие ветки EINVAL (пропатчено ли на 27.0/27.2).
2. Просканировать всё ядро (не только vfs_cluster.c) на паттерн:
   `vm_map_get_upl` + `upl_phys_page`/`UPL_PHYS_CONTIG` без повторной валидации.
3. Искать регрессировавшие/новые инстансы того же класса между stable и beta через `diff_output/KEXTS`.

## Dopamine — в каком направлении бьёт (карта эксплойтов)

Источники: `opa334/Dopamine` ветка `3.x` (`Application/Dopamine/Exploits/`), TheAppleWiki
(`Kernel_Exploits`, `BadRecovery`, `OobPCI`), `felix-pb/kfd`, writeup ClearSword (TheRealClarity),
iClarified (Dopamine 3.0).

Dopamine 3.x таскает несколько сменных эксплойт-бандлов (плагины по чипу/версии):

| Бандл | CVE | Подсистема / поверхность | Класс бага |
|---|---|---|---|
| **kfd** (physpuppet) | CVE-2023-23536 | VM (PTE) | dangling PTE → PUAF → KRKW |
| **kfd** (smith) | CVE-2023-32434 | VM (PTE) | integer overflow → PUAF |
| **kfd** (landa) | CVE-2023-41974 | VM (PTE) | dangling PTE → PUAF |
| **multicast_bytecopy** | CVE-2021-30937 | socket / multicast | OOB write (наследник multipath_kfree) |
| **weightBufs** | CVE-2022-32845 / 32948 / 42805 / 32899 | **ANE** (Apple Neural Engine) | signature bypass + OOB read / integer underflow |
| **dmaFail** | CVE-2023-38606 | GPU / MMIO **DMA**-регистр | незащищённый MMIO/DMA-регистр → запись в физпамять (Operation Triangulation) |
| **badRecovery** | CVE-2022-26765 | **PAC bypass** (thread fault handlers) | recovery-handler делал обычный `ret` без проверки PAC → неаутентифицированный return в ядре |
| **oobPCI** (Fugu15) | CVE-2022-26763 | kernel r/w (PCIe) | — |
| **DarkSword** | CVE-2025-43520 (+ CVE-2025-43510 и др.) | **VFS/VM** | **race/TOCTOU** на `UPL_PHYS_CONTIG` в `cluster_*_contig` |
| **ClearSword** | CVE-2025-43520 | **VFS/VM** | то же, чистая реимплементация DarkSword (iOS 15–26.0.1) |
| **Titan** (Alfie) | — (bypass) | PPL / SPTM | обход защиты (iOS 16.5.1–17.3.1) |
| **momentarius** (staturnzz/TheRealClarity) | — (bypass) | PPL | обход защиты (A12/A13: 16.6–18.7.1 и 26.0–26.0.1) |

**Выводы по направлению:**
- Современное направление Dopamine для новых версий — **DarkSword/ClearSword**: гонки в VM/VFS
  (та самая `CVE-2025-43520` из Сессии 1). Именно туда и надо смотреть.
- Классические направления: VM-подсистема (PUAF/dangling PTE, kfd), socket/multicast OOB,
  ANE (weightBufs), GPU/MMIO-DMA (dmaFail), PAC/PPL/SPTM-байпасы (badRecovery, Titan, momentarius).

**ВАЖНО для нашего устройства (iPhone14,5 = iPhone 13 = A15, iOS 27):**
- TheAppleWiki `Kernel_Exploits`: **«iOS 27 — No kernel exploit is publicly available on iOS 27»**.
- Dopamine 3.0: A15 поддерживается только на iOS 16.5.1–17.3.1. iOS 26 — только A12/A13.
  iOS 27 beta — только Corellium для тестов (нет SPTM-байпаса для iOS 17.4+).
- Итог: на A15/iOS 27 публичного пути нет → **искать новый баг и реверсить** (план сессии 3).

## Журнал сессий

### Сессия 2 (карта эксплойтов Dopamine)
- Собрана карта эксплойт-бандлов Dopamine 3.x и их CVE/подсистем/классов (таблица выше).
- Подтверждено: CVE-2025-43520 = кернел-эксплойт **DarkSword**, ClearSword — его реимплементация.
- Подтверждено: **на iOS 27 публичного кернел-эксплойта нет**; Dopamine на A15/iOS 27 не работает.
- Направление для дальнейшего копания: VFS/VM-гонки (класс CVE-2025-43520) + PUAF (VM).

### Сессия 3 (AMFI sideloading — DER-entitlements)
- **Найден патч AMFI между 27.0.1 и 27.2** в функции `amfi_audit_no_entitlements()`.
- **27.0.1:** AMFI НЕ проверяет DER-кодированные entitlements, если бинарник сообщает `no entitlements`
  (`cd_has_entitlements == 0`). Возможен sideloading self-signed IPA без DER-секции.
- **27.2 beta:** добавлен DER-парсер (`bl 0x8f7118c`) → если в `no entitlement` контексте найден DER-блоб
  → отказ. Новые строки (только в beta):
  - `AMFI: DER entitlement extraction failure in no entitlement check.`
  - `AMFI: DER entitlements present in no entitlement check. (length: %ld, ptr: %s)`
- **Функции (Ghidra):** stable `sub_ffffffff08e943dc`, beta `sub_ffffffff08f5021c`.
- **Вектор sideloading в 27.0.1:** IPA без DER-entitlements в CodeDirectory → AMFI пропускает.
- **TODO:** найти `amfi_audit_no_entitlements` по символу/смещению; разобраться с
  `research_mode_state` / `_unrestrict_local_signing_cdhash` (boot-arg?); собрать PoC.
- Артефакты: `/tmp/bt_amfi.txt` (442 строки, содержит DER-строки), `/tmp/st_amfi.txt`,
  `amfi_stable_full.asm`, `amfi_beta_full.asm`, `/tmp/amfi_diff.py`.
- **Статус: ПАУЗА (перерыв).** Далее:
  - `_unrestrict_local_signing_cdhash` в asm напрямую НЕ найден (символы в дампе с префиксом/декорацией) —
    искать по контексту: строка `_set_local_signing_public_key` присутствует в `amfi_stable_full.asm`
    на строках 19025, 19162, 19215, 19356, 19475, 19573, 19577 (сигнатура `int _set_local_signing_public_key(struct proc *, user_addr_t)`),
    строка `amfi_allow_3p_launch_constraints` на строке 8847.
  - Следующий шаг: просмотреть функцию(и), вызывающие `_set_local_signing_public_key` (строки ~19000-19600),
    и найти, где принимается решение разрешать local signing (boot-arg / research mode / dev mode).
  - Также TODO: найти `amfi_audit_no_entitlements` по символу; собрать PoC (IPA без DER).

### Сессия 4 (AMFI diff завершён — точный патч + race-анализ CVE-2025-43520)
Полностью восстановлена картина патча DER-чека и сняты ложные «beta-only» гипотезы.

**Точный патч (DER no-entitlement check):**
- Родитель обеих функций = `vnode_check_signature` (строка `"AMFI: vnode_check_signature called with platform %d\n"`).
  - stable: caller `sub_fffffff008e995f4` (стр. 17123), вызов `amfi_audit_no_entitlements` `sub_fffffff008e943dc` на стр. 17668.
  - beta:   caller `sub_fffffff008f55498` (стр. 17150), вызов `sub_fffffff008f5021c` на стр. 17695.
- **stable `sub_fffffff008e943dc` (стр. 11301–11340):** только ОДИН XML-экстрактор `bl 0xfffffff008eb52f8`.
  Если XML-блоб пуст (ptr==0 && len==0) → `return 1` (no entitlements). DER **не проверяется**.
- **beta `sub_fffffff008f5021c` (стр. 11301–11367):** сначала XML-экстрактор `bl 0xfffffff008f7119c`,
  затем, если XML пуст, ДОПОЛНИТЕЛЬНО вызывается DER-экстрактор `bl 0xfffffff008f7118c`.
  - `sub_fffffff008f7118c` = DER-экстрактор (внешний veneer, за концом дампа 0x8f70aa8).
  - `sub_fffffff008f7119c` = XML-экстрактор (тот же veneer-диапазон 0x8f711xx).
  - Новые beta-строки: `"AMFI: DER entitlement extraction failure in no entitlement check."` (11342)
    и `"AMFI: DER entitlements present in no entitlement check. (length: %ld, ptr: %s)"` (11359).
- **ВЫВОД:** beta 2 закрывает дыру: если CodeDirectory сообщает «нет entitlements», но в DER-секции
  всё же есть entitlement-блоб → отказ. В 27.0.1 этот путь отсутствует → self-signed IPA без DER-секции
  проходит `amfi_audit_no_entitlements`.

**Опровергнутые гипотезы (НЕ beta-only, есть и в stable):**
- `"AMFI: developer mode is force enabled"` — есть в ОБЕИХ (stable 9191, beta 9191). Не новый путь.
- Entitlement `com.apple.private.amfi.developer-mode-control` — есть в ОБЕИХ, ровно 4 call-site
  (stable 791/832/873/897, beta 791/832/873/897). Не новый.
- `cs_enforcement_disable` boot-arg — в ОБЕИХ (stable 15957, beta 15984).
- `amfi-allows-trust-cache-load` (device-tree `/chosen`) — в ОБЕИХ (stable 6127, beta 6127), с size-валидацией
  (`cmp w0,#4` → иначе "unexpected size") в обеих.
- `amfi-only-platform-code` (device-tree `/chosen`) — в ОБЕИХ (stable 15993, beta 16020), с size-валидацией.
- `_set_local_signing_public_key` (local signing) — в ОБЕИХ (stable 6 шт. + 1, beta 6 шт. + 1).

**Force-enabled флаг (developer mode):**
- beta: `data_fffffff00af8a658` байт `+0x7` (`__DATA.__data`), читается на стр. 902 (`sub_fffffff008f46f28`) и 9186 (`sub_fffffff008f4e0f0`).
- stable: `data_fffffff00aeaa188` байт `+0x7`, читается на стр. 902 и 9186.
- Write-сайт флага в AMFI-дампе НЕ найден (строка 27213 — это запись в ACM LibCall буфер `x21`, не флаг).
  Значит флаг пишется из ACM (AppleCredentialManager, через SEP) / другого kext, не из AMFI. `sub_fffffff008f4e0f0`
  — функция «принятия решения» об enable developer mode (mobile obliteration / research variant / force / trustCache).

**Race-анализ CVE-2025-43520 (`research/CVE-2025-43520/vfs_cluster.c`, main, 8400 строк):**
- `/tmp/fs2.txt` и `/tmp/xnu/` УТЕРЯНЫ (эфемерные). Исходник сохранён в `research/CVE-2025-43520/vfs_cluster.c`.
- `cluster_io_type` (стр. 6214): первый вызов `vm_map_get_upl` (стр. 6248) **с** `UPL_QUERY_OBJECT_TYPE`,
  по `upl_flags & UPL_PHYS_CONTIG` выставляет `IO_CONTIG` (стр. 6262–6263).
- `cluster_write_contig` (стр. 3624): ВТОРОЙ вызов `vm_map_get_upl` (стр. 3679) **БЕЗ** `UPL_QUERY_OBJECT_TYPE`,
  и возвращённый `upl_flags` **НЕ перепроверяется**. Далее `src_paddr = upl_phys_page(pl, 0) << PAGE_SHIFT` (стр. 3704)
  и весь диапазон трактуется как физически непрерывный (комментарий стр. 3648–3652 полагается на раннюю проверку).
- `cluster_read_contig` (стр. 5993): ВТОРОЙ вызов `vm_map_get_upl` (стр. 6069) БЕЗ `UPL_QUERY_OBJECT_TYPE`,
  `dst_paddr = upl_phys_page(pl,0)` (стр. 6094), флаги не перепроверяются.
- **Класс бага:** TOCTOU между T1 (`cluster_io_type`) и T2 (`cluster_*_contig`): атакующий перемапливает VA
  с непрерывного объекта на НЕпрерывный → OOB R/W по physmem через `upl_phys_page`.
- Это и есть CVE-2025-43520 (DarkSword/ClearSword, CWE-362, CVSS 5.5).

**Сессия 4 (ACM deep-dive):** `LibCall_BuildCommand` проанализирована в beta.

### 4.1 ACM-LibCall интерфейс (`sub_fffffff008f5e170`, стр. 27153)

Функция с прологом:

```asm
sub_fffffff008f5e170:
  bti  c
  pacibsp
  sub  sp, sp, #0x90
  stp  x28, x27, [sp, #0x30]
  stp  x26, x25, [sp, #0x40]
  stp  x24, x23, [sp, #0x50]
  stp  x22, x21, [sp, #0x60]
  stp  x20, x19, [sp, #0x70]
  stp  fp,  lr,  [sp, #0x80]
  add  fp, sp, #0x80
  mov  x24, x5    ; output (команда)
  mov  x19, x4    ; dataSize
  mov  x20, x3    ; data
  mov  x22, x2    ; flags
  mov  x23, x1    ; type
  mov  x25, x0    ; version (magic)
  adrp x28, 0xfffffff00af8a000
  add  x28, x28, #0x6b8  ; "((" — debug-level global
  ldrb w8, [x28]         ; read debug-level
  ...
  cmp  w8, #0xa
  b.hi skip_debug
  ; debug: "%s: %s: called.\n" + "ACM" + "LibCall_BuildCommand"
```

**Параметры:** `(version, type, flags, data, dataSize, &command)`.

**Проверки аргументов (пролог):**
1. `cbnz x20, ... / cbnz x19, ...` — data ИЛИ dataSize могут быть NULL (как минимум один не ноль)
2. `cbz x24, error` — output-команда (буфер) **обязательна**
3. `adds x26, x19, #8; b.hs overflow` — `dataSize + 8 > SIZE_MAX` → overflow guard

**Затем** — выделение памяти `bl 0xfffffff008f5ea6c` (acm_malloc_data) и **заполнение структуры команды:**

```asm
0xfffffff008f5e240:  str  w8,  [x21]          ; [0] = 0x53435244 = "DRCS" (ACM magic)
0xfffffff008f5e244:  strb w25, [x21, #0x4]    ; [4] = version
0xfffffff008f5e248:  strb w23, [x21, #0x5]    ; [5] = type (request)
0xfffffff008f5e24c:  strb w22, [x21, #0x6]    ; [6] = flags
0xfffffff008f5e250:  mov  w8, #0x2
0xfffffff008f5e254:  strb w8,  [x21, #0x7]    ; [7] = kACMOperation (0x2)
0xfffffff008f5e258:  cbz  x19, skip_data
0xfffffff008f5e25c:  add  x0, x21, #0x8       ; payload after header
0xfffffff008f5e260:  mov  x1, x20
0xfffffff008f5e264:  mov  x2, x19
0xfffffff008f5e268:  bl   0xfffffff008f7165c  ; memcpy(data → cmd+8, dataSize)
```

### 4.2 `acm_command_t` структура (reverse-engineered)

| Смещение | Размер | Поле | Значение в дампе |
|----------|--------|------|------------------|
| `+0x0` | 4 байта | `magic` | `0x53435244` = ASCII `"DRCS"` (DRCS = Darwin Restricted Credential Service?) |
| `+0x4` | 1 байт | `version` | `w25` (передаётся caller'ом) |
| `+0x5` | 1 байт | `type` | `w23` (request type) |
| `+0x6` | 1 байт | `flags` | `w22` (флаги) |
| `+0x7` | 1 байт | `operation` | **`0x2`** (захардкожено в `LibCall_BuildCommand`) |
| `+0x8` | N байт | `payload` | data (если есть) |

**Ключевой вывод:** `strb w8,[x21,#0x7]` на строке **27213** — это запись `kACMOperation = 2` в **заголовок команды**, а НЕ в глобал `data_fffffff00af8a658+0x7`. Флаг дев-мода НЕ ЗАПИСЫВАЕТСЯ через этот путь.

### 4.3 Write-сайт глобала `data_fffffff00af8a658+0x7` — не найден

Поиск по всему `amfi_beta_full.asm`:

| Паттерн | Результат |
|---------|-----------|
| `grep '#0x658'` | только **2 read-сайта** (стр. 902 и 9186) |
| `grep 'af8a6'` | ни одного `str*` в этот диапазон |
| `grep 'strb.*x8, \[x8, #0x7\]'` | только строка 27213 — но это `[x21]`, а `x21` = выделенный буфер, а не глобал |

→ **Флаг `data_fffffff00af8a658` НЕ пишется из AMFI**. Write-сайт находится ВНЕ AMFI — вероятно в AppleCredentialManager.kext или напрямую из SEP после обработки LibCall-команды.

### 4.4 Caller анализа (`initAppleCredentialService`, стр. 26844)

```asm
0xfffffff008f5dc04:  add  x5, sp, #0x30          ; &command (output)
0xfffffff008f5dc08:  mov  x0, x24                ; service
0xfffffff008f5dc0c:  mov  w1, #0                 ; version
0xfffffff008f5dc10:  mov  w2, #0                 ; type
0xfffffff008f5dc14:  mov  x3, x23                ; data
0xfffffff008f5dc18:  mov  x4, x19                ; dataSize
0xfffffff008f5dc1c:  ...
0xfffffff008f5dd04:  bl   0xfffffff008f5e170     ; LibCall_BuildCommand
```

После вызова: `cbz x0, fail` / `mov x19, x0` → команда построена успешно.
Затем проверка `cmp x23, #7; b.ls ...` (стр. 127–128) — размер ответа ≥ 8 байт.
И возврат через `sub_fffffff008f5df90` / `loc_fffffff008f5e074`.

**Функция инициализирует ACM-сервис:** вызывает `AppleCredentialManager` через `IOServiceOpen`, получает `x26` → `x24`, затем строит LibCall-команду. Строки:
- `"AppleCredentialManager"` (стр. 26868)
- `"initAppleCredentialService"` (стр. 26893)
- `"ACMKernelTransport"` (стр. 26922)

### 4.5 Итог по force-enabled флагу

```
  ACM/SEP (writer)                        AMFI (reader)
  ──────────────                          ─────────────
  [SEP подтверждает dev-mode]
  → ACM.kext пишет байт в
    data_fffffff00af8a658+0x7            ldrb w8,[data+0x7]
                                           tbnz w8,#0
                                           "developer mode is force enabled"
```

AMFI только **читает** флаг. Write-сайт — вне AMFI (ACM.kext → SEP round-trip через `LibCall_BuildCommand`/`LibCall_SendCommand`).
**Следующие шаги:**
- Найти внешние veneer'ы `0x8f7118c`/`0x8f7119c`/`0x8f710fc` за пределами AMFI-среза (нужен полный kernelcache дамп,
  т.к. `amfi_beta_full.asm` обрывается на `0x8f70aa8`).
- Найти write-сайт флага `data_fffffff00af8a658+7` (ACM / другой kext).
- Поискать символ `amfi_audit_no_entitlements` и `_unrestrict_local_signing_cdhash` в полном kernelcache.

---

### Сессия 5 (автоматизированный кросс-чек, `research/macho_tool.py`) — write-сайт флага НЕ закодирован прямым `adrp+add+strb`

Написан (DeepSeek, в VS Code, параллельно с этой сессией) и доведён до рабочего состояния `research/macho_tool.py` —
минимальный парсер Mach-O `LC_SEGMENT_64` (VA↔file-offset) + байт-паттерн-поиск по полному kernelcache
(не только AMFI-срезу, а **всем** сегментам fileset'а: `__TEXT`, `__PRELINK_TEXT`, `__DATA_CONST`, `__DATA_SPTM`,
`__TEXT_EXEC`, `__TEXT_BOOT_EXEC`, `__PRELINK_INFO`, `__DATA`, `__LINKEDIT`).

**Исправлен баг при ревью (до того как дипсик сам его пофиксил):** `struct.unpack('<16sQQQQ', data[off+8:off+48])`
читает 48 байт из 40-байтного слайса (`segname(16)+vmaddr(8)+vmsize(8)+fileoff(8)+filesize(8)=48`, а слайс
`off+8:off+48` даёт только `40`) → падение на первом `LC_SEGMENT_64`. Правильный слайс — `off+8:off+56`.
Дипсик исправил это сам в процессе работы, независимо.

**Найден и исправлен более важный методологический баг (ad-hoc проверка, не правка файла):** первая версия
`findadd`-поиска захардкодила базовый регистр `add` как `x8` (`(8<<5)` в маске паттерна). Второй известный
read-сайт флага (`asm line 9186`, функции `sub_fffffff008f46f28`/`sub_fffffff008e92594` и их пары) реально
использует **`x9`**, не `x8`:
```asm
adrp x9, 0xfffffff00af8a000
add  x9, x9, #0x658        ; data_fffffff00af8a658
ldrb w9, [x9, #0x7]
```
Захардкоженный `x8`-паттерн этот сайт **пропускал молча** — ложное "не найдено" на известном read-сайте,
а значит и на гипотетическом write-сайте тоже, если бы он использовал другой регистр.

**Исправленный скан (ad-hoc, вне `macho_tool.py`):** декодирует `ADRP`+`ADD(imm,64-bit,shift=0)` для ЛЮБОЙ пары
регистров (не только `x8`/`x9`), фильтрует по точной целевой странице символа (`0xaf8a000` beta / `0xaeaa000`
stable) и точному low12 (`0x658` / `0x188`), затем декодирует СЛЕДУЮЩУЮ инструкцию как `ldrb`/`strb` на том же
регистре+`#0x7`. Прогнан по **обоим** полным kernelcache (stable + beta), по всем файловым сегментам:

| Firmware | Найдено `adrp+add` на точный символ | Из них `strb` (запись) | Из них `ldrb` (чтение) |
|---|---|---|---|
| beta 27.2 b2 | 2 (`0xfffffff008f46f58` rn=x8, `0xfffffff008f4e3d8` rn=x9) | **0** | 2 (оба уже известны) |
| stable 27.0.1 | 2 (`0xfffffff008e8b118` rn=x8, `0xfffffff008e92598` rn=x9) | **0** | 2 (оба уже известны) |

**Вывод:** во всём kernelcache (не только AMFI-срезе — это закрывает TODO выше про "найти veneer'ы за пределами
AMFI-среза", раз скан теперь бьёт по полному файлу) литерального `adrp+add(#offset)+strb[reg,#0x7]` на этот
символ **нет вообще**, ни в stable, ни в beta. Это значит write-сайт (если он существует в этом kernelcache
как отдельном Mach-O) кодируется НЕ через прямую компилируемую с нуля адресацию константы, а вероятно:
(a) через указатель, полученный как возврат из другой функции/аксессора в callee-saved регистре и затем
использованный в другой функции без собственного `adrp+add` (нужен скан на `strb w?,[xN,#0x7]` для ЛЮБОГО `xN`
с кросс-референс-проверкой, откуда в `xN` взялось значение — это за пределами возможностей одного линейного
байт-скана, нужен настоящий decompiler/Ghidra data-flow), либо (b) физически не в этом образе — подтверждает
гипотезу ACM/SEP (SEP firmware отдельный образ, не часть iOS kernelcache; либо AppleCredentialManager это
userspace-демон, пишущий через sysctl/shared-memory/MIG, а не через прямую запись в адресное пространство ядра).

**Следующий шаг, если продолжать именно эту нить:** написать более общий скан `strb w?,[x?,#0x7]` (любые
регистры) по всему kernelcache и для каждого хита вручную/через Ghidra data-flow проверить, откуда взялся
базовый регистр — ищем любую функцию, которая возвращает указатель на этот конкретный байт (или на содержащую
его структуру) и затем передаёт его по цепочке в место, где происходит `strb`. Это отдельная, более трудоёмкая
RE-задача (аналог проблемы с PAC-vtable в IOSurface-ветке — см. `ios27-amfi-research.md` в памяти), не быстрый
следующий шаг.

---
