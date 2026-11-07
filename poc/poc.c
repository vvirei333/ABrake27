/*
 * poc.c — EnableAMFIDevMode: AMFI / AppleCredentialManager dev-mode PoC (iOS 27)
 *
 * ============================================================================
 * DVT / CoreDevice CLI binary for stock iPhone 13 without SideStore.
 *
 * Designed to be launched via `pymobiledevice3 developer dvt launch <path>`
 * inside the CoreDevice debug tunnel.  DVT runs the binary outside the
 * App Sandbox (it is NOT installed as an IPA), so the usual 0xe8008001
 * installd restriction does NOT apply.  The only requirement is that
 * Developer Mode is enabled (AMFI lockdown protocol, Session 9).
 *
 * Subcommands:
 *   enable [val]          armSecurityBootMode selector 11 (default value 1)
 *   status                getDeveloperModeForceEnabled selector 15
 *   probe-acm [val]       query AppleCredentialManager with DRCS / SCE$ magic
 *   probe-amfi <sel> [val] raw AMFI selector call
 *   amfi <sel> [val]      alias for probe-amfi
 *   acm <sel> [val]       raw ACM selector call with explicit selector
 *   all [val]             enable + status + probe-acm (default if no subcommand)
 *
 * Options:
 *   -s, --service NAME    IOKit service name (AMFI default: AppleMobileFileIntegrity)
 *   -a, --acm-service NAME ACM service name        (default: AppleCredentialManager)
 *   -v, --value VAL       Numeric value to pass     (default: 1, env: AMFI_VALUE)
 *   -S, --selector VAL    Raw selector for amfi/acm (default: 11 for AMFI, 0 for ACM)
 *   -q, --quiet           Minimal output (just hex return code + value on stdout)
 *   --log-file PATH       Append log to file (default: /tmp/amfi_devmode_poc.log,
 *                          set to empty string to disable file logging)
 *   -h, --help            This message
 *
 * Environment (fallback when CLI flags not given):
 *   AMFI_SERVICE, ACM_SERVICE, AMFI_VALUE, AMFI_SELECTOR, AMFI_LOG_FILE
 *
 * Selector 11 = armSecurityBootMode,  (1 scalar in, 0 struct, 0 scalar out, 0 struct out).
 * Selector 15 = getDeveloperModeForceEnabled, (0,0,1,0).
 * Entitlement: com.apple.private.amfi.developer-mode-control (platform-restricted).
 * acm_command_t (Session 4.2): magic "DRCS" 0x53435244, version/type/flags=0, op=0x02.
 * Alt magic "SCE$" 0x53434524 also probed.
 *
 * Build iOS: ./build_ipa.sh    Linux check: ./syntax_check_linux.sh
 * Deploy:    ./run_dvt.sh      (CoreDevice tunnel → dvt launch)
 * ============================================================================
 */
#include <errno.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#ifdef SYNTAX_CHECK_ONLY
#include "stubs/iokit_stub.h"
#else
#include <CoreFoundation/CoreFoundation.h>
#include <IOKit/IOKitLib.h>
#endif

/* ---------- defaults ---------- */
#define POC_AMFI_SERVICE    "AppleMobileFileIntegrity"
#define POC_ACM_SERVICE     "AppleCredentialManager"
#define POC_OPEN_TYPE       0u
#define SEL_ARM_SECURE_BOOT 11u
#define SEL_GET_DEVMODE_FE  15u
#define ACM_MAGIC_DRCS      0x53435244u
#define ACM_VERSION         0u
#define ACM_TYPE_REQ        0u
#define ACM_FLAGS           0u
#define ACM_OP              0x02u
#ifndef ACM_MAGIC_ALT
#define ACM_MAGIC_ALT       0x53434524u
#endif
#define DEFAULT_LOG_FILE    "/tmp/amfi_devmode_poc.log"

/* ---------- types ---------- */
typedef struct __attribute__((packed)) {
    uint32_t magic;
    uint8_t  version;
    uint8_t  type;
    uint8_t  flags;
    uint8_t  operation;
    uint8_t  payload[12];
} acm_call_payload_t;

/* ---------- globals ---------- */
static FILE      *g_logfp     = NULL;
static int        g_quiet     = 0;
static const char *g_progname = "EnableAMFIDevMode";

/* ---------- logging ---------- */
static void log_open(const char *path) {
    if (!path || !*path) return;
    g_logfp = fopen(path, "ae");
}

static void log_close(void) {
    if (g_logfp) { fclose(g_logfp); g_logfp = NULL; }
}

