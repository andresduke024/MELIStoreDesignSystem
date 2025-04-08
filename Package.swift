// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MELIStoreDesignSystem",
    platforms: [.iOS(.v17), .macOS(.v15), .watchOS(.v7)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MELIStoreDesignSystem",
            targets: ["MELIStoreDesignSystem"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MELIStoreDesignSystem",
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "MELIStoreDesignSystemTests",
            dependencies: ["MELIStoreDesignSystem"]
        ),
    ]
)
