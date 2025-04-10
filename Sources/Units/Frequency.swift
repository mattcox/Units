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
/// units.
///
public struct Frequency<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One frame per second (fps) means one image or frame is displayed
	/// each second, commonly used in video and animation.
	///
		case framesPerSecond
		
	/// One gigahertz is 1,000,000,000 hertz, often used to measure
	/// processor or signal frequencies.
	///
		case gigahertz
	
	/// One hertz represents one cycle per second and is the base unit of
	/// frequency.
	///
		case hertz
		
	/// One kilohertz is 1,000 hertz, commonly used for audio and
	/// communication signals.
	///
		case kilohertz
		
	/// One megahertz is 1,000,000 hertz, often used to describe radio and
	/// CPU clock speeds.
	///
		case megahertz
		
	/// One microhertz is one millionth (1⁄1,000,000) of a hertz, meaning
	/// one cycle every 11.6 days.
	///
		case microhertz
		
	/// One millihertz is one thousandth (1⁄1,000) of a hertz, or one cycle
	/// every 1,000 seconds (about 16.7 minutes).
	///
		case millihertz
		
	/// One nanohertz is one billionth (1⁄1,000,000,000) of a hertz, or one
	/// cycle every 31.7 years.
	///
		case nanohertz
		
	/// One terahertz is 1,000,000,000,000 hertz, used for extremely
	/// high-frequency signals like infrared radiation.
	///
		case terahertz
		
		public static var base: Self {
			.hertz
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .framesPerSecond:
					"fps"

				case .gigahertz:
					"GHz"

				case .hertz:
					"Hz"

				case .kilohertz:
					"kHz"

				case .megahertz:
					"MHz"

				case .microhertz:
					"µHz"

				case .millihertz:
					"mHz"

				case .nanohertz:
					"nHz"

				case .terahertz:
					"THz"
			}
		}
		
		public var coefficient: Value {
			switch self {
				case .framesPerSecond:
					1.0

				case .gigahertz:
					1000000000.0

				case .hertz:
					1.0

				case .kilohertz:
					1000.0

				case .megahertz:
					1000000.0

				case .microhertz:
					1e-06

				case .millihertz:
					0.001

				case .nanohertz:
					1e-09

				case .terahertz:
					1000000000000.0
			}
		}
	}
	
	private(set) public var value: Value
}

