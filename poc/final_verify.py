#!/usr/bin/env python3
"""
final_verify.py — final verification of the lockdown dev-mode paths.

Checks:
  1. is the AMFI service response a generic ack (garbage request)?
  2. does start_lockdown_developer_service differ from start_lockdown_service?
  3. send an explicit arm request, then re-read status.
  4. dump both DeveloperModeStatus keys (lockdown vs amfi domain).
"""

import asyncio
import sys

AMFI_SERVICE = "com.apple.amfi.lockdown"
AMFI_DOMAIN = "com.apple.security.mac.amfi"
LD_DOMAIN = "com.apple.mobile.lockdown"


async def try_service(lockdown, opener, tag, req):
    try:
        svc = await opener(AMFI_SERVICE)
    except Exception as e:
        print(f"[{tag} open] FAIL: {e}")
        return
    try:
        try:
            r = await asyncio.wait_for(svc.send_recv_plist(req), timeout=5)
            print(f"[{tag}] {req.get('Request', req)} -> {r}")
        except Exception as e:
            print(f"[{tag}] FAIL: {e}")
    finally:
        try:
            await svc.close()
        except Exception:
            pass


async def main():
    from pymobiledevice3.lockdown import create_using_usbmux
    lockdown = await create_using_usbmux()

    async def status():
        return await lockdown.get_developer_mode_status()

    print(f"[BEFORE amfi]  = {await status()}")
    print(f"[BEFORE lockd] = {await lockdown.get_value(domain=LD_DOMAIN, key='DeveloperModeStatus')}")

    # 1. generic-ack test: deliberately nonsense request
    await try_service(lockdown, lockdown.start_lockdown_service, "GARBAGE",
                      {"Label": AMFI_SERVICE, "Request": "zzz-not-a-real-request-zzz"})

    # 2. developer-service opener
    await try_service(lockdown, lockdown.start_lockdown_developer_service, "DEVSVC",
                      {"Label": AMFI_SERVICE, "Request": "ArmSecurityBootMode", "Value": 1})

    # 3. explicit arm
    await try_service(lockdown, lockdown.start_lockdown_service, "ARM",
                      {"Label": AMFI_SERVICE, "Request": "ArmSecurityBootMode", "Value": 1})

    # 4. re-read
    print(f"[AFTER amfi]  = {await status()}")
    print(f"[AFTER lockd] = {await lockdown.get_value(domain=LD_DOMAIN, key='DeveloperModeStatus')}")


if __name__ == "__main__":
    asyncio.run(main())
