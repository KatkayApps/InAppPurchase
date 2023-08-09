// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "InAppPurchase",
    platforms: [
        .iOS(.v15),
        .macOS(.v13)
    ],
    products: [
        .library(name: "InAppPurchase", targets: ["InAppPurchase"]),
        .library(name: "InAppPurchaseStubs", targets: ["InAppPurchaseStubs"])
    ],
    targets: [
        .target(name: "InAppPurchase", path: "Sources"),
        .target(name: "InAppPurchaseStubs", dependencies: ["InAppPurchase"], path: "InAppPurchaseStubs"),
        .testTarget(name: "InAppPurchaseTests", dependencies: ["InAppPurchase", "InAppPurchaseStubs"], path: "Tests")
    ],
    swiftLanguageVersions: [.v5]
)