extension Frequency {
/// Initialize the frequency from a value in frames per second.
///
/// One frame per second (fps) means one image or frame is displayed each
/// second, commonly used in video and animation.
///
/// - Parameters:
///   - value: The frequency in frames per second.
///
/// - Returns: The measurement representing the provided frequency.
///
	public static func framesPerSecond(_ value: Value) -> Self {
		Self(value, unit: .framesPerSecond)
	}

/// Initialize the frequency from a value in gigahertz.
///
/// One gigahertz is 1,000,000,000 hertz, often used to measure processor
/// or signal frequencies.
///
/// - Parameters:
///   - value: The frequency in gigahertz.
///
/// - Returns: The measurement representing the provided frequency.
///
	public static func gigahertz(_ value: Value) -> Self {
		Self(value, unit: .gigahertz)
	}

/// Initialize the frequency from a value in hertz.
///
/// One hertz represents one cycle per second and is the base unit of
/// frequency.
///
/// - Parameters:
///   - value: The frequency in hertz.
///
/// - Returns: The measurement representing the provided frequency.
///
	public static func hertz(_ value: Value) -> Self {
		Self(value, unit: .hertz)
	}

/// Initialize the frequency from a value in kilohertz.
///
/// One kilohertz is 1,000 hertz, commonly used for audio and communication
/// signals.
///
/// - Parameters:
///   - value: The frequency in kilohertz.
///
/// - Returns: The measurement representing the provided frequency.
///
	public static func kilohertz(_ value: Value) -> Self {
		Self(value, unit: .kilohertz)
	}

/// Initialize the frequency from a value in megahertz.
///
/// One megahertz is 1,000,000 hertz, often used to describe radio and CPU
/// clock speeds.
///
/// - Parameters:
///   - value: The frequency in megahertz.
///
/// - Returns: The measurement representing the provided frequency.
///
	public static func megahertz(_ value: Value) -> Self {
		Self(value, unit: .megahertz)
	}

/// Initialize the frequency from a value in microhertz.
///
/// One microhertz is one millionth (1⁄1,000,000) of a hertz, meaning one
/// cycle every 11.6 days.
///
/// - Parameters:
///   - value: The frequency in microhertz.
///
/// - Returns: The measurement representing the provided frequency.
///
	public static func microhertz(_ value: Value) -> Self {
		Self(value, unit: .microhertz)
	}

/// Initialize the frequency from a value in millihertz.
///
/// One millihertz is one thousandth (1⁄1,000) of a hertz, or one cycle
/// every 1,000 seconds (about 16.7 minutes).
///
/// - Parameters:
///   - value: The frequency in millihertz.
///
/// - Returns: The measurement representing the provided frequency.
///
	public static func millihertz(_ value: Value) -> Self {
		Self(value, unit: .millihertz)
	}

/// Initialize the frequency from a value in nanohertz.
///
/// One nanohertz is one billionth (1⁄1,000,000,000) of a hertz, or one
/// cycle every 31.7 years.
///
/// - Parameters:
///   - value: The frequency in nanohertz.
///
/// - Returns: The measurement representing the provided frequency.
///
	public static func nanohertz(_ value: Value) -> Self {
		Self(value, unit: .nanohertz)
	}

/// Initialize the frequency from a value in terahertz.
///
/// One terahertz is 1,000,000,000,000 hertz, used for extremely
/// high-frequency signals like infrared radiation.
///
/// - Parameters:
///   - value: The frequency in terahertz.
///
/// - Returns: The measurement representing the provided frequency.
///
	public static func terahertz(_ value: Value) -> Self {
		Self(value, unit: .terahertz)
	}

/// The frequency measured in frames per second.
///
/// One frame per second (fps) means one image or frame is displayed each
/// second, commonly used in video and animation.
///
	public var framesPerSecond: Value {
		get {
			self.get(unit: .framesPerSecond)
		}
		set {
			self.set(newValue, unit: .framesPerSecond)
		}
	}

/// The frequency measured in gigahertz.
///
/// One gigahertz is 1,000,000,000 hertz, often used to measure processor or
/// signal frequencies.
///
	public var gigahertz: Value {
		get {
			self.get(unit: .gigahertz)
		}
		set {
			self.set(newValue, unit: .gigahertz)
		}
	}

/// The frequency measured in hertz.
///
/// One hertz represents one cycle per second and is the base unit of
/// frequency.
///
	public var hertz: Value {
		get {
			self.get(unit: .hertz)
		}
		set {
			self.set(newValue, unit: .hertz)
		}
	}

/// The frequency measured in kilohertz.
///
/// One kilohertz is 1,000 hertz, commonly used for audio and communication
/// signals.
///
	public var kilohertz: Value {
		get {
			self.get(unit: .kilohertz)
		}
		set {
			self.set(newValue, unit: .kilohertz)
		}
	}

/// The frequency measured in megahertz.
///
/// One megahertz is 1,000,000 hertz, often used to describe radio and CPU
/// clock speeds.
///
	public var megahertz: Value {
		get {
			self.get(unit: .megahertz)
		}
		set {
			self.set(newValue, unit: .megahertz)
		}
	}

/// The frequency measured in microhertz.
///
/// One microhertz is one millionth (1⁄1,000,000) of a hertz, meaning one
/// cycle every 11.6 days.
///
	public var microhertz: Value {
		get {
			self.get(unit: .microhertz)
		}
		set {
			self.set(newValue, unit: .microhertz)
		}
	}

/// The frequency measured in millihertz.
///
/// One millihertz is one thousandth (1⁄1,000) of a hertz, or one cycle
/// every 1,000 seconds (about 16.7 minutes).
///
	public var millihertz: Value {
		get {
			self.get(unit: .millihertz)
		}
		set {
			self.set(newValue, unit: .millihertz)
		}
	}

/// The frequency measured in nanohertz.
///
/// One nanohertz is one billionth (1⁄1,000,000,000) of a hertz, or one
/// cycle every 31.7 years.
///
	public var nanohertz: Value {
		get {
			self.get(unit: .nanohertz)
		}
		set {
			self.set(newValue, unit: .nanohertz)
		}
	}

/// The frequency measured in terahertz.
///
/// One terahertz is 1,000,000,000,000 hertz, used for extremely
/// signals like infrared radiation.
///
	public var terahertz: Value {
		get {
			self.get(unit: .terahertz)
		}
		set {
			self.set(newValue, unit: .terahertz)
		}
	}

/// Initialize the measurement from a frequency measured in frames per
/// second.
///
/// One frame per second (fps) means one image or frame is displayed each
/// second, commonly used in video and animation.
///
/// - Parameters:
///   - value: The frequency measured in frames per second.
///
	public init(framesPerSecond value: Value) {
		self = Frequency(value, unit: .framesPerSecond)
	}

/// Initialize the measurement from a frequency measured in gigahertz.
///
/// One gigahertz is 1,000,000,000 hertz, often used to measure processor
/// or signal frequencies.
///
/// - Parameters:
///   - value: The frequency measured in gigahertz.
///
	public init(gigahertz value: Value) {
		self = Frequency(value, unit: .gigahertz)
	}

/// Initialize the measurement from a frequency measured in hertz.
///
/// One hertz represents one cycle per second and is the base unit of
/// frequency.
///
/// - Parameters:
///   - value: The frequency measured in hertz.
///
	public init(hertz value: Value) {
		self = Frequency(value, unit: .hertz)
	}

/// Initialize the measurement from a frequency measured in kilohertz.
///
/// One kilohertz is 1,000 hertz, commonly used for audio and communication
/// signals.
///
/// - Parameters:
///   - value: The frequency measured in kilohertz.
///
	public init(kilohertz value: Value) {
		self = Frequency(value, unit: .kilohertz)
	}

/// Initialize the measurement from a frequency measured in megahertz.
///
/// One megahertz is 1,000,000 hertz, often used to describe radio and CPU
/// clock speeds.
///
/// - Parameters:
///   - value: The frequency measured in megahertz.
///
	public init(megahertz value: Value) {
		self = Frequency(value, unit: .megahertz)
	}

/// Initialize the measurement from a frequency measured in microhertz.
///
/// One microhertz is one millionth (1⁄1,000,000) of a hertz, meaning one
/// cycle every 11.6 days.
///
/// - Parameters:
///   - value: The frequency measured in microhertz.
///
	public init(microhertz value: Value) {
		self = Frequency(value, unit: .microhertz)
	}

/// Initialize the measurement from a frequency measured in millihertz.
///
/// One millihertz is one thousandth (1⁄1,000) of a hertz, or one cycle
/// every 1,000 seconds (about 16.7 minutes).
///
/// - Parameters:
///   - value: The frequency measured in millihertz.
///
	public init(millihertz value: Value) {
		self = Frequency(value, unit: .millihertz)
	}

/// Initialize the measurement from a frequency measured in nanohertz.
///
/// One nanohertz is one billionth (1⁄1,000,000,000) of a hertz, or one
/// cycle every 31.7 years.
///
/// - Parameters:
///   - value: The frequency measured in nanohertz.
///
	public init(nanohertz value: Value) {
		self = Frequency(value, unit: .nanohertz)
	}

/// Initialize the measurement from a frequency measured in terahertz.
///
/// One terahertz is 1,000,000,000,000 hertz, used for extremely
/// high-frequency signals like infrared radiation.
///
/// - Parameters:
///   - value: The frequency measured in terahertz.
///
	public init(terahertz value: Value) {
		self = Frequency(value, unit: .terahertz)
	}
}

extension Frequency: Codable where Value: Codable {

}

extension Frequency: Comparable where Value: Comparable {
	public static func < (lhs: Self, rhs: Self) -> Bool {
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
	
	public func get(unit: MeasurementUnit) -> Value {
		MeasurementUnit.convert(value: self.value, from: .base, to: unit)
	}
}

extension Frequency: Sendable where Value: Sendable {

}
