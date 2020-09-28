// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoftNumerics",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LoftNumerics",
            targets: ["LoftNumerics"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            name: "LoftNumerics_Modulo",
            url: "git@github.com:loftware/modulo.git",
            .exact("0.0.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "LoftNumerics",
            dependencies: [
                "LoftNumerics_Modulo"
            ]),
        .testTarget(
            name: "LoftNumericsTests",
            dependencies: ["LoftNumerics"]),
    ]
)
