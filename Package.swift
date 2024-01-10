// swift-tools-version: 5.9
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
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "survicate-uxcam-integration"),
        .testTarget(
            name: "survicate-uxcam-integrationTests",
            dependencies: ["survicate-uxcam-integration"]),
    ]
)
