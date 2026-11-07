#!/usr/bin/env python3
"""
action_probe.py — characterize the REAL com.apple.amfi.lockdown protocol.

pymobiledevice3/services/amfi.py reveals the actual protocol: the service
expects {"action": N} with 0=reveal, 1=enable, 2=accept-post-restart.

Our earlier scripts sent {"Request": ...} (NO "action" key).  This test asks:
does the service validate "action" at all, i.e. is it distinguishable from a
generic ack?
"""

import asyncio

AMFI_SERVICE = "com.apple.amfi.lockdown"


async def one(lockdown, payload):
    try:
        svc = await lockdown.start_lockdown_service(AMFI_SERVICE)
    except Exception as e:
        return f"open FAIL: {e}"
    try:
        try:
            return await asyncio.wait_for(svc.send_recv_plist(payload), timeout=5)
        except Exception as e:
            return f"FAIL: {e}"
    finally:
        try:
            await svc.close()
        except Exception:
            pass


async def main():
    from pymobiledevice3.lockdown import create_using_usbmux
    l = await create_using_usbmux()

    cases = [
        ("garbage (no action)", {"Label": AMFI_SERVICE, "Request": "zzz-nonsense"}),
        ("action=99 (invalid)", {"action": 99}),
        ("action=0 (reveal)", {"action": 0}),
        ("action=1 (enable)", {"action": 1}),
        ("action=2 (accept)", {"action": 2}),
    ]
    for name, payload in cases:
        print(f"{name:24} -> {await one(l, payload)}")

    print("\nstatus (pref store)  =", await l.get_developer_mode_status())


if __name__ == "__main__":
    asyncio.run(main())
