
// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SRSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "SRSDK",
            targets: ["SRSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SRSDK",
            url: "https://artifacts.mdp.sportradar.com/apple/mobile-sdk-swift/7069d175/release/SRSDK_3.9.0.xcframework.zip",
            checksum: "77685cd55214c619d68e39816fa90b0f9ca7c7e69f26b205c4565aad454e1d37"
        )
    ]
)

