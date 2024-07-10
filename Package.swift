// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "LongdoMap",
    platforms: [
        .macOS(.v10_15), .iOS(.v13)
    ],
    products: [
        .library(name: "LongdoMapFramework", targets: ["LongdoMapFrameworkCore", "LongdoMapFramework3rdParty"])
    ],
    dependencies: [
        .package(url: "https://github.com/httpswift/swifter", from: "1.5.0"),
    ],
    targets: [
        .binaryTarget(
            name: "LongdoMapFrameworkCore",
            path: "LongdoMapFramework.xcframework"
        ),
        .target(
            name: "LongdoMapFramework3rdParty",
            dependencies: [
                .product(name: "Swifter", package: "swifter")
            ],
            path: "Sources"
        )
    ]
)