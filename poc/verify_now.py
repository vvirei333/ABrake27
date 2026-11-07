#!/usr/bin/env python3
"""
verify_now.py — honest re-check of device state AFTER the claimed enable.

We must establish:
  1. is Developer Mode actually ON now?
  2. is it reproducible (does the effect depend on our requests)?
  3. any confound (reboot? other tool? Settings toggle?).
"""

import asyncio
import sys

AMFI_DOMAIN = "com.apple.security.mac.amfi"
LD_DOMAIN = "com.apple.mobile.lockdown"


async def main():
    from pymobiledevice3.lockdown import create_using_usbmux
    l = await create_using_usbmux()

    print("device:", l.display_name, l.product_version, l.product_build_version)
    try:
        print("has_developer_mode        =", await l.has_developer_mode())
    except Exception as e:
        print("has_developer_mode FAIL:", e)
    try:
        print("get_developer_mode_status =", await l.get_developer_mode_status())
    except Exception as e:
        print("get_developer_mode_status FAIL:", e)
    for dom, key in ((AMFI_DOMAIN, "DeveloperModeStatus"),
                     (AMFI_DOMAIN, "DeveloperModeRequired"),
                     (LD_DOMAIN, "DeveloperModeStatus"),
                     (LD_DOMAIN, "DeveloperModeRequired"),
                     (LD_DOMAIN, "security-mode-change-enable")):
        try:
            print(f"{dom}/{key} = {await l.get_value(domain=dom, key=key)}")
        except Exception as e:
            print(f"{dom}/{key} FAIL: {e}")


if __name__ == "__main__":
    asyncio.run(main())