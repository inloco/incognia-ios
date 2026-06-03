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
            url: "https://sdk-assets.incognia.com/ios/6.99.0/IncogniaSDK-6.99.0.zip",
            checksum: "b88d83738ddbc875351b5645b31cbc9ae072f93f33bd6b00d07a18cb6e48f835"
        )
    ]
)