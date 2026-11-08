# BQ272/BQEscape bad_query + MCM surface diff (27.0.1 vs 27.2) — 2026-11-08

## What arrived (TG scene, provenance: murk-sus et al.)
- `BQ272-unsigned.ipa` v11 (app.lake9674.aquila8809, unsigned) — probe: dlopen MCM →
  `container_query_set_include_other_owners` enumeration ("bq_list") → own
  AppGroup `Library/Caches` symlink-swap → `container_copy_sandbox_token`/`consume`
  escape → PosterBoard finder. Embedded `respring.html` = WebKit crasher
  (500×backdrop-filter + share loop). **Static analysis only — never executed.**
- 5 device logs (2026-11-08): all NEGATIVE. Plain sideload: group=(null) →
  symlink errno=14. Via LiveContainer: symlink ret=0, escape result=0x0,
  but `mg: escape failed -4`, PosterBoard container=(null).
- Video (Murka): **POSITIVE run** — "BQEscape" GUI app applies MobileGestalt
  tweaks (Dynamic Island etc.) + imports PosterBoard .tendies ("2 descriptors
  written") and the wallpaper really changes. = cross-container WRITE into
  systemgroup.com.apple.mobilegestaltcache and com.apple.PosterBoard WITHOUT
  jailbreak. Device build UNVERIFIED (no identity logged) — RECON required
  before we can call this "works on 27.2 RC" (scene claims 27.2 RC).

## Our binary diff (extracted from dyld caches, llvm-objdump + normalized diff)
- `MobileContainerManager.framework` (client): 135736 bytes both builds;
  instruction streams identical, diff = adrp symbol targets only. **Client untouched.**
- `libsystem_containermanager.dylib` (the container_* C API used by BQ272):
  399KB → 416KB. `container_copy_sandbox_token` body **57 lines, IDENTICAL** in
  both. Token-copy/consume client path unchanged.
- **NEW in 27.2 (the finding): a Container Supersession subsystem** —
  `MCMContainerSupersession`, `MCMCommandSupersedeContainer`,
  `MCMContainerIdentityRecord._instanceUUID`, `MCMContainerCacheEntryIdentity._instanceUUID`,
  `NSUUID(MCMUUIDIsNull)`, `MCMMetadataDataProtectionRepair`, plus client API:
  `container_get_instance_uuid`, `container_query_set_instance_uuid`,
  `container_operation_copy_superseded`, reference serialization v1/v2 merge.
  = containers now carry instance UUIDs; operations can be marked superseded
  (stale references invalidated). Anti-stale-handle hardening — same design
  pattern as SPTM TLBI-verify (verify you act on the CURRENT instance).
- `ContainerManagerCommon` 1901KB → 2048KB (+147KB, 74 new symbols / 42 removed).

## Verdict
1. bad_query (other-owners container enumeration) **works on both builds** —
   logs show 240-296 containers enumerated from uid 501.
2. Escape demonstrably **succeeds on at least one device** (video); all our
   5 logs are negative but lack device identity → unattributable.
3. 27.2 does NOT close the vector (video on claimed 27.2 RC); the Supersession
   machinery reads as Apple's *first step* toward invalidating stale container
   references — same "verify-current-instance" pattern we documented in SPTM.
   Escalation-path hypothesis: supersession will eventually kill token reuse.
4. Immediate hazard: `respring.html` is an active WebKit crasher, not an
   innocent proof; unsigned IPA from TG — do not run on personal devices.

## Hygiene note
Unsigned third-party IPA; analyzed statically (unzip + strings + objdump).
Logs contain only container UUIDs, no user content. Video analyzed as media.

## 2026-11-08 late — newjail v2 + PyCha1n.py (Murka's toolchain, static only)

**newjail (2).ipa** (com.example.newjail, binary 457KB → 526KB vs archived v1):
now a full multi-CVE research harness with logged stage verdicts:
- CVE-2026-112611 (CG PDF): C0 Jump v2, fake vtable, ABW v3 fake-object probing;
  own verdict line: **"112611: CLOSED (crash-only)"** — matches our CG-SEC-187882049
  dim-match block analysis (fixed in 27.2, PoC crash-only).
- CVE-2026-86950 (CG): size-sweep v10-12, VM-hole groom, "Primitives ready,
  KASLR blocked", KASLR bypass attempts via 65343/65371 (ACM handle capture,
  Security framework SE key).
- CALIF-v2/v3: combined 112611 PDF + "H9 VideoToolbox" XPC — verdict lines:
  "heap corruption works, but H9 didn't fire", "isolated to our process".
- CVE-2026-112706 family: WAL/sqlite + .rp1 stages — matches our quarantined
  CVE-112706 doc (sandbox escape).
- 2stage: dry-run → fake vtable spray → render → verify exec (nj_pwn_target).
- 64788: IOServiceOpen all types failed — sandbox blocking.
- Stage 3 = nj_stage3_sandbox_escape.
Hygiene: static analysis only, never executed (unsigned TG IPA, same rule).

**PyCha1n.py** (python ctypes port of bad_query): loads
libsystem_containermanager + xpc, container_query(class=13, part=3,
group_identifiers="systemgroup.com.apple.mobilegestaltcache", part_domain=
"../../../../../../../.."+path, flags=0x8000000000) → get_single_result →
container_copy_sandbox_token → sandbox_extension_consume → read/write
com.apple.MobileGestalt.plist CacheExtra (25 tweaks, Dynamic Island / AOD /
spoof ProductType iPhone16,1). Novel detail vs BQ272 v11: the **path-traversal
prefix in part_domain** as the primitive. respring() is a joke stub
(webbrowser.open "jailbreak.party"). Runs only inside an on-device Python env;
statically reviewed, not executed. Primitive matches the MCM surface we diffed:
client token path identical 27.0.1↔27.2 — consistent with the video success.

### 2026-11-08 16:xx — third newjail run (repro delta)
Third mode=144 run (different KASLR slide, fn_pac=0x102c83a40 vs 0x1044b3a40
in run 1) → again **absorbed 237 words / 1896 bytes**, ★CONTROLLED OOB
CONFIRMED. So across two devices/reboots with different slides the write
length is DETERMINISTIC (237 words) and lands inside the groomed region;
run 2 (0 words, far=region_end) is the outlier — heap layout variance.
Write is reproducible but non-addressable; vtable-hijack still fails.
Build identity still absent from logs — attribution pending.

### 2026-11-08 17:xx — BQTool v2.0 (build 20) = the GUI from Murka's video
Same bundle id as BQ272 v11 (app.lake9674.aquila8809), 260624 bytes.
- **GestaltVC**: applyTweaks/revertTweaks/loadGestalt, chooseSubtype, swipes;
  **CacheExtraEditVC** = arbitrary CacheExtra key add/edit/delete (beyond the
  fixed 25-tweak table — full MG plist editor).
- **PosterBoardVC**: explore (TendiesExploreVC, catalog =
  SerStars/Nugget-Wallpapers), applyAll, resetPosterBoard, Open PosterBoard.
- **RECON FIXED**: startup banner now logs `=== BQEscape start | iOS %@ |
  bundle %@ ===` — future logs carry iOS version identity. Partial (no
  hw.machine), but the main confounder (iOS build) is now attributable.
- Still logs to Documents/bqtool.log. Static analysis only, not executed.
