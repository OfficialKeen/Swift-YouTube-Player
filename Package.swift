// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "YouTubePlayer",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "YouTubePlayer",
            targets: ["YouTubePlayer"]
        ),
    ],
    targets: [
        .target(
            name: "YouTubePlayer",
            path: "YouTubePlayer/YouTubePlayer"
        )
    ]
)