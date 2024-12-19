// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "BackgroundDownload",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "BackgroundDownload",
            targets: ["BackgroundDownloadPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "BackgroundDownloadPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/BackgroundDownloadPlugin"),
        .testTarget(
            name: "BackgroundDownloadPluginTests",
            dependencies: ["BackgroundDownloadPlugin"],
            path: "ios/Tests/BackgroundDownloadPluginTests")
    ]
)