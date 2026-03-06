// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "UberSignature",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "UberSignature",
            targets: ["UberSignature"]
        ),
        .library(
            name: "UberSignatureObjC",
            targets: ["UberSignatureObjC"]
        )
    ],
    targets: [
        .target(
            name: "UberSignature",
            path: "Sources/Swift"
        ),
        .target(
            name: "UberSignatureObjC",
            path: "Sources/ObjC",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("Internal")
            ]
        )
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
