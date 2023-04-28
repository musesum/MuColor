// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "MuColor",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "MuColor",
            targets: ["MuColor"]),
    ],
    dependencies: [
        .package(url: "https://github.com/musesum/MuFlo.git", from: "0.23.0"),
    ],
    targets: [
        .target(
            name: "MuColor",
            dependencies: [
                .product(name: "MuFlo", package: "MuFlo")]),
        .testTarget(
            name: "MuColorTests",
            dependencies: ["MuColor"]),
    ]
)
