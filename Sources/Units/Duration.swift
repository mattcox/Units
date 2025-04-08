//
//  Duration.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the amount of time that passes between two
/// events or moments.
///
/// Duration is stored as seconds, however it can be read and written in
/// various units.
///
public struct Duration<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One day contains 24 hours or 86,400 seconds.
	///
		case days
		
	/// One hour contains 60 minutes or 3,600 seconds.
	///
		case hours
		
	/// One microsecond is one millionth (1⁄1,000,000) of a second, or
	/// 1,000 nanoseconds.
	///
		case microseconds
	
	/// One millisecond is one thousandth (1⁄1,000) of a second, or 1,000
	/// microseconds.
	///
		case milliseconds
		
	/// One minute contains 60 seconds and there are 1,440 minutes in a day.
	///
		case minutes
		
	/// One nanosecond is one billionth (1⁄1,000,000,000) of a second, or
	/// 1⁄1,000 of a microsecond.
	///
		case nanoseconds
		
	/// One picosecond is one trillionth (1⁄1,000,000,000,000) of a second,
	/// or 1⁄1,000 of a nanosecond.
	///
		case picoseconds
		
	/// One second contains 1,000 milliseconds or 1,000,000 microseconds.
	///
		case seconds
		
		public static var base: Self {
			.seconds
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .days:
					(value.magnitude == 1) ? "day" : "days"
			
				case .hours:
					"hr"

				case .microseconds:
					"µs"

				case .milliseconds:
					"ms"

				case .minutes:
					"min"

				case .nanoseconds:
					"ns"

				case .picoseconds:
					"ps"

				case .seconds:
					"s"
			}
		}
		
		public var coefficient: Value {
			switch self {
				case .days:
					86400.0
			
				case .hours:
					3600.0

				case .microseconds:
					1e-06

				case .milliseconds:
					0.001

				case .minutes:
					60.0

				case .nanoseconds:
					1e-09

				case .picoseconds:
					1e-12

				case .seconds:
					1.0
			}
		}
	}
	
	private(set) public var value: Value
}

extension Duration {
/// Initialize the duration from a value in days.
///
/// One day contains 24 hours or 86,400 seconds.
///
/// - Parameters:
///   - value: The duration in days.
///
/// - Returns: The measurement representing the provided duration.
///
	public static func days(_ value: Value) -> Self {
		Self(value, unit: .days)
	}

/// Initialize the duration from a value in hours.
///
/// One hour contains 60 minutes or 3,600 seconds.
///
/// - Parameters:
///   - value: The duration in hours.
///
/// - Returns: The measurement representing the provided duration.
///
	public static func hours(_ value: Value) -> Self {
		Self(value, unit: .hours)
	}

/// Initialize the duration from a value in microseconds.
///
/// One microsecond is one millionth (1⁄1,000,000) of a second, or 1,000
/// nanoseconds.
///
/// - Parameters:
///   - value: The duration in microseconds.
///
/// - Returns: The measurement representing the provided duration.
///
	public static func microseconds(_ value: Value) -> Self {
		Self(value, unit: .microseconds)
	}

/// Initialize the duration from a value in milliseconds.
///
/// One millisecond is one thousandth (1⁄1,000) of a second, or 1,000
/// microseconds.
///
/// - Parameters:
///   - value: The duration in milliseconds.
///
/// - Returns: The measurement representing the provided duration.
///
	public static func milliseconds(_ value: Value) -> Self {
		Self(value, unit: .milliseconds)
	}

/// Initialize the duration from a value in minutes.
///
/// One minute contains 60 seconds and there are 1,440 minutes in a day.
///
/// - Parameters:
///   - value: The duration in minutes.
///
/// - Returns: The measurement representing the provided duration.
///
	public static func minutes(_ value: Value) -> Self {
		Self(value, unit: .minutes)
	}

/// Initialize the duration from a value in nanoseconds.
///
/// One nanosecond is one billionth (1⁄1,000,000,000) of a second, or
/// 1⁄1,000 of a microsecond.
///
/// - Parameters:
///   - value: The duration in nanoseconds.
///
/// - Returns: The measurement representing the provided duration.
///
	public static func nanoseconds(_ value: Value) -> Self {
		Self(value, unit: .nanoseconds)
	}

/// Initialize the duration from a value in picoseconds.
///
/// One picosecond is one trillionth (1⁄1,000,000,000,000) of a second,
/// or 1⁄1,000 of a nanosecond.
///
/// - Parameters:
///   - value: The duration in picoseconds.
///
/// - Returns: The measurement representing the provided duration.
///
	public static func picoseconds(_ value: Value) -> Self {
		Self(value, unit: .picoseconds)
	}

/// Initialize the duration from a value in seconds.
///
/// One second contains 1,000 milliseconds or 1,000,000 microseconds.
///
/// - Parameters:
///   - value: The duration in seconds.
///
/// - Returns: The measurement representing the provided duration.
///
	public static func seconds(_ value: Value) -> Self {
		Self(value, unit: .seconds)
	}

/// The duration measured in days.
///
/// One day contains 24 hours or 86,400 seconds.
///
	public var days: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .days)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .days, to: .base)
		}
	}

