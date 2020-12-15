// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxIGListKit",
    platforms: [.iOS(.v8)],
    products: [
        .library(
            name: "RxIGListKit",
            targets: ["RxIGListKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.1.0"),
        .package(url: "https://github.com/3a4oT/IGListKit.git", .branch("spmBrain"))
    ],
    targets: [
        .target(
            name: "RxIGListKit",
            dependencies: ["RxSwift", "IGListKit"],
            path: "./RxIGListKit"
        )
    ]
)
