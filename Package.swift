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
    targets: [
        .binaryTarget(
            name: "LongdoMapFramework",
            path: "LongdoMapFramework.xcframework"
        )
    ]
)