// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SQLite",
    products: [
        .library(name: "SQLite", targets: ["SQLite"]),
    ],
    dependencies: [
        // 🌎 Utility package containing tools for byte manipulation, Codable, OS APIs, and debugging.
        .package(url: "https://github.com/vapor/core.git", from: "3.0.0-rc"),
    ],
    targets: [
        .target(name: "CSQLite"),
        .target(name: "SQLite", dependencies: ["Bits", "CodableKit", "CSQLite", "Debugging"]),
        .testTarget(name: "SQLiteTests", dependencies: ["SQLite"]),
    ]
)
