//
//  Distance.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the length or distance between two positions.
///
/// Distance is stored as meters, however they can be read and written in
/// various units representing a distance.
///
public struct Distance<T: BinaryFloatingPoint> {
	public enum MeasurementUnit: Unit {
		public typealias Value = T
		
		case astronomicalUnits
		case centimeters
		case decameters
		case decimeters
		case fathoms
		case feet
		case furlongs
		case hectometers
		case inches
		case kilometers
		case lightyears
		case megameters
		case meters
		case micrometers
		case miles
		case millimeters
		case nanometers
		case nauticalMiles
		case parsecs
		case picometers
		case scandinavianMiles
		case yards
		
		public static var base: Self {
			.meters
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .astronomicalUnits:
					return "ua"

				case .centimeters:
					return "cm"

				case .decameters:
					return "dam"

				case .decimeters:
					return "dm"

				case .fathoms:
					return "ftm"

				case .feet:
					return "ft"

				case .furlongs:
					return "fur"

				case .hectometers:
					return "hm"

				case .inches:
					return "in"

				case .kilometers:
					return "km"

				case .lightyears:
					return "ly"

				case .megameters:
					return "Mm"

				case .meters:
					return "m"

				case .micrometers:
					return "µm"

				case .miles:
					return "mi"

				case .millimeters:
					return "mm"

				case .nanometers:
					return "nm"

				case .nauticalMiles:
					return "NM"

				case .parsecs:
					return "pc"

				case .picometers:
					return "pm"

				case .scandinavianMiles:
					return "smi"

				case .yards:
					return "yd"
			}
		}
		
		public static func convert(value: Value, from: Distance<Value>.MeasurementUnit, to: Distance<Value>.MeasurementUnit) -> Value {
			guard from != to else {
				return value
			}
			
			let base: T = {
				switch from {
					case .astronomicalUnits:
						value * 149597870700.0

					case .centimeters:
						value * 0.01

					case .decameters:
						value * 10.0

					case .decimeters:
						value * 0.1

					case .fathoms:
						value * 1.8288

					case .feet:
						value * 0.3048

					case .furlongs:
						value * 201.168

					case .hectometers:
						value * 100.0

					case .inches:
						value * 0.0254

					case .kilometers:
						value * 1000.0

					case .lightyears:
						value * 9.4607304725808e+15

					case .megameters:
						value * 1000000.0

					case .meters:
						value * 1.0

					case .micrometers:
						value * 1e-06

					case .miles:
						value * 1609.344

					case .millimeters:
						value * 0.001

					case .nanometers:
						value * 1e-09

					case .nauticalMiles:
						value * 1852.0

					case .parsecs:
						value * 3.085677581491367e+16

					case .picometers:
						value * 1e-12

					case .scandinavianMiles:
						value * 10000.0

					case .yards:
						value * 0.9144
				}
			}()

			switch to {
				case .astronomicalUnits:
					return base * 6.684587122268445e-12

				case .centimeters:
					return base * 100.0

				case .decameters:
					return base * 0.1

				case .decimeters:
					return base * 10.0

				case .fathoms:
					return base * 0.5468066491688539

				case .feet:
					return base * 3.280839895013123

				case .furlongs:
					return base * 0.004970969537898671

				case .hectometers:
					return base * 0.01

				case .inches:
					return base * 39.37007874015748

				case .kilometers:
					return base * 0.001

				case .lightyears:
					return base * 1.0570008340246154e-16

				case .megameters:
					return base * 1e-06

				case .meters:
					return base * 1.0

				case .micrometers:
					return base * 1000000.0

				case .miles:
					return base * 0.0006213711922373339

				case .millimeters:
					return base * 1000.0

				case .nanometers:
					return base * 999999999.9999999

				case .nauticalMiles:
					return base * 0.0005399568034557236

				case .parsecs:
					return base * 3.240779289444365e-17

				case .picometers:
					return base * 1000000000000.0

				case .scandinavianMiles:
					return base * 0.0001

				case .yards:
					return base * 1.0936132983377078
			}
	
		}
	}
	
	private(set) public var value: T
}

