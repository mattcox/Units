//
//  TemperatureDifference.swift
//  Units
//
//  Created by Matt Cox on 26/11/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

/// A measurement representing the difference between two temperatures.
///
/// A temperature is measured from an arbitrary zero, so two temperatures cannot
/// be added together, but the difference between them can — and a temperature
/// can be moved by one. Subtracting one ``Temperature`` from another gives a
/// temperature difference, and adding a temperature difference to a
/// ``Temperature`` gives another temperature.
///
/// A difference has no offset. A difference of 1 °C is a difference of 1 K,
/// where a temperature of 1 °C is 274.15 K.
///
/// Temperature difference is stored as kelvin, however it can be read and
/// written in various units.
///
public struct TemperatureDifference<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// A difference of one degree Celsius is the same size as one kelvin.
	///
		case celsius

	/// A difference of one degree Fahrenheit is 5⁄9 the size of one kelvin.
	///
		case fahrenheit

	/// A difference of one kelvin is the same size as one degree Celsius.
	///
		case kelvin

		public static var base: Self {
			.kelvin
		}

		public func symbol(for value: Value) -> String {
			switch self {
				case .celsius:
					"°C"

				case .fahrenheit:
					"°F"

				case .kelvin:
					"K"
			}
		}

		public var coefficient: Value {
			switch self {
				case .celsius:
					1.0

				case .fahrenheit:
					5.0 / 9.0

				case .kelvin:
					1.0
			}
		}
	}

	private(set) public var value: Value
}

extension TemperatureDifference {
/// Initialize the temperature difference using a value in degrees celsius.
///
/// A difference of one degree Celsius is the same size as one kelvin.
///
/// - Parameters:
///   - value: The temperature difference in degrees celsius.
///
/// - Returns: The measurement representing the provided temperature difference.
///
	public static func celsius(_ value: Value) -> Self {
		Self(value, unit: .celsius)
	}

/// Initialize the temperature difference using a value in degrees fahrenheit.
///
/// A difference of one degree Fahrenheit is 5⁄9 the size of one kelvin.
///
/// - Parameters:
///   - value: The temperature difference in degrees fahrenheit.
///
/// - Returns: The measurement representing the provided temperature difference.
///
	public static func fahrenheit(_ value: Value) -> Self {
		Self(value, unit: .fahrenheit)
	}

/// Initialize the temperature difference using a value in kelvin.
///
/// A difference of one kelvin is the same size as one degree Celsius.
///
/// - Parameters:
///   - value: The temperature difference in kelvin.
///
/// - Returns: The measurement representing the provided temperature difference.
///
	public static func kelvin(_ value: Value) -> Self {
		Self(value, unit: .kelvin)
	}

/// The temperature difference measured in degrees celsius.
///
/// A difference of one degree Celsius is the same size as one kelvin.
///
	public var celsius: Value {
		get {
			self.get(unit: .celsius)
		}
		set {
			self.set(newValue, unit: .celsius)
		}
	}

/// The temperature difference measured in degrees fahrenheit.
///
/// A difference of one degree Fahrenheit is 5⁄9 the size of one kelvin.
///
	public var fahrenheit: Value {
		get {
			self.get(unit: .fahrenheit)
		}
		set {
			self.set(newValue, unit: .fahrenheit)
		}
	}

/// The temperature difference measured in kelvin.
///
/// A difference of one kelvin is the same size as one degree Celsius.
///
	public var kelvin: Value {
		get {
			self.get(unit: .kelvin)
		}
		set {
			self.set(newValue, unit: .kelvin)
		}
	}

/// Initialize the measurement from a temperature difference measured in degrees
/// celsius.
///
/// A difference of one degree Celsius is the same size as one kelvin.
///
/// - Parameters:
///   - value: The temperature difference measured in degrees celsius.
///
	public init(celsius value: Value) {
		self = Self(value, unit: .celsius)
	}

/// Initialize the measurement from a temperature difference measured in degrees
/// fahrenheit.
///
/// A difference of one degree Fahrenheit is 5⁄9 the size of one kelvin.
///
/// - Parameters:
///   - value: The temperature difference measured in degrees fahrenheit.
///
	public init(fahrenheit value: Value) {
		self = Self(value, unit: .fahrenheit)
	}

/// Initialize the measurement from a temperature difference measured in kelvin.
///
/// A difference of one kelvin is the same size as one degree Celsius.
///
/// - Parameters:
///   - value: The temperature difference measured in kelvin.
///
	public init(kelvin value: Value) {
		self = Self(value, unit: .kelvin)
	}
}

extension TemperatureDifference: Codable where Value: Codable {

}

extension TemperatureDifference: Comparable where Value: Comparable {

}

extension TemperatureDifference: Equatable {

}

extension TemperatureDifference: CustomStringConvertible, LosslessStringConvertible where Value: LosslessStringConvertible {

}

extension TemperatureDifference: MeasurementArithmetic {
	public init(_ value: Value, unit: MeasurementUnit = .base) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}

	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}

	public func get(unit: MeasurementUnit) -> Value {
		MeasurementUnit.convert(value: self.value, from: .base, to: unit)
	}
}

extension TemperatureDifference: Sendable where Value: Sendable {

}
