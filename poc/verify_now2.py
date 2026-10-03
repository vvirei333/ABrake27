#!/usr/bin/env python3
"""
verify_now2.py — causal verification, not just state read.

Key question: did OUR requests enable Developer Mode, or is the True state a
confound (manual Settings toggle / reboot applying something else)?

Falsification test: if the AMFI service answers a nonsense request with
{'success': True}, it does not parse requests -> it cannot have enabled
anything.  We re-run that test now, while status is True.
"""

import asyncio

AMFI_DOMAIN = "com.apple.security.mac.amfi"
LD_DOMAIN = "com.apple.mobile.lockdown"
AMFI_SERVICE = "com.apple.amfi.lockdown"


async def main():
    from pymobiledevice3.lockdown import create_using_usbmux
    l = await create_using_usbmux()

    print("device:", l.display_name, l.product_version, l.product_build_version)
    print("has_developer_mode (property) =", l.has_developer_mode)
    print("get_developer_mode_status     =", await l.get_developer_mode_status())

    # re-run the generic-ack falsification test
    try:
        svc = await l.start_lockdown_service(AMFI_SERVICE)
        try:
            r = await asyncio.wait_for(
                svc.send_recv_plist({"Label": AMFI_SERVICE,
                                     "Request": "zzz-nonsense-zzz",
                                     "TotallyBogus": 12345}),
                timeout=5)
            print("AMFI garbage request ->", r)
        finally:
            await svc.close()
    except Exception as e:
        print("AMFI garbage FAIL:", e)

    # nonsense set_value: does it also "succeed"?
    try:
        r = await l.set_value(True, domain=AMFI_DOMAIN, key="zzz-no-such-key-zzz")
        print("set_value(nonsense key) ->", r)
    except Exception as e:
        print("set_value(nonsense key) FAIL:", e)

    # is the nonsense key now readable / persisted?
    try:
        print("read back nonsense key ->", await l.get_value(domain=AMFI_DOMAIN, key="zzz-no-such-key-zzz"))
    except Exception as e:
        print("read back nonsense key FAIL:", e)


if __name__ == "__main__":
    asyncio.run(main())
