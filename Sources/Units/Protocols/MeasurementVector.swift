//
//  MeasurementVector.swift
//  Units
//
//  Created by Matt Cox on 10/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Foundation

/// A type that allows a measurement to store a vector.
///
/// This adds basic mathematical functions, as well as the ability to access
/// specific components of the vector.
///
public protocol MeasurementVector: Measurement where Self.Value: SIMD {
/// The type of value used to describe a single component of the value.
///
	associatedtype Scalar

/// Access a measurement component by index.
///
/// - Parameters:
///   - index: The index of the component in the measurement.
///
	subscript(_ index: Int) -> Scalar { get set }
}

extension MeasurementVector where Value.Scalar: FloatingPoint {
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
/// This operation is equivalent to subtracting the measurements from
/// zero.
///
/// - Parameters:
///   - measurement: The measurement to negate.
///
/// - Returns: The negated measurement.
///
	public static prefix func - (measurement: Self) -> Self {
		Self(-measurement.value, unit: .base)
	}

/// Performs a multiplication operation of a measurement with a vector,
/// multiplying each component in the measurement by the corresponding
/// component in the vector.
///
/// - Parameters:
///   - lhs: The measurement in the multiplication operation.
///   - rhs: The vector to multiply the components of the measurement by.
///
/// - Returns: A measurement containing the result of the multiplication
/// operation.
///
	public static func * (lhs: Self, rhs: Value) -> Self {
		Self(lhs.value * rhs, unit: .base)
	}
	
/// Performs a multiplication operation of a measurements with a vector,
/// multiplying each component in the measurement by the corresponding
/// component in the vector.
///
/// - Parameters:
///   - lhs: The vector to multiply the components of the measurement by.
///   - rhs: The measurement in the multiplication operation.
///
/// - Returns: A measurement containing the result of the multiplication
/// operation.
///
	public static func * (lhs: Value, rhs: Self) -> Self {
		Self(lhs * rhs.value, unit: .base)
	}
	
/// Performs a multiplication operation of a measurement with a vector,
/// multiplying each component in the measurements by the corresponding
/// component in the vector.
///
/// - Parameters:
///   - lhs: The measurement in the multiplication operation. This will be
///   modified.
///   - rhs: The vector to multiply the components of the measurement by.
///
	public static func *= (lhs: inout Self, rhs: Value) {
		lhs.set(lhs.value * rhs, unit: .base)
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
	public static func * (lhs: Self, rhs: Value.Scalar) -> Self {
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
	public static func * (lhs: Value.Scalar, rhs: Self) -> Self {
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
	public static func *= (lhs: inout Self, rhs: Value.Scalar) {
		lhs.set(lhs.value * rhs, unit: .base)
	}

/// Performs a division operation of a measurement with a vector,
/// dividing each component in the measurement by the corresponding
/// component in the vector.
///
/// - Parameters:
///   - lhs: The measurement in the division operation.
///   - rhs: The vector to divide the components of the measurement by.
///
/// - Returns: A measurement containing the result of the division operation.
///
	public static func / (lhs: Self, rhs: Value) -> Self {
		Self(lhs.value / rhs, unit: .base)
	}
	
/// Performs a division operation of a measurement with a vector,
/// dividing each component in the measurement by the corresponding
/// component in the vector.
///
/// - Parameters:
///   - lhs: The measurement in the division operation. This will be
///   modified.
///   - rhs: The vector to divide the components of the measurement by.
///
	public static func /= (lhs: inout Self, rhs: Value) {
		lhs.set(lhs.value / rhs, unit: .base)
	}
	
/// Performs a division operation of a measurement with a scalar value.
///
/// - Parameters:
///   - lhs: The measurement in the division operation.
///   - rhs: The scalar value to divide the measurement by.
///
/// - Returns: A measurement containing the result of the division operation.
///
	public static func / (lhs: Self, rhs: Value.Scalar) -> Self {
		Self(lhs.value / rhs, unit: .base)
	}

/// Performs a division operation of a measurement with a scalar value.
///
/// - Parameters:
///   - lhs: The measurement in the division operation. This will be
///   modified.
///   - rhs: The scalar value to divide the measurement by.
///
	public static func /= (lhs: inout Self, rhs: Value.Scalar) {
		lhs.set(lhs.value / rhs, unit: .base)
	}
}
