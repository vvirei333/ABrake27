#!/usr/bin/env python3
"""
semantics_probe.py — characterize the com.apple.security.mac.amfi store.

Questions:
  A. what does get_value return for a key never written?
  B. are written values stored verbatim (False/True/str/int)?
  C. does writing False to DeveloperModeStatus stick?
  D. does get_developer_mode_status() track the store or the kernel?
"""

import asyncio

DOM = "com.apple.security.mac.amfi"


async def read(l, key):
    try:
        return await l.get_value(domain=DOM, key=key)
    except Exception as e:
        return f"FAIL:{e}"


async def write(l, key, val):
    try:
        r = await l.set_value(val, domain=DOM, key=key)
        return r.get("Value") if isinstance(r, dict) else r
    except Exception as e:
        return f"FAIL:{e}"


async def main():
    from pymobiledevice3.lockdown import create_using_usbmux
    l = await create_using_usbmux()

    print("A. never-written keys:")
    for k in ("zzz-never-1", "zzz-never-2", "DeveloperModeStatus"):
        print(f"   {k} -> {await read(l, k)}")

    print("B. store verbatim?")
    for k, v in (("zzz-bool-f", False), ("zzz-bool-t", True),
                 ("zzz-str", "hello"), ("zzz-int", 123), ("zzz-int0", 0)):
        w = await write(l, k, v)
        print(f"   write {k}={v!r} -> stored={w!r}  readback={await read(l, k)!r}")

    print("C. DeveloperModeStatus False-write:")
    print(f"   write False -> {await write(l, 'DeveloperModeStatus', False)!r}  readback={await read(l, 'DeveloperModeStatus')!r}")
    print(f"   (leaving as-is)")

    print("D. get_developer_mode_status =", await l.get_developer_mode_status())


if __name__ == "__main__":
    asyncio.run(main())