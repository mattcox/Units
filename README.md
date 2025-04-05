# 📐 Units
Welcome to **Units**, a Swift package for working with physical units in a clear, type-safe, and expressive way.

Units provides a lightweight alternative to Foundation’s Measurement and Dimension APIs, with a cleaner syntax and built-in support for unit conversion across categories like distance, angle, speed, temperature, and more.

## Installation

Units is distributed using the [Swift Package Manager](https://swift.org/package-manager). To install it within another Swift package, add it as a dependency within your `Package.swift` manifest:

```swift
let package = Package(
    // . . .
    dependencies: [
        .package(url: "https://github.com/mattcox/Units.git", branch: "main")
    ],
    // . . .
)
```

If you’d like to use Units within an iOS, macOS, watchOS or tvOS app, then use Xcode’s `File > Add Packages...` menu command to add it to your project.

Import MathKit wherever you’d like to use it:
```swift
import Units
```
