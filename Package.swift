// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "UIntInfinity",
    products: [
        .library(name: "UIntInfinity", targets: ["UIntInfinity"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "UIntInfinity", dependencies: []),
        .testTarget(name: "UIntInfinityTests", dependencies: ["UIntInfinity"]),
    ]
)
