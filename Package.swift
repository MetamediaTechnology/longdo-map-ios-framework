// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "LongdoMap",
    platforms: [
        .macOS(.v10_15), .iOS(.v13)
    ],
    products: [
        .library(name: "LongdoMapFramework", targets: ["LongdoMapFrameworkTarget"])
    ],
    dependencies: [
        .package(url: "https://github.com/httpswift/swifter", from: "1.5.0"),
    ],
    targets: [
        .binaryTarget(
            name: "LongdoMapFramework",
            path: "LongdoMapFramework.xcframework"
        ),
        .target(
            name: "LongdoMapFrameworkTarget",
            dependencies: [
                .target(name: "LongdoMapFramework"),
                .product(name: "Swifter", package: "swifter")
            ],
            path: "Sources"
        )
    ]
)