extension Distance {
/// Initialize the measurement from a distance in astronomical units.
///
/// - Parameters:
///   - value: The distance in astronomical units.
///
/// - Returns: The measurement of the provided distance.
///
	public static func astronomicalUnits(_ value: Value) -> Self {
		Self(value, unit: .astronomicalUnits)
	}

/// Initialize the measurement from a distance in centimeters.
///
/// - Parameters:
///   - value: The distance in centimeters.
///
/// - Returns: The measurement of the provided distance.
///
	public static func centimeters(_ value: Value) -> Self {
		Self(value, unit: .centimeters)
	}

/// Initialize the measurement from a distance in decameters.
///
/// - Parameters:
///   - value: The distance in decameters.
///
/// - Returns: The measurement of the provided distance.
///
	public static func decameters(_ value: Value) -> Self {
		Self(value, unit: .decameters)
	}

/// Initialize the measurement from a distance in decimeters.
///
/// - Parameters:
///   - value: The distance in decimeters.
///
/// - Returns: The measurement of the provided distance.
///
	public static func decimeters(_ value: Value) -> Self {
		Self(value, unit: .decimeters)
	}

/// Initialize the measurement from a distance in fathoms.
///
/// - Parameters:
///   - value: The distance in fathoms.
///
/// - Returns: The measurement of the provided distance.
///
	public static func fathoms(_ value: Value) -> Self {
		Self(value, unit: .fathoms)
	}

/// Initialize the measurement from a distance in feet.
///
/// - Parameters:
///   - value: The distance in feet.
///
/// - Returns: The measurement of the provided distance.
///
	public static func feet(_ value: Value) -> Self {
		Self(value, unit: .feet)
	}

/// Initialize the measurement from a distance in furlongs.
///
/// - Parameters:
///   - value: The distance in furlongs.
///
/// - Returns: The measurement of the provided distance.
///
	public static func furlongs(_ value: Value) -> Self {
		Self(value, unit: .furlongs)
	}

/// Initialize the measurement from a distance in hectometers.
///
/// - Parameters:
///   - value: The distance in hectometers.
///
/// - Returns: The measurement of the provided distance.
///
	public static func hectometers(_ value: Value) -> Self {
		Self(value, unit: .hectometers)
	}

/// Initialize the measurement from a distance in inches.
///
/// - Parameters:
///   - value: The distance in inches.
///
/// - Returns: The measurement of the provided distance.
///
	public static func inches(_ value: Value) -> Self {
		Self(value, unit: .inches)
	}

/// Initialize the measurement from a distance in kilometers.
///
/// - Parameters:
///   - value: The distance in kilometers.
///
/// - Returns: The measurement of the provided distance.
///
	public static func kilometers(_ value: Value) -> Self {
		Self(value, unit: .kilometers)
	}

/// Initialize the measurement from a distance in lightyears.
///
/// - Parameters:
///   - value: The distance in lightyears.
///
/// - Returns: The measurement of the provided distance.
///
	public static func lightyears(_ value: Value) -> Self {
		Self(value, unit: .lightyears)
	}

/// Initialize the measurement from a distance in megameters.
///
/// - Parameters:
///   - value: The distance in megameters.
///
/// - Returns: The measurement of the provided distance.
///
	public static func megameters(_ value: Value) -> Self {
		Self(value, unit: .megameters)
	}

/// Initialize the measurement from a distance in meters.
///
/// - Parameters:
///   - value: The distance in meters.
///
/// - Returns: The measurement of the provided distance.
///
	public static func meters(_ value: Value) -> Self {
		Self(value, unit: .meters)
	}

/// Initialize the measurement from a distance in micrometers.
///
/// - Parameters:
///   - value: The distance in micrometers.
///
/// - Returns: The measurement of the provided distance.
///
	public static func micrometers(_ value: Value) -> Self {
		Self(value, unit: .micrometers)
	}

/// Initialize the measurement from a distance in miles.
///
/// - Parameters:
///   - value: The distance in miles.
///
/// - Returns: The measurement of the provided distance.
///
	public static func miles(_ value: Value) -> Self {
		Self(value, unit: .miles)
	}

/// Initialize the measurement from a distance in millimeters.
///
/// - Parameters:
///   - value: The distance in millimeters.
///
/// - Returns: The measurement of the provided distance.
///
	public static func millimeters(_ value: Value) -> Self {
		Self(value, unit: .millimeters)
	}

/// Initialize the measurement from a distance in nanometers.
///
/// - Parameters:
///   - value: The distance in nanometers.
///
/// - Returns: The measurement of the provided distance.
///
	public static func nanometers(_ value: Value) -> Self {
		Self(value, unit: .nanometers)
	}

/// Initialize the measurement from a distance in nautical miles.
///
/// - Parameters:
///   - value: The distance in nautical miles.
///
/// - Returns: The measurement of the provided distance.
///
	public static func nauticalMiles(_ value: Value) -> Self {
		Self(value, unit: .nauticalMiles)
	}

/// Initialize the measurement from a distance in parsecs.
///
/// - Parameters:
///   - value: The distance in parsecs.
///
/// - Returns: The measurement of the provided distance.
///
	public static func parsecs(_ value: Value) -> Self {
		Self(value, unit: .parsecs)
	}

/// Initialize the measurement from a distance in picometers.
///
/// - Parameters:
///   - value: The distance in picometers.
///
/// - Returns: The measurement of the provided distance.
///
	public static func picometers(_ value: Value) -> Self {
		Self(value, unit: .picometers)
	}

/// Initialize the measurement from a distance in scandinavian miles.
///
/// - Parameters:
///   - value: The distance in scandinavian miles.
///
/// - Returns: The measurement of the provided distance.
///
	public static func scandinavianMiles(_ value: Value) -> Self {
		Self(value, unit: .scandinavianMiles)
	}

/// Initialize the measurement from a distance in yards.
///
/// - Parameters:
///   - value: The distance in yards.
///
/// - Returns: The measurement of the provided distance.
///
	public static func yards(_ value: Value) -> Self {
		Self(value, unit: .yards)
	}

/// The measurement in astronomical units.
///
	public var astronomicalUnits: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .astronomicalUnits)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .astronomicalUnits, to: .base)
		}
	}

