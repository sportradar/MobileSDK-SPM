

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
            url: "https://artifacts.mdp.sportradar.com/apple/mobile-sdk-swift/42946a27/release/SRSDK_3.9.0.xcframework.zip",
            checksum: "7d522972722bf775a7a8ca1d10c4b1a359638994dd3ead5b9889ad9735c6ba12"
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

