// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "onceBLE-iOS-Open",
//    platforms: [
//        //.macOS(.v11),
//        .iOS(.v13),
//        //.watchOS(.v4)
//    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "onceBLE-iOS-Open",
            targets: ["onceBLE"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "NordicDFU", url: "https://github.com/NordicSemiconductor/IOS-Pods-DFU-Library.git", from: "4.5.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "onceBLE-iOS-Open",
            dependencies: ["NordicDFU"]),
        .binaryTarget(
            name: "onceBLE",
            path: "onceBLE.xcframework")
    ]
)
