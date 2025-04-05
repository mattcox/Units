//
//  UnitArithmetic.swift
//  Units
//
//  Created by Matt Cox on 04/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

extension Measurement where Value: FloatingPoint {
/// Performs an addition operation, computing the sum of two measurements.
///
/// - Parameters:
///   - lhs: The first measurement in the addition operation.
///   - rhs: The second measurement in the addition operation.
///
/// - Returns: A measurement containing the result of the addition
/// operation.
///
	public static func + (lhs: Self, rhs: Self) -> Self {
		Self(lhs.value + rhs.value, unit: .base)
	}
	
/// Performs an addition operation, computing the sum of two measurements.
///
/// - Parameters:
///   - lhs: The first measurement in the addition operation. This will be
///   modified.
///   - rhs: The second measurement in the addition operation.
///
	public static func += (lhs: inout Self, rhs: Self) {
		lhs.set(lhs.value + rhs.value, unit: .base)
	}

/// Performs a subtraction operation on two measurements.
///
/// - Parameters:
///   - lhs: The first measurement in the subtraction operation.
///   - rhs: The second measurement in the subtraction operation.
///
/// - Returns: A measurement containing the result of the subtraction
/// operation.
///
	public static func - (lhs: Self, rhs: Self) -> Self {
		Self(lhs.value - rhs.value, unit: .base)
	}
	
/// Performs a subtraction operation, subtracting one measurement from
/// another.
///
/// - Parameters:
///   - lhs: The first measurement in the subtraction operation. This will
///   be modified.
///   - rhs: The second measurement in the subtraction operation.
///
	public static func -= (lhs: inout Self, rhs: Self) {
		lhs.set(lhs.value - rhs.value, unit: .base)
	}
	
/// Negates the measurement.
///
/// This operation is equivalent to subtracting the measurement from zero.
///
/// - Parameters:
///   - measurement: The measurement to negate.
///
/// - Returns: The negated measurement.
///
	public static prefix func - (measurement: Self) -> Self {
		Self(-measurement.value, unit: .base)
	}
	
/// Performs a multiplication operation of a measurement with a scalar
/// value.
///
/// - Parameters:
///   - lhs: The measurement in the multiplication operation.
///   - rhs: The scalar value to multiply the measurement by.
///
/// - Returns: A measurement containing the result of the multiplication
/// operation.
///
	public static func * (lhs: Self, rhs: Value) -> Self {
		Self(lhs.value * rhs, unit: .base)
	}
	
/// Performs a multiplication operation of a measurement with a scalar
/// value.
///
/// - Parameters:
///   - lhs: The scalar value to multiply the measurement by.
///   - rhs: The measurement in the multiplication operation.
///
/// - Returns: A measurement containing the result of the multiplication
/// operation.
///
	public static func * (lhs: Value, rhs: Self) -> Self {
		Self(lhs * rhs.value, unit: .base)
	}
	
/// Performs a multiplication operation of a measurement with a scalar
/// value.
///
/// - Parameters:
///   - lhs: The measurement in the multiplication operation. This will be
///   modified.
///   - rhs: The scalar value to multiply the measurement by.
///
	public static func *= (lhs: inout Self, rhs: Value) {
		lhs.set(lhs.value * rhs, unit: .base)
	}
	
/// Performs a division operation of a measurement with a scalar value.
///
/// - Parameters:
///   - lhs: The measurement in the division operation.
///   - rhs: The scalar value to divide the measurement by.
///
/// - Returns: A measurement containing the result of the division
/// operation.
///
	public static func / (lhs: Self, rhs: Value) -> Self {
		Self(lhs.value / rhs, unit: .base)
	}

/// Performs a division operation of a measurement with a scalar value.
///
/// - Parameters:
///   - lhs: The measurement in the division operation. This will be
///   modified.
///   - rhs: The scalar value to divide the measurement by.
///
	public static func /= (lhs: inout Self, rhs: Value) {
		lhs.set(lhs.value / rhs, unit: .base)
	}
}
