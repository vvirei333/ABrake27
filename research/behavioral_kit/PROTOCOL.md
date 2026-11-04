# Behavioral test kit — ASTC/KTX delivery probe (iPhone, iOS 27.0.1)

**Что это:** 18 тест-фикстур (не эксплойт, ни в коем случае не «джейлбрейк-тулза»).
Цель — ответить на один вопрос: **доходит ли ASTC/KTX/IAKC-файл до ImageIO-парсера
на реальном устройстве**, и есть ли реакция (крэш/аномалия) от crafted-полей.

**Устройство:** iPhone 13/14 на iOS 27.0.1 (24A446). Всё на свой страх и риск,
девайс должен быть твой. Это research-фикстуры из проекта ABrake27.

## Шаг 1 — доставка тремя каналами (для каждого файла, по одному)

| Канал | Как | Что проверяем |
|-------|-----|---------------|
| **iMessage → себе** | Отправить файл **как документ** («+» → файл), НЕ как фото | BlastDoor → IAKC → mediaanalysisd путь |
| **AirDrop → Photos** | AirDrop на себя, сохранить в Фото | PhotoLibrary → mediaanalysisd путь |
| **Файлы (Files app)** | Просто положить в On My iPhone / iCloud Drive | Spotlight/QuickLook путь |

⚠️ iMessage может конвертнуть «фото» — поэтому строго **как файл/документ**.
Группируй по 3-5 файлов за раз, чтобы понять, какой именно сработал.

## Шаг 2 — наблюдение

1. **Сразу после доставки:** зависания, вылет приложения Сообщения/Фото, ребут.
2. **Через 5-10 минут** (mediaanalysisd работает в фоне, анализ не мгновенный):
   Settings → Privacy & Security → Analytics & Improvements → Analytics Data →
   искать свежие `mediaanalysisd-*.ips`, `ChatKit`, `ImageIO`, `mediaplaybackd` джетсоны.
3. **sysdiagnose** (если ничего видимого): одновременно зажать Volume+ + Volume- + Power
   на 1-4 сек → в Analytics Data появится `sysdiagnose_...`. Внутри искать
   `mediaanalysisd`, `MADImage`, `ASTC`.

## Шаг 3 — что считается «хитом»

- ✅ **Крэш-джетсон** любого процесса с frames в `ASTCReadPlugin` / `IIO_Reader_ASTC` /
  `CGImageSourceCreateWithData` — jackpot, это цепочка до уязвимого кода
- ✅ Крэш в `MADImageASTCFormatReader` / ChatKit `CKMultiFrameImage` — доставка есть,
  парсинг есть, крэш раньше ImageIO — тоже результат
- ✅ Файл молча принят, но в sysdiagnose видно, что mediaanalysisd **сканировал** его —
  это подтверждение delivery-path без крэша (норма: файл не триггерит)
- ❌ Файл отклонён на доставке / не индексируется — канал отпадает, пробуем следующий

## Приоритет файлов (в порядке «наиболее интересных»)

1. `ktx/ext_confusion.ktx` — ASTC-магия под именем .ktx (валидатор же проверяет «ktx»)
2. `astc/dim_x_ffffff.astc`, `dim_y_ffffff.astc`, `wrap_*.astc` — 64-bit multiply
   overflow-кандидаты (LE24 max размерности)
3. `astc/block_x_00.astc`, `block_y_00.astc`, `block_z_0.astc` — деление на 0 кандидаты
   (бета-гвардов на block dims нет!)
4. `iakc/one_wrap.bin`, `valid_2img.bin` — синтетический IAKC-контейнер
5. `ktx/astc4x4.ktx`, `astc6x6.ktx` — валидные KTX с ASTC payload
6. `dds/*` — DDS/DX10 sweep (вторая цель того же плагина)

## Что прислать назад

- Имена файлов × каналы × результат (принят/отклонён/крэш + имя процесса)
- Если крэш: сам `.ips` файл из Analytics Data
- sysdiagnose, если было что-то странное без явного крэша

## Честная рамка

Вероятность крэша не 100% — мы проверяем ДОСТИЖИМОСТЬ пути, а не гарантированный
эксплойт. Отрицательный результат тоже ценен (закрывает канал доставки). Никаких
гарантий; на не своём устройстве не делать.
