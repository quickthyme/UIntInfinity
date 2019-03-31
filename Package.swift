// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "UIntfinity",
    products: [
        .library(name: "UIntfinity", targets: ["UIntfinity"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "UIntfinity", dependencies: []),
        .testTarget(name: "UIntfinityTests", dependencies: ["UIntfinity"]),
    ]
)
