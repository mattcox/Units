//
//  Duration.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// TODO: INSERT DOCSTRING HERE
///
public struct Duration<T: BinaryFloatingPoint> {
	public enum MeasurementUnit: Unit {
		public typealias Value = T
		
		case days
		case hours
		case microseconds
		case milliseconds
		case minutes
		case nanoseconds
		case picoseconds
		case seconds
		
		public static var base: Self {
			.seconds
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .days:
					return (value.magnitude == 1) ? "day" : "days"
			
				case .hours:
					return "hr"

				case .microseconds:
					return "µs"

				case .milliseconds:
					return "ms"

				case .minutes:
					return "min"

				case .nanoseconds:
					return "ns"

				case .picoseconds:
					return "ps"

				case .seconds:
					return "s"
			}
		}
		
		public static func convert(value: Value, from: Duration<Value>.MeasurementUnit, to: Duration<Value>.MeasurementUnit) -> Value {
			guard from != to else {
				return value
			}
			
			let base: T = {
				switch from {
					case .days:
						value * 86400.0
				
					case .hours:
						value * 3600.0

					case .microseconds:
						value * 1e-06

					case .milliseconds:
						value * 0.001

					case .minutes:
						value * 60.0

					case .nanoseconds:
						value * 1e-09

					case .picoseconds:
						value * 1e-12

					case .seconds:
						value * 1.0
				}
			}()

			switch to {
				case .days:
					return base * 1.1574074074074073e-05
			
				case .hours:
					return base * 0.0002777777777777778

				case .microseconds:
					return base * 1000000.0

				case .milliseconds:
					return base * 1000.0

				case .minutes:
					return base * 0.016666666666666666

				case .nanoseconds:
					return base * 999999999.9999999

				case .picoseconds:
					return base * 1000000000000.0

				case .seconds:
					return base * 1.0
			}
		}
	}
	
	private(set) public var value: T
}

extension Duration {
/// Initialize the measurement from a duration in days.
///
/// - Parameters:
///   - value: The duration in days.
///
/// - Returns: The measurement of the provided duration.
///
	public static func days(_ value: Value) -> Self {
		Self(value, unit: .days)
	}

/// Initialize the measurement from a duration in hours.
///
/// - Parameters:
///   - value: The duration in hours.
///
/// - Returns: The measurement of the provided duration.
///
	public static func hours(_ value: Value) -> Self {
		Self(value, unit: .hours)
	}

/// Initialize the measurement from a duration in microseconds.
///
/// - Parameters:
///   - value: The duration in microseconds.
///
/// - Returns: The measurement of the provided duration.
///
	public static func microseconds(_ value: Value) -> Self {
		Self(value, unit: .microseconds)
	}

/// Initialize the measurement from a duration in milliseconds.
///
/// - Parameters:
///   - value: The duration in milliseconds.
///
/// - Returns: The measurement of the provided duration.
///
	public static func milliseconds(_ value: Value) -> Self {
		Self(value, unit: .milliseconds)
	}

/// Initialize the measurement from a duration in minutes.
///
/// - Parameters:
///   - value: The duration in minutes.
///
/// - Returns: The measurement of the provided duration.
///
	public static func minutes(_ value: Value) -> Self {
		Self(value, unit: .minutes)
	}

/// Initialize the measurement from a duration in nanoseconds.
///
/// - Parameters:
///   - value: The duration in nanoseconds.
///
/// - Returns: The measurement of the provided duration.
///
	public static func nanoseconds(_ value: Value) -> Self {
		Self(value, unit: .nanoseconds)
	}

/// Initialize the measurement from a duration in picoseconds.
///
/// - Parameters:
///   - value: The duration in picoseconds.
///
/// - Returns: The measurement of the provided duration.
///
	public static func picoseconds(_ value: Value) -> Self {
		Self(value, unit: .picoseconds)
	}

/// Initialize the measurement from a duration in seconds.
///
/// - Parameters:
///   - value: The duration in seconds.
///
/// - Returns: The measurement of the provided duration.
///
	public static func seconds(_ value: Value) -> Self {
		Self(value, unit: .seconds)
	}

/// The measurement in days.
///
	public var days: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .days)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .days, to: .base)
		}
	}

/// The measurement in hours.
///
	public var hours: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .hours)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .hours, to: .base)
		}
	}

/// The measurement in microseconds.
///
	public var microseconds: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .microseconds)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .microseconds, to: .base)
		}
	}

/// The measurement in milliseconds.
///
	public var milliseconds: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .milliseconds)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .milliseconds, to: .base)
		}
	}

/// The measurement in minutes.
///
	public var minutes: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .minutes)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .minutes, to: .base)
		}
	}

/// The measurement in nanoseconds.
///
	public var nanoseconds: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .nanoseconds)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .nanoseconds, to: .base)
		}
	}

/// The measurement in picoseconds.
///
	public var picoseconds: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .picoseconds)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .picoseconds, to: .base)
		}
	}

/// The measurement in seconds.
///
	public var seconds: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .seconds)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .seconds, to: .base)
		}
	}

/// Initialize the measurement from days.
///
/// - Parameters:
///   - value: The duration in days.
///
	public init(days value: Value) {
		self = Duration(value, unit: .days)
	}

/// Initialize the measurement from hours.
///
/// - Parameters:
///   - value: The duration in hours.
///
	public init(hours value: Value) {
		self = Duration(value, unit: .hours)
	}

/// Initialize the measurement from microseconds.
///
/// - Parameters:
///   - value: The duration in microseconds.
///
	public init(microseconds value: Value) {
		self = Duration(value, unit: .microseconds)
	}

/// Initialize the measurement from milliseconds.
///
/// - Parameters:
///   - value: The duration in milliseconds.
///
	public init(milliseconds value: Value) {
		self = Duration(value, unit: .milliseconds)
	}

/// Initialize the measurement from minutes.
///
/// - Parameters:
///   - value: The duration in minutes.
///
	public init(minutes value: Value) {
		self = Duration(value, unit: .minutes)
	}

/// Initialize the measurement from nanoseconds.
///
/// - Parameters:
///   - value: The duration in nanoseconds.
///
	public init(nanoseconds value: Value) {
		self = Duration(value, unit: .nanoseconds)
	}

/// Initialize the measurement from picoseconds.
///
/// - Parameters:
///   - value: The duration in picoseconds.
///
	public init(picoseconds value: Value) {
		self = Duration(value, unit: .picoseconds)
	}

/// Initialize the measurement from seconds.
///
/// - Parameters:
///   - value: The duration in seconds.
///
	public init(seconds value: Value) {
		self = Duration(value, unit: .seconds)
	}
}

extension Duration: Codable where Value: Codable {

}

extension Duration: Comparable where Value: Comparable {
	public static func < (lhs: Duration<T>, rhs: Duration<T>) -> Bool {
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
