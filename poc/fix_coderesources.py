import plistlib, os, sys, hashlib, base64

app = "build/Payload/EnableAMFIDevMode.app"
cr_path = os.path.join(app, "_CodeSignature", "CodeResources")

with open(cr_path, "rb") as f:
    cr = plistlib.load(f)

removed = []
for section in ("files", "files2"):
    if section in cr:
        for key in list(cr[section].keys()):
            if key in ("EnableAMFIDevMode", "Info.plist", "embedded.mobileprovision"):
                del cr[section][key]
                removed.append(f"{section}:{key}")

with open(cr_path, "wb") as f:
    plistlib.dump(cr, f)

print("Removed:", removed)
print("DONE")