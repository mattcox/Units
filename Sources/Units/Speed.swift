//
//  Speed.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A type representing speed in various forms.
///
/// Speed is a scalar value, representing a distance travelled over a period of
/// time.
///
/// Speeds are stored as `metersPerSecond`, however they can be read and written
/// in various types.
///

/// An measurement representing the distance travelled over a period of time.
///
/// Speed is stored as meters per second, however it can be read and written in
/// various units representing speed.
///
public struct Speed<T: BinaryFloatingPoint> {
	public enum MeasurementUnit: Unit {
		public typealias Value = T
		
		case kilometersPerHour
		case knots
		case metersPerSecond
		case milesPerHour
		
		public static var base: Self {
			.metersPerSecond
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .kilometersPerHour:
					return "km/h"

				case .knots:
					return "kn"

				case .metersPerSecond:
					return "m/s"

				case .milesPerHour:
					return "mph"
			}
		}
		
		public static func convert(value: Value, from: Speed<Value>.MeasurementUnit, to: Speed<Value>.MeasurementUnit) -> Value {
			guard from != to else {
				return value
			}
			
			let base: T = {
				switch from {
					case .kilometersPerHour:
						value * 0.277778

					case .knots:
						value * 0.514444

					case .metersPerSecond:
						value * 1.0

					case .milesPerHour:
						value * 0.44704
				}
			}()

			switch to {
				case .kilometersPerHour:
					return base * 3.5999971200023038

				case .knots:
					return base * 1.9438461717893492

				case .metersPerSecond:
					return base * 1.0

				case .milesPerHour:
					return base * 2.2369362920544025
			}
		}
	}
	
	private(set) public var value: T
}

extension Speed {
/// Initialize the measurement from an speed in kilometers per hour.
///
/// - Parameters:
///   - value: The speed in kilometers per hour.
///
/// - Returns: The measurement of the provided speed.
///
	public static func kilometersPerHour(_ value: Value) -> Self {
		Self(value, unit: .kilometersPerHour)
	}

/// Initialize the measurement from an speed in knots.
///
/// - Parameters:
///   - value: The speed in knots.
///
/// - Returns: The measurement of the provided speed.
///
	public static func knots(_ value: Value) -> Self {
		Self(value, unit: .knots)
	}

/// Initialize the measurement from an speed in meters per second.
///
/// - Parameters:
///   - value: The speed in meters per second.
///
/// - Returns: The measurement of the provided speed.
///
	public static func metersPerSecond(_ value: Value) -> Self {
		Self(value, unit: .metersPerSecond)
	}

/// Initialize the measurement from an speed in miles per hour.
///
/// - Parameters:
///   - value: The speed in miles per hour.
///
/// - Returns: The measurement of the provided speed.
///
	public static func milesPerHour(_ value: Value) -> Self {
		Self(value, unit: .milesPerHour)
	}

/// The measurement in kilometers per hour.
///
	public var kilometersPerHour: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .kilometersPerHour)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .kilometersPerHour, to: .base)
		}
	}

/// The measurement in knots.
///
	public var knots: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .knots)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .knots, to: .base)
		}
	}

/// The measurement in meters per second.
///
	public var metersPerSecond: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .metersPerSecond)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .metersPerSecond, to: .base)
		}
	}

/// The measurement in miles per hour.
///
	public var milesPerHour: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .milesPerHour)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .milesPerHour, to: .base)
		}
	}

/// Initialize the measurement from kilometers per hour.
///
/// - Parameters:
///   - value: The speed in kilometers per hour.
///
	public init(kilometersPerHour value: Value) {
		self = Speed(value, unit: .kilometersPerHour)
	}

/// Initialize the measurement from knots.
///
/// - Parameters:
///   - value: The speed in knots.
///
	public init(knots value: Value) {
		self = Speed(value, unit: .knots)
	}

/// Initialize the measurement from meters per second.
///
/// - Parameters:
///   - value: The speed in meters per second.
///
	public init(metersPerSecond value: Value) {
		self = Speed(value, unit: .metersPerSecond)
	}

/// Initialize the measurement from miles per hour.
///
/// - Parameters:
///   - value: The speed in miles per hour.
///
	public init(milesPerHour value: Value) {
		self = Speed(value, unit: .milesPerHour)
	}
}

extension Speed: Codable where Value: Codable {

}

extension Speed: Comparable where Value: Comparable {
	public static func < (lhs: Speed<T>, rhs: Speed<T>) -> Bool {
		lhs.value < rhs.value
	}
}

extension Speed: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Speed: Measurement {
	public init(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
	
	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
}

extension Speed: Sendable where Value: Sendable {

}