__attribute__((format(printf, 1, 2)))
static void LOG(const char *fmt, ...) {
    va_list ap;
    if (!g_quiet) {
        fprintf(stdout, "[%s] ", g_progname);
        va_start(ap, fmt); vfprintf(stdout, fmt, ap); va_end(ap);
        fputc('\n', stdout); fflush(stdout);
    }
    if (g_logfp) {
        va_start(ap, fmt); vfprintf(g_logfp, fmt, ap); va_end(ap);
        fputc('\n', g_logfp); fflush(g_logfp);
    }
}

static void QUIET(const char *fmt, ...) {
    va_list ap;
    va_start(ap, fmt); vfprintf(stdout, fmt, ap); va_end(ap);
    fputc('\n', stdout); fflush(stdout);
    if (g_logfp) {
        va_start(ap, fmt); vfprintf(g_logfp, fmt, ap); va_end(ap);
        fputc('\n', g_logfp); fflush(g_logfp);
    }
}

/* ---------- helpers ---------- */
static const char *kern_str(kern_return_t r) {
    switch (r) {
    case 0x0:        return "kIOReturnSuccess";
    case 0xe00002bc: return "kIOReturnError";
    case 0xe00002bd: return "kIOReturnNoMemory";
    case 0xe00002bf: return "kIOReturnIPCError";
    case 0xe00002c0: return "kIOReturnNoDevice";
    case 0xe00002c1: return "kIOReturnNotPrivileged";
    case 0xe00002c2: return "kIOReturnBadArgument";
    case 0xe00002c5: return "kIOReturnNotFound";
    case 0xe00002c7: return "kIOReturnUnsupported";
    case 0xe00002c8: return "kIOReturnNotSupported";
    default:         return "(see hex)";
    }
}

static void hexdump(const void *buf, size_t len) {
    const uint8_t *p = (const uint8_t *)buf;
    for (size_t i = 0; i < len; i += 16) {
        size_t n = (len - i < 16) ? (len - i) : 16;
        printf("%04zu: ", i);
        for (size_t j = 0; j < n; j++) printf("%02x ", p[i + j]);
        printf("\n");
    }
}

static kern_return_t open_service(const char *name, uint32_t type, io_connect_t *conn) {
    io_service_t svc = IOServiceGetMatchingService(kIOMainPortDefault, IOServiceMatching(name));
    if (!svc) {
        LOG("IOServiceGetMatchingService(\"%s\") -> not found", name);
        return 0xe00002c5;
    }
    kern_return_t kr = IOServiceOpen(svc, mach_task_self(), type, conn);
    LOG("IOServiceOpen(\"%s\", type=%u) -> 0x%x (%s)", name, (unsigned)type, (unsigned)kr, kern_str(kr));
    IOObjectRelease(svc);
    return kr;
}

/* ---------- AMFI ops ---------- */
static kern_return_t amfi_call_scalar(io_connect_t c, uint32_t sel,
                                       uint64_t in, uint64_t *out) {
    uint32_t oc = out ? 1u : 0u;
    uint64_t buf = 0;
    kern_return_t kr = IOConnectCallScalarMethod(c, sel,
                        out ? &in : (in ? &in : NULL),
                        out ? 1u : (in ? 1u : 0u),
                        out ? (out == &buf ? &buf : out) : NULL,
                        &oc);
    LOG("AMFI sel=%u in=%llu -> 0x%x (%s) out=%llu",
        (unsigned)sel, (unsigned long long)in, (unsigned)kr, kern_str(kr),
        out ? (unsigned long long)(out == &buf ? buf : *out) : 0ULL);
    return kr;
}

static kern_return_t amfi_arm(io_connect_t c, uint32_t sel, uint64_t v) {
    kern_return_t kr = amfi_call_scalar(c, sel, v, NULL);
    if (kr == 0x0) LOG("  armed: REBOOT required for effect.");
    return kr;
}

static kern_return_t amfi_get_fe(io_connect_t c, uint64_t *out) {
    uint32_t oc = 1u; uint64_t val = 0;
    kern_return_t kr = IOConnectCallScalarMethod(c, SEL_GET_DEVMODE_FE,
                                                  NULL, 0u, &val, &oc);
    LOG("AMFI sel=%u getDeveloperModeForceEnabled -> 0x%x (%s) value=%llu",
        (unsigned)SEL_GET_DEVMODE_FE, (unsigned)kr, kern_str(kr),
        (unsigned long long)val);
    if (out) *out = val;
    return kr;
}

