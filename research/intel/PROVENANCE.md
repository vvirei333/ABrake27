# Intel provenance

## CVE-2026-112706_Sandbox_Escape.md

- **Origin:** Telegram forward (channel "#checkra1n", forwarded from "Nicola De Pavlo"),
  received 2026-11-04. **Anonymous authorship — no direct provenance to the credited
  reporters.** Possible leaked draft or third-party writeup of someone else's work.
  **Do not redistribute or republish** — internal reference only.
- **Advisory check:** ✅ CVE-2026-112706 exists in Apple's official iOS/iPadOS 27.2
  security content (support.apple.com/en-us/149230) — CoreMedia, "An app may be able to
  access sensitive user data", addressed with additional restrictions. Reporters:
  Adriatik Raci, Rodolphe BRUNETTI (@eisw0lf), Chris Bailey (Short Circuit).
  CVE-2026-112688 (CoreMedia parse → code exec) also confirmed in the same advisory.
- **Static verification vs our 27.0.1 (24A446) artifacts — 2026-11-04:**
  - ✅ `com.apple.coremedia.mediaplaybackd.bytestream.xpc` Mach service IS registered in
    `System/Library/LaunchDaemons/com.apple.mediaplaybackd.plist` (verified by grep)
  - ✅ FigXPC handshake functions exist in CoreMedia (dyld cache extraction):
    `_FigMemoryOriginBeginEstablishingMemoryRecipientByFillingInXPCMessage1`,
    `_FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2`
  - ⚠️ UNRESOLVED: message keys `Curl`/`CreationURL`/`ByteStreamDetails`/`FileDescriptor`
    not found as strings in the 70 KB daemon shim or CoreMedia — handler-side subset
    binary not yet identified; non-disproof, verification incomplete
- **Verdict:** externally consistent (CVE + service + mechanism all real on the exact
  target build). Exploit mechanics and the claimed device-test results remain
  **unverified by us**. Sandbox escape = stage [1] of the STATUS §4 chain, publicly
  CVE-attributed as of 27.2.
