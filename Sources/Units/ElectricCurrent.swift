//
//  ElectricCurrent.swift
//  Units
//
//  Created by Matt Cox on 26/11/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

/// A measurement representing the rate at which electric charge flows.
///
/// Electric current is stored as amperes, however it can be read and written in
/// various units.
///
public struct ElectricCurrent<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One ampere is the base SI unit of electric current, one coulomb of
	/// charge per second.
	///
		case amperes

	/// One kiloampere is 1,000 amperes.
	///
		case kiloamperes

	/// One microampere is 1⁄1,000,000 of an ampere (10⁻⁶ amperes).
	///
		case microamperes

	/// One milliampere is 1⁄1,000 of an ampere.
	///
		case milliamperes

		public static var base: Self {
			.amperes
		}

		public func symbol(for value: Value) -> String {
			switch self {
				case .amperes:
					"A"

				case .kiloamperes:
					"kA"

				case .microamperes:
					"µA"

				case .milliamperes:
					"mA"
			}
		}

		public var coefficient: Value {
			switch self {
				case .amperes:
					1.0

				case .kiloamperes:
					1000.0

				case .microamperes:
					0.000_001

				case .milliamperes:
					0.001
			}
		}
	}

	private(set) public var value: Value
}

extension ElectricCurrent {
/// Initialize the current using a value in amperes.
///
/// One ampere is the base SI unit of electric current, one coulomb of charge
/// per second.
///
/// - Parameters:
///   - value: The current in amperes.
///
/// - Returns: The measurement representing the provided current.
///
	public static func amperes(_ value: Value) -> Self {
		Self(value, unit: .amperes)
	}

/// Initialize the current using a value in kiloamperes.
///
/// One kiloampere is 1,000 amperes.
///
/// - Parameters:
///   - value: The current in kiloamperes.
///
/// - Returns: The measurement representing the provided current.
///
	public static func kiloamperes(_ value: Value) -> Self {
		Self(value, unit: .kiloamperes)
	}

/// Initialize the current using a value in microamperes.
///
/// One microampere is 1⁄1,000,000 of an ampere (10⁻⁶ amperes).
///
/// - Parameters:
///   - value: The current in microamperes.
///
/// - Returns: The measurement representing the provided current.
///
	public static func microamperes(_ value: Value) -> Self {
		Self(value, unit: .microamperes)
	}

/// Initialize the current using a value in milliamperes.
///
/// One milliampere is 1⁄1,000 of an ampere.
///
/// - Parameters:
///   - value: The current in milliamperes.
///
/// - Returns: The measurement representing the provided current.
///
	public static func milliamperes(_ value: Value) -> Self {
		Self(value, unit: .milliamperes)
	}

/// The current measured in amperes.
///
/// One ampere is the base SI unit of electric current, one coulomb of charge
/// per second.
///
	public var amperes: Value {
		get {
			self.get(unit: .amperes)
		}
		set {
			self.set(newValue, unit: .amperes)
		}
	}

/// The current measured in kiloamperes.
///
/// One kiloampere is 1,000 amperes.
///
	public var kiloamperes: Value {
		get {
			self.get(unit: .kiloamperes)
		}
		set {
			self.set(newValue, unit: .kiloamperes)
		}
	}

/// The current measured in microamperes.
///
/// One microampere is 1⁄1,000,000 of an ampere (10⁻⁶ amperes).
///
	public var microamperes: Value {
		get {
			self.get(unit: .microamperes)
		}
		set {
			self.set(newValue, unit: .microamperes)
		}
	}

/// The current measured in milliamperes.
///
/// One milliampere is 1⁄1,000 of an ampere.
///
	public var milliamperes: Value {
		get {
			self.get(unit: .milliamperes)
		}
		set {
			self.set(newValue, unit: .milliamperes)
		}
	}

/// Initialize the measurement from a current measured in amperes.
///
/// One ampere is the base SI unit of electric current, one coulomb of charge
/// per second.
///
/// - Parameters:
///   - value: The current measured in amperes.
///
	public init(amperes value: Value) {
		self = Self(value, unit: .amperes)
	}

/// Initialize the measurement from a current measured in kiloamperes.
///
/// One kiloampere is 1,000 amperes.
///
/// - Parameters:
///   - value: The current measured in kiloamperes.
///
	public init(kiloamperes value: Value) {
		self = Self(value, unit: .kiloamperes)
	}

/// Initialize the measurement from a current measured in microamperes.
///
/// One microampere is 1⁄1,000,000 of an ampere (10⁻⁶ amperes).
///
/// - Parameters:
///   - value: The current measured in microamperes.
///
	public init(microamperes value: Value) {
		self = Self(value, unit: .microamperes)
	}

/// Initialize the measurement from a current measured in milliamperes.
///
/// One milliampere is 1⁄1,000 of an ampere.
///
/// - Parameters:
///   - value: The current measured in milliamperes.
///
	public init(milliamperes value: Value) {
		self = Self(value, unit: .milliamperes)
	}
}

extension ElectricCurrent: Codable where Value: Codable {

}

extension ElectricCurrent: Comparable where Value: Comparable {

}

extension ElectricCurrent: Equatable {

}

extension ElectricCurrent: CustomStringConvertible, LosslessStringConvertible where Value: LosslessStringConvertible {

}

extension ElectricCurrent: MeasurementArithmetic {
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

extension ElectricCurrent: Sendable where Value: Sendable {

}
