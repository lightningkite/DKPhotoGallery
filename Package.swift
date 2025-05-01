// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DKPhotoGallery",
    defaultLocalization: "en",
    products: [
        .library(
            name: "DKPhotoGallery",
            targets: ["DKPhotoGallery"]),
    ],
    dependencies: [
        .package(url: "https://github.com/alexiscreuzot/SwiftyGif.git", from: "5.4.5"),
        .package(url: "https://github.com/SDWebImage/SDWebImage", from: "5.21.0"),
    ],
    targets: [
        .target(
            name: "DKPhotoGallery",
            dependencies: [
                .product(name: "SwiftyGif", package: "SwiftyGif"),
                .product(name: "SDWebImage", package: "SDWebImage"),
            ],
            path: "DKPhotoGallery"),
    ]
)
