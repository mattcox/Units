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
/// units representing power.
///
public struct Power<T: BinaryFloatingPoint> {
	public enum MeasurementUnit: Unit {
		public typealias Value = T
		
		case femtowatts
		case gigawatts
		case horsepower
		case kilowatts
		case megawatts
		case microwatts
		case milliwatts
		case nanowatts
		case picowatts
		case terawatts
		case watts
		
		public static var base: Self {
			.watts
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .femtowatts:
					return "fW"

				case .gigawatts:
					return "GW"

				case .horsepower:
					return "hp"

				case .kilowatts:
					return "kW"

				case .megawatts:
					return "MW"

				case .microwatts:
					return "µW"

				case .milliwatts:
					return "mW"

				case .nanowatts:
					return "nW"

				case .picowatts:
					return "pW"

				case .terawatts:
					return "TW"

				case .watts:
					return "W"
			}
		}
		
		public static func convert(value: Value, from: Power<Value>.MeasurementUnit, to: Power<Value>.MeasurementUnit) -> Value {
			guard from != to else {
				return value
			}
			
			let base: T = {
				switch from {
					case .femtowatts:
						value * 1e-15

					case .gigawatts:
						value * 1000000000.0

					case .horsepower:
						value * 745.7

					case .kilowatts:
						value * 1000.0

					case .megawatts:
						value * 1000000.0

					case .microwatts:
						value * 1e-06

					case .milliwatts:
						value * 0.001

					case .nanowatts:
						value * 1e-09

					case .picowatts:
						value * 1e-12

					case .terawatts:
						value * 1000000000000.0

					case .watts:
						value * 1.0
				}
			}()

			switch to {
				case .femtowatts:
					return base * 999999999999999.9

				case .gigawatts:
					return base * 1e-09

				case .horsepower:
					return base * 0.001341021858656296

				case .kilowatts:
					return base * 0.001

				case .megawatts:
					return base * 1e-06

				case .microwatts:
					return base * 1000000.0

				case .milliwatts:
					return base * 1000.0

				case .nanowatts:
					return base * 999999999.9999999

				case .picowatts:
					return base * 1000000000000.0

				case .terawatts:
					return base * 1e-12

				case .watts:
					return base * 1.0
			}
	
		}
	}
	
	private(set) public var value: T
}

extension Power {
/// Power representing 1.21 Gigawatts!
///
	public static var greatScott: Power {
		Power(1.21, unit: .gigawatts)
	}

/// Initialize the measurement from a power in femtowatts.
///
/// - Parameters:
///   - value: The power in femtowatts.
///
/// - Returns: The measurement of the provided power.
///
	public static func femtowatts(_ value: Value) -> Self {
		Self(value, unit: .femtowatts)
	}

/// Initialize the measurement from a power in gigawatts.
///
/// - Parameters:
///   - value: The power in gigawatts.
///
/// - Returns: The measurement of the provided power.
///
	public static func gigawatts(_ value: Value) -> Self {
		Self(value, unit: .gigawatts)
	}

/// Initialize the measurement from a power in horsepower.
///
/// - Parameters:
///   - value: The power in horsepower.
///
/// - Returns: The measurement of the provided power.
///
	public static func horsepower(_ value: Value) -> Self {
		Self(value, unit: .horsepower)
	}

/// Initialize the measurement from a power in kilowatts.
///
/// - Parameters:
///   - value: The power in kilowatts.
///
/// - Returns: The measurement of the provided power.
///
	public static func kilowatts(_ value: Value) -> Self {
		Self(value, unit: .kilowatts)
	}

/// Initialize the measurement from a power in megawatts.
///
/// - Parameters:
///   - value: The power in megawatts.
///
/// - Returns: The measurement of the provided power.
///
	public static func megawatts(_ value: Value) -> Self {
		Self(value, unit: .megawatts)
	}

/// Initialize the measurement from a power in microwatts.
///
/// - Parameters:
///   - value: The power in microwatts.
///
/// - Returns: The measurement of the provided power.
///
	public static func microwatts(_ value: Value) -> Self {
		Self(value, unit: .microwatts)
	}

/// Initialize the measurement from a power in milliwatts.
///
/// - Parameters:
///   - value: The power in milliwatts.
///
/// - Returns: The measurement of the provided power.
///
	public static func milliwatts(_ value: Value) -> Self {
		Self(value, unit: .milliwatts)
	}

/// Initialize the measurement from a power in nanowatts.
///
/// - Parameters:
///   - value: The power in nanowatts.
///
/// - Returns: The measurement of the provided power.
///
	public static func nanowatts(_ value: Value) -> Self {
		Self(value, unit: .nanowatts)
	}

/// Initialize the measurement from a power in picowatts.
///
/// - Parameters:
///   - value: The power in picowatts.
///
/// - Returns: The measurement of the provided power.
///
	public static func picowatts(_ value: Value) -> Self {
		Self(value, unit: .picowatts)
	}

/// Initialize the measurement from a power in terawatts.
///
/// - Parameters:
///   - value: The power in terawatts.
///
/// - Returns: The measurement of the provided power.
///
	public static func terawatts(_ value: Value) -> Self {
		Self(value, unit: .terawatts)
	}

/// Initialize the measurement from a power in watts.
///
/// - Parameters:
///   - value: The power in watts.
///
/// - Returns: The measurement of the provided power.
///
	public static func watts(_ value: Value) -> Self {
		Self(value, unit: .watts)
	}

/// The measurement in femtowatts.
///
	public var femtowatts: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .femtowatts)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .femtowatts, to: .base)
		}
	}

