

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
            targets: ["SRSDKTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("5.10.2")),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "SRSDK",
            url: "https://artifacts.mdp.sportradar.com/apple/mobile-sdk-swift/c26a5bf0/release/SRSDK_3.9.1.xcframework.zip",
            checksum: "afb5ca4099ff0b3574e118a6f22f118a2106007dfa8f2173015f2db9b4fa6bc3"
        ),
        .target(
            name: "SRSDKTarget",
            dependencies: [
                .target(name: "SRSDK"),
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "Logging", package: "swift-log")
            ],
            path: "SRSDKTarget")
    ]
)

