#!/usr/bin/env python3
"""Diagnose 0xe8008017 (errSecCSBadResource) for a signed .app bundle.

Loads _CodeSignature/CodeResources and recomputes every sealed hash, reporting
mismatches, missing files and unsealed files.

Usage: python3 _diag_coderesources.py <path-to-.app>
"""
import base64
import hashlib
import os
import plistlib
import sys

# zsign / Apple default CodeResources rules: these are *not* sealed.
DEFAULT_RULES = {
    "^version.plist$", "^Info\\.plist$", "^PkgInfo$", "^_CodeSignature/",
    "^CodeResources$", "^embedded\\.provisionprofile$",
    "^embedded\\.mobileprovision$", "^SC_Info/", "^Resources/", "^Frameworks/",
    "^PlugIns/", "^Watch/", "^.*\\.dSYM/", "^.*\\.lproj/", "^.*\\.nib$",
    "^.*\\.storyboardc$", "^.*\\.strings$", "^.*\\.png$", "^.*\\.jpg$",
}


def hashes(path):
    h1 = hashlib.sha1(open(path, "rb").read()).digest()
    h256 = hashlib.sha256(open(path, "rb").read()).digest()
    return h1, h256


def main(app):
    cr_path = os.path.join(app, "_CodeSignature", "CodeResources")
    if not os.path.isfile(cr_path):
        print(f"FAIL: no {cr_path}")
        return 1
    raw = open(cr_path, "rb").read()
    print(f"[CodeResources] {cr_path}  {len(raw)} bytes  "
          f"format={'XML' if raw.lstrip()[:5] == b'<?xml' else 'binary'}")
    cr = plistlib.loads(raw)

    print(f"  top-level keys: {sorted(cr.keys())}")
    for sec in ("files", "files2"):
        if sec in cr:
            print(f"  {sec}: {len(cr[sec])} entries")
    if "rules" in cr:
        print(f"  rules: {sorted(cr['rules'].keys())}")

    bad = 0
    for sec in ("files", "files2"):
        for name, meta in (cr.get(sec) or {}).items():
            full = os.path.join(app, name)
            if not os.path.isfile(full):
                print(f"  [{sec}] MISSING ON DISK: {name}")
                bad += 1
                continue
            h1, h256 = hashes(full)
            if isinstance(meta, dict):
                if "hash" in meta and base64.b64encode(h1).decode() != meta["hash"]:
                    print(f"  [{sec}] SHA1 MISMATCH: {name}")
                    bad += 1
                if "hash2" in meta and base64.b64encode(h256).decode() != meta["hash2"]:
                    print(f"  [{sec}] SHA256 MISMATCH: {name}")
                    bad += 1
            else:
                if base64.b64encode(h1).decode() != meta:
                    print(f"  [{sec}] SHA1 MISMATCH: {name}")
                    bad += 1

    # files present on disk but not sealed
    sealed = set(cr.get("files", {})) | set(cr.get("files2", {}))
    for root, dirs, files in os.walk(app):
        for f in files:
            rel = os.path.relpath(os.path.join(root, f), app)
            if rel.startswith("_CodeSignature/"):
                continue
            if rel in sealed:
                continue
            print(f"  [disk] NOT SEALED: {rel}")
            bad += 1

    print()
    print("RESULT:", "CodeResources CONSISTENT" if bad == 0
          else f"{bad} PROBLEM(S) FOUND")
    return 0 if bad == 0 else 1


if __name__ == "__main__":
    sys.exit(main(sys.argv[1]))