/// The measurement in centimeters.
///
	public var centimeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .centimeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .centimeters, to: .base)
		}
	}

/// The measurement in decameters.
///
	public var decameters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .decameters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .decameters, to: .base)
		}
	}

/// The measurement in decimeters.
///
	public var decimeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .decimeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .decimeters, to: .base)
		}
	}

/// The measurement in fathoms.
///
	public var fathoms: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .fathoms)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .fathoms, to: .base)
		}
	}

/// The measurement in feet.
///
	public var feet: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .feet)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .feet, to: .base)
		}
	}

/// The measurement in furlongs.
///
	public var furlongs: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .furlongs)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .furlongs, to: .base)
		}
	}

/// The measurement in hectometers.
///
	public var hectometers: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .hectometers)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .hectometers, to: .base)
		}
	}

/// The measurement in inches.
///
	public var inches: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .inches)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .inches, to: .base)
		}
	}

/// The measurement in kilometers.
///
	public var kilometers: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .kilometers)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .kilometers, to: .base)
		}
	}

/// The measurement in lightyears.
///
	public var lightyears: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .lightyears)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .lightyears, to: .base)
		}
	}

/// The measurement in megameters.
///
	public var megameters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .megameters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .megameters, to: .base)
		}
	}

/// The measurement in meters.
///
	public var meters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .meters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .meters, to: .base)
		}
	}

/// The measurement in micrometers.
///
	public var micrometers: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .micrometers)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .micrometers, to: .base)
		}
	}

/// The measurement in miles.
///
	public var miles: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .miles)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .miles, to: .base)
		}
	}

/// The measurement in millimeters.
///
	public var millimeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .millimeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .millimeters, to: .base)
		}
	}

/// The measurement in nanometers.
///
	public var nanometers: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .nanometers)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .nanometers, to: .base)
		}
	}

/// The measurement in nautical miles.
///
	public var nauticalMiles: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .nauticalMiles)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .nauticalMiles, to: .base)
		}
	}

/// The measurement in parsecs.
///
	public var parsecs: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .parsecs)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .parsecs, to: .base)
		}
	}

/// The measurement in picometers.
///
	public var picometers: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .picometers)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .picometers, to: .base)
		}
	}

/// The measurement in scandinavian miles.
///
	public var scandinavianMiles: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .scandinavianMiles)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .scandinavianMiles, to: .base)
		}
	}

/// The measurement in yards.
///
	public var yards: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .yards)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .yards, to: .base)
		}
	}

/// Initialize the measurement from astronomical units.
///
/// - Parameters:
///   - value: The Distance in astronomical units.
///
	public init(astronomicalUnits value: Value) {
		self = Distance(value, unit: .astronomicalUnits)
	}

/// Initialize the measurement from centimeters.
///
/// - Parameters:
///   - value: The Distance in centimeters.
///
	public init(centimeters value: Value) {
		self = Distance(value, unit: .centimeters)
	}

