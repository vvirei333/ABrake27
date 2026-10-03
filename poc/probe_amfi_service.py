#!/usr/bin/env python3
"""
probe_amfi_service.py — brute-force the request format of the AMFI XPC
service `com.apple.amfi.lockdown`, reached through lockdownd StartService.

Facts (iOS 27.2 beta 2, from lockdownd ServiceMap):
  * com.apple.amfi.lockdown -> XPCServiceName = com.apple.amfi.lockdown
    (a real XPC service, bridged through lockdownd StartService).
  * lockdownd's own SetValue path requires entitlement
    com.apple.private.lockdown.finegrained-set and only echoes success
    without applying -> not usable unprivileged.
  * The AMFI service DID answer {'success': True} to one of our probes,
    so this is the live control channel.

The service drops the connection after each request, so we reconnect per
attempt.  We vary Request/Command/operation names and payload shapes.
"""

import asyncio
import sys

AMFI_SERVICE = "com.apple.amfi.lockdown"
AMFI_DOMAIN = "com.apple.security.mac.amfi"

# request-name variants for "arm security boot mode" (kernel selector 11)
ARM_NAMES = [
    "ArmSecurityBootMode",
    "armSecurityBootMode",
    "SetSecurityBootMode",
    "SetSecurityMode",
    "ArmSecurityMode",
    "EnableDeveloperMode",
    "SetDeveloperMode",
    "SetDeveloperModeEnabled",
    "DeveloperModeEnable",
    "EnableDevMode",
    "SetValue",
    "SetSecurityBootModeEnabled",
]

# read-back variants (kernel selector 15)
GET_NAMES = [
    "GetDeveloperModeForceEnabled",
    "DeveloperModeStatus",
    "GetDeveloperModeStatus",
    "isDeveloperModeEnabled",
    "GetValue",
    "GetSecurityBootMode",
]


def payload_variants(req_name):
    """Different shapes a request might take."""
    return [
        {"Label": AMFI_SERVICE, "Request": req_name, "Value": 1},
        {"Label": AMFI_SERVICE, "Request": req_name, "Value": True},
        {"Label": AMFI_SERVICE, "Request": req_name, "Domain": AMFI_DOMAIN, "Key": "DeveloperModeStatus", "Value": True},
        {"Label": AMFI_SERVICE, "Request": req_name, "ScalarInput": [1], "ScalarInputCount": 1},
        {req_name: 1},
        {req_name: True},
    ]


async def probe(lockdown, name):
    """Try all payload shapes for one request name; reconnect each time."""
    for i, pl in enumerate(payload_variants(name)):
        try:
            svc = await lockdown.start_lockdown_service(AMFI_SERVICE)
        except Exception as e:
            print(f"[open {name}#{i}] FAIL: {e}")
            continue
        try:
            try:
                r = await asyncio.wait_for(svc.send_recv_plist(pl), timeout=5)
                print(f"[{name}#{i}] OK -> {r}")
                if r and r not in ({"success": True}, {"success": False}):
                    print(f"    !!! INTERESTING payload {pl} -> {r}")
            except Exception as e:
                print(f"[{name}#{i}] FAIL: {e}")
        finally:
            try:
                await svc.close()
            except Exception:
                pass


async def main():
    try:
        from pymobiledevice3.lockdown import create_using_usbmux
    except ImportError as e:
        print(f"[FATAL] pymobiledevice3 not importable: {e}")
        sys.exit(2)

    lockdown = await create_using_usbmux()

    before = await lockdown.get_developer_mode_status()
    print(f"[BEFORE] DeveloperModeStatus = {before}")

    print("\n=== ARM probes ===")
    for name in ARM_NAMES:
        await probe(lockdown, name)

    print("\n=== GET probes ===")
    for name in GET_NAMES:
        await probe(lockdown, name)

    after = await lockdown.get_developer_mode_status()
    print(f"\n[AFTER] DeveloperModeStatus = {after}")


if __name__ == "__main__":
    asyncio.run(main())
