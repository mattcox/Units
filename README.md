# 📐 Units

<p align="center">
    <img src="https://img.shields.io/badge/Swift-orange.svg" alt="Swift" />
    <a href="https://swift.org/package-manager">
        <img src="https://img.shields.io/badge/swiftpm-compatible-brightgreen.svg?style=flat" alt="Swift Package Manager" />
    </a>
</p>

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
let area = Area(x: Distance<Double>(2.0, unit: .meters), y: Distance<Double>(3.0, unit: .meters))
let squareMeters = area.squareMeters  // 6.0
```

Or for example to calculate speed:
```swift
let speed = Speed(distance: Distance<Double>(10.0, unit: .meters), duration: Duration<Double>(30.0, unit: seconds))
let metersPerSecond = speed.metersPerSecond  // 0.33333333333
```

### Arithmetic
Measurements of the same kind can be added, subtracted, compared and scaled, whatever units they were made in:
```swift
let total = Distance(kilometers: 2.0) + Distance(meters: 500.0)  // 2.5 km
let half = Power(kilowatts: 3.0) * 0.5                           // 1.5 kW
let output = Power(kilowatts: 3.0) * .percent(50.0)              // 1.5 kW
```

Dividing one measurement by another of the same kind gives a plain number:
```swift
let laps = Distance(kilometers: 5.0) / Distance(meters: 400.0)  // 12.5
```

Only arithmetic that makes sense physically is available. Multiplying two distances does not give a distance, it gives an area, so that is what it returns:
```swift
let area = Distance(meters: 2.0) * Distance(meters: 3.0)  // Area, 6 m²
let energy = Power(kilowatts: 3.0) * Duration(hours: 2.0)  // Energy, 6 kWh
let current = Power(watts: 2300.0) / Voltage(volts: 230.0)  // ElectricCurrent, 10 A
```

Rounding happens in the unit you ask for:
```swift
let rounded = Distance(meters: 1499.0).rounded(in: .kilometers)  // 1 km
```

### Temperatures and Differences
A temperature is measured from an arbitrary zero, so two temperatures can't be added together: 20 °C and 20 °C don't make 40 °C. What does make sense is the difference between two temperatures, which is its own type, `TemperatureDifference`:
```swift
let rise = Temperature(celsius: 21.0) - Temperature(celsius: 18.0)  // TemperatureDifference, 3 K
let target = Temperature(celsius: 18.0) + rise                      // Temperature, 21 °C
```

A difference converts without the offset a temperature has, so a difference of 10 °C is 18 °F, where a temperature of 10 °C is 50 °F.

### Encoding
Measurements are `Codable`, and encode as their value in the base unit under the key `value`, for example `{"value":1500}` for 1.5 km. The format is stable, and is covered by tests.

### Migrating from 1.x
Version 2 removes measurements' conformance to `BinaryFloatingPoint`, which allowed arithmetic that didn't make sense physically. In particular:

- `Temperature` no longer supports adding two temperatures, or multiplying and dividing them. Subtracting two temperatures gives a `TemperatureDifference`, which can be added to or subtracted from a temperature.
- Multiplying two measurements of the same kind is no longer possible. Where the product means something, it returns the measurement it actually is, such as `Distance * Distance` returning an `Area`.
- Dividing two measurements of the same kind returns a plain number rather than a measurement.
- Measurements can no longer be made from number literals, such as `let distance: Distance<Double> = 5.0`. Use a unit, such as `Distance(meters: 5.0)`, or `Distance(5.0)` for the base unit.
- Floating point details such as `ulp`, `nextUp`, `squareRoot()` and the remainder functions are no longer available. Read the value in a unit, such as `distance.meters`, to use them.
- `rounded()` takes the unit to round in, and defaults to the base unit.

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
