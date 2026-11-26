//
//  MeasurementArithmetic.swift
//  Units
//
//  Created by Matt Cox on 26/11/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

/// A measurement of a quantity that can be added, subtracted and scaled.
///
/// Most quantities behave this way. Two distances can be added to make a
/// longer one, a duration can be halved, and the difference between two masses
/// is itself a mass. The arithmetic provided here is exactly the arithmetic
/// whose result is the same kind of quantity:
///
/// - Adding and subtracting two measurements of the same kind.
/// - Multiplying and dividing by a plain number.
/// - Dividing one measurement by another of the same kind, which gives a plain
///   number — how many times one fits into the other.
/// - Scaling by a ``Percentage``.
///
/// ```swift
/// let total = Distance(kilometers: 2.0) + Distance(meters: 500.0)  // 2.5 km
/// let half = Power(kilowatts: 3.0) * 0.5                           // 1.5 kW
/// let laps = Distance(kilometers: 5.0) / Distance(meters: 400.0)   // 12.5
/// ```
///
/// > Multiplying two measurements does not give the same kind of measurement,
/// > so it is not provided here. Where a product means something — two
/// > distances making an area, power over a duration making energy — it is
/// > provided as its own operator, returning the measurement it actually is.
///
/// A quantity measured from an arbitrary zero, such as temperature, cannot be
/// added to itself, and conforms to ``MeasurementAffine`` instead.
///
public protocol MeasurementArithmetic: Measurement, AdditiveArithmetic where Value: FloatingPoint {

}

extension MeasurementArithmetic {
/// The measurement with a value of zero.
///
	public static var zero: Self {
		Self(.zero, unit: .base)
	}

/// The absolute size of the measurement.
///
	public var magnitude: Self {
		Self(value.magnitude, unit: .base)
	}

/// The sign of the measurement.
///
	public var sign: FloatingPointSign {
		value.sign
	}

/// Whether the measurement is zero.
///
	public var isZero: Bool {
		value.isZero
	}

/// Whether the measurement is finite.
///
	public var isFinite: Bool {
		value.isFinite
	}

/// Whether the measurement is infinite.
///
	public var isInfinite: Bool {
		value.isInfinite
	}

/// Whether the measurement is not a number.
///
	public var isNaN: Bool {
		value.isNaN
	}

/// The measurement rounded to a whole number of the specified unit.
///
/// Rounding depends on the unit it is done in, so the unit is stated rather
/// than assumed. A distance of 1,499 meters rounds to 1 kilometer, but to
/// 1,499 meters.
///
/// - Parameters:
///   - rule: The rounding rule to use.
///   - unit: The unit to round in.
///
/// - Returns: The rounded measurement.
///
	public func rounded(_ rule: FloatingPointRoundingRule = .toNearestOrAwayFromZero, in unit: MeasurementUnit = .base) -> Self {
		Self(get(unit: unit).rounded(rule), unit: unit)
	}

/// Adds two measurements.
///
	public static func + (lhs: Self, rhs: Self) -> Self {
		Self(lhs.value + rhs.value, unit: .base)
	}

/// Adds a measurement to another, in place.
///
	public static func += (lhs: inout Self, rhs: Self) {
		lhs = lhs + rhs
	}

/// Subtracts one measurement from another.
///
	public static func - (lhs: Self, rhs: Self) -> Self {
		Self(lhs.value - rhs.value, unit: .base)
	}

/// Subtracts a measurement from another, in place.
///
	public static func -= (lhs: inout Self, rhs: Self) {
		lhs = lhs - rhs
	}

/// Negates a measurement.
///
	public static prefix func - (measurement: Self) -> Self {
		Self(-measurement.value, unit: .base)
	}

/// Multiplies a measurement by a number.
///
	public static func * (lhs: Self, rhs: Value) -> Self {
		Self(lhs.value * rhs, unit: .base)
	}

/// Multiplies a number by a measurement.
///
	public static func * (lhs: Value, rhs: Self) -> Self {
		Self(lhs * rhs.value, unit: .base)
	}

/// Multiplies a measurement by a number, in place.
///
	public static func *= (lhs: inout Self, rhs: Value) {
		lhs = lhs * rhs
	}

/// Divides a measurement by a number.
///
	public static func / (lhs: Self, rhs: Value) -> Self {
		Self(lhs.value / rhs, unit: .base)
	}

/// Divides a measurement by a number, in place.
///
	public static func /= (lhs: inout Self, rhs: Value) {
		lhs = lhs / rhs
	}

/// Divides one measurement by another of the same kind.
///
/// The units cancel, so the result is a plain number: how many times the
/// second measurement fits into the first.
///
	public static func / (lhs: Self, rhs: Self) -> Value {
		lhs.value / rhs.value
	}

/// Whether one measurement is less than another.
///
	public static func < (lhs: Self, rhs: Self) -> Bool {
		lhs.value < rhs.value
	}
}

extension MeasurementArithmetic where Value: BinaryFloatingPoint {
/// Scales a measurement by a percentage.
///
/// Only the measurement on the left is provided. With both orders, scaling
/// one percentage by another would be ambiguous.
///
/// ```swift
/// let output = Power(kilowatts: 3.0) * .percent(50.0)  // 1.5 kW
/// ```
///
	public static func * (lhs: Self, rhs: Percentage<Value>) -> Self {
		Self(lhs.value * rhs.factor, unit: .base)
	}

/// Scales a measurement by a percentage, in place.
///
	public static func *= (lhs: inout Self, rhs: Percentage<Value>) {
		lhs = lhs * rhs
	}
}
