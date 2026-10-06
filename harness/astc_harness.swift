// Minimal ASTC decode harness — macOS only (swiftc astc_harness.swift -framework ImageIO -framework CoreGraphics)
// Feeds a file through CGImageSourceCreateWithData to reach ASTCReadPlugin::initialize.
// Use with ASAN (swiftc -sanitize=address) to surface the unguarded overflow on stable builds.
import Foundation
import ImageIO
import CoreGraphics

guard CommandLine.arguments.count > 1 else {
    fputs("usage: astc_harness <file.astc|file.dds>\n", stderr); exit(1)
}
guard let data = NSData(contentsOfFile: CommandLine.arguments[1]) else {
    fputs("cannot read file\n", stderr); exit(1)
}
let src = CGImageSourceCreateWithData(data as CFData, nil)
guard let src else { fputs("CGImageSourceCreateWithData returned nil\n", stderr); exit(1) }
let status = CGImageSourceGetStatus(src)
print("status: \(status.rawValue)")
if let img = CGImageSourceCreateImageAtIndex(src, 0, nil) {
    print("decoded: \(img.width)x\(img.height)")
} else {
    print("decode failed (no image at index 0)")
}
