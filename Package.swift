// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "LongdoMap",
    platforms: [
        .macOS(.v10_15), .iOS(.v13)
    ],
    products: [
        .library(name: "LongdoMapFramework", targets: ["LongdoMapFramework"])
    ],
    dependencies: [
        .package(name: "Swifter", url: "https://github.com/httpswift/swifter", from: "1.5.0"),
    ],
    targets: [
        .binaryTarget(
            name: "LongdoMapFrameworkCore",
            path: "LongdoMapFramework.xcframework"
        )
        .target(
            name: "LongdoMapFramework",
            dependencies: [
                .target(name: "LongdoMapFrameworkCore"),
                .product(name: "Swifter", package: "swifter")
            ]
        ),
    ]
)