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
