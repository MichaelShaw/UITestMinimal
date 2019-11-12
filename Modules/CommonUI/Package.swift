// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommonUI",
    products: [
        .library(
            name: "CommonUI",
            targets: ["CommonUI"]),
    ],
    targets: [
        .target(
            name: "CommonUI",
            dependencies: []
		)
    ]
)
