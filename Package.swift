// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "onceBLE-iOS-Open",
    products: [
        .library(
            name: "onceBLE-iOS-Open",
            targets: ["onceBLE"])
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .binaryTarget(
            name: "onceBLE",
            path: "onceBLE.xcframework")
    ]
)
