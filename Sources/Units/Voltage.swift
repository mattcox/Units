//
//  Voltage.swift
//  Units
//
//  Created by Matt Cox on 26/11/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

/// A measurement representing the difference in electric potential between two
/// points.
///
/// Voltage is stored as volts, however it can be read and written in various
/// units.
///
public struct Voltage<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One kilovolt is 1,000 volts.
	///
		case kilovolts

	/// One megavolt is 1,000,000 volts.
	///
		case megavolts

	/// One microvolt is 1⁄1,000,000 of a volt (10⁻⁶ volts).
	///
		case microvolts

	/// One millivolt is 1⁄1,000 of a volt.
	///
		case millivolts

	/// One volt is the base SI unit of electric potential, one watt per ampere.
	///
		case volts

		public static var base: Self {
			.volts
		}

		public func symbol(for value: Value) -> String {
			switch self {
				case .kilovolts:
					"kV"

				case .megavolts:
					"MV"

				case .microvolts:
					"µV"

				case .millivolts:
					"mV"

				case .volts:
					"V"
			}
		}

		public var coefficient: Value {
			switch self {
				case .kilovolts:
					1000.0

				case .megavolts:
					1_000_000.0

				case .microvolts:
					0.000_001

				case .millivolts:
					0.001

				case .volts:
					1.0
			}
		}
	}

	private(set) public var value: Value
}

extension Voltage {
/// Initialize the voltage using a value in kilovolts.
///
/// One kilovolt is 1,000 volts.
///
/// - Parameters:
///   - value: The voltage in kilovolts.
///
/// - Returns: The measurement representing the provided voltage.
///
	public static func kilovolts(_ value: Value) -> Self {
		Self(value, unit: .kilovolts)
	}

/// Initialize the voltage using a value in megavolts.
///
/// One megavolt is 1,000,000 volts.
///
/// - Parameters:
///   - value: The voltage in megavolts.
///
/// - Returns: The measurement representing the provided voltage.
///
	public static func megavolts(_ value: Value) -> Self {
		Self(value, unit: .megavolts)
	}

/// Initialize the voltage using a value in microvolts.
///
/// One microvolt is 1⁄1,000,000 of a volt (10⁻⁶ volts).
///
/// - Parameters:
///   - value: The voltage in microvolts.
///
/// - Returns: The measurement representing the provided voltage.
///
	public static func microvolts(_ value: Value) -> Self {
		Self(value, unit: .microvolts)
	}

/// Initialize the voltage using a value in millivolts.
///
/// One millivolt is 1⁄1,000 of a volt.
///
/// - Parameters:
///   - value: The voltage in millivolts.
///
/// - Returns: The measurement representing the provided voltage.
///
	public static func millivolts(_ value: Value) -> Self {
		Self(value, unit: .millivolts)
	}

/// Initialize the voltage using a value in volts.
///
/// One volt is the base SI unit of electric potential, one watt per ampere.
///
/// - Parameters:
///   - value: The voltage in volts.
///
/// - Returns: The measurement representing the provided voltage.
///
	public static func volts(_ value: Value) -> Self {
		Self(value, unit: .volts)
	}

/// The voltage measured in kilovolts.
///
/// One kilovolt is 1,000 volts.
///
	public var kilovolts: Value {
		get {
			self.get(unit: .kilovolts)
		}
		set {
			self.set(newValue, unit: .kilovolts)
		}
	}

/// The voltage measured in megavolts.
///
/// One megavolt is 1,000,000 volts.
///
	public var megavolts: Value {
		get {
			self.get(unit: .megavolts)
		}
		set {
			self.set(newValue, unit: .megavolts)
		}
	}

/// The voltage measured in microvolts.
///
/// One microvolt is 1⁄1,000,000 of a volt (10⁻⁶ volts).
///
	public var microvolts: Value {
		get {
			self.get(unit: .microvolts)
		}
		set {
			self.set(newValue, unit: .microvolts)
		}
	}

/// The voltage measured in millivolts.
///
/// One millivolt is 1⁄1,000 of a volt.
///
	public var millivolts: Value {
		get {
			self.get(unit: .millivolts)
		}
		set {
			self.set(newValue, unit: .millivolts)
		}
	}

/// The voltage measured in volts.
///
/// One volt is the base SI unit of electric potential, one watt per ampere.
///
	public var volts: Value {
		get {
			self.get(unit: .volts)
		}
		set {
			self.set(newValue, unit: .volts)
		}
	}

/// Initialize the measurement from a voltage measured in kilovolts.
///
/// One kilovolt is 1,000 volts.
///
/// - Parameters:
///   - value: The voltage measured in kilovolts.
///
	public init(kilovolts value: Value) {
		self = Self(value, unit: .kilovolts)
	}

/// Initialize the measurement from a voltage measured in megavolts.
///
/// One megavolt is 1,000,000 volts.
///
/// - Parameters:
///   - value: The voltage measured in megavolts.
///
	public init(megavolts value: Value) {
		self = Self(value, unit: .megavolts)
	}

/// Initialize the measurement from a voltage measured in microvolts.
///
/// One microvolt is 1⁄1,000,000 of a volt (10⁻⁶ volts).
///
/// - Parameters:
///   - value: The voltage measured in microvolts.
///
	public init(microvolts value: Value) {
		self = Self(value, unit: .microvolts)
	}

/// Initialize the measurement from a voltage measured in millivolts.
///
/// One millivolt is 1⁄1,000 of a volt.
///
/// - Parameters:
///   - value: The voltage measured in millivolts.
///
	public init(millivolts value: Value) {
		self = Self(value, unit: .millivolts)
	}

/// Initialize the measurement from a voltage measured in volts.
///
/// One volt is the base SI unit of electric potential, one watt per ampere.
///
/// - Parameters:
///   - value: The voltage measured in volts.
///
	public init(volts value: Value) {
		self = Self(value, unit: .volts)
	}
}

extension Voltage: Codable where Value: Codable {

}

extension Voltage: Comparable where Value: Comparable {

}

extension Voltage: Equatable {

}

extension Voltage: CustomStringConvertible, LosslessStringConvertible where Value: LosslessStringConvertible {

}

extension Voltage: MeasurementArithmetic {
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

extension Voltage: Sendable where Value: Sendable {

}
