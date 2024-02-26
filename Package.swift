// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "survicate-uxcam-integration",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "survicate-uxcam-integration",
            targets: ["survicate-uxcam-integration"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Survicate/survicate-ios-sdk", from: "4.1.0"),
        .package(url: "https://github.com/uxcam/uxcam-ios-sdk", from: "3.6.9"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "survicate-uxcam-integration",
            dependencies: [
                .product(name: "UXCam", package: "uxcam-ios-sdk"),
                .product(name: "Survicate", package: "survicate-ios-sdk"),
            ]
        ),
        .testTarget(
            name: "survicate-uxcam-integrationTests",
            dependencies: ["survicate-uxcam-integration"]),
    ]
)