/// The measurement in gigawatts.
///
	public var gigawatts: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .gigawatts)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .gigawatts, to: .base)
		}
	}

/// The measurement in horsepower.
///
	public var horsepower: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .horsepower)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .horsepower, to: .base)
		}
	}

/// The measurement in kilowatts.
///
	public var kilowatts: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .kilowatts)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .kilowatts, to: .base)
		}
	}

/// The measurement in megawatts.
///
	public var megawatts: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .megawatts)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .megawatts, to: .base)
		}
	}

/// The measurement in microwatts.
///
	public var microwatts: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .microwatts)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .microwatts, to: .base)
		}
	}

/// The measurement in milliwatts.
///
	public var milliwatts: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .milliwatts)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .milliwatts, to: .base)
		}
	}

/// The measurement in nanowatts.
///
	public var nanowatts: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .nanowatts)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .nanowatts, to: .base)
		}
	}

/// The measurement in picowatts.
///
	public var picowatts: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .picowatts)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .picowatts, to: .base)
		}
	}

/// The measurement in terawatts.
///
	public var terawatts: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .terawatts)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .terawatts, to: .base)
		}
	}

/// The measurement in watts.
///
	public var watts: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .watts)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .watts, to: .base)
		}
	}

/// Initialize the measurement from femtowatts.
///
/// - Parameters:
///   - value: The Power in femtowatts.
///
	public init(femtowatts value: Value) {
		self = Power(value, unit: .femtowatts)
	}

/// Initialize the measurement from gigawatts.
///
/// - Parameters:
///   - value: The Power in gigawatts.
///
	public init(gigawatts value: Value) {
		self = Power(value, unit: .gigawatts)
	}

/// Initialize the measurement from horsepower.
///
/// - Parameters:
///   - value: The Power in horsepower.
///
	public init(horsepower value: Value) {
		self = Power(value, unit: .horsepower)
	}

/// Initialize the measurement from kilowatts.
///
/// - Parameters:
///   - value: The Power in kilowatts.
///
	public init(kilowatts value: Value) {
		self = Power(value, unit: .kilowatts)
	}

/// Initialize the measurement from megawatts.
///
/// - Parameters:
///   - value: The Power in megawatts.
///
	public init(megawatts value: Value) {
		self = Power(value, unit: .megawatts)
	}

/// Initialize the measurement from microwatts.
///
/// - Parameters:
///   - value: The Power in microwatts.
///
	public init(microwatts value: Value) {
		self = Power(value, unit: .microwatts)
	}

/// Initialize the measurement from milliwatts.
///
/// - Parameters:
///   - value: The Power in milliwatts.
///
	public init(milliwatts value: Value) {
		self = Power(value, unit: .milliwatts)
	}

/// Initialize the measurement from nanowatts.
///
/// - Parameters:
///   - value: The Power in nanowatts.
///
	public init(nanowatts value: Value) {
		self = Power(value, unit: .nanowatts)
	}

/// Initialize the measurement from picowatts.
///
/// - Parameters:
///   - value: The Power in picowatts.
///
	public init(picowatts value: Value) {
		self = Power(value, unit: .picowatts)
	}

/// Initialize the measurement from terawatts.
///
/// - Parameters:
///   - value: The Power in terawatts.
///
	public init(terawatts value: Value) {
		self = Power(value, unit: .terawatts)
	}

/// Initialize the measurement from watts.
///
/// - Parameters:
///   - value: The Power in watts.
///
	public init(watts value: Value) {
		self = Power(value, unit: .watts)
	}
}

extension Power: Codable where Value: Codable {

}

extension Power: Comparable where Value: Comparable {
	public static func < (lhs: Power<T>, rhs: Power<T>) -> Bool {
		lhs.value < rhs.value
	}
}

extension Power: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Power: Measurement {
	public init(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
	
	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
}

extension Power: Sendable where Value: Sendable {

}
