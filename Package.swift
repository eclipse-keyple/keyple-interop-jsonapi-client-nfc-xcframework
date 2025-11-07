// swift-tools-version:5.3
import PackageDescription

let package = Package(
   name: "KeypleInterop",
   platforms: [
     .iOS(.v14),
   ],
   products: [
      .library(name: "KeypleInterop", targets: ["KeypleInterop"])
   ],
   targets: [
      .binaryTarget(
         name: "KeypleInterop",
         url: "https://github.com/tdassonville/keyple-interop-jsonapi-client-nfc-xcframework/releases/download/1.0.0/KeypleInterop-1.0.0-xcframework.zip",
         checksum: "79194fa4f421cd93a83c4ddea99376a99cf179a9cdfb32b270339dd5f1e06f05") // Generated on 2025-11-06 14:36:13
   ]
)
