// swift-tools-version: 5.9
import PackageDescription

// Pure Swift core: tests run on macOS/Linux without the Apple NaturalLanguage framework.
// The iOS Xcode project compiles these same source files directly.
let package = Package(
    name: "TextstufeCore",
    platforms: [.iOS(.v17), .macOS(.v13)],
    products: [
        .library(name: "TextstufeCore", targets: ["TextstufeCore"])
    ],
    targets: [
        .target(name: "TextstufeCore", path: "Textstufe/Core"),
        .testTarget(name: "TextstufeCoreTests", dependencies: ["TextstufeCore"], path: "Tests/TextstufeCoreTests")
    ]
)