/* ---------- ACM ops ---------- */
static const uint32_t kACMProbes[] = {0u, 1u, 2u, 11u, 25u, 37u};
#define N_ACM_PROBES (sizeof(kACMProbes)/sizeof(kACMProbes[0]))

static void build_acm(acm_call_payload_t *p, uint32_t magic, uint64_t v) {
    memset(p, 0, sizeof(*p));
    p->magic     = magic;
    p->version   = ACM_VERSION;
    p->type      = ACM_TYPE_REQ;
    p->flags     = ACM_FLAGS;
    p->operation = ACM_OP;
    memcpy(p->payload, &v, sizeof(uint32_t));
}

static kern_return_t acm_raw_call(io_connect_t c, uint32_t sel,
                                   acm_call_payload_t *call,
                                   uint64_t si, uint64_t *so_out,
                                   uint8_t *ob, size_t *os) {
    uint32_t soc = 1u; uint64_t so = 0;
    size_t osz = *os;
    kern_return_t kr = IOConnectCallMethod(c, sel,
                        si ? &si : NULL, si ? 1u : 0u,
                        call, call ? sizeof(*call) : 0,
                        so_out ? &so : NULL, &soc,
                        ob, &osz);
    *os = osz;
    if (so_out) *so_out = so;
    LOG("ACM sel=%u -> 0x%x (%s)", (unsigned)sel, (unsigned)kr, kern_str(kr));
    return kr;
}

static void acm_probe(io_connect_t c, uint32_t magic, uint64_t v) {
    acm_call_payload_t call;
    build_acm(&call, magic, v);
    LOG("ACM payload(magic=0x%08x ver=%u type=%u flags=%u op=0x%02x):",
        call.magic, call.version, call.type, call.flags, call.operation);
    if (!g_quiet) hexdump(&call, sizeof(call));

    for (size_t i = 0; i < N_ACM_PROBES; i++) {
        uint32_t sel = kACMProbes[i];
        uint8_t  ob[256]; size_t os = sizeof(ob);
        uint64_t so = 0;
        kern_return_t kr = acm_raw_call(c, sel, &call, v, &so, ob, &os);
        if (kr == 0x0) {
            LOG("  accepted: so=%llu os=%zu", (unsigned long long)so, os);
            if (os && !g_quiet) hexdump(ob, os < sizeof(ob) ? os : sizeof(ob));
        }
    }
}

static void acm_probe_single(io_connect_t c, uint32_t sel, uint64_t v) {
    acm_call_payload_t call;
    build_acm(&call, ACM_MAGIC_DRCS, v);
    uint8_t ob[256]; size_t os = sizeof(ob); uint64_t so = 0;
    kern_return_t kr = acm_raw_call(c, sel, &call, v, &so, ob, &os);
    if (kr == 0x0) {
        LOG("  accepted: so=%llu os=%zu", (unsigned long long)so, os);
        if (os && !g_quiet) hexdump(ob, os < sizeof(ob) ? os : sizeof(ob));
    }
    /* also try alt magic */
    build_acm(&call, ACM_MAGIC_ALT, v);
    memset(ob, 0, sizeof(ob)); os = sizeof(ob); so = 0;
    kr = acm_raw_call(c, sel, &call, v, &so, ob, &os);
    if (kr == 0x0) {
        LOG("  alt-magic accepted: so=%llu os=%zu", (unsigned long long)so, os);
        if (os && !g_quiet) hexdump(ob, os < sizeof(ob) ? os : sizeof(ob));
    }
}

/* ---------- usage ---------- */
static void usage(const char *a) {
    fprintf(stderr,
"Usage: %s <subcommand> [options]\n"
"\n"
"Subcommands:\n"
"  enable [val]          armSecurityBootMode (AMFI selector 11), default value=1\n"
"  status                getDeveloperModeForceEnabled (AMFI selector 15)\n"
"  probe-acm [val]       query ACM with DRCS+SCE$ magic on selectors 0,1,2,11,25,37\n"
"  amfi <sel> [val]      raw AMFI scalar call with explicit selector\n"
"  acm <sel> [val]       raw ACM call with explicit selector (DRCS+SCE$ magic)\n"
"  all [val]             enable + status + probe-acm (default if no subcommand)\n"
"\n"
"Options:\n"
"  -s, --service NAME     AMFI IOKit service name (default: AppleMobileFileIntegrity)\n"
"  -a, --acm-service NAME ACM service name          (default: AppleCredentialManager)\n"
"  -v, --value VAL        Numeric value             (default: 1,  env: AMFI_VALUE)\n"
"  -S, --selector VAL     Raw selector               (default: 11, env: AMFI_SELECTOR)\n"
"  -q, --quiet            Minimal output (ret code + value on stdout)\n"
"  --log-file PATH        Append log (default: /tmp/amfi_devmode_poc.log; \"\" = off)\n"
"  -h, --help             This message\n"
"\n"
"Environment (fallback):  AMFI_SERVICE  ACM_SERVICE  AMFI_VALUE  AMFI_SELECTOR  AMFI_LOG_FILE\n"
"\n"
"DVT deploy (stock iPhone 13, Developer Mode ON):\n"
"  ./run_dvt.sh enable         # arm AMFI\n"
"  ./run_dvt.sh status         # check force-enabled\n"
"  ./run_dvt.sh probe-acm      # test ACM communication\n",
    a);
}

