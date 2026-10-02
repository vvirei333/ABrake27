/*
 * iokit_stub.h — minimal IOKit surface for `gcc -fsyntax-only` on Linux.
 * Only used to syntax-check poc.c without a Mac/iPhone SDK.
 * The real headers (IOKit/IOKitLib.h, CoreFoundation) are used on macOS.
 */
#ifndef IOKIT_STUB_H
#define IOKIT_STUB_H

#include <stdint.h>
#include <stddef.h>

typedef uint32_t mach_port_t;
typedef uint32_t kern_return_t;
typedef mach_port_t io_object_t;
typedef io_object_t io_service_t;
typedef io_object_t io_connect_t;
typedef io_object_t io_iterator_t;
typedef uint32_t io_string_t[512];

#define kMachPortNull 0

static inline mach_port_t mach_task_self(void) { return 1; }
static inline mach_port_t mach_task_self_(void) { return 1; }

#define kIOMasterPortDefault ((mach_port_t)0)

extern const char *IOServiceMatching(const char *name);
extern io_service_t IOServiceGetMatchingService(mach_port_t mainPort,
                                                const char *matching);
extern kern_return_t IOServiceOpen(io_service_t service, mach_port_t task,
                                   uint32_t type, io_connect_t *client);
extern kern_return_t IOServiceClose(io_connect_t client);
extern kern_return_t IOObjectRelease(io_object_t object);
extern kern_return_t IOConnectCallScalarMethod(io_connect_t client,
                                               uint32_t selector,
                                               const uint64_t *scalarInput,
                                               uint32_t scalarInputCnt,
                                               uint64_t *scalarOutput,
                                               uint32_t *scalarOutputCnt);
extern kern_return_t IOConnectCallMethod(io_connect_t client,
                                         uint32_t selector,
                                         const uint64_t *scalarInput,
                                         uint32_t scalarInputCnt,
                                         const void *structInput,
                                         size_t structInputCnt,
                                         uint64_t *scalarOutput,
                                         uint32_t *scalarOutputCnt,
                                         void *structOutput,
                                         size_t *structOutputCnt);

#endif /* IOKIT_STUB_H */