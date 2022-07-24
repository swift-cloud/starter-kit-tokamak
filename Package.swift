// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "starter-kit-tokamak",
    platforms: [
        .macOS(.v11)
    ],
    dependencies: [
        .package(url: "https://github.com/AndrewBarba/swift-compute-runtime", branch: "main"),
        .package(url: "https://github.com/TokamakUI/Tokamak.git", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "App",
            dependencies: [
                .product(name: "Compute", package: "swift-compute-runtime"),
                .product(name: "TokamakStaticHTML", package: "Tokamak")
            ]
        )
    ]
)
