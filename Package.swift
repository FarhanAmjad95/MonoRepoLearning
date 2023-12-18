// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EtisalatMonoRepo",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "EtisalatMonoRepo",
            targets: ["EtisalatMonoRepo"])
    ],
    dependencies: [ .package(path: "./someComponent"), .package(path: "./anotherComponent")],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "EtisalatMonoRepo", dependencies: [.product(name: "someComponent", package: "someComponent"), .product(name: "anotherComponent", package: "anotherComponent")]),
        .testTarget(
            name: "EtisalatMonoRepoTests",
            dependencies: ["EtisalatMonoRepo"])
    ]
)