/// The duration measured in hours.
///
/// One hour contains 60 minutes or 3,600 seconds.
///
	public var hours: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .hours)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .hours, to: .base)
		}
	}

/// The duration measured in microseconds.
///
/// One microsecond is one millionth (1⁄1,000,000) of a second, or 1,000
/// nanoseconds.
///
	public var microseconds: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .microseconds)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .microseconds, to: .base)
		}
	}

/// The duration measured in milliseconds.
///
/// One millisecond is one thousandth (1⁄1,000) of a second, or 1,000
/// microseconds.
///
	public var milliseconds: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .milliseconds)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .milliseconds, to: .base)
		}
	}

/// The duration measured in minutes.
///
/// One minute contains 60 seconds and there are 1,440 minutes in a day.
///
	public var minutes: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .minutes)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .minutes, to: .base)
		}
	}

/// The duration measured in nanoseconds.
///
/// One nanosecond is one billionth (1⁄1,000,000,000) of a second, or
/// 1⁄1,000 of a microsecond.
///
	public var nanoseconds: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .nanoseconds)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .nanoseconds, to: .base)
		}
	}

/// The duration measured in picoseconds.
///
/// One picosecond is one trillionth (1⁄1,000,000,000,000) of a second,
/// or 1⁄1,000 of a nanosecond.
///
	public var picoseconds: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .picoseconds)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .picoseconds, to: .base)
		}
	}

/// The duration measured in seconds.
///
/// One second contains 1,000 milliseconds or 1,000,000 microseconds.
///
	public var seconds: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .seconds)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .seconds, to: .base)
		}
	}

/// Initialize the measurement from a duration measured in days.
///
/// One day contains 24 hours or 86,400 seconds.
///
/// - Parameters:
///   - value: The duration measured in days.
///
	public init(days value: Value) {
		self = Duration(value, unit: .days)
	}

/// Initialize the measurement from a duration measured in hours.
///
/// One hour contains 60 minutes or 3,600 seconds.
///
/// - Parameters:
///   - value: The duration measured in hours.
///
	public init(hours value: Value) {
		self = Duration(value, unit: .hours)
	}

/// Initialize the measurement from a duration measured in microseconds.
///
/// One microsecond is one millionth (1⁄1,000,000) of a second, or 1,000
/// nanoseconds.
///
/// - Parameters:
///   - value: The duration measured in microseconds.
///
	public init(microseconds value: Value) {
		self = Duration(value, unit: .microseconds)
	}

/// Initialize the measurement from a duration measured in milliseconds.
///
/// One millisecond is one thousandth (1⁄1,000) of a second, or 1,000
/// microseconds.
///
/// - Parameters:
///   - value: The duration measured in milliseconds.
///
	public init(milliseconds value: Value) {
		self = Duration(value, unit: .milliseconds)
	}

/// Initialize the measurement from a duration measured in minutes.
///
/// One minute contains 60 seconds and there are 1,440 minutes in a day.
///
/// - Parameters:
///   - value: The duration measured in minutes.
///
	public init(minutes value: Value) {
		self = Duration(value, unit: .minutes)
	}

/// Initialize the measurement from a duration measured in nanoseconds.
///
/// One nanosecond is one billionth (1⁄1,000,000,000) of a second, or
/// 1⁄1,000 of a microsecond.
///
/// - Parameters:
///   - value: The duration measured in nanoseconds.
///
	public init(nanoseconds value: Value) {
		self = Duration(value, unit: .nanoseconds)
	}

/// Initialize the measurement from a duration measured in picoseconds.
///
/// One picosecond is one trillionth (1⁄1,000,000,000,000) of a second,
/// or 1⁄1,000 of a nanosecond.
///
/// - Parameters:
///   - value: The duration measured in picoseconds.
///
	public init(picoseconds value: Value) {
		self = Duration(value, unit: .picoseconds)
	}

/// Initialize the measurement from a duration measured in seconds.
///
/// One second contains 1,000 milliseconds or 1,000,000 microseconds.
///
/// - Parameters:
///   - value: The duration measured in seconds.
///
	public init(seconds value: Value) {
		self = Duration(value, unit: .seconds)
	}
}

extension Duration: Codable where Value: Codable {

}

extension Duration: Comparable where Value: Comparable {
	public static func < (lhs: Self, rhs: Self) -> Bool {
		lhs.value < rhs.value
	}
}

extension Duration: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Duration: Measurement {
	public init(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
	
	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
}

extension Duration: Sendable where Value: Sendable {

}
