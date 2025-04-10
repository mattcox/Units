//
//  MeasurementBinaryFloatingPoint.swift
//  Units
//
//  Created by Matt Cox on 10/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A type that allows a measurement to act as a binary floating point.
///
/// Conforming to this type adds the wrapper functions, allowing the measurement
/// itself to act as a binary floating point value.
///
public protocol MeasurementBinaryFloatingPoint: Measurement, BinaryFloatingPoint where Self.Value: BinaryFloatingPoint {

}

extension MeasurementBinaryFloatingPoint {
	public static var exponentBitCount: Int {
		Value.exponentBitCount
	}
	
	public static var infinity: Self {
		Self(Value.infinity, unit: .base)
	}
	
	public static var greatestFiniteMagnitude: Self {
		Self(Value.greatestFiniteMagnitude, unit: .base)
	}
	
	public static var leastNonzeroMagnitude: Self {
		Self(Value.leastNonzeroMagnitude, unit: .base)
	}
	
	public static var leastNormalMagnitude: Self {
		Self(Value.leastNormalMagnitude, unit: .base)
	}
	
	public static var nan: Self {
		Self(Value.nan, unit: .base)
	}
	
	public static var pi: Self {
		Self(Value.pi, unit: .base)
	}
	
	public static var radix: Int {
		Value.radix
	}
	
	public static var signalingNaN: Self {
		Self(Value.signalingNaN, unit: .base)
	}
	
	public static var significandBitCount: Int {
		Value.significandBitCount
	}
	
	public var binade: Self {
		Self(value.binade, unit: .base)
	}
	
	public var exponent: Value.Exponent {
		value.exponent
	}
	
	public var exponentBitPattern: Value.RawExponent {
		value.exponentBitPattern
	}
	
	public var isCanonical: Bool {
		value.isCanonical
	}
	
	public var isFinite: Bool {
		value.isFinite
	}
	
	public var isInfinite: Bool {
		value.isInfinite
	}
	
	public var isNaN: Bool {
		value.isNaN
	}
	
	public var isNormal: Bool {
		value.isNormal
	}

	public var isSignalingNaN: Bool {
		value.isSignalingNaN
	}
	
	public var isSubnormal: Bool {
		value.isSubnormal
	}
	
	public var isZero: Bool {
		value.isZero
	}
	
	public var magnitude: Self.Magnitude {
		Self(value.magnitude, unit: .base)
	}
	
	public var nextDown: Self {
		Self(value.nextDown, unit: .base)
	}
	
	public var nextUp: Self {
		Self(value.nextUp, unit: .base)
	}
	
	public var sign: FloatingPointSign {
		value.sign
	}
	
	public var significand: Self {
		Self(value.significand, unit: .base)
	}
	
	public var significandBitPattern: Value.RawSignificand {
		value.significandBitPattern
	}
	
	public var significandWidth: Int {
		value.significandWidth
	}
	
	public var ulp: Self {
		Self(value.ulp, unit: .base)
	}
	
	public init(integerLiteral value: Value.IntegerLiteralType) {
		self = Self(Value(integerLiteral: value), unit: .base)
	}
	
	public init(floatLiteral value: Value.FloatLiteralType) {
		self = Self(Value(floatLiteral: value), unit: .base)
	}
	
	public init?<T>(exactly source: T) where T : BinaryInteger {
		guard let value = Value(exactly: source) else {
			return nil
		}
		
		self = Self(value, unit: .base)
	}
	
	public init<Source>(_ value: Source) where Source : BinaryInteger {
		self = Self(Value(value), unit: .base)
	}
	
	public init(sign: FloatingPointSign, exponentBitPattern: Value.RawExponent, significandBitPattern: Value.RawSignificand) {
		self = Self(Value(sign: sign, exponentBitPattern: exponentBitPattern, significandBitPattern: significandBitPattern), unit: .base)
	}
	
	public init(sign: FloatingPointSign, exponent: Value.Exponent, significand: Self) {
		self = Self(Value(sign: sign, exponent: exponent, significand: significand.value), unit: .base)
	}
	
	public init(signOf: Self, magnitudeOf: Self) {
		self = Self(Value(signOf: signOf.value, magnitudeOf: signOf.magnitude.value), unit: .base)
	}
	
	public static func + (lhs: Self, rhs: Self) -> Self {
		Self(lhs.value + rhs.value, unit: .base)
	}

	public static func += (lhs: inout Self, rhs: Self) {
		lhs.set(lhs.value + rhs.value, unit: .base)
	}

	public static func - (lhs: Self, rhs: Self) -> Self {
		Self(lhs.value - rhs.value, unit: .base)
	}

	public static func -= (lhs: inout Self, rhs: Self) {
		lhs.set(lhs.value - rhs.value, unit: .base)
	}

	public static prefix func - (measurement: Self) -> Self {
		Self(-measurement.value, unit: .base)
	}

	public static func * (lhs: Self, rhs: Self) -> Self {
		Self(lhs.value * rhs.value, unit: .base)
	}

	public static func * (lhs: Self, rhs: Value) -> Self {
		Self(lhs.value * rhs, unit: .base)
	}

	public static func * (lhs: Value, rhs: Self) -> Self {
		Self(lhs * rhs.value, unit: .base)
	}

	public static func *= (lhs: inout Self, rhs: Self) {
		lhs.set(lhs.value * rhs.value, unit: .base)
	}

	public static func *= (lhs: inout Self, rhs: Value) {
		lhs.set(lhs.value * rhs, unit: .base)
	}

	public static func / (lhs: Self, rhs: Self) -> Self {
		Self(lhs.value / rhs.value, unit: .base)
	}

	public static func / (lhs: Self, rhs: Value) -> Self {
		Self(lhs.value / rhs, unit: .base)
	}

	public static func /= (lhs: inout Self, rhs: Self) {
		lhs.set(lhs.value / rhs.value, unit: .base)
	}

	public static func /= (lhs: inout Self, rhs: Value) {
		lhs.set(lhs.value / rhs, unit: .base)
	}
	
	public mutating func addProduct(_ lhs: Self, _ rhs: Self) {
		let value = self.value.addingProduct(lhs.value, rhs.value)
		self = Self(value, unit: .base)
	}
	
	public func advanced(by n: Value.Stride) -> Self {
		Self(value.advanced(by: n), unit: .base)
	}
	
	public func distance(to other: Self) -> Value.Stride {
		value.distance(to: other.value)
	}
	
	public func isEqual(to other: Self) -> Bool {
		value.isEqual(to: other.value)
	}
	
	public func isLess(than other: Self) -> Bool {
		value.isLess(than: other.value)
	}
	
	public func isLessThanOrEqualTo(_ other: Self) -> Bool {
		value.isLessThanOrEqualTo(other.value)
	}
	
	public func isTotallyOrdered(belowOrEqualTo other: Self) -> Bool {
		value.isTotallyOrdered(belowOrEqualTo: other.value)
	}
	
	public mutating func formRemainder(dividingBy other: Self) {
		var value = self.value
		value.formRemainder(dividingBy: other.value)
		self = Self(value, unit: .base)
	}
	
	public mutating func formSquareRoot() {
		var value = self.value
		value.formSquareRoot()
		self = Self(value, unit: .base)
	}
	
	public mutating func formTruncatingRemainder(dividingBy other: Self) {
		var value = self.value
		value.formTruncatingRemainder(dividingBy: other.value)
		self = Self(value, unit: .base)
	}
	
	public mutating func round(_ rule: FloatingPointRoundingRule) {
		let value = self.value.rounded(rule)
		self = Self(value, unit: .base)
	}
}
