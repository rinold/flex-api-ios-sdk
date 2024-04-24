// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flex-api-ios-sdk",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CyberSource",
            targets: ["CyberSource"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CyberSourcePrivate",
            publicHeadersPath: "include",
            cSettings: [
              .headerSearchPath("AesGcm/Classes"),
              .headerSearchPath("AesGcm/Classes/Components")
            ]
        ),

        .target(
            name: "CyberSource",
            dependencies: ["CyberSourcePrivate"]
        )
    ]
)
