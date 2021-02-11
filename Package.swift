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
            checksum: "4ed921c0a214a12c3b1df513742aad2294494e451e04649a23af09fa30391777")
    ]
)
