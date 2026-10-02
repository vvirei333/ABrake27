/*
 * poc.c — EnableAMFIDevMode: AMFI / AppleCredentialManager dev-mode PoC (iOS 27)
 *
 * Selector 11 = armSecurityBootMode, (1 scalar in, 0 struct, 0 scalar out, 0 struct out).
 * Selector 15 = getDeveloperModeForceEnabled, (0,0,1,0).
 * Entitlement: com.apple.private.amfi.developer-mode-control (platform-restricted).
 * acm_command_t (Session 4.2): magic "DRCS" 0x53435244, version/type/flags=0, op=0x02.
 * Alt magic "SCE$" 0x53434524 also probed.
 *
 * Build iOS: ./build_ipa.sh    Linux check: ./syntax_check_linux.sh
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
#ifndef kIOMainPortDefault
#define kIOMainPortDefault kIOMainPortDefault
#endif
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
typedef struct __attribute__((packed)) {
    uint32_t magic;
    uint8_t  version;
    uint8_t  type;
    uint8_t  flags;
    uint8_t  operation;
    uint8_t  payload[12];
} acm_call_payload_t;
static const uint32_t kACMProbes[] = {0u, 1u, 2u, 11u};
#define N_ACM_PROBES (sizeof(kACMProbes)/sizeof(kACMProbes[0]))
static FILE *g_logfp;
static void log_open(void)  { g_logfp = fopen("/tmp/amfi_devmode_poc.log", "ae"); }
static void log_close(void) { if (g_logfp) { fclose(g_logfp); g_logfp = NULL; } }

static void LOG(const char *fmt, ...)
{
    va_list ap;
    fputs("[EnableAMFIDevMode] ", stdout);
    va_start(ap, fmt); vprintf(fmt, ap); va_end(ap);
    fputc('\n', stdout); fflush(stdout);
    if (g_logfp) { va_start(ap, fmt); vfprintf(g_logfp, fmt, ap); va_end(ap); fputc('\n', g_logfp); fflush(g_logfp); }
}

static const char *kern_str(kern_return_t r)
{
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

static void hexdump(const void *buf, size_t len)
{
    const uint8_t *p = buf;
    size_t i, j;
    for (i = 0; i < len; i += 16) {
        size_t n = (len - i < 16) ? (len - i) : 16;
        printf("%04zu: ", i);
        for (j = 0; j < n; j++) printf("%02x ", p[i + j]);
        printf("\n");
    }
}

static kern_return_t open_service(const char *name, uint32_t type, io_connect_t *conn)
{
    io_service_t svc = IOServiceGetMatchingService(kIOMainPortDefault, IOServiceMatching(name));
    if (!svc) {
        LOG("  IOServiceGetMatchingService(\"%s\") -> not found", name);
        return 0xe00002c5;
    }
    LOG("  IOServiceGetMatchingService(\"%s\") -> 0x%x", name, (unsigned)svc);
    kern_return_t kr = IOServiceOpen(svc, mach_task_self(), type, conn);
    LOG("  IOServiceOpen(\"%s\", type=%u) -> 0x%x (%s)", name, (unsigned)type, (unsigned)kr, kern_str(kr));
    IOObjectRelease(svc);
    return kr;
}
static kern_return_t amfi_arm(io_connect_t c, uint32_t sel, uint64_t v)
{
    kern_return_t kr = IOConnectCallScalarMethod(c, sel, &v, 1u, NULL, NULL);
    LOG("AMFI sel %u arm(value=%llu) -> 0x%x (%s)",
        (unsigned)sel, (unsigned long long)v, (unsigned)kr, kern_str(kr));
    if (kr == 0x0) LOG("  armed: REBOOT required.");
    return kr;
}

static kern_return_t amfi_get_fe(io_connect_t c)
{
    uint64_t out = 0; uint32_t oc = 1u;
    kern_return_t kr = IOConnectCallScalarMethod(c, SEL_GET_DEVMODE_FE,
                                                 NULL, 0u, &out, &oc);
    LOG("AMFI sel %u getDeveloperModeForceEnabled -> 0x%x (%s) value=%llu",
        (unsigned)SEL_GET_DEVMODE_FE, (unsigned)kr, kern_str(kr),
        (unsigned long long)out);
    return kr;
}

static void build_acm(acm_call_payload_t *p, uint32_t magic, uint64_t v)
{
    memset(p, 0, sizeof(*p));
    p->magic = magic; p->version = ACM_VERSION; p->type = ACM_TYPE_REQ;
    p->flags = ACM_FLAGS; p->operation = ACM_OP;
    memcpy(p->payload, &v, sizeof(uint32_t));
}

static void acm_probe(io_connect_t c, uint32_t magic, uint64_t v)
{
    acm_call_payload_t call; uint8_t ob[64];
    uint64_t si = v, so = 0; uint32_t soc = 1u; size_t os = sizeof(ob);
    build_acm(&call, magic, v);
    LOG("ACM payload(magic=0x%08x ver=%u type=%u flags=%u op=0x%02x):",
        call.magic, call.version, call.type, call.flags, call.operation);
    hexdump(&call, sizeof(call));
    size_t i;
    for (i = 0; i < N_ACM_PROBES; i++) {
        uint32_t sel = kACMProbes[i];
        memset(ob, 0, sizeof(ob)); so = 0; soc = 1u; os = sizeof(ob);
        kern_return_t kr = IOConnectCallMethod(c, sel, &si, 1u, &call,
                                sizeof(call), &so, &soc, ob, &os);
        LOG("ACM sel=%u -> 0x%x (%s)", (unsigned)sel, (unsigned)kr, kern_str(kr));
        if (kr == 0x0) {
            LOG("  accepted: so=%llu os=%zu", (unsigned long long)so, os);
            if (os) hexdump(ob, os < sizeof(ob) ? os : sizeof(ob));
        }
    }
}

static void usage(const char *a)
{
    fprintf(stderr,
        "EnableAMFIDevMode - AMFI/ACM dev-mode PoC\n"
        "usage: %s [val] (default 1)\n", a);
}

int main(int argc, char **argv)
{
    io_connect_t amfi = 0, acm = 0; uint64_t v = 1;
    if (argc > 1 && (!strcmp(argv[1], "--help") || !strcmp(argv[1], "-h"))) {
        usage(argv[0]); return 0;
    }
    if (argc > 1) v = strtoull(argv[1], NULL, 0);
    setvbuf(stdout, NULL, _IONBF, 0); log_open();

    LOG("=== EnableAMFIDevMode (iOS 27) start === value=%llu",
        (unsigned long long)v);

    kern_return_t kr = open_service(POC_AMFI_SERVICE, POC_OPEN_TYPE, &amfi);
    if (kr == 0x0) {
        amfi_arm(amfi, SEL_ARM_SECURE_BOOT, v);
        amfi_get_fe(amfi);
        IOServiceClose(amfi);
    } else LOG("AMFI open fail 0x%x (entitlement expected)", (unsigned)kr);

    kr = open_service(POC_ACM_SERVICE, POC_OPEN_TYPE, &acm);
    if (kr == 0x0) {
        LOG("-- ACM DRCS 0x%08x --", ACM_MAGIC_DRCS);
        acm_probe(acm, ACM_MAGIC_DRCS, v);
        LOG("-- ACM SCE$ 0x%08x --", ACM_MAGIC_ALT);
        acm_probe(acm, ACM_MAGIC_ALT, v);
        IOServiceClose(acm);
    } else LOG("ACM open fail 0x%x", (unsigned)kr);

    LOG("=== done ===");
    log_close();
    return 0;
}