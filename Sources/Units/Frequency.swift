//
//  Frequency.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the number of occurrences of a repeating event
/// per unit of time.
///
/// Frequency is stored as hertz, however it can be read and written in various
/// units representing frequency.
///
public struct Frequency<T: BinaryFloatingPoint> {
	public enum MeasurementUnit: Unit {
		public typealias Value = T
		
		case framesPerSecond
		case gigahertz
		case hertz
		case kilohertz
		case megahertz
		case microhertz
		case millihertz
		case nanohertz
		case terahertz
		
		public static var base: Self {
			.hertz
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .framesPerSecond:
					return "fps"

				case .gigahertz:
					return "GHz"

				case .hertz:
					return "Hz"

				case .kilohertz:
					return "kHz"

				case .megahertz:
					return "MHz"

				case .microhertz:
					return "µHz"

				case .millihertz:
					return "mHz"

				case .nanohertz:
					return "nHz"

				case .terahertz:
					return "THz"
			}
		}
		
		public static func convert(value: Value, from: Frequency<Value>.MeasurementUnit, to: Frequency<Value>.MeasurementUnit) -> Value {
			guard from != to else {
				return value
			}
			
			let base: T = {
				switch from {
					case .framesPerSecond:
						value * 1.0

					case .gigahertz:
						value * 1000000000.0

					case .hertz:
						value * 1.0

					case .kilohertz:
						value * 1000.0

					case .megahertz:
						value * 1000000.0

					case .microhertz:
						value * 1e-06

					case .millihertz:
						value * 0.001

					case .nanohertz:
						value * 1e-09

					case .terahertz:
						value * 1000000000000.0
				}
			}()

			switch to {
				case .framesPerSecond:
					return base * 1.0

				case .gigahertz:
					return base * 1e-09

				case .hertz:
					return base * 1.0

				case .kilohertz:
					return base * 0.001

				case .megahertz:
					return base * 1e-06

				case .microhertz:
					return base * 1000000.0

				case .millihertz:
					return base * 1000.0

				case .nanohertz:
					return base * 999999999.9999999

				case .terahertz:
					return base * 1e-12
			}
	
		}
	}
	
	private(set) public var value: T
}

extension Frequency {
/// Initialize the measurement from a frequency in frames per second.
///
/// - Parameters:
///   - value: The frequency in frames per second.
///
/// - Returns: The measurement of the provided frequency.
///
	public static func framesPerSecond(_ value: Value) -> Self {
		Self(value, unit: .framesPerSecond)
	}

/// Initialize the measurement from a frequency in gigahertz.
///
/// - Parameters:
///   - value: The frequency in gigahertz.
///
/// - Returns: The measurement of the provided frequency.
///
	public static func gigahertz(_ value: Value) -> Self {
		Self(value, unit: .gigahertz)
	}

/// Initialize the measurement from a frequency in hertz.
///
/// - Parameters:
///   - value: The frequency in hertz.
///
/// - Returns: The measurement of the provided frequency.
///
	public static func hertz(_ value: Value) -> Self {
		Self(value, unit: .hertz)
	}

/// Initialize the measurement from a frequency in kilohertz.
///
/// - Parameters:
///   - value: The frequency in kilohertz.
///
/// - Returns: The measurement of the provided frequency.
///
	public static func kilohertz(_ value: Value) -> Self {
		Self(value, unit: .kilohertz)
	}

/// Initialize the measurement from a frequency in megahertz.
///
/// - Parameters:
///   - value: The frequency in megahertz.
///
/// - Returns: The measurement of the provided frequency.
///
	public static func megahertz(_ value: Value) -> Self {
		Self(value, unit: .megahertz)
	}

/// Initialize the measurement from a frequency in microhertz.
///
/// - Parameters:
///   - value: The frequency in microhertz.
///
/// - Returns: The measurement of the provided frequency.
///
	public static func microhertz(_ value: Value) -> Self {
		Self(value, unit: .microhertz)
	}

/// Initialize the measurement from a frequency in millihertz.
///
/// - Parameters:
///   - value: The frequency in millihertz.
///
/// - Returns: The measurement of the provided frequency.
///
	public static func millihertz(_ value: Value) -> Self {
		Self(value, unit: .millihertz)
	}

/// Initialize the measurement from a frequency in nanohertz.
///
/// - Parameters:
///   - value: The frequency in nanohertz.
///
/// - Returns: The measurement of the provided frequency.
///
	public static func nanohertz(_ value: Value) -> Self {
		Self(value, unit: .nanohertz)
	}

/// Initialize the measurement from a frequency in terahertz.
///
/// - Parameters:
///   - value: The frequency in terahertz.
///
/// - Returns: The measurement of the provided frequency.
///
	public static func terahertz(_ value: Value) -> Self {
		Self(value, unit: .terahertz)
	}

/// The measurement in frames per second.
///
	public var framesPerSecond: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .framesPerSecond)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .framesPerSecond, to: .base)
		}
	}

