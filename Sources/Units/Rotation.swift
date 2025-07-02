//
//  Rotation.swift
//  Units
//
//  Created by Matt Cox on 22/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Foundation

/// A measurement representing the rotation of an object in space.
///
/// This is similar to angle, but is extended into N dimensions.
///
/// Rotations are stored in radians, however they can be read and written in
/// various units.
///
public struct Rotation<Value: SIMD> where Value.Scalar: BinaryFloatingPoint {
	public typealias MeasurementUnit = Scalar.MeasurementUnit
	
	private(set) public var value: Value
}

extension Rotation {
/// Initialize the rotation using a value in arc minutes.
///
/// An arc minute is 1/60th of one degree.
///
/// - Parameters:
///   - value: The rotation in arc minutes.
///
/// - Returns: The measurement representing the provided rotation.
///
	public static func arcMinutes(_ value: Value) -> Self {
		Self(value, unit: .arcMinutes)
	}
	
/// Initialize the rotation using a value in arc seconds.
///
/// An arc second is 1/60th of one arc minute or 1/3600 of one degree.
///
/// - Parameters:
///   - value: The rotation in arc seconds.
///
/// - Returns: The measurement representing the provided rotation.
///
	public static func arcSeconds(_ value: Value) -> Self {
		Self(value, unit: .arcSeconds)
	}
	
/// Initialize the rotation using a value in degrees.
///
/// There are 360 degrees in one revolution.
///
/// - Parameters:
///   - value: The rotation in degrees.
///
/// - Returns: The measurement representing the provided rotation.
///
	public static func degrees(_ value: Value) -> Self {
		Self(value, unit: .degrees)
	}

/// Initialize the rotation using a value in gradians.
///
/// There are 400 gradians in one revolution.
///
/// - Parameters:
///   - value: The rotation in gradians.
///
/// - Returns: The measurement representing the provided rotation.
///
	public static func gradians(_ value: Value) -> Self {
		Self(value, unit: .gradians)
	}
	
/// Initialize the rotation using a value in radians.
///
/// A radian is an angle which intersects the arc of a circle, equal to
/// the radius of the circle.
///
/// - Parameters:
///   - value: The rotation in radians.
///
/// - Returns: The measurement representing the provided rotation.
///
	public static func radians(_ value: Value) -> Self {
		Self(value, unit: .radians)
	}
	
/// Initialize the rotation using a value in revolutions.
///
/// A full revolution rotates 360 degrees.
///
/// - Parameters:
///   - value: The rotation in revolutions.
///
/// - Returns: The measurement representing the provided rotation.
///
	public static func revolutions(_ value: Value) -> Self {
		Self(value, unit: .revolutions)
	}
	
/// Get a normalized version of the rotation where the angles are between 0
/// and 2π, or 0 and 360 degrees.
///
	public mutating func normalize() {
		let twoPi = 2 * Scalar.Value.pi
		for index in 0..<Value.scalarCount {
			let normalized = self.value[index].truncatingRemainder(dividingBy: twoPi)
			self.value[index] = normalized >= 0 ? normalized : normalized + twoPi
		}
	}
	
/// Get a normalized version of the rotation where the angles are between 0
/// and 2π, or 0 and 360 degrees.
///
	public var normalized: Self {
		let twoPi = 2 * Scalar.Value.pi
		var result = Self.zero
		for index in 0..<Value.scalarCount {
			let normalized = self.value[index].truncatingRemainder(dividingBy: twoPi)
			result.value[index] = normalized >= 0 ? normalized : normalized + twoPi
		}
		return result
	}
	
/// The rotation measured in arc minutes.
///
/// An arc minute is 1/60th of one degree.
///
	public var arcMinutes: Value {
		get {
			self.get(unit: .arcMinutes)
		}
		set {
			self.set(newValue, unit: .arcMinutes)
		}
	}
	
/// The rotation measured in arc seconds.
///
/// An arc second is 1/60th of one arc minute or 1/3600 of one degree.
///
	public var arcSeconds: Value {
		get {
			self.get(unit: .arcSeconds)
		}
		set {
			self.set(newValue, unit: .arcSeconds)
		}
	}
	
/// The rotation measured in degrees.
///
/// There are 360 degrees in one revolution.
///
	public var degrees: Value {
		get {
			self.get(unit: .degrees)
		}
		set {
			self.set(newValue, unit: .degrees)
		}
	}
	
/// The rotation measured in gradians.
///
/// There are 400 gradians in one revolution.
///
	public var gradians: Value {
		get {
			self.get(unit: .gradians)
		}
		set {
			self.set(newValue, unit: .gradians)
		}
	}
	
/// The rotation measured in radians.
///
/// A radian is an angle which intersects the arc of a circle, equal to
/// the radius of the circle.
///
	public var radians: Value {
		get {
			self.get(unit: .radians)
		}
		set {
			self.set(newValue, unit: .radians)
		}
	}
	
/// The rotation measured in number of revolutions.
///
/// A full revolution rotates 360 degrees.
///
	public var revolutions: Value {
		get {
			self.get(unit: .revolutions)
		}
		set {
			self.set(newValue, unit: .revolutions)
		}
	}
	
/// Initialize the measurement from a rotation measured in arc minutes.
///
/// An arc minute is 1/60th of one degree.
///
/// - Parameters:
///   - value: The rotation measured in arc minutes.
///
	public init(arcMinutes value: Value) {
		self = Self(value, unit: .arcMinutes)
	}
	
/// Initialize the measurement from a rotation measured in arc seconds.
///
/// An arc second is 1/60th of one arc minute or 1/3600 of one degree.
///
/// - Parameters:
///   - value: The rotation measured in arc seconds.
///
	public init(arcSeconds value: Value) {
		self = Self(value, unit: .arcSeconds)
	}
	
/// Initialize the measurement from a rotation measured in degrees.
///
/// There are 360 degrees in one revolution.
///
/// - Parameters:
///   - value: The rotation measured in degrees.
///
	public init(degrees value: Value) {
		self = Self(value, unit: .degrees)
	}
	
/// Initialize the measurement from a rotation measured in gradians.
///
/// There are 400 gradians in one revolution.
///
/// - Parameters:
///   - value: The rotation measured in gradians.
///
	public init(gradians value: Value) {
		self = Self(value, unit: .gradians)
	}
	
/// Initialize the measurement from radians.
///
/// A radian is an angle which intersects the arc of a circle, equal to
/// the radius of the circle.
///
/// - Parameters:
///   - value: The rotation measured in radians.
///
	public init(radians value: Value) {
		self = Self(value, unit: .radians)
	}
	
/// Initialize the measurement from a rotation measured in revolutions.
///
/// A full revolution rotates 360 degrees.
///
/// - Parameters:
///   - value: The rotation measured in revolutions.
///
	public init(revolutions value: Value) {
		self = Self(value, unit: .revolutions)
	}
}

extension Rotation: Codable where Value: Codable {
	
}

extension Rotation: Comparable where Value: Comparable {
	public static func < (lhs: Self, rhs: Self) -> Bool {
		lhs.value < rhs.value
	}
}

extension Rotation: Equatable {
	
}

extension Rotation: MeasurementVector {
	public typealias Scalar = Angle<Value.Scalar>
	
	public static var zero: Self {
		Self(.zero, unit: .base)
	}
	
	public init(_ value: Value, unit: MeasurementUnit = .base) {
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

extension Rotation: Sendable where Value: Sendable {

}
