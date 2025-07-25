//
//  Power.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the rate at which energy is transferred or
/// converted over time.
///
/// Power is stored as watts, however it can be read and written in various
/// units.
///
public struct Power<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One femtowatt is 1⁄1,000,000,000,000,000 of a watt (10⁻¹⁵ watts).
	///
		case femtowatts

	/// One gigawatt is 1,000,000,000 watts, commonly used for the output
	/// of large power plants.
	///
		case gigawatts

	/// One horsepower is approximately 745.7 watts, originally defined to
	/// compare engine output to draft horses.
	///
		case horsepower

	/// One kilowatt is 1,000 watts, often used for household appliances and
	/// electric vehicle motors.
	///
		case kilowatts

	/// One megawatt is 1,000,000 watts or 1,000 kilowatts, typically used
	/// to measure the output of large generators.
	///
		case megawatts

	/// One microwatt is 1⁄1,000,000 of a watt (10⁻⁶ watts).
	///
		case microwatts

	/// One milliwatt is 1⁄1,000 of a watt (10⁻³ watts).
	///
		case milliwatts

	/// One nanowatt is 1⁄1,000,000,000 of a watt (10⁻⁹ watts).
	///
		case nanowatts

	/// One picowatt is 1⁄1,000,000,000,000 of a watt (10⁻¹² watts).
	///
		case picowatts

	/// One terawatt is 1,000,000,000,000 watts, used to measure the scale
	/// of national or global energy production.
	///
		case terawatts

	/// One watt is the base SI unit of power, defined as one joule per
	/// second.
	///
		case watts
		
		public static var base: Self {
			.watts
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .femtowatts:
					"fW"

				case .gigawatts:
					"GW"

				case .horsepower:
					"hp"

				case .kilowatts:
					"kW"

				case .megawatts:
					"MW"

				case .microwatts:
					"µW"

				case .milliwatts:
					"mW"

				case .nanowatts:
					"nW"

				case .picowatts:
					"pW"

				case .terawatts:
					"TW"

				case .watts:
					"W"
			}
		}
		
		public var coefficient: Value {
			switch self {
				case .femtowatts:
					1e-15

				case .gigawatts:
					1000000000.0

				case .horsepower:
					745.7

				case .kilowatts:
					1000.0

				case .megawatts:
					1000000.0

				case .microwatts:
					1e-06

				case .milliwatts:
					0.001

				case .nanowatts:
					1e-09

				case .picowatts:
					1e-12

				case .terawatts:
					1000000000000.0

				case .watts:
					1.0
			}
		}
	}
	
	private(set) public var value: Value
}

extension Power {
/// Power representing 1.21 Gigawatts!
///
	public static var greatScott: Power {
		Self(1.21, unit: .gigawatts)
	}

/// Initialize the power using a value in femtowatts.
///
/// One femtowatt is 1⁄1,000,000,000,000,000 of a watt (10⁻¹⁵ watts).
///
/// - Parameters:
///   - value: The power in femtowatts.
///
/// - Returns: The measurement representing the provided power.
///
	public static func femtowatts(_ value: Value) -> Self {
		Self(value, unit: .femtowatts)
	}

/// Initialize the power using a value in gigawatts.
///
/// One gigawatt is 1,000,000,000 watts, commonly used for the output of
/// large power plants.
///
/// - Parameters:
///   - value: The power in gigawatts.
///
/// - Returns: The measurement representing the provided power.
///
	public static func gigawatts(_ value: Value) -> Self {
		Self(value, unit: .gigawatts)
	}

/// Initialize the power using a value in horsepower.
///
/// One horsepower is approximately 745.7 watts, originally defined to
/// compare engine output to draft horses.
///
/// - Parameters:
///   - value: The power in horsepower.
///
/// - Returns: The measurement representing the provided power.
///
	public static func horsepower(_ value: Value) -> Self {
		Self(value, unit: .horsepower)
	}

/// Initialize the power using a value in kilowatts.
///
/// One kilowatt is 1,000 watts, often used for household appliances and
/// electric vehicle motors.
///
/// - Parameters:
///   - value: The power in kilowatts.
///
/// - Returns: The measurement representing the provided power.
///
	public static func kilowatts(_ value: Value) -> Self {
		Self(value, unit: .kilowatts)
	}

/// Initialize the power using a value in megawatts.
///
/// One megawatt is 1,000,000 watts or 1,000 kilowatts, typically used to
/// measure the output of large generators.
///
/// - Parameters:
///   - value: The power in megawatts.
///
/// - Returns: The measurement representing the provided power.
///
	public static func megawatts(_ value: Value) -> Self {
		Self(value, unit: .megawatts)
	}

/// Initialize the power using a value in microwatts.
///
/// One microwatt is 1⁄1,000,000 of a watt (10⁻⁶ watts).
///
/// - Parameters:
///   - value: The power in microwatts.
///
/// - Returns: The measurement representing the provided power.
///
	public static func microwatts(_ value: Value) -> Self {
		Self(value, unit: .microwatts)
	}

/// Initialize the power using a value in milliwatts.
///
/// One milliwatt is 1⁄1,000 of a watt (10⁻³ watts).
///
/// - Parameters:
///   - value: The power in milliwatts.
///
/// - Returns: The measurement representing the provided power.
///
	public static func milliwatts(_ value: Value) -> Self {
		Self(value, unit: .milliwatts)
	}

/// Initialize the power using a value in nanowatts.
///
/// One nanowatt is 1⁄1,000,000,000 of a watt (10⁻⁹ watts).
///
/// - Parameters:
///   - value: The power in nanowatts.
///
/// - Returns: The measurement representing the provided power.
///
	public static func nanowatts(_ value: Value) -> Self {
		Self(value, unit: .nanowatts)
	}

/// Initialize the power using a value in picowatts.
///
/// One picowatt is 1⁄1,000,000,000,000 of a watt (10⁻¹² watts).
///
/// - Parameters:
///   - value: The power in picowatts.
///
/// - Returns: The measurement representing the provided power.
///
	public static func picowatts(_ value: Value) -> Self {
		Self(value, unit: .picowatts)
	}

/// Initialize the power using a value in terawatts.
///
/// One terawatt is 1,000,000,000,000 watts, used to measure the scale of
/// national or global energy production.
///
/// - Parameters:
///   - value: The power in terawatts.
///
/// - Returns: The measurement representing the provided power.
///
	public static func terawatts(_ value: Value) -> Self {
		Self(value, unit: .terawatts)
	}

/// Initialize the power using a value in watts.
///
/// One watt is the base SI unit of power, defined as one joule per second.
///
/// - Parameters:
///   - value: The power in watts.
///
/// - Returns: The measurement representing the provided power.
///
	public static func watts(_ value: Value) -> Self {
		Self(value, unit: .watts)
	}

/// The power measured in femtowatts.
///
/// One femtowatt is 1⁄1,000,000,000,000,000 of a watt (10⁻¹⁵ watts).
///
	public var femtowatts: Value {
		get {
			self.get(unit: .femtowatts)
		}
		set {
			self.set(newValue, unit: .femtowatts)
		}
	}

/// The power measured in gigawatts.
///
/// One gigawatt is 1,000,000,000 watts, commonly used for the output of
/// large power plants.
///
	public var gigawatts: Value {
		get {
			self.get(unit: .gigawatts)
		}
		set {
			self.set(newValue, unit: .gigawatts)
		}
	}

/// The power measured in horsepower.
///
/// One horsepower is approximately 745.7 watts, originally defined to
/// compare engine output to draft horses.
///
	public var horsepower: Value {
		get {
			self.get(unit: .horsepower)
		}
		set {
			self.set(newValue, unit: .horsepower)
		}
	}

/// The power measured in kilowatts.
///
/// One kilowatt is 1,000 watts, often used for household appliances and
/// electric vehicle motors.
///
	public var kilowatts: Value {
		get {
			self.get(unit: .kilowatts)
		}
		set {
			self.set(newValue, unit: .kilowatts)
		}
	}

/// The power measured in megawatts.
///
/// One megawatt is 1,000,000 watts or 1,000 kilowatts, typically used to
/// measure the output of large generators.
///
	public var megawatts: Value {
		get {
			self.get(unit: .megawatts)
		}
		set {
			self.set(newValue, unit: .megawatts)
		}
	}

/// The power measured in microwatts.
///
/// One microwatt is 1⁄1,000,000 of a watt (10⁻⁶ watts).
///
	public var microwatts: Value {
		get {
			self.get(unit: .microwatts)
		}
		set {
			self.set(newValue, unit: .microwatts)
		}
	}

/// The power measured in milliwatts.
///
/// One milliwatt is 1⁄1,000 of a watt (10⁻³ watts).
///
	public var milliwatts: Value {
		get {
			self.get(unit: .milliwatts)
		}
		set {
			self.set(newValue, unit: .milliwatts)
		}
	}

/// The power measured in nanowatts.
///
/// One nanowatt is 1⁄1,000,000,000 of a watt (10⁻⁹ watts).
///
	public var nanowatts: Value {
		get {
			self.get(unit: .nanowatts)
		}
		set {
			self.set(newValue, unit: .nanowatts)
		}
	}

/// The power measured in picowatts.
///
/// One picowatt is 1⁄1,000,000,000,000 of a watt (10⁻¹² watts).
///
	public var picowatts: Value {
		get {
			self.get(unit: .picowatts)
		}
		set {
			self.set(newValue, unit: .picowatts)
		}
	}

/// The power measured in terawatts.
///
/// One terawatt is 1,000,000,000,000 watts, used to measure the scale of
/// national or global energy production.
///
	public var terawatts: Value {
		get {
			self.get(unit: .terawatts)
		}
		set {
			self.set(newValue, unit: .terawatts)
		}
	}

/// The power measured in watts.
///
/// One watt is the base SI unit of power, defined as one joule per second.
///
	public var watts: Value {
		get {
			self.get(unit: .watts)
		}
		set {
			self.set(newValue, unit: .watts)
		}
	}

/// Initialize the measurement from a power measured in femtowatts.
///
/// One femtowatt is 1⁄1,000,000,000,000,000 of a watt (10⁻¹⁵ watts).
///
/// - Parameters:
///   - value: The power measured in femtowatts.
///
	public init(femtowatts value: Value) {
		self = Self(value, unit: .femtowatts)
	}

/// Initialize the measurement from a power measured in gigawatts.
///
/// One gigawatt is 1,000,000,000 watts, commonly used for the output of
/// large power plants.
///
/// - Parameters:
///   - value: The power measured in gigawatts.
///
	public init(gigawatts value: Value) {
		self = Self(value, unit: .gigawatts)
	}

/// Initialize the measurement from a power measured in horsepower.
///
/// One horsepower is approximately 745.7 watts, originally defined to
/// compare engine output to draft horses.
///
/// - Parameters:
///   - value: The power measured in horsepower.
///
	public init(horsepower value: Value) {
		self = Self(value, unit: .horsepower)
	}

/// Initialize the measurement from a power measured in kilowatts.
///
/// One kilowatt is 1,000 watts, often used for household appliances and
/// electric vehicle motors.
///
/// - Parameters:
///   - value: The power measured in kilowatts.
///
	public init(kilowatts value: Value) {
		self = Self(value, unit: .kilowatts)
	}

/// Initialize the measurement from a power measured in megawatts.
///
/// One megawatt is 1,000,000 watts or 1,000 kilowatts, typically used to
/// measure the output of large generators.
///
/// - Parameters:
///   - value: The power measured in megawatts.
///
	public init(megawatts value: Value) {
		self = Self(value, unit: .megawatts)
	}

/// Initialize the measurement from a power measured in microwatts.
///
/// One microwatt is 1⁄1,000,000 of a watt (10⁻⁶ watts).
///
/// - Parameters:
///   - value: The power measured in microwatts.
///
	public init(microwatts value: Value) {
		self = Self(value, unit: .microwatts)
	}

/// Initialize the measurement from a power measured in milliwatts.
///
/// One milliwatt is 1⁄1,000 of a watt (10⁻³ watts).
///
/// - Parameters:
///   - value: The power measured in milliwatts.
///
	public init(milliwatts value: Value) {
		self = Self(value, unit: .milliwatts)
	}

/// Initialize the measurement from a power measured in nanowatts.
///
/// One nanowatt is 1⁄1,000,000,000 of a watt (10⁻⁹ watts).
///
/// - Parameters:
///   - value: The power measured in nanowatts.
///
	public init(nanowatts value: Value) {
		self = Self(value, unit: .nanowatts)
	}

/// Initialize the measurement from a power measured in picowatts.
///
/// One picowatt is 1⁄1,000,000,000,000 of a watt (10⁻¹² watts).
///
/// - Parameters:
///   - value: The power measured in picowatts.
///
	public init(picowatts value: Value) {
		self = Self(value, unit: .picowatts)
	}

/// Initialize the measurement from a power measured in terawatts.
///
/// One terawatt is 1,000,000,000,000 watts, used to measure the scale of
/// national or global energy production.
///
/// - Parameters:
///   - value: The power measured in terawatts.
///
	public init(terawatts value: Value) {
		self = Self(value, unit: .terawatts)
	}

/// Initialize the measurement from a power measured in watts.
///
/// One watt is the base SI unit of power, defined as one joule per second.
///
/// - Parameters:
///   - value: The power measured in watts.
///
	public init(watts value: Value) {
		self = Self(value, unit: .watts)
	}
}

extension Power: Codable where Value: Codable {

}

extension Power: Comparable where Value: Comparable {
	
}

extension Power: Equatable {
	
}

extension Power: MeasurementBinaryFloatingPoint {
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

extension Power: Sendable where Value: Sendable {

}
