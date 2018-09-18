// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Ordering",
    products: [
        .library(name: "Ordering", targets: ["Ordering"])
    ],
    targets: [
        .target(name: "Ordering", dependencies: []),
        .testTarget(name: "OrderingTests", dependencies: ["Ordering"])
    ]
)
