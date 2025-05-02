//
//  Velocity.swift
//  Units
//
//  Created by Matt Cox on 21/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the rate of change of position over time.
///
/// This is similar to speed, but is extended into N dimensions.
///
/// Velocity is stored as meters per second, however it can be read and written in
/// various units.
///
public struct Velocity<Value: SIMD> where Value.Scalar: BinaryFloatingPoint {
	public typealias MeasurementUnit = Scalar.MeasurementUnit
	
	private(set) public var value: Value
}

extension Velocity {
/// Initialize the velocity using a value in kilometers per hour.
///
/// One kilometer per hour is the velocity of traveling 1 kilometer in
/// 1 hour, equal to about 0.278 meters per second or 0.621 miles per hour.
///
/// - Parameters:
///   - value: The velocity in kilometers per hour.
///
/// - Returns: The measurement representing the provided velocity.
///
	public static func kilometersPerHour(_ value: Value) -> Self {
		Self(value, unit: .kilometersPerHour)
	}

/// Initialize the velocity using a value in knots.
///
/// One knot is one nautical mile per hour, equal to 1.852 kilometers per
/// hour or about 1.151 miles per hour.
///
/// - Parameters:
///   - value: The velocity in knots.
///
/// - Returns: The measurement representing the provided velocity.
///
	public static func knots(_ value: Value) -> Self {
		Self(value, unit: .knots)
	}

/// Initialize the velocity using a value in meters per second.
///
/// One meter per second is the velocity of moving 1 meter each second,
/// equal to 3.6 kilometers per hour or about 2.237 miles per hour.
///
/// - Parameters:
///   - value: The velocity in meters per second.
///
/// - Returns: The measurement representing the provided velocity.
///
	public static func metersPerSecond(_ value: Value) -> Self {
		Self(value, unit: .metersPerSecond)
	}

/// Initialize the velocity using a value in miles per hour.
///
/// One mile per hour is the velocity of traveling 1 mile in 1 hour, equal
/// to about 1.609 kilometers per hour or 0.447 meters per second.
///
/// - Parameters:
///   - value: The velocity in miles per hour.
///
/// - Returns: The measurement representing the provided velocity.
///
	public static func milesPerHour(_ value: Value) -> Self {
		Self(value, unit: .milesPerHour)
	}

/// The velocity measured in kilometers per hour.
///
/// One kilometer per hour is the velocity of traveling 1 kilometer in 1 hour,
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

/// The velocity measured in knots.
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

/// The velocity measured in meters per second.
///
/// One meter per second is the velocity of moving 1 meter each second,
/// equal to 3.6 kilometers per hour or about 2.237 miles per hour.
///
	public var metersPerSecond: Value {
		get {
			self.get(unit: .metersPerSecond)
		}
		set {
			self.set(newValue, unit: .metersPerSecond)
		}
	}

/// The velocity measured in miles per hour.
///
/// One mile per hour is the velocity of traveling 1 mile in 1 hour, equal
/// to about 1.609 kilometers per hour or 0.447 meters per second.
///
	public var milesPerHour: Value {
		get {
			self.get(unit: .milesPerHour)
		}
		set {
			self.set(newValue, unit: .milesPerHour)
		}
	}

/// Initialize the measurement from a velocity measured in kilometers per
/// hour.
///
/// One kilometer per hour is the velocity of traveling 1 kilometer in 1
/// hour, equal to about 0.278 meters per second or 0.621 miles per hour.
///
/// - Parameters:
///   - value: The velocity measured in kilometers per hour.
///
	public init(kilometersPerHour value: Value) {
		self = Self(value, unit: .kilometersPerHour)
	}

/// Initialize the measurement from a velocity measured in knots.
///
/// One knot is one nautical mile per hour, equal to 1.852 kilometers per
/// hour or about 1.151 miles per hour.
///
/// - Parameters:
///   - value: The velocity measured in knots.
///
	public init(knots value: Value) {
		self = Self(value, unit: .knots)
	}

/// Initialize the measurement from a velocity measured in meters per
/// second.
///
/// One meter per second is the velocity of moving 1 meter each second,
/// equal to 3.6 kilometers per hour or about 2.237 miles per hour.
///
/// - Parameters:
///   - value: The velocity measured in meters per second.
///
	public init(metersPerSecond value: Value) {
		self = Self(value, unit: .metersPerSecond)
	}

/// Initialize the measurement from a velocity measured in miles per hour.
///
/// One mile per hour is the velocity of traveling 1 mile in 1 hour, equal
/// to about 1.609 kilometers per hour or 0.447 meters per second.
///
///
/// - Parameters:
///   - value: The velocity measured in miles per hour.
///
	public init(milesPerHour value: Value) {
		self = Self(value, unit: .milesPerHour)
	}
}

extension Velocity: Codable where Value: Codable {

}

extension Velocity: Comparable where Value: Comparable {
	public static func < (lhs: Self, rhs: Self) -> Bool {
		lhs.value < rhs.value
	}
}

extension Velocity: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Velocity: MeasurementVector {
	public typealias Scalar = Speed<Value.Scalar>

	public static var zero: Self {
		Self(.zero, unit: .base)
	}
	
	public init(_ value: Value, unit: MeasurementUnit) {
		var vector = Self.Value.zero
		for i in 0..<Self.Value.scalarCount {
			vector[i] = MeasurementUnit.convert(value: value[i], from: unit, to: .base)
		}
		self.value = vector
	}

	public subscript(_ index: Int) -> Scalar {
		get {
			Scalar(value[index], unit: .base)
		}
		set {
			self.value[index] = newValue.value
		}
	}

	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		for i in 0..<Self.Value.scalarCount {
			self.value[i] = MeasurementUnit.convert(value: value[i], from: unit, to: .base)
		}
	}

	public func get(unit: MeasurementUnit) -> Value {
		var vector = Self.Value.zero
		for i in 0..<Self.Value.scalarCount {
			vector[i] = MeasurementUnit.convert(value: value[i], from: .base, to: unit)
		}
		return vector
	}
}

extension Velocity: Sendable where Value: Sendable {

}
