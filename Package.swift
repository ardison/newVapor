// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "newVapor",
    products: [
        .library(name: "newVapor", targets: ["App"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "4.0.0-alpha")),
        
        // 🔵 Mongo Swift
        .package(url: "https://github.com/mongodb/mongo-swift-driver", .upToNextMajor(from: "0.1.0"))
    ],
    targets: [
        .target(name: "App", dependencies: ["MongoSwift", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