/// Initialize the measurement from decameters.
///
/// - Parameters:
///   - value: The Distance in decameters.
///
	public init(decameters value: Value) {
		self = Distance(value, unit: .decameters)
	}

/// Initialize the measurement from decimeters.
///
/// - Parameters:
///   - value: The Distance in decimeters.
///
	public init(decimeters value: Value) {
		self = Distance(value, unit: .decimeters)
	}

/// Initialize the measurement from fathoms.
///
/// - Parameters:
///   - value: The Distance in fathoms.
///
	public init(fathoms value: Value) {
		self = Distance(value, unit: .fathoms)
	}

/// Initialize the measurement from feet.
///
/// - Parameters:
///   - value: The Distance in feet.
///
	public init(feet value: Value) {
		self = Distance(value, unit: .feet)
	}

/// Initialize the measurement from furlongs.
///
/// - Parameters:
///   - value: The Distance in furlongs.
///
	public init(furlongs value: Value) {
		self = Distance(value, unit: .furlongs)
	}

/// Initialize the measurement from hectometers.
///
/// - Parameters:
///   - value: The Distance in hectometers.
///
	public init(hectometers value: Value) {
		self = Distance(value, unit: .hectometers)
	}

/// Initialize the measurement from inches.
///
/// - Parameters:
///   - value: The Distance in inches.
///
	public init(inches value: Value) {
		self = Distance(value, unit: .inches)
	}

/// Initialize the measurement from kilometers.
///
/// - Parameters:
///   - value: The Distance in kilometers.
///
	public init(kilometers value: Value) {
		self = Distance(value, unit: .kilometers)
	}

/// Initialize the measurement from lightyears.
///
/// - Parameters:
///   - value: The Distance in lightyears.
///
	public init(lightyears value: Value) {
		self = Distance(value, unit: .lightyears)
	}

/// Initialize the measurement from megameters.
///
/// - Parameters:
///   - value: The Distance in megameters.
///
	public init(megameters value: Value) {
		self = Distance(value, unit: .megameters)
	}

/// Initialize the measurement from meters.
///
/// - Parameters:
///   - value: The Distance in meters.
///
	public init(meters value: Value) {
		self = Distance(value, unit: .meters)
	}

/// Initialize the measurement from micrometers.
///
/// - Parameters:
///   - value: The Distance in micrometers.
///
	public init(micrometers value: Value) {
		self = Distance(value, unit: .micrometers)
	}

/// Initialize the measurement from miles.
///
/// - Parameters:
///   - value: The Distance in miles.
///
	public init(miles value: Value) {
		self = Distance(value, unit: .miles)
	}

/// Initialize the measurement from millimeters.
///
/// - Parameters:
///   - value: The Distance in millimeters.
///
	public init(millimeters value: Value) {
		self = Distance(value, unit: .millimeters)
	}

/// Initialize the measurement from nanometers.
///
/// - Parameters:
///   - value: The Distance in nanometers.
///
	public init(nanometers value: Value) {
		self = Distance(value, unit: .nanometers)
	}

/// Initialize the measurement from nautical miles.
///
/// - Parameters:
///   - value: The Distance in nautical miles.
///
	public init(nauticalMiles value: Value) {
		self = Distance(value, unit: .nauticalMiles)
	}

/// Initialize the measurement from parsecs.
///
/// - Parameters:
///   - value: The Distance in parsecs.
///
	public init(parsecs value: Value) {
		self = Distance(value, unit: .parsecs)
	}

/// Initialize the measurement from picometers.
///
/// - Parameters:
///   - value: The Distance in picometers.
///
	public init(picometers value: Value) {
		self = Distance(value, unit: .picometers)
	}

/// Initialize the measurement from scandinavian miles.
///
/// - Parameters:
///   - value: The Distance in scandinavian miles.
///
	public init(scandinavianMiles value: Value) {
		self = Distance(value, unit: .scandinavianMiles)
	}

/// Initialize the measurement from yards.
///
/// - Parameters:
///   - value: The Distance in yards.
///
	public init(yards value: Value) {
		self = Distance(value, unit: .yards)
	}
}

extension Distance: Codable where Value: Codable {

}

extension Distance: Comparable where Value: Comparable {
	public static func < (lhs: Distance<T>, rhs: Distance<T>) -> Bool {
		lhs.value < rhs.value
	}
}

extension Distance: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Distance: Measurement {
	public init(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
	
	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
}

extension Distance: Sendable where Value: Sendable {

}

