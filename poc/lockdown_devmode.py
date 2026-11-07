#!/usr/bin/env python3
"""
lockdown_devmode.py — enable iOS Developer Mode over the lockdown protocol.

Path (from lockdownd strings on iOS 27.2 beta 2):
  * lockdownd exposes domain `com.apple.security.mac.amfi` with key
    DeveloperModeStatus (exactly what pymobiledevice3's
    get_developer_mode_status() reads).
  * lockdownd also references security.mac.amfi.developer_mode_status
    (SFN sequence via MobileActivation) and the notification
    com.apple.mobile.lockdown.developer_status_changed.

Verified pymobiledevice3 (11.20.2) API:
    LockdownClient.get_developer_mode_status() -> bool
        reads domain "com.apple.security.mac.amfi", key "DeveloperModeStatus"
    LockdownClient.set_value(value, domain=None, key=None) -> dict   (value FIRST)
    LockdownClient.start_lockdown_service(name)
    LockdownClient.start_lockdown_developer_service()

NOTE: must run OUTSIDE the VS Code flatpak sandbox (needs /run/usbmuxd).
"""

import asyncio
import sys

AMFI_DOMAIN = "com.apple.security.mac.amfi"
LD_DOMAIN = "com.apple.mobile.lockdown"
AMFI_SERVICE = "com.apple.amfi.lockdown"


async def main():
    try:
        from pymobiledevice3.lockdown import create_using_usbmux
    except ImportError as e:
        print(f"[FATAL] pymobiledevice3 not importable: {e}")
        sys.exit(2)

    lockdown = await create_using_usbmux()

    # ------------------------------------------------------------------
    # 1. READ current status (correct AMFI domain)
    # ------------------------------------------------------------------
    try:
        status = await lockdown.get_developer_mode_status()
        print(f"[READ] DeveloperModeStatus (amfi) = {status}")
    except Exception as e:
        print(f"[READ FAIL] {e}")

    for dom, key in ((AMFI_DOMAIN, "DeveloperModeStatus"),
                     (LD_DOMAIN, "DeveloperModeStatus"),
                     (LD_DOMAIN, "DeveloperModeRequired")):
        try:
            v = await lockdown.get_value(domain=dom, key=key)
            print(f"[GET {dom}/{key}] = {v}")
        except Exception as e:
            print(f"[GET {dom}/{key}] FAIL: {e}")

    # ------------------------------------------------------------------
    # 2. SET via the AMFI domain (value-first signature!)
    # ------------------------------------------------------------------
    for dom in (AMFI_DOMAIN, LD_DOMAIN):
        for key in ("DeveloperModeStatus", "DeveloperModeRequired"):
            try:
                r = await lockdown.set_value(True, domain=dom, key=key)
                print(f"[SET {dom}/{key}=True] OK -> {r}")
            except Exception as e:
                print(f"[SET {dom}/{key}=True] FAIL: {e}")

    # ------------------------------------------------------------------
    # 3. NVRAM mechanism from HANDOFF 6.3 (armSecurityBootMode)
    # ------------------------------------------------------------------
    for key in ("security-mode-change-enable", "SecurityModeChangeEnable"):
        try:
            r = await lockdown.set_value("1", domain=LD_DOMAIN, key=key)
            print(f"[SET {LD_DOMAIN}/{key}=1] OK -> {r}")
        except Exception as e:
            print(f"[SET {LD_DOMAIN}/{key}=1] FAIL: {e}")

    # ------------------------------------------------------------------
    # 4. AMFI lockdown service (com.apple.amfi.lockdown)
    #    ServiceConnection uses send_recv_plist (not send_request).
    # ------------------------------------------------------------------
    try:
        svc = await lockdown.start_lockdown_service(AMFI_SERVICE)
        try:
            for req in (
                {"Label": AMFI_SERVICE, "Request": "SetValue",
                 "Domain": AMFI_DOMAIN, "Key": "DeveloperModeStatus", "Value": True},
                {"Label": AMFI_SERVICE, "Request": "GetValue",
                 "Domain": AMFI_DOMAIN, "Key": "DeveloperModeStatus"},
                {"Label": AMFI_SERVICE, "Request": "DeveloperModeStatus"},
            ):
                try:
                    r = await svc.send_recv_plist(req)
                    print(f"[AMFI SVC {req.get('Request')}] OK -> {r}")
                except Exception as e:
                    print(f"[AMFI SVC {req.get('Request')}] FAIL: {e}")
        finally:
            try:
                await svc.close()
            except Exception:
                pass
    except Exception as e:
        print(f"[AMFI SVC open] FAIL: {e}")

    # ------------------------------------------------------------------
    # 5. re-read
    # ------------------------------------------------------------------
    try:
        status = await lockdown.get_developer_mode_status()
        print(f"[RE-READ] DeveloperModeStatus (amfi) = {status}")
    except Exception as e:
        print(f"[RE-READ FAIL] {e}")


if __name__ == "__main__":
    asyncio.run(main())