/* ---------- entry ---------- */
int main(int argc, char **argv) {
    const char *amfi_svc  = NULL;
    const char *acm_svc   = NULL;
    const char *log_path  = NULL;
    uint64_t    value     = 0;
    int         have_val  = 0;
    uint64_t    selector  = 0;
    int         have_sel  = 0;
    const char *subcmd    = NULL;
    int         show_help = 0;

    g_progname = argv[0];

    /* ---- parse CLI ---- */
    for (int i = 1; i < argc; i++) {
        const char *a = argv[i];
        if (a[0] != '-') {
            /* first non-option = subcommand */
            if (!subcmd) { subcmd = a; continue; }
            /* second non-option = value (unless already set via -v) */
            if (!have_val) { value = strtoull(a, NULL, 0); have_val = 1; continue; }
            /* third non-option = selector (for acm/amfi subcmd) */
            if (!have_sel) { selector = strtoull(a, NULL, 0); have_sel = 1; continue; }
            fprintf(stderr, "unexpected argument: %s\n", a);
            usage(argv[0]);
            return 2;
        }
        if (!strcmp(a, "-h") || !strcmp(a, "--help")) { show_help = 1; break; }
        if (!strcmp(a, "-q") || !strcmp(a, "--quiet")) { g_quiet = 1; continue; }
        if (!strcmp(a, "-s") || !strcmp(a, "--service")) {
            if (++i >= argc) { fprintf(stderr, "missing arg for %s\n", a); return 2; }
            amfi_svc = argv[i]; continue;
        }
        if (!strcmp(a, "-a") || !strcmp(a, "--acm-service")) {
            if (++i >= argc) { fprintf(stderr, "missing arg for %s\n", a); return 2; }
            acm_svc = argv[i]; continue;
        }
        if (!strcmp(a, "-v") || !strcmp(a, "--value")) {
            if (++i >= argc) { fprintf(stderr, "missing arg for %s\n", a); return 2; }
            value = strtoull(argv[i], NULL, 0); have_val = 1; continue;
        }
        if (!strcmp(a, "-S") || !strcmp(a, "--selector")) {
            if (++i >= argc) { fprintf(stderr, "missing arg for %s\n", a); return 2; }
            selector = strtoull(argv[i], NULL, 0); have_sel = 1; continue;
        }
        if (!strcmp(a, "--log-file")) {
            if (++i >= argc) { fprintf(stderr, "missing arg for %s\n", a); return 2; }
            log_path = argv[i]; continue;
        }
        fprintf(stderr, "unknown option: %s\n", a);
        usage(argv[0]);
        return 2;
    }

    if (show_help) { usage(argv[0]); return 0; }

    /* ---- defaults from environment ---- */
    if (!amfi_svc)  amfi_svc  = getenv("AMFI_SERVICE");
    if (!amfi_svc)  amfi_svc  = POC_AMFI_SERVICE;
    if (!acm_svc)   acm_svc   = getenv("ACM_SERVICE");
    if (!acm_svc)   acm_svc   = POC_ACM_SERVICE;
    if (!have_val)  { const char *ev = getenv("AMFI_VALUE");
                      if (ev) { value = strtoull(ev, NULL, 0); have_val = 1; } }
    if (!have_val)  value = 1;
    if (!have_sel)  { const char *ev = getenv("AMFI_SELECTOR");
                      if (ev) { selector = strtoull(ev, NULL, 0); have_sel = 1; } }
    if (!log_path)  log_path = getenv("AMFI_LOG_FILE");
    if (!log_path)  log_path = DEFAULT_LOG_FILE;

    /* ---- setup ---- */
    setvbuf(stdout, NULL, _IONBF, 0);
    setvbuf(stderr, NULL, _IONBF, 0);
    log_open(log_path);

    /* default subcommand = "all" */
    if (!subcmd) subcmd = "all";

    LOG("=== %s (iOS 27) start === subcmd=%s value=%llu sel=%llu quiet=%d",
        g_progname, subcmd, (unsigned long long)value,
        (unsigned long long)selector, g_quiet);

    /* ---- dispatch ---- */
    if (!strcmp(subcmd, "enable") || !strcmp(subcmd, "all")) {
        io_connect_t amfi = 0;
        kern_return_t kr = open_service(amfi_svc, POC_OPEN_TYPE, &amfi);
        if (kr == 0x0) {
            amfi_arm(amfi, have_sel ? (uint32_t)selector : SEL_ARM_SECURE_BOOT, value);
            amfi_get_fe(amfi, NULL);
            IOServiceClose(amfi);
            if (g_quiet) QUIET("AMFI_ENABLE:0x%x", (unsigned)kr);
        } else {
            LOG("AMFI open failed: 0x%x (entitlement required)", (unsigned)kr);
            if (g_quiet) QUIET("AMFI_OPEN:0x%x", (unsigned)kr);
        }
    }

    if (!strcmp(subcmd, "status")) {
        io_connect_t amfi = 0; uint64_t out = 0;
        kern_return_t kr = open_service(amfi_svc, POC_OPEN_TYPE, &amfi);
        if (kr == 0x0) {
            kr = amfi_get_fe(amfi, &out);
            IOServiceClose(amfi);
            if (g_quiet) QUIET("AMFI_STATUS:0x%x:%llu", (unsigned)kr, (unsigned long long)out);
        } else {
            LOG("AMFI open failed: 0x%x", (unsigned)kr);
            if (g_quiet) QUIET("AMFI_OPEN:0x%x", (unsigned)kr);
        }
    }

    if (!strcmp(subcmd, "probe-acm") || !strcmp(subcmd, "all")) {
        io_connect_t acm = 0;
        kern_return_t kr = open_service(acm_svc, POC_OPEN_TYPE, &acm);
        if (kr == 0x0) {
            LOG("-- ACM DRCS 0x%08x --", ACM_MAGIC_DRCS);
            acm_probe(acm, ACM_MAGIC_DRCS, value);
            LOG("-- ACM SCE$ 0x%08x --", ACM_MAGIC_ALT);
            acm_probe(acm, ACM_MAGIC_ALT, value);
            IOServiceClose(acm);
            if (g_quiet) QUIET("ACM_PROBE:0x0");
        } else {
            LOG("ACM open failed: 0x%x", (unsigned)kr);
            if (g_quiet) QUIET("ACM_OPEN:0x%x", (unsigned)kr);
        }
    }

    if (!strcmp(subcmd, "amfi") || !strcmp(subcmd, "probe-amfi")) {
        if (!have_sel && !strcmp(subcmd, "amfi")) {
            fprintf(stderr, "amfi subcommand requires <selector> argument\n");
            return 2;
        }
        io_connect_t amfi = 0;
        kern_return_t kr = open_service(amfi_svc, POC_OPEN_TYPE, &amfi);
        if (kr == 0x0) {
            uint64_t out = 0;
            kr = amfi_call_scalar(amfi, (uint32_t)(have_sel ? selector : SEL_ARM_SECURE_BOOT),
                                   value, &out);
            IOServiceClose(amfi);
            if (g_quiet) QUIET("AMFI_RAW:%u:0x%x:%llu", (unsigned)(have_sel ? selector : SEL_ARM_SECURE_BOOT),
                               (unsigned)kr, (unsigned long long)out);
        } else {
            LOG("AMFI open failed: 0x%x", (unsigned)kr);
            if (g_quiet) QUIET("AMFI_OPEN:0x%x", (unsigned)kr);
        }
    }

    if (!strcmp(subcmd, "acm")) {
        if (!have_sel) {
            fprintf(stderr, "acm subcommand requires <selector> argument\n");
            return 2;
        }
        io_connect_t acm = 0;
        kern_return_t kr = open_service(acm_svc, POC_OPEN_TYPE, &acm);
        if (kr == 0x0) {
            acm_probe_single(acm, (uint32_t)selector, value);
            IOServiceClose(acm);
            if (g_quiet) QUIET("ACM_RAW:0x0");
        } else {
            LOG("ACM open failed: 0x%x", (unsigned)kr);
            if (g_quiet) QUIET("ACM_OPEN:0x%x", (unsigned)kr);
        }
    }

    LOG("=== done ===");
    log_close();
    return 0;
}
