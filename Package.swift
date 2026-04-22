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
            url: "https://sdk-assets.incognia.com/ios/x.y.z/IncogniaSDK-x.y.z.zip",
            checksum: "<# ZIP_CHECKSUM #>"
        )
    ]
)