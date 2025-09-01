

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
            url: "https://artifacts.mdp.sportradar.com/apple/mobile-sdk-swift/0ca9f7b6/release/SRSDK_3.9.0.xcframework.zip",
            checksum: "413c1848f757e061832406972d87d610565a7a7e07eec743879c6da1694debab"
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

