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
/// This adds basic math functionality.
///
public protocol MeasurementVector: MeasurementComposable where Value: SIMD {

}

extension MeasurementVector where Scalar.Value: FloatingPoint, Scalar.Value == Value.Scalar {
	public func min() -> Scalar {
		Scalar(value.min(), unit: .base)
	}
	
	public func max() -> Scalar {
		Scalar(value.max(), unit: .base)
	}
	
	public func average() -> Scalar {
		Scalar(value.sum() / Value.Scalar(Value.scalarCount), unit: .base)
	}
	
	public func sum() -> Scalar {
		Scalar(value.sum(), unit: .base)
	}
	
	static func + (lhs: Self, rhs: Self) -> Self {
		Self(lhs.value + rhs.value, unit: .base)
	}
	
	static func += (lhs: inout Self, rhs: Self) {
		lhs = Self(lhs.value + rhs.value, unit: .base)
	}

	static func + (lhs: Self, rhs: Scalar) -> Self {
		Self(lhs.value + rhs.value, unit: .base)
	}

	static func + (lhs: Scalar, rhs: Self) -> Self {
		Self(lhs.value + rhs.value, unit: .base)
	}
	
	static func += (lhs: inout Self, rhs: Scalar) {
		lhs = Self(lhs.value + rhs.value, unit: .base)
	}

	static func - (lhs: Self, rhs: Self) -> Self {
		Self(lhs.value - rhs.value, unit: .base)
	}
	
	static func -= (lhs: inout Self, rhs: Self) {
		lhs = Self(lhs.value - rhs.value, unit: .base)
	}
	
	static func - (lhs: Self, rhs: Scalar) -> Self {
		Self(lhs.value - rhs.value, unit: .base)
	}
	
	static func - (lhs: Scalar, rhs: Self) -> Self {
		Self(lhs.value - rhs.value, unit: .base)
	}
	
	static func -= (lhs: inout Self, rhs: Scalar) {
		lhs = Self(lhs.value - rhs.value, unit: .base)
	}
	
	static prefix func - (vector: Self) -> Self {
		Self(-vector.value, unit: .base)
	}
	
	static func * (lhs: Self, rhs: Self) -> Self {
		Self(lhs.value * rhs.value, unit: .base)
	}
	
	static func *= (lhs: inout Self, rhs: Self) {
		lhs = Self(lhs.value * rhs.value, unit: .base)
	}
	
	static func * (lhs: Self, rhs: Scalar) -> Self {
		Self(lhs.value * rhs.value, unit: .base)
	}
	
	static func * (lhs: Scalar, rhs: Self) -> Self {
		Self(lhs.value * rhs.value, unit: .base)
	}
	
	static func *= (lhs: inout Self, rhs: Scalar) {
		lhs = Self(lhs.value * rhs.value, unit: .base)
	}
	
	static func / (lhs: Self, rhs: Self) -> Self {
		Self(lhs.value / rhs.value, unit: .base)
	}
	
	static func /= (lhs: inout Self, rhs: Self) {
		lhs = Self(lhs.value / rhs.value, unit: .base)
	}
	
	static func / (lhs: Self, rhs: Scalar) -> Self {
		Self(lhs.value / rhs.value, unit: .base)
	}
	
	static func /= (lhs: inout Self, rhs: Scalar) {
		lhs = Self(lhs.value / rhs.value, unit: .base)
	}
}
