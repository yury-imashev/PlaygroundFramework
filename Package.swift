// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PlaygroundPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PlaygroundPackage",
            targets: ["PlaygroundFramework"]),
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "PlaygroundFramework",
            url: "https://github.com/someyura/PlaygroundFramework/blob/main/Release/PlaygroundFramework.xcframework.0.0.1.zip",
            checksum: "e8c8d13ed57b7e93e684fd7bd5f718a06fcc227274c99cab3d3fe23b0c179c49")
    ]
)
