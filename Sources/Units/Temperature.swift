//
//  Temperature.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the intensity of heat.
///
/// Temperature is stored as kelvin, however it can be read and written in
/// various units.
///
public struct Temperature<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One degree Celsius represents a temperature scale where 0 °C is the
	/// freezing point and 100 °C is the boiling point of water at standard
	/// pressure.
	///
		case celsius
		
	/// One degree Fahrenheit is 5⁄9 the size of a Celsius degree, with
	/// water freezing at 32 °F and boiling at 212 °F.
	///
		case fahrenheit
	
	/// One kelvin is equal in size to one degree Celsius, but starts at
	/// absolute zero (0 K = −273.15 °C), with water freezing at 273.15 K.
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
					0.55555555555556
				case .kelvin:
					1.0
			}
		}
		
		public var constant: Value {
			switch self {
				case .celsius:
					273.15
				case .fahrenheit:
					255.37222222222428
				case .kelvin:
					1.0
			}
		}
	}
	
	private(set) public var value: Value
}

extension Temperature {
/// The freezing point of water at sea level.
///
	public var freezingPoint: Self {
		.celsius(0.0)
	}

/// The boiling point of water at sea level.
///
	public var boiling: Self {
		.celsius(100.0)
	}

/// Initialize the temperature using a value in celsius.
///
/// One degree Celsius represents a temperature scale where 0 °C is the
/// freezing point and 100 °C is the boiling point of water at standard
/// pressure.
///
/// - Parameters:
///   - value: The temperature in celsius.
///
/// - Returns: The measurement representing the provided temperature.
///
	public static func celsius(_ value: Value) -> Self {
		Self(value, unit: .celsius)
	}

/// Initialize the temperature using a value in fahrenheit.
///
/// One degree Fahrenheit is 5⁄9 the size of a Celsius degree, with water
/// freezing at 32 °F and boiling at 212 °F.
///
/// - Parameters:
///   - value: The temperature in fahrenheit.
///
/// - Returns: The measurement representing the provided temperature.
///
	public static func fahrenheit(_ value: Value) -> Self {
		Self(value, unit: .fahrenheit)
	}

/// Initialize the temperature using a value in kelvin.
///
/// One kelvin is equal in size to one degree Celsius, but starts at
/// absolute zero (0 K = −273.15 °C), with water freezing at 273.15 K.
///
/// - Parameters:
///   - value: The temperature in kelvin.
///
/// - Returns: The measurement representing the provided temperature.
///
	public static func kelvin(_ value: Value) -> Self {
		Self(value, unit: .kelvin)
	}

/// The temperature measured in celsius.
///
/// One degree Celsius represents a temperature scale where 0 °C is the
/// freezing point and 100 °C is the boiling point of water at standard
/// pressure.
///
	public var celsius: Value {
		get {
			self.get(unit: .celsius)
		}
		set {
			self.set(newValue, unit: .celsius)
		}
	}

/// The temperature measured in fahrenheit.
///
/// One degree Fahrenheit is 5⁄9 the size of a Celsius degree, with water
/// freezing at 32 °F and boiling at 212 °F.
///
	public var fahrenheit: Value {
		get {
			self.get(unit: .fahrenheit)
		}
		set {
			self.set(newValue, unit: .fahrenheit)
		}
	}

/// The temperature measured in kelvin.
///
/// One kelvin is equal in size to one degree Celsius, but starts at
/// absolute zero (0 K = −273.15 °C), with water freezing at 273.15 K.
///
	public var kelvin: Value {
		get {
			self.get(unit: .kelvin)
		}
		set {
			self.set(newValue, unit: .kelvin)
		}
	}

/// Initialize the measurement from a temperature measured in celsius.
///
/// One degree Celsius represents a temperature scale where 0 °C is the
/// freezing point and 100 °C is the boiling point of water at standard
/// pressure.
///
/// - Parameters:
///   - value: The temperature measured in celsius.
///
	public init(celsius value: Value) {
		self = Self(value, unit: .celsius)
	}

/// Initialize the measurement from a temperature measured in fahrenheit.
///
/// One degree Fahrenheit is 5⁄9 the size of a Celsius degree, with water
/// freezing at 32 °F and boiling at 212 °F.
///
/// - Parameters:
///   - value: The temperature measured in fahrenheit.
///
	public init(fahrenheit value: Value) {
		self = Self(value, unit: .fahrenheit)
	}

/// Initialize the measurement from a temperature measured in kelvin.
///
/// One kelvin is equal in size to one degree Celsius, but starts at
/// absolute zero (0 K = −273.15 °C), with water freezing at 273.15 K.
///
/// - Parameters:
///   - value: The temperature measured in kelvin.
///
	public init(kelvin value: Value) {
		self = Self(value, unit: .kelvin)
	}
}

extension Temperature: Codable where Value: Codable {

}

extension Temperature: Comparable where Value: Comparable {
	
}

extension Temperature: Equatable {
	
}

extension Temperature: MeasurementBinaryFloatingPoint {
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

extension Temperature: Sendable where Value: Sendable {

}
