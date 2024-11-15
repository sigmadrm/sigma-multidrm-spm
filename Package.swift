// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SigmaMultiDRM",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "SigmaMultiDRM",
            targets: ["SigmaMultiDRM", "SigmaMultiDRMFramework"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "SigmaMultiDRMFramework",
            path: "xcframeworks/sigma-multidrm-ios-sdk.xcframework"
        ),
        .target(
            name: "SigmaMultiDRM"
        ),
    ]
)
