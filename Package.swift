// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SuperHeroDataLayer",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SuperHeroDataLayer",
            targets: ["SuperHeroDataLayer"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.10.1")
    ],
    
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SuperHeroDataLayer",
            dependencies: ["Alamofire"],
            path: "Sources/SuperHeroDataLayer"
        ),
        .testTarget(
            name: "SuperHeroDataLayerTests",
            dependencies: ["SuperHeroDataLayer"]),
    ]
)
