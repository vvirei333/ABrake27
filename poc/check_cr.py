import plistlib, hashlib
cr = plistlib.load(open("build/Payload/EnableAMFIDevMode.app/_CodeSignature/CodeResources","rb"))
print("files:", list(cr.get("files", {}).keys()))
print("files2:", list(cr.get("files2", {}).keys()))
data = open("build/Payload/EnableAMFIDevMode.app/EnableAMFIDevMode","rb").read()
print("binary size:", len(data))