/// The measurement in gigahertz.
///
	public var gigahertz: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .gigahertz)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .gigahertz, to: .base)
		}
	}

/// The measurement in hertz.
///
	public var hertz: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .hertz)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .hertz, to: .base)
		}
	}

/// The measurement in kilohertz.
///
	public var kilohertz: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .kilohertz)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .kilohertz, to: .base)
		}
	}

/// The measurement in megahertz.
///
	public var megahertz: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .megahertz)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .megahertz, to: .base)
		}
	}

/// The measurement in microhertz.
///
	public var microhertz: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .microhertz)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .microhertz, to: .base)
		}
	}

/// The measurement in millihertz.
///
	public var millihertz: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .millihertz)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .millihertz, to: .base)
		}
	}

/// The measurement in nanohertz.
///
	public var nanohertz: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .nanohertz)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .nanohertz, to: .base)
		}
	}

/// The measurement in terahertz.
///
	public var terahertz: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .terahertz)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .terahertz, to: .base)
		}
	}

/// Initialize the measurement from frames per second.
///
/// - Parameters:
///   - value: The Frequency in frames per second.
///
	public init(framesPerSecond value: Value) {
		self = Frequency(value, unit: .framesPerSecond)
	}

/// Initialize the measurement from gigahertz.
///
/// - Parameters:
///   - value: The Frequency in gigahertz.
///
	public init(gigahertz value: Value) {
		self = Frequency(value, unit: .gigahertz)
	}

/// Initialize the measurement from hertz.
///
/// - Parameters:
///   - value: The Frequency in hertz.
///
	public init(hertz value: Value) {
		self = Frequency(value, unit: .hertz)
	}

/// Initialize the measurement from kilohertz.
///
/// - Parameters:
///   - value: The Frequency in kilohertz.
///
	public init(kilohertz value: Value) {
		self = Frequency(value, unit: .kilohertz)
	}

/// Initialize the measurement from megahertz.
///
/// - Parameters:
///   - value: The Frequency in megahertz.
///
	public init(megahertz value: Value) {
		self = Frequency(value, unit: .megahertz)
	}

/// Initialize the measurement from microhertz.
///
/// - Parameters:
///   - value: The Frequency in microhertz.
///
	public init(microhertz value: Value) {
		self = Frequency(value, unit: .microhertz)
	}

/// Initialize the measurement from millihertz.
///
/// - Parameters:
///   - value: The Frequency in millihertz.
///
	public init(millihertz value: Value) {
		self = Frequency(value, unit: .millihertz)
	}

/// Initialize the measurement from nanohertz.
///
/// - Parameters:
///   - value: The Frequency in nanohertz.
///
	public init(nanohertz value: Value) {
		self = Frequency(value, unit: .nanohertz)
	}

/// Initialize the measurement from terahertz.
///
/// - Parameters:
///   - value: The Frequency in terahertz.
///
	public init(terahertz value: Value) {
		self = Frequency(value, unit: .terahertz)
	}
}

extension Frequency: Codable where Value: Codable {

}

extension Frequency: Comparable where Value: Comparable {
	public static func < (lhs: Frequency<T>, rhs: Frequency<T>) -> Bool {
		lhs.value < rhs.value
	}
}

extension Frequency: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Frequency: Measurement {
	public init(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
	
	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
}

extension Frequency: Sendable where Value: Sendable {

}

