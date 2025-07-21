// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "CalorieCalculator",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .iOSApplication(
            name: "CalorieCalculator",
            targets: ["CalorieCalculator"],
            bundleIdentifier: "com.example.CalorieCalculator",
            teamIdentifier: "",
            displayVersion: "1.0",
            bundleVersion: "1",
            accentColor: .presetColor(.blue),
            supportedDeviceFamilies: [ .phone ],
            supportedInterfaceOrientations: [ .portrait ]
        )
    ],
    targets: [
        .executableTarget(
            name: "CalorieCalculator",
            path: "CalorieCalculator"
        )
    ]
)
