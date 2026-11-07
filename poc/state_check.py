#!/usr/bin/env python3
"""
state_check.py — comprehensive CURRENT device state snapshot.

Conflicting signals after reboot (DDI mounted vs status=False), so measure
everything at once and independently.
"""

import asyncio

AMFI_DOMAIN = "com.apple.security.mac.amfi"
LD_DOMAIN = "com.apple.mobile.lockdown"


async def main():
    from pymobiledevice3.lockdown import create_using_usbmux
    l = await create_using_usbmux()
    print("device:", l.display_name, l.product_version, l.product_build_version)

    try:
        print("get_developer_mode_status       =", await l.get_developer_mode_status())
    except Exception as e:
        print("get_developer_mode_status FAIL:", e)
    for dom, key in ((AMFI_DOMAIN, "DeveloperModeStatus"), (LD_DOMAIN, "DeveloperModeStatus"),
                     (LD_DOMAIN, "DeveloperModeRequired"), (LD_DOMAIN, "security-mode-change-enable")):
        try:
            print(f"{dom}/{key:32} = {await l.get_value(domain=dom, key=key)}")
        except Exception as e:
            print(f"{dom}/{key:32} FAIL: {e}")

    # independent mounter query
    try:
        svc = await l.start_lockdown_service("com.apple.mobile.mobile_image_mounter")
        try:
            r = await asyncio.wait_for(svc.send_recv_plist({"Command": "QueryDeveloperModeStatus"}), timeout=5)
            print("mounter QueryDeveloperModeStatus  =", r)
        finally:
            await svc.close()
    except Exception as e:
        print("mounter QueryDeveloperModeStatus FAIL:", e)

    # mounted images
    try:
        svc = await l.start_lockdown_service("com.apple.mobile.mobile_image_mounter")
        try:
            r = await asyncio.wait_for(svc.send_recv_plist({"Command": "CopyDevices"}), timeout=5)
            imgs = r.get("EntryList", [])
            print(f"mounter CopyDevices: {len(imgs)} image(s)")
            for img in imgs:
                print("   ", img.get("ImageType"), img.get("ImageSignature") is not None)
        finally:
            await svc.close()
    except Exception as e:
        print("mounter CopyDevices FAIL:", e)


if __name__ == "__main__":
    asyncio.run(main())
