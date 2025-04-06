//
//  Area.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// An measurement representing the flat space occupied by a surface.
///
/// Areas are stored as square meters, however they can be read and written in
/// various units representing an area.
///
public struct Area<T: BinaryFloatingPoint> {
	public enum MeasurementUnit: Unit {
		public typealias Value = T
		
		case acres
		case hectares
		case squareCentimeters
		case squareFeet
		case squareInches
		case squareKilometers
		case squareMegameters
		case squareMeters
		case squareMicrometers
		case squareMiles
		case squareMillimeters
		case squareNanometers
		case squareYards
		
		public static var base: Self {
			.squareMeters
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .acres:
					return "ac"

				case .hectares:
					return "ha"

				case .squareCentimeters:
					return "cm²"

				case .squareFeet:
					return "ft²"

				case .squareInches:
					return "in²"

				case .squareKilometers:
					return "km²"

				case .squareMegameters:
					return "Mm²"

				case .squareMeters:
					return "m²"

				case .squareMicrometers:
					return "µm²"

				case .squareMiles:
					return "mi²"

				case .squareMillimeters:
					return "mm²"

				case .squareNanometers:
					return "nm²"

				case .squareYards:
					return "yd²"
			}
		}
		
		public static func convert(value: Value, from: Area<Value>.MeasurementUnit, to: Area<Value>.MeasurementUnit) -> Value {
			guard from != to else {
				return value
			}
			
			let base: T = {
				switch from {
					case .acres:
						value * 4046.8564224

					case .hectares:
						value * 10000.0

					case .squareCentimeters:
						value * 0.0001

					case .squareFeet:
						value * 0.09290304

					case .squareInches:
						value * 0.00064516

					case .squareKilometers:
						value * 1000000.0

					case .squareMegameters:
						value * 1000000000000.0

					case .squareMeters:
						value * 1.0

					case .squareMicrometers:
						value * 1e-12

					case .squareMiles:
						value * 2589988.110336

					case .squareMillimeters:
						value * 1e-06

					case .squareNanometers:
						value * 1e-18

					case .squareYards:
						value * 0.83612736
				}
			}()

			switch to {
				case .acres:
					return base * 0.0002471053814671653

				case .hectares:
					return base * 0.0001

				case .squareCentimeters:
					return base * 10000.0

				case .squareFeet:
					return base * 10.763910416709722

				case .squareInches:
					return base * 1550.0031000062002

				case .squareKilometers:
					return base * 1e-06

				case .squareMegameters:
					return base * 1e-12

				case .squareMeters:
					return base * 1.0

				case .squareMicrometers:
					return base * 1000000000000.0

				case .squareMiles:
					return base * 3.861021585424458e-07

				case .squareMillimeters:
					return base * 1000000.0

				case .squareNanometers:
					return base * 9.999999999999999e+17

				case .squareYards:
					return base * 1.1959900463010802
			}
		}
	}
	
	private(set) public var value: T
}

extension Area {
/// Initialize the measurement from an area in acres.
///
/// - Parameters:
///   - value: The area in acres.
///
/// - Returns: The measurement of the provided area.
///
	public static func acres(_ value: Value) -> Self {
		Self(value, unit: .acres)
	}

/// Initialize the measurement from an area in hectares.
///
/// - Parameters:
///   - value: The area in hectares.
///
/// - Returns: The measurement of the provided area.
///
	public static func hectares(_ value: Value) -> Self {
		Self(value, unit: .hectares)
	}

/// Initialize the measurement from an area in square centimeters.
///
/// - Parameters:
///   - value: The area in square centimeters.
///
/// - Returns: The measurement of the provided area.
///
	public static func squareCentimeters(_ value: Value) -> Self {
		Self(value, unit: .squareCentimeters)
	}

/// Initialize the measurement from an area in square feet.
///
/// - Parameters:
///   - value: The area in square feet.
///
/// - Returns: The measurement of the provided area.
///
	public static func squareFeet(_ value: Value) -> Self {
		Self(value, unit: .squareFeet)
	}

/// Initialize the measurement from an area in square inches.
///
/// - Parameters:
///   - value: The area in square inches.
///
/// - Returns: The measurement of the provided area.
///
	public static func squareInches(_ value: Value) -> Self {
		Self(value, unit: .squareInches)
	}

/// Initialize the measurement from an area in square kilometers.
///
/// - Parameters:
///   - value: The area in square kilometers.
///
/// - Returns: The measurement of the provided area.
///
	public static func squareKilometers(_ value: Value) -> Self {
		Self(value, unit: .squareKilometers)
	}

/// Initialize the measurement from an area in square megameters.
///
/// - Parameters:
///   - value: The area in square megameters.
///
/// - Returns: The measurement of the provided area.
///
	public static func squareMegameters(_ value: Value) -> Self {
		Self(value, unit: .squareMegameters)
	}

/// Initialize the measurement from an area in square meters.
///
/// - Parameters:
///   - value: The area in square meters.
///
/// - Returns: The measurement of the provided area.
///
	public static func squareMeters(_ value: Value) -> Self {
		Self(value, unit: .squareMeters)
	}

/// Initialize the measurement from an area in square micrometers.
///
/// - Parameters:
///   - value: The area in square micrometers.
///
/// - Returns: The measurement of the provided area.
///
	public static func squareMicrometers(_ value: Value) -> Self {
		Self(value, unit: .squareMicrometers)
	}

/// Initialize the measurement from an area in square miles.
///
/// - Parameters:
///   - value: The area in square miles.
///
/// - Returns: The measurement of the provided area.
///
	public static func squareMiles(_ value: Value) -> Self {
		Self(value, unit: .squareMiles)
	}

/// Initialize the measurement from an area in square millimeters.
///
/// - Parameters:
///   - value: The area in square millimeters.
///
/// - Returns: The measurement of the provided area.
///
	public static func squareMillimeters(_ value: Value) -> Self {
		Self(value, unit: .squareMillimeters)
	}

/// Initialize the measurement from an area in square nanometers.
///
/// - Parameters:
///   - value: The area in square nanometers.
///
/// - Returns: The measurement of the provided area.
///
	public static func squareNanometers(_ value: Value) -> Self {
		Self(value, unit: .squareNanometers)
	}

/// Initialize the measurement from an area in square yards.
///
/// - Parameters:
///   - value: The area in square yards.
///
/// - Returns: The measurement of the provided area.
///
	public static func squareYards(_ value: Value) -> Self {
		Self(value, unit: .squareYards)
	}

/// The measurement in acres.
///
	public var acres: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .acres)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .acres, to: .base)
		}
	}

