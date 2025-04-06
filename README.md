# 📐 Units
Welcome to **Units**, a Swift package for working with physical units in a clear, type-safe, and expressive way.

Units provides a lightweight alternative to Foundation’s Measurement and Dimension APIs, with a cleaner syntax and built-in support for unit conversion across categories like distance, angle, speed, temperature, and more.

## Usage
Units provides two protocols; `Measurement` and `Unit`. The `Measurement` protocol describes a type of measurement such as Duration, whereas the `Unit` protocol describes a unit of the measurement, for example Seconds, Minutes, Hours.

Measurements are stored as a suitable base unit, for example the base for Distance is meters, and the base for Duration is seconds. When initializing a measurement from another unit, it is converted into the base, and when reading it as another unit it converted from this base. This can lead to slight changes in value due to the loss of precision during the conversion.

### Basic Usage
To initialize a `Measurement`, you simply declare it and specify the unit that value is in:
```swift
var distance = Distance<Double>(25.0, unit: .meters)
```

The value can then be read or modified in different units:
```swift
let centimeters = distance.centimeters  // 2500.0

distance.millimeters = 1000
let meters = distance.meters  // 1.0
```

### Initializing from a Unit
The `Measurement` can also be initialized directly from a `Unit`:
```swift
let duration = Duration<Double>(seconds: 120.0)
let minutes = duration.minutes  // 2.0
```

Or more succinctly:
```swift
let duration: Duration = .minutes(180.0)
let hours = duration.hours  // 2.5
```

### Unit Composition
Some measurements can be composed from different unit types. For example, two distances can be composed to create an area:
```swift
let area = Area(x: Distance<Double>(2.0, unit: .meters), x: Distance<Double>(3.0, unit: .meters))
let squareMeters = area.squareMeters  // 6.0
```

Or for example to calculate speed:
```swift
let speed = Speed(distance: Distance<Double>(10.0, unit: .meters), time: Duration<Double>(30.0, unit: seconds))
let metersPerSecond = speed.metersPerSecond  // 0.33333333333
```

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

Import Units wherever you’d like to use it:
```swift
import Units
```
