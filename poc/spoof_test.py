#!/usr/bin/env python3
"""
spoof_test.py — the decisive falsification.

If DeveloperModeStatus is a real kernel flag, we CANNOT change it by writing a
preference.  If we CAN toggle it True/False at will with set_value (and both
readers follow), it is a spoofable preference store, and the earlier "True"
was just our own written value read back.
"""

import asyncio

AMFI_DOMAIN = "com.apple.security.mac.amfi"
LD_DOMAIN = "com.apple.mobile.lockdown"
AMFI_SERVICE = "com.apple.amfi.lockdown"


async def snapshot(l):
    pref = None
    mim = None
    try:
        pref = await l.get_developer_mode_status()
    except Exception as e:
        pref = f"FAIL:{e}"
    try:
        svc = await l.start_lockdown_service("com.apple.mobile.mobile_image_mounter")
        try:
            r = await asyncio.wait_for(svc.send_recv_plist({"Command": "QueryDeveloperModeStatus"}), timeout=5)
            mim = r.get("DeveloperModeStatus")
        finally:
            await svc.close()
    except Exception as e:
        mim = f"FAIL:{e}"
    return pref, mim


async def main():
    from pymobiledevice3.lockdown import create_using_usbmux
    l = await create_using_usbmux()

    for label, val in (("baseline", None), ("write False", False), ("write True", True), ("write False again", False)):
        if val is not None:
            await l.set_value(val, domain=AMFI_DOMAIN, key="DeveloperModeStatus")
        pref, mim = await snapshot(l)
        print(f"[{label:18}] pref(get_developer_mode_status)={pref}  mounter(QueryDeveloperModeStatus)={mim}")

    # leave it enabled so we don't surprise the user
    await l.set_value(True, domain=AMFI_DOMAIN, key="DeveloperModeStatus")
    pref, mim = await snapshot(l)
    print(f"[{'restore True':18}] pref={pref}  mounter={mim}")


if __name__ == "__main__":
    asyncio.run(main())