/// The measurement in hectares.
///
	public var hectares: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .hectares)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .hectares, to: .base)
		}
	}

/// The measurement in square centimeters.
///
	public var squareCentimeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareCentimeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareCentimeters, to: .base)
		}
	}

/// The measurement in square feet.
///
	public var squareFeet: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareFeet)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareFeet, to: .base)
		}
	}

/// The measurement in square inches.
///
	public var squareInches: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareInches)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareInches, to: .base)
		}
	}

/// The measurement in square kilometers.
///
	public var squareKilometers: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareKilometers)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareKilometers, to: .base)
		}
	}

/// The measurement in square megameters.
///
	public var squareMegameters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareMegameters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareMegameters, to: .base)
		}
	}

/// The measurement in square meters.
///
	public var squareMeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareMeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareMeters, to: .base)
		}
	}

/// The measurement in square micrometers.
///
	public var squareMicrometers: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareMicrometers)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareMicrometers, to: .base)
		}
	}

/// The measurement in square miles.
///
	public var squareMiles: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareMiles)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareMiles, to: .base)
		}
	}

/// The measurement in square millimeters.
///
	public var squareMillimeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareMillimeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareMillimeters, to: .base)
		}
	}

/// The measurement in square nanometers.
///
	public var squareNanometers: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareNanometers)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareNanometers, to: .base)
		}
	}

/// The measurement in square yards.
///
	public var squareYards: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareYards)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareYards, to: .base)
		}
	}

/// Initialize the measurement from acres.
///
/// - Parameters:
///   - value: The area in acres.
///
	public init(acres value: Value) {
		self = Area(value, unit: .acres)
	}

/// Initialize the measurement from hectares.
///
/// - Parameters:
///   - value: The area in hectares.
///
	public init(hectares value: Value) {
		self = Area(value, unit: .hectares)
	}

/// Initialize the measurement from square centimeters.
///
/// - Parameters:
///   - value: The area in square centimeters.
///
	public init(squareCentimeters value: Value) {
		self = Area(value, unit: .squareCentimeters)
	}

/// Initialize the measurement from square feet.
///
/// - Parameters:
///   - value: The area in square feet.
///
	public init(squareFeet value: Value) {
		self = Area(value, unit: .squareFeet)
	}

/// Initialize the measurement from square inches.
///
/// - Parameters:
///   - value: The area in square inches.
///
	public init(squareInches value: Value) {
		self = Area(value, unit: .squareInches)
	}

/// Initialize the measurement from square kilometers.
///
/// - Parameters:
///   - value: The area in square kilometers.
///
	public init(squareKilometers value: Value) {
		self = Area(value, unit: .squareKilometers)
	}

/// Initialize the measurement from square megameters.
///
/// - Parameters:
///   - value: The area in square megameters.
///
	public init(squareMegameters value: Value) {
		self = Area(value, unit: .squareMegameters)
	}

/// Initialize the measurement from square meters.
///
/// - Parameters:
///   - value: The area in square meters.
///
	public init(squareMeters value: Value) {
		self = Area(value, unit: .squareMeters)
	}

/// Initialize the measurement from square micrometers.
///
/// - Parameters:
///   - value: The area in square micrometers.
///
	public init(squareMicrometers value: Value) {
		self = Area(value, unit: .squareMicrometers)
	}

/// Initialize the measurement from square miles.
///
/// - Parameters:
///   - value: The area in square miles.
///
	public init(squareMiles value: Value) {
		self = Area(value, unit: .squareMiles)
	}

/// Initialize the measurement from square millimeters.
///
/// - Parameters:
///   - value: The area in square millimeters.
///
	public init(squareMillimeters value: Value) {
		self = Area(value, unit: .squareMillimeters)
	}

/// Initialize the measurement from square nanometers.
///
/// - Parameters:
///   - value: The area in square nanometers.
///
	public init(squareNanometers value: Value) {
		self = Area(value, unit: .squareNanometers)
	}

/// Initialize the measurement from square yards.
///
/// - Parameters:
///   - value: The area in square yards.
///
	public init(squareYards value: Value) {
		self = Area(value, unit: .squareYards)
	}
}

extension Area: Codable where Value: Codable {

}

extension Area: Comparable where Value: Comparable {
	public static func < (lhs: Area<T>, rhs: Area<T>) -> Bool {
		lhs.value < rhs.value
	}
}

extension Area: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Area: Measurement {
	public init(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
	
	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
}

extension Area: Sendable where Value: Sendable {

}
