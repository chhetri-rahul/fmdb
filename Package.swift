// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FMDB",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "FMDB", targets: ["FMDB"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "SQLCipher", url: "https://github.com/chhetri-rahul/SQLCipherBinary.git", .branch("main"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "FMDB",
            dependencies: [.product(name: "SQLCipher", package: "SQLCipher")],
            path: "src/fmdb",
            publicHeadersPath: "."),
    ]
)
