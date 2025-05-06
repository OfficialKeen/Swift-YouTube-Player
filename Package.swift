// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "YouTubePlayer",
    platforms: [
        .iOS(.v13) // Tentukan versi minimum deployment target yang kamu inginkan
    ],
    dependencies: [
        // Menambahkan dependensi Swift-YouTube-Player
        .package(url: "https://github.com/OfficialKeen/Swift-YouTube-Player", from: "2.0.0")
    ],
    products: [
        .library(
            name: "YouTubePlayer",
            targets: ["YouTubePlayer"]
        )
    ],
    targets: [
        .target(
            name: "YouTubePlayer",
            dependencies: [
                // Pastikan menambahkan dependensi ini ke target
                .product(name: "SwiftYouTubePlayer", package: "Swift-YouTube-Player")
            ],
            path: "YouTubePlayer"
        ),
    ]
)
