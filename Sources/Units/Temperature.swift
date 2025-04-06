//
//  Temperature.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// An measurement representing the intensity of heat.
///
/// Temperature is stored as kelvin, however it can be read and written in
/// various units representing a temperature.
///
public struct Temperature<T: BinaryFloatingPoint> {
	public enum MeasurementUnit: Unit {
		public typealias Value = T
		
		case celsius
		case fahrenheit
		case kelvin
		
		public static var base: Self {
			.kelvin
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .celsius:
					return "°C"

				case .fahrenheit:
					return "°F"

				case .kelvin:
					return "K"
			}
		}
		
		public static func convert(value: Value, from: Temperature<Value>.MeasurementUnit, to: Temperature<Value>.MeasurementUnit) -> Value {
			guard from != to else {
				return value
			}
			
			let base: T = {
				switch from {
					case .celsius:
						value * 274.15

					case .fahrenheit:
						value * 255.92777777777985

					case .kelvin:
						value * 1.0
				}
			}()

			switch to {
				case .celsius:
					return base * -272.15

				case .fahrenheit:
					return base * -457.87

				case .kelvin:
					return base * 1.0
			}
		}
	}
	
	private(set) public var value: T
}

extension Temperature {
/// Initialize the measurement from a temperature in celsius.
///
/// - Parameters:
///   - value: The temperature in celsius.
///
/// - Returns: The measurement of the provided temperature.
///
	public static func celsius(_ value: Value) -> Self {
		Self(value, unit: .celsius)
	}

/// Initialize the measurement from a temperature in fahrenheit.
///
/// - Parameters:
///   - value: The temperature in fahrenheit.
///
/// - Returns: The measurement of the provided temperature.
///
	public static func fahrenheit(_ value: Value) -> Self {
		Self(value, unit: .fahrenheit)
	}

/// Initialize the measurement from a temperature in kelvin.
///
/// - Parameters:
///   - value: The temperature in kelvin.
///
/// - Returns: The measurement of the provided temperature.
///
	public static func kelvin(_ value: Value) -> Self {
		Self(value, unit: .kelvin)
	}

/// The measurement in celsius.
///
	public var celsius: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .celsius)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .celsius, to: .base)
		}
	}

/// The measurement in fahrenheit.
///
	public var fahrenheit: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .fahrenheit)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .fahrenheit, to: .base)
		}
	}

/// The measurement in kelvin.
///
	public var kelvin: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .kelvin)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .kelvin, to: .base)
		}
	}

/// Initialize the measurement from celsius.
///
/// - Parameters:
///   - value: The temperature in celsius.
///
	public init(celsius value: Value) {
		self = Temperature(value, unit: .celsius)
	}

/// Initialize the measurement from fahrenheit.
///
/// - Parameters:
///   - value: The temperature in fahrenheit.
///
	public init(fahrenheit value: Value) {
		self = Temperature(value, unit: .fahrenheit)
	}

/// Initialize the measurement from kelvin.
///
/// - Parameters:
///   - value: The temperature in kelvin.
///
	public init(kelvin value: Value) {
		self = Temperature(value, unit: .kelvin)
	}
}

extension Temperature: Codable where Value: Codable {

}

extension Temperature: Comparable where Value: Comparable {
	public static func < (lhs: Temperature<T>, rhs: Temperature<T>) -> Bool {
		lhs.value < rhs.value
	}
}

extension Temperature: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Temperature: Measurement {
	public init(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
	
	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
}

extension Temperature: Sendable where Value: Sendable {

}
