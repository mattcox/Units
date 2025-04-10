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
public struct Area<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
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
		
	/// One square foot contains 144 square inches and 9 fit in a square
	/// yard.
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
					"ac"

				case .hectares:
					"ha"

				case .squareCentimeters:
					"cm²"

				case .squareFeet:
					"ft²"

				case .squareInches:
					"in²"

				case .squareKilometers:
					"km²"

				case .squareMegameters:
					"Mm²"

				case .squareMeters:
					"m²"

				case .squareMicrometers:
					"µm²"

				case .squareMiles:
					"mi²"

				case .squareMillimeters:
					"mm²"

				case .squareNanometers:
					"nm²"

				case .squareYards:
					"yd²"
			}
		}
		
		public var coefficient: Value {
			switch self {
				case .acres:
					4046.8564224

				case .hectares:
					10000.0

				case .squareCentimeters:
					0.0001

				case .squareFeet:
					0.09290304

				case .squareInches:
					0.00064516

				case .squareKilometers:
					1000000.0

				case .squareMegameters:
					1000000000000.0

				case .squareMeters:
					1.0

				case .squareMicrometers:
					1e-12

				case .squareMiles:
					2589988.110336

				case .squareMillimeters:
					1e-06

				case .squareNanometers:
					1e-18

				case .squareYards:
					0.83612736
			}
		}
	}
	
	private(set) public var value: Value
}

extension Area {
/// Initialize the area using a value in acres.
///
/// One acre contains 43,560 square feet or about 4,047 square meters.
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
/// One hectare contains 2.471 acres or 10,000 square meters.
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
/// One square centimeter contains 100 square millimeters and 100 of them
/// fit in a square decimeter.
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
/// One square foot contains 144 square inches and 9 fit in a square yard.
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
/// One square inch is 1⁄144 of a square foot.
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
/// One square kilometer contains 100 hectares or 0.386 square miles.
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
/// One square megameter contains 1,000,000 square kilometers.
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
/// One square meter contains 10,000 square centimeters or 1.196 square
/// yards.
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
/// One square micrometer is one millionth of a square millimeter.
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
/// One square mile is 640 acres or 2.59 square kilometers.
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
/// One square millimeter contains 1,000,000 square nanometers and 100 fit
/// in a square centimeter.
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
/// One square millimeter contains one trillion square nanometers.
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
/// One square yard is 9 square feet or 0.836 square meters.
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
			self.get(unit: .acres)
		}
		set {
			self.set(newValue, unit: .acres)
		}
	}

/// The area measured in hectares.
///
/// One hectare contains 2.471 acres or 10,000 square meters.
///
	public var hectares: Value {
		get {
			self.get(unit: .hectares)
		}
		set {
			self.set(newValue, unit: .hectares)
		}
	}

/// The area measured in square centimeters.
///
/// One square centimeter contains 100 square millimeters and 100 of them
/// fit in a square decimeter.
///
	public var squareCentimeters: Value {
		get {
			self.get(unit: .squareCentimeters)
		}
		set {
			self.set(newValue, unit: .squareCentimeters)
		}
	}

/// The area measured in square feet.
///
/// One square foot contains 144 square inches and 9 fit in a square yard.
///
	public var squareFeet: Value {
		get {
			self.get(unit: .squareFeet)
		}
		set {
			self.set(newValue, unit: .squareFeet)
		}
	}

/// The area measured in square inches.
///
/// One square inch is 1⁄144 of a square foot.
///
	public var squareInches: Value {
		get {
			self.get(unit: .squareInches)
		}
		set {
			self.set(newValue, unit: .squareInches)
		}
	}

/// The area measured in square kilometers.
///
/// One square kilometer contains 100 hectares or 0.386 square miles.
///
	public var squareKilometers: Value {
		get {
			self.get(unit: .squareKilometers)
		}
		set {
			self.set(newValue, unit: .squareKilometers)
		}
	}

/// The area measured in square megameters.
///
/// One square megameter contains 1,000,000 square kilometers.
///
	public var squareMegameters: Value {
		get {
			self.get(unit: .squareMegameters)
		}
		set {
			self.set(newValue, unit: .squareMegameters)
		}
	}

/// The area measured in square meters.
///
/// One square meter contains 10,000 square centimeters or 1.196 square
/// yards.
///
	public var squareMeters: Value {
		get {
			self.get(unit: .squareMeters)
		}
		set {
			self.set(newValue, unit: .squareMeters)
		}
	}

/// The area measured in square micrometers.
///
/// One square micrometer is one millionth of a square millimeter.
///
	public var squareMicrometers: Value {
		get {
			self.get(unit: .squareMicrometers)
		}
		set {
			self.set(newValue, unit: .squareMicrometers)
		}
	}

/// The area measured in square miles.
///
/// One square mile is 640 acres or 2.59 square kilometers.
///
	public var squareMiles: Value {
		get {
			self.get(unit: .squareMiles)
		}
		set {
			self.set(newValue, unit: .squareMiles)
		}
	}

/// The area measured in square millimeters.
///
/// One square millimeter contains 1,000,000 square nanometers and 100 fit
/// in a square centimeter.
///
	public var squareMillimeters: Value {
		get {
			self.get(unit: .squareMillimeters)
		}
		set {
			self.set(newValue, unit: .squareMillimeters)
		}
	}

/// The area measured in square nanometers.
///
/// One square millimeter contains one trillion square nanometers.
///
	public var squareNanometers: Value {
		get {
			self.get(unit: .squareNanometers)
		}
		set {
			self.set(newValue, unit: .squareNanometers)
		}
	}

/// The area measured in square yards.
///
/// One square yard is 9 square feet or 0.836 square meters.
///
	public var squareYards: Value {
		get {
			self.get(unit: .squareYards)
		}
		set {
			self.set(newValue, unit: .squareYards)
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
	public static func < (lhs: Self, rhs: Self) -> Bool {
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
	
	public func get(unit: MeasurementUnit) -> Value {
		MeasurementUnit.convert(value: self.value, from: .base, to: unit)
	}
}

extension Area: Sendable where Value: Sendable {

}
