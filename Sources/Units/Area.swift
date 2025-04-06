//
//  Area.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the flat space occupied by a surface.
///
/// Areas are stored as square meters, however they can be read and written in
/// various units.
///
public struct Area<T: BinaryFloatingPoint> {
	public enum MeasurementUnit: Unit {
		public typealias Value = T
		
	/// One acre contains 43,560 square feet or about 4,047 square meters.
	///
		case acres
		
	/// One hectare contains 2.471 acres or 10,000 square meters.
	///
		case hectares
	
	/// One square centimeter contains 100 square millimeters and 100 of
	/// them fit in a square decimeter.
	///
		case squareCentimeters
		
	/// One square foot contains 144 square inches and 9 fit in a square yard.
	///
		case squareFeet
		
	/// One square inch is 1⁄144 of a square foot.
	///
		case squareInches
		
	/// One square kilometer contains 100 hectares or 0.386 square miles.
	///
		case squareKilometers
		
	/// One square megameter contains 1,000,000 square kilometers.
	///
		case squareMegameters
		
	/// One square meter contains 10,000 square centimeters or 1.196 square
	/// yards.
	///
		case squareMeters

	/// One square micrometer is one millionth of a square millimeter.
	///
		case squareMicrometers
		
	/// One square mile is 640 acres or 2.59 square kilometers.
	///
		case squareMiles
		
	/// One square millimeter contains 1,000,000 square nanometers and 100
	/// fit in a square centimeter.
	///
		case squareMillimeters
	
	/// One square millimeter contains one trillion square nanometers.
	///
		case squareNanometers
		
	/// One square yard is 9 square feet or 0.836 square meters.
	///
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
/// Initialize the area using a value in acres.
///
/// - Parameters:
///   - value: The area in acres.
///
/// - Returns: The measurement representing the provided area.
///
	public static func acres(_ value: Value) -> Self {
		Self(value, unit: .acres)
	}

/// Initialize the area using a value in hectares.
///
/// - Parameters:
///   - value: The area in hectares.
///
/// - Returns: The measurement representing the provided area.
///
	public static func hectares(_ value: Value) -> Self {
		Self(value, unit: .hectares)
	}

/// Initialize the area using a value in square centimeters.
///
/// - Parameters:
///   - value: The area in square centimeters.
///
/// - Returns: The measurement representing the provided area.
///
	public static func squareCentimeters(_ value: Value) -> Self {
		Self(value, unit: .squareCentimeters)
	}

/// Initialize the area using a value in square feet.
///
/// - Parameters:
///   - value: The area in square feet.
///
/// - Returns: The measurement representing the provided area.
///
	public static func squareFeet(_ value: Value) -> Self {
		Self(value, unit: .squareFeet)
	}

/// Initialize the area using a value in square inches.
///
/// - Parameters:
///   - value: The area in square inches.
///
/// - Returns: The measurement representing the provided area.
///
	public static func squareInches(_ value: Value) -> Self {
		Self(value, unit: .squareInches)
	}

/// Initialize the area using a value in square kilometers.
///
/// - Parameters:
///   - value: The area in square kilometers.
///
/// - Returns: The measurement representing the provided area.
///
	public static func squareKilometers(_ value: Value) -> Self {
		Self(value, unit: .squareKilometers)
	}

/// Initialize the area using a value in square megameters.
///
/// - Parameters:
///   - value: The area in square megameters.
///
/// - Returns: The measurement representing the provided area.
///
	public static func squareMegameters(_ value: Value) -> Self {
		Self(value, unit: .squareMegameters)
	}

/// Initialize the area using a value in square meters.
///
/// - Parameters:
///   - value: The area in square meters.
///
/// - Returns: The measurement representing the provided area.
///
	public static func squareMeters(_ value: Value) -> Self {
		Self(value, unit: .squareMeters)
	}

/// Initialize the area using a value in square micrometers.
///
/// - Parameters:
///   - value: The area in square micrometers.
///
/// - Returns: The measurement representing the provided area.
///
	public static func squareMicrometers(_ value: Value) -> Self {
		Self(value, unit: .squareMicrometers)
	}

/// Initialize the area using a value in square miles.
///
/// - Parameters:
///   - value: The area in square miles.
///
/// - Returns: The measurement representing the provided area.
///
	public static func squareMiles(_ value: Value) -> Self {
		Self(value, unit: .squareMiles)
	}

/// Initialize the area using a value in square millimeters.
///
/// - Parameters:
///   - value: The area in square millimeters.
///
/// - Returns: The measurement representing the provided area.
///
	public static func squareMillimeters(_ value: Value) -> Self {
		Self(value, unit: .squareMillimeters)
	}

/// Initialize the area using a value in square nanometers.
///
/// - Parameters:
///   - value: The area in square nanometers.
///
/// - Returns: The measurement representing the provided area.
///
	public static func squareNanometers(_ value: Value) -> Self {
		Self(value, unit: .squareNanometers)
	}

/// Initialize the area using a value in square yards.
///
/// - Parameters:
///   - value: The area in square yards.
///
/// - Returns: The measurement representing the provided area.
///
	public static func squareYards(_ value: Value) -> Self {
		Self(value, unit: .squareYards)
	}

/// The area measured in acres.
///
/// One acre contains 43,560 square feet or about 4,047 square meters.
///
	public var acres: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .acres)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .acres, to: .base)
		}
	}

/// The area measured in hectares.
///
/// One hectare contains 2.471 acres or 10,000 square meters.
///
	public var hectares: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .hectares)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .hectares, to: .base)
		}
	}

/// The area measured in square centimeters.
///
/// One square centimeter contains 100 square millimeters and 100 of them
/// fit in a square decimeter.
///
	public var squareCentimeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareCentimeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareCentimeters, to: .base)
		}
	}

