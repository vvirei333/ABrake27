#!/usr/bin/env python3
"""launch_dvt.py — launch a process by device path via pymobiledevice3 DVT.

Problem:
  pymobiledevice3's `developer dvt launch` CLI always treats the first
  positional argument as a *bundle identifier*, passing "" for the device path.
  We want to launch by absolute device path (e.g. /var/mobile/Media/EnableAMFIDevMode),
  because installing a .app via installd fails on iOS 17+ with 0xe8008014 /
  0xe800801c even when the binary is ad-hoc signed.

Fix:
  Bypass pymobiledevice3's `_wrapper` (which mangles arguments via
  `_apply_primitive_coercions`) and call the underlying DTX channel's
  `invoke` method directly with the raw selector and positional arguments.
  This gives us exact control over what is sent to the device.

  We still delegate to the real CLI via runpy so that all the iOS 17+ RSD-tunnel
  plumbing ("Trying again over a no-root userspace tunnel...") still happens.

Usage:
    launch_dvt.py <device_path> [args...]
"""
import runpy
import shlex
import sys

# Import the DVT module BEFORE the CLI does, so we can patch it.
try:
    from pymobiledevice3.services.dvt.instruments import process_control as _pc
except ImportError as exc:
    print(f"[!] cannot import pymobiledevice3 DVT module: {exc}", file=sys.stderr)
    sys.exit(1)


async def _patched_launch(self, bundle_id=None, arguments=None,
                          kill_existing=False, environment=None,
                          extra_options=None, *args, **kwargs):
    """Same signature as ProcessControl.launch, but treats `bundle_id`
    as a device path and bypasses pymobiledevice3's argument mangling."""
    device_path = bundle_id
    arguments = list(arguments or [])
    environment = dict(environment or {})
    options = dict(extra_options or {})

    # If somebody passed args positionally, harvest them the same way.
    if args and not arguments:
        arguments = list(args)

    # --- Direct DTX call, bypassing the wrapper's coercions ---
    selector = "launchSuspendedProcessWithDevicePath:bundleIdentifier:environment:arguments:options:"

    # Locate the underlying DTX channel.  Depending on pymobiledevice3 version,
    # the attribute may be `_channel` or `channel`.
    channel = getattr(self.service, "_channel", None) or getattr(self.service, "channel", None)
    if channel is None:
        raise RuntimeError("cannot locate DTX channel on ProcessControl service")

    # Debug line so we can see exactly what we send to the device.
    print(f"[debug] DTX invoke: device_path={device_path!r} "
          f"bundle_id='' args={arguments!r}", file=sys.stderr)

    # NOTE: keyword is `expects_reply`, not `expect_reply`.
    result = await channel.invoke(
        selector,
        device_path,
        "",               # bundleIdentifier (empty on purpose)
        environment,
        arguments,
        options,
        expects_reply=True,
    )
    return result


# Install the patch BEFORE the CLI imports and uses the module.
_pc.ProcessControl.launch = _patched_launch


def main() -> int:
    if len(sys.argv) < 2:
        print("Usage: launch_dvt.py <device_path> [args...]", file=sys.stderr)
        return 1

    device_path = sys.argv[1]
    extra_args = sys.argv[2:]

    # The CLI does shlex.split(arguments) internally, so we build a single
    # string with proper quoting: token[0] = device_path, token[1:] = args.
    cli_arg_string = " ".join(shlex.quote(p) for p in [device_path, *extra_args])

    # Force the CLI argv as if the user typed:
    #   pymobiledevice3 developer dvt launch --stream "<device_path> <args>"
    sys.argv = [
        "pymobiledevice3",
        "developer", "dvt", "launch",
        "--stream",
        cli_arg_string,
    ]

    runpy.run_module("pymobiledevice3", run_name="__main__", alter_sys=True)
    return 0


if __name__ == "__main__":
    sys.exit(main())