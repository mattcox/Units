//
//  Energy.swift
//  Units
//
//  Created by Matt Cox on 26/11/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

/// A measurement representing the capacity to do work, such as the energy
/// stored in a battery or consumed by an appliance.
///
/// Energy is stored as joules, however it can be read and written in various
/// units.
///
public struct Energy<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One British thermal unit is approximately 1,055 joules, the energy
	/// needed to heat one pound of water by one degree Fahrenheit.
	///
		case britishThermalUnits

	/// One calorie is 4.184 joules, the energy needed to heat one gram of water
	/// by one degree Celsius.
	///
		case calories

	/// One gigajoule is 1,000,000,000 joules.
	///
		case gigajoules

	/// One gigawatt hour is the energy of one gigawatt sustained for one hour,
	/// or 3.6 × 10¹² joules.
	///
		case gigawattHours

	/// One joule is the base SI unit of energy, the work done by a force of one
	/// newton over one meter.
	///
		case joules

	/// One kilocalorie is 1,000 calories, or 4,184 joules, the unit commonly
	/// used for food energy.
	///
		case kilocalories

	/// One kilojoule is 1,000 joules.
	///
		case kilojoules

	/// One kilowatt hour is the energy of one kilowatt sustained for one hour,
	/// or 3,600,000 joules, the unit commonly used for electricity.
	///
		case kilowattHours

	/// One megajoule is 1,000,000 joules.
	///
		case megajoules

	/// One megawatt hour is the energy of one megawatt sustained for one hour,
	/// or 3,600,000,000 joules.
	///
		case megawattHours

	/// One watt hour is the energy of one watt sustained for one hour, or 3,600
	/// joules.
	///
		case wattHours

		public static var base: Self {
			.joules
		}

		public func symbol(for value: Value) -> String {
			switch self {
				case .britishThermalUnits:
					"BTU"

				case .calories:
					"cal"

				case .gigajoules:
					"GJ"

				case .gigawattHours:
					"GWh"

				case .joules:
					"J"

				case .kilocalories:
					"kcal"

				case .kilojoules:
					"kJ"

				case .kilowattHours:
					"kWh"

				case .megajoules:
					"MJ"

				case .megawattHours:
					"MWh"

				case .wattHours:
					"Wh"
			}
		}

		public var coefficient: Value {
			switch self {
				case .britishThermalUnits:
					1055.05585262

				case .calories:
					4.184

				case .gigajoules:
					1_000_000_000.0

				case .gigawattHours:
					3_600_000_000_000.0

				case .joules:
					1.0

				case .kilocalories:
					4184.0

				case .kilojoules:
					1000.0

				case .kilowattHours:
					3_600_000.0

				case .megajoules:
					1_000_000.0

				case .megawattHours:
					3_600_000_000.0

				case .wattHours:
					3600.0
			}
		}
	}

	private(set) public var value: Value
}

extension Energy {
/// Initialize the energy using a value in british thermal units.
///
/// One British thermal unit is approximately 1,055 joules, the energy needed to
/// heat one pound of water by one degree Fahrenheit.
///
/// - Parameters:
///   - value: The energy in british thermal units.
///
/// - Returns: The measurement representing the provided energy.
///
	public static func britishThermalUnits(_ value: Value) -> Self {
		Self(value, unit: .britishThermalUnits)
	}

/// Initialize the energy using a value in calories.
///
/// One calorie is 4.184 joules, the energy needed to heat one gram of water by
/// one degree Celsius.
///
/// - Parameters:
///   - value: The energy in calories.
///
/// - Returns: The measurement representing the provided energy.
///
	public static func calories(_ value: Value) -> Self {
		Self(value, unit: .calories)
	}

/// Initialize the energy using a value in gigajoules.
///
/// One gigajoule is 1,000,000,000 joules.
///
/// - Parameters:
///   - value: The energy in gigajoules.
///
/// - Returns: The measurement representing the provided energy.
///
	public static func gigajoules(_ value: Value) -> Self {
		Self(value, unit: .gigajoules)
	}

/// Initialize the energy using a value in gigawatt hours.
///
/// One gigawatt hour is the energy of one gigawatt sustained for one hour, or
/// 3.6 × 10¹² joules.
///
/// - Parameters:
///   - value: The energy in gigawatt hours.
///
/// - Returns: The measurement representing the provided energy.
///
	public static func gigawattHours(_ value: Value) -> Self {
		Self(value, unit: .gigawattHours)
	}

/// Initialize the energy using a value in joules.
///
/// One joule is the base SI unit of energy, the work done by a force of one
/// newton over one meter.
///
/// - Parameters:
///   - value: The energy in joules.
///
/// - Returns: The measurement representing the provided energy.
///
	public static func joules(_ value: Value) -> Self {
		Self(value, unit: .joules)
	}

/// Initialize the energy using a value in kilocalories.
///
/// One kilocalorie is 1,000 calories, or 4,184 joules, the unit commonly used
/// for food energy.
///
/// - Parameters:
///   - value: The energy in kilocalories.
///
/// - Returns: The measurement representing the provided energy.
///
	public static func kilocalories(_ value: Value) -> Self {
		Self(value, unit: .kilocalories)
	}

/// Initialize the energy using a value in kilojoules.
///
/// One kilojoule is 1,000 joules.
///
/// - Parameters:
///   - value: The energy in kilojoules.
///
/// - Returns: The measurement representing the provided energy.
///
	public static func kilojoules(_ value: Value) -> Self {
		Self(value, unit: .kilojoules)
	}

/// Initialize the energy using a value in kilowatt hours.
///
/// One kilowatt hour is the energy of one kilowatt sustained for one hour, or
/// 3,600,000 joules, the unit commonly used for electricity.
///
/// - Parameters:
///   - value: The energy in kilowatt hours.
///
/// - Returns: The measurement representing the provided energy.
///
	public static func kilowattHours(_ value: Value) -> Self {
		Self(value, unit: .kilowattHours)
	}

/// Initialize the energy using a value in megajoules.
///
/// One megajoule is 1,000,000 joules.
///
/// - Parameters:
///   - value: The energy in megajoules.
///
/// - Returns: The measurement representing the provided energy.
///
	public static func megajoules(_ value: Value) -> Self {
		Self(value, unit: .megajoules)
	}

/// Initialize the energy using a value in megawatt hours.
///
/// One megawatt hour is the energy of one megawatt sustained for one hour, or
/// 3,600,000,000 joules.
///
/// - Parameters:
///   - value: The energy in megawatt hours.
///
/// - Returns: The measurement representing the provided energy.
///
	public static func megawattHours(_ value: Value) -> Self {
		Self(value, unit: .megawattHours)
	}

/// Initialize the energy using a value in watt hours.
///
/// One watt hour is the energy of one watt sustained for one hour, or 3,600
/// joules.
///
/// - Parameters:
///   - value: The energy in watt hours.
///
/// - Returns: The measurement representing the provided energy.
///
	public static func wattHours(_ value: Value) -> Self {
		Self(value, unit: .wattHours)
	}

/// The energy measured in british thermal units.
///
/// One British thermal unit is approximately 1,055 joules, the energy needed to
/// heat one pound of water by one degree Fahrenheit.
///
	public var britishThermalUnits: Value {
		get {
			self.get(unit: .britishThermalUnits)
		}
		set {
			self.set(newValue, unit: .britishThermalUnits)
		}
	}

/// The energy measured in calories.
///
/// One calorie is 4.184 joules, the energy needed to heat one gram of water by
/// one degree Celsius.
///
	public var calories: Value {
		get {
			self.get(unit: .calories)
		}
		set {
			self.set(newValue, unit: .calories)
		}
	}

/// The energy measured in gigajoules.
///
/// One gigajoule is 1,000,000,000 joules.
///
	public var gigajoules: Value {
		get {
			self.get(unit: .gigajoules)
		}
		set {
			self.set(newValue, unit: .gigajoules)
		}
	}

/// The energy measured in gigawatt hours.
///
/// One gigawatt hour is the energy of one gigawatt sustained for one hour, or
/// 3.6 × 10¹² joules.
///
	public var gigawattHours: Value {
		get {
			self.get(unit: .gigawattHours)
		}
		set {
			self.set(newValue, unit: .gigawattHours)
		}
	}

/// The energy measured in joules.
///
/// One joule is the base SI unit of energy, the work done by a force of one
/// newton over one meter.
///
	public var joules: Value {
		get {
			self.get(unit: .joules)
		}
		set {
			self.set(newValue, unit: .joules)
		}
	}

/// The energy measured in kilocalories.
///
/// One kilocalorie is 1,000 calories, or 4,184 joules, the unit commonly used
/// for food energy.
///
	public var kilocalories: Value {
		get {
			self.get(unit: .kilocalories)
		}
		set {
			self.set(newValue, unit: .kilocalories)
		}
	}

/// The energy measured in kilojoules.
///
/// One kilojoule is 1,000 joules.
///
	public var kilojoules: Value {
		get {
			self.get(unit: .kilojoules)
		}
		set {
			self.set(newValue, unit: .kilojoules)
		}
	}

/// The energy measured in kilowatt hours.
///
/// One kilowatt hour is the energy of one kilowatt sustained for one hour, or
/// 3,600,000 joules, the unit commonly used for electricity.
///
	public var kilowattHours: Value {
		get {
			self.get(unit: .kilowattHours)
		}
		set {
			self.set(newValue, unit: .kilowattHours)
		}
	}

/// The energy measured in megajoules.
///
/// One megajoule is 1,000,000 joules.
///
	public var megajoules: Value {
		get {
			self.get(unit: .megajoules)
		}
		set {
			self.set(newValue, unit: .megajoules)
		}
	}

/// The energy measured in megawatt hours.
///
/// One megawatt hour is the energy of one megawatt sustained for one hour, or
/// 3,600,000,000 joules.
///
	public var megawattHours: Value {
		get {
			self.get(unit: .megawattHours)
		}
		set {
			self.set(newValue, unit: .megawattHours)
		}
	}

/// The energy measured in watt hours.
///
/// One watt hour is the energy of one watt sustained for one hour, or 3,600
/// joules.
///
	public var wattHours: Value {
		get {
			self.get(unit: .wattHours)
		}
		set {
			self.set(newValue, unit: .wattHours)
		}
	}

/// Initialize the measurement from an energy measured in british thermal units.
///
/// One British thermal unit is approximately 1,055 joules, the energy needed to
/// heat one pound of water by one degree Fahrenheit.
///
/// - Parameters:
///   - value: The energy measured in british thermal units.
///
	public init(britishThermalUnits value: Value) {
		self = Self(value, unit: .britishThermalUnits)
	}

/// Initialize the measurement from an energy measured in calories.
///
/// One calorie is 4.184 joules, the energy needed to heat one gram of water by
/// one degree Celsius.
///
/// - Parameters:
///   - value: The energy measured in calories.
///
	public init(calories value: Value) {
		self = Self(value, unit: .calories)
	}

/// Initialize the measurement from an energy measured in gigajoules.
///
/// One gigajoule is 1,000,000,000 joules.
///
/// - Parameters:
///   - value: The energy measured in gigajoules.
///
	public init(gigajoules value: Value) {
		self = Self(value, unit: .gigajoules)
	}

/// Initialize the measurement from an energy measured in gigawatt hours.
///
/// One gigawatt hour is the energy of one gigawatt sustained for one hour, or
/// 3.6 × 10¹² joules.
///
/// - Parameters:
///   - value: The energy measured in gigawatt hours.
///
	public init(gigawattHours value: Value) {
		self = Self(value, unit: .gigawattHours)
	}

/// Initialize the measurement from an energy measured in joules.
///
/// One joule is the base SI unit of energy, the work done by a force of one
/// newton over one meter.
///
/// - Parameters:
///   - value: The energy measured in joules.
///
	public init(joules value: Value) {
		self = Self(value, unit: .joules)
	}

/// Initialize the measurement from an energy measured in kilocalories.
///
/// One kilocalorie is 1,000 calories, or 4,184 joules, the unit commonly used
/// for food energy.
///
/// - Parameters:
///   - value: The energy measured in kilocalories.
///
	public init(kilocalories value: Value) {
		self = Self(value, unit: .kilocalories)
	}

/// Initialize the measurement from an energy measured in kilojoules.
///
/// One kilojoule is 1,000 joules.
///
/// - Parameters:
///   - value: The energy measured in kilojoules.
///
	public init(kilojoules value: Value) {
		self = Self(value, unit: .kilojoules)
	}

/// Initialize the measurement from an energy measured in kilowatt hours.
///
/// One kilowatt hour is the energy of one kilowatt sustained for one hour, or
/// 3,600,000 joules, the unit commonly used for electricity.
///
/// - Parameters:
///   - value: The energy measured in kilowatt hours.
///
	public init(kilowattHours value: Value) {
		self = Self(value, unit: .kilowattHours)
	}

/// Initialize the measurement from an energy measured in megajoules.
///
/// One megajoule is 1,000,000 joules.
///
/// - Parameters:
///   - value: The energy measured in megajoules.
///
	public init(megajoules value: Value) {
		self = Self(value, unit: .megajoules)
	}

/// Initialize the measurement from an energy measured in megawatt hours.
///
/// One megawatt hour is the energy of one megawatt sustained for one hour, or
/// 3,600,000,000 joules.
///
/// - Parameters:
///   - value: The energy measured in megawatt hours.
///
	public init(megawattHours value: Value) {
		self = Self(value, unit: .megawattHours)
	}

/// Initialize the measurement from an energy measured in watt hours.
///
/// One watt hour is the energy of one watt sustained for one hour, or 3,600
/// joules.
///
/// - Parameters:
///   - value: The energy measured in watt hours.
///
	public init(wattHours value: Value) {
		self = Self(value, unit: .wattHours)
	}
}

extension Energy: Codable where Value: Codable {

}

extension Energy: Comparable where Value: Comparable {

}

extension Energy: Equatable {

}

extension Energy: CustomStringConvertible, LosslessStringConvertible where Value: LosslessStringConvertible {

}

extension Energy: MeasurementArithmetic {
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

extension Energy: Sendable where Value: Sendable {

}