/// The area measured in square feet.
///
/// One square foot contains 144 square inches and 9 fit in a square yard.
///
	public var squareFeet: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareFeet)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareFeet, to: .base)
		}
	}

/// The area measured in square inches.
///
/// One square inch is 1⁄144 of a square foot.
///
	public var squareInches: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareInches)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareInches, to: .base)
		}
	}

/// The area measured in square kilometers.
///
/// One square kilometer contains 100 hectares or 0.386 square miles.
///
	public var squareKilometers: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareKilometers)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareKilometers, to: .base)
		}
	}

/// The area measured in square megameters.
///
/// One square megameter contains 1,000,000 square kilometers.
///
	public var squareMegameters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareMegameters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareMegameters, to: .base)
		}
	}

/// The area measured in square meters.
///
/// One square meter contains 10,000 square centimeters or 1.196 square
/// yards.
///
	public var squareMeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareMeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareMeters, to: .base)
		}
	}

/// The area measured in square micrometers.
///
/// One square micrometer is one millionth of a square millimeter.
///
	public var squareMicrometers: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareMicrometers)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareMicrometers, to: .base)
		}
	}

/// The area measured in square miles.
///
/// One square mile is 640 acres or 2.59 square kilometers.
///
	public var squareMiles: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareMiles)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareMiles, to: .base)
		}
	}

/// The area measured in square millimeters.
///
/// One square millimeter contains 1,000,000 square nanometers and 100 fit
/// in a square centimeter.
///
	public var squareMillimeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareMillimeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareMillimeters, to: .base)
		}
	}

/// The area measured in square nanometers.
///
/// One square millimeter contains one trillion square nanometers.
///
	public var squareNanometers: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareNanometers)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareNanometers, to: .base)
		}
	}

/// The area measured in square yards.
///
/// One square yard is 9 square feet or 0.836 square meters.
///
	public var squareYards: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .squareYards)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .squareYards, to: .base)
		}
	}

/// Initialize the measurement from an area measured in acres.
///
/// One acre contains 43,560 square feet or about 4,047 square meters.
///
/// - Parameters:
///   - value: The area measured in acres.
///
	public init(acres value: Value) {
		self = Area(value, unit: .acres)
	}

/// Initialize the measurement from an area measured in hectares.
///
/// One hectare contains 2.471 acres or 10,000 square meters.
///
/// - Parameters:
///   - value: The area measured in hectares.
///
	public init(hectares value: Value) {
		self = Area(value, unit: .hectares)
	}

/// Initialize the measurement from an area measured in square centimeters.
///
/// One square centimeter contains 100 square millimeters and 100 of them
/// fit in a square decimeter.
///
/// - Parameters:
///   - value: The area measured in square centimeters.
///
	public init(squareCentimeters value: Value) {
		self = Area(value, unit: .squareCentimeters)
	}

/// Initialize the measurement from an area measured in square feet.
///
/// One square foot contains 144 square inches and 9 fit in a square yard.
///
/// - Parameters:
///   - value: The area measured in square feet.
///
	public init(squareFeet value: Value) {
		self = Area(value, unit: .squareFeet)
	}

/// Initialize the measurement from an area measured in square inches.
///
/// One square inch is 1⁄144 of a square foot.
///
/// - Parameters:
///   - value: The area measured in square inches.
///
	public init(squareInches value: Value) {
		self = Area(value, unit: .squareInches)
	}

/// Initialize the measurement from an area measured in square kilometers.
///
/// One square kilometer contains 100 hectares or 0.386 square miles.
///
/// - Parameters:
///   - value: The area measured in square kilometers.
///
	public init(squareKilometers value: Value) {
		self = Area(value, unit: .squareKilometers)
	}

/// Initialize the measurement from an area measured in square megameters.
///
/// One square megameter contains 1,000,000 square kilometers.
///
/// - Parameters:
///   - value: The area measured in square megameters.
///
	public init(squareMegameters value: Value) {
		self = Area(value, unit: .squareMegameters)
	}

/// Initialize the measurement from an area measured in square meters.
///
/// One square meter contains 10,000 square centimeters or 1.196 square
/// yards.
///
/// - Parameters:
///   - value: The area measured in square meters.
///
	public init(squareMeters value: Value) {
		self = Area(value, unit: .squareMeters)
	}

/// Initialize the measurement from an area measured in square micrometers.
///
/// One square micrometer is one millionth of a square millimeter.
///
/// - Parameters:
///   - value: The area measured in square micrometers.
///
	public init(squareMicrometers value: Value) {
		self = Area(value, unit: .squareMicrometers)
	}

/// Initialize the measurement from an area measured in square miles.
///
/// One square mile is 640 acres or 2.59 square kilometers.
///
/// - Parameters:
///   - value: The area measured in square miles.
///
	public init(squareMiles value: Value) {
		self = Area(value, unit: .squareMiles)
	}

/// Initialize the measurement from an area measured in square millimeters.
///
/// One square millimeter contains 1,000,000 square nanometers and 100 fit
/// in a square centimeter.
///
/// - Parameters:
///   - value: The area measured in square millimeters.
///
	public init(squareMillimeters value: Value) {
		self = Area(value, unit: .squareMillimeters)
	}

/// Initialize the measurement from an area measured in square nanometers.
///
/// One square millimeter contains one trillion square nanometers.
///
/// - Parameters:
///   - value: The area measured in square nanometers.
///
	public init(squareNanometers value: Value) {
		self = Area(value, unit: .squareNanometers)
	}

/// Initialize the measurement from an area measured in square yards.
///
/// One square yard is 9 square feet or 0.836 square meters.
///
/// - Parameters:
///   - value: The area measured in square yards.
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
