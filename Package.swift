// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EtisalatMonoRepo",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "someComponent",     targets: ["someComponent"]),
        .library(name: "anotherComponent",  targets: ["anotherComponent"]),
        
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "someComponent", dependencies: [],
                path: "someComponent/Sources/someComponent"),
        .testTarget(name: "someComponentTests", dependencies: ["someComponent"],
                    path: "someComponent/Tests/someComponentTests"),
        .target(name: "anotherComponent", dependencies: [],
                path: "anotherComponent/Sources/anotherComponent"),
        .testTarget(name: "anotherComponentTests", dependencies: ["anotherComponent"],
                    path: "anotherComponent/Tests/anotherComponentTests"),
    ]
)
