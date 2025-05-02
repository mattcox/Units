//
//  Speed.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the rate of change of position over time.
///
/// Speed is stored as meters per second, however it can be read and written in
/// various units.
///
public struct Speed<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One kilometer per hour is the speed of traveling 1 kilometer in 1
	/// hour, equal to about 0.278 meters per second or 0.621 miles per
	/// hour.
	///
		case kilometersPerHour
		
	/// One knot is one nautical mile per hour, equal to 1.852 kilometers
	/// per hour or about 1.151 miles per hour.
	///
		case knots
		
	/// One meter per second is the speed of moving 1 meter each second,
	/// equal to 3.6 kilometers per hour or about 2.237 miles per hour.
	///
		case metersPerSecond
		
	/// One mile per hour is the speed of traveling 1 mile in 1 hour, equal
	/// to about 1.609 kilometers per hour or 0.447 meters per second.
	///
		case milesPerHour
		
		public static var base: Self {
			.metersPerSecond
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .kilometersPerHour:
					"km/h"

				case .knots:
					"kn"

				case .metersPerSecond:
					"m/s"

				case .milesPerHour:
					"mph"
			}
		}
		
		public var coefficient: Value {
			switch self {
				case .kilometersPerHour:
					0.277778

				case .knots:
					0.514444

				case .metersPerSecond:
					1.0

				case .milesPerHour:
					0.44704
			}
		}
	}
	
	private(set) public var value: Value
}

extension Speed {
/// Initialize the speed using a value in kilometers per hour.
///
/// One kilometer per hour is the speed of traveling 1 kilometer in 1 hour,
/// equal to about 0.278 meters per second or 0.621 miles per hour.
///
/// - Parameters:
///   - value: The speed in kilometers per hour.
///
/// - Returns: The measurement representing the provided speed.
///
	public static func kilometersPerHour(_ value: Value) -> Self {
		Self(value, unit: .kilometersPerHour)
	}

/// Initialize the speed using a value in knots.
///
/// One knot is one nautical mile per hour, equal to 1.852 kilometers per
/// hour or about 1.151 miles per hour.
///
/// - Parameters:
///   - value: The speed in knots.
///
/// - Returns: The measurement representing the provided speed.
///
	public static func knots(_ value: Value) -> Self {
		Self(value, unit: .knots)
	}

/// Initialize the speed using a value in meters per second.
///
/// One meter per second is the speed of moving 1 meter each second, equal
/// to 3.6 kilometers per hour or about 2.237 miles per hour.
///
/// - Parameters:
///   - value: The speed in meters per second.
///
/// - Returns: The measurement representing the provided speed.
///
	public static func metersPerSecond(_ value: Value) -> Self {
		Self(value, unit: .metersPerSecond)
	}

/// Initialize the speed using a value in miles per hour.
///
/// One mile per hour is the speed of traveling 1 mile in 1 hour, equal to
/// about 1.609 kilometers per hour or 0.447 meters per second.
///
/// - Parameters:
///   - value: The speed in miles per hour.
///
/// - Returns: The measurement representing the provided speed.
///
	public static func milesPerHour(_ value: Value) -> Self {
		Self(value, unit: .milesPerHour)
	}

/// The speed measured in kilometers per hour.
///
/// One kilometer per hour is the speed of traveling 1 kilometer in 1 hour,
/// equal to about 0.278 meters per second or 0.621 miles per hour.
///
	public var kilometersPerHour: Value {
		get {
			self.get(unit: .kilometersPerHour)
		}
		set {
			self.set(newValue, unit: .kilometersPerHour)
		}
	}

/// The speed measured in knots.
///
/// One knot is one nautical mile per hour, equal to 1.852 kilometers per
/// hour or about 1.151 miles per hour.
///
	public var knots: Value {
		get {
			self.get(unit: .knots)
		}
		set {
			self.set(newValue, unit: .knots)
		}
	}

/// The speed measured in meters per second.
///
/// One meter per second is the speed of moving 1 meter each second, equal
/// to 3.6 kilometers per hour or about 2.237 miles per hour.
///
	public var metersPerSecond: Value {
		get {
			self.get(unit: .metersPerSecond)
		}
		set {
			self.set(newValue, unit: .metersPerSecond)
		}
	}

/// The speed measured in miles per hour.
///
/// One mile per hour is the speed of traveling 1 mile in 1 hour, equal to
/// about 1.609 kilometers per hour or 0.447 meters per second.
///
	public var milesPerHour: Value {
		get {
			self.get(unit: .milesPerHour)
		}
		set {
			self.set(newValue, unit: .milesPerHour)
		}
	}

/// Initialize the measurement from a speed measured in kilometers per
/// hour.
///
/// One kilometer per hour is the speed of traveling 1 kilometer in 1 hour,
/// equal to about 0.278 meters per second or 0.621 miles per hour.
///
/// - Parameters:
///   - value: The speed measured in kilometers per hour.
///
	public init(kilometersPerHour value: Value) {
		self = Self(value, unit: .kilometersPerHour)
	}

/// Initialize the measurement from a speed measured in knots.
///
/// One knot is one nautical mile per hour, equal to 1.852 kilometers per
/// hour or about 1.151 miles per hour.
///
/// - Parameters:
///   - value: The speed measured in knots.
///
	public init(knots value: Value) {
		self = Self(value, unit: .knots)
	}

/// Initialize the measurement from a speed measured in meters per second.
///
/// One meter per second is the speed of moving 1 meter each second, equal
/// to 3.6 kilometers per hour or about 2.237 miles per hour.
///
/// - Parameters:
///   - value: The speed measured in meters per second.
///
	public init(metersPerSecond value: Value) {
		self = Self(value, unit: .metersPerSecond)
	}

/// Initialize the measurement from a speed measured in miles per hour.
///
/// One mile per hour is the speed of traveling 1 mile in 1 hour, equal to
/// about 1.609 kilometers per hour or 0.447 meters per second.
///
///
/// - Parameters:
///   - value: The speed measured in miles per hour.
///
	public init(milesPerHour value: Value) {
		self = Self(value, unit: .milesPerHour)
	}
}

extension Speed: Codable where Value: Codable {

}

extension Speed: Comparable where Value: Comparable {
	
}

extension Speed: Equatable {
	
}

extension Speed: MeasurementBinaryFloatingPoint {
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

extension Speed: Sendable where Value: Sendable {

}
