// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "IncogniaSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "IncogniaSDK",
            targets: [
                "IncogniaSDKWrapper",
                "IncogniaSDK"
            ]
        )
    ],
    targets: [
        .target(
            name: "IncogniaSDKWrapper",
            path: "SwiftPM-Wrap/IncogniaSDK-Wrapper",
            resources: [
                .copy("Resources/PrivacyInfo.xcprivacy")
            ]
        ),
        .binaryTarget(
            name: "IncogniaSDK",
            url: "https://sdk-assets.incognia.com/ios/7.0.0/IncogniaSDK-7.0.0.zip",
            checksum: "0c75f71a7ed6daee9fc34bab2325f2998e50e2db0c8d8641a6e46c9a676e20a6"
        )
    ]
)