//
//  Angle.swift
//  Units
//
//  Created by Matt Cox on 04/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the angle between two intersecting lines.
///
/// Angles are stored as radians, however they can be read and written in
/// various units.
///
public struct Angle<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// An arc minute is 1/60th of one degree.
	///
		case arcMinutes
	
	/// An arc second is 1/60th of one arc minute or 1/3600 of one degree.
	///
		case arcSeconds
		
	/// There are 360 degrees in one revolution.
	///
		case degrees
		
	/// There are 400 gradians in one revolution.
	///
		case gradians
		
	/// A radian is an angle which intersects the arc of a circle, equal to
	/// the radius of the circle.
	///
		case radians
	
	/// A full revolution rotates 360 degrees.
	///
		case revolutions
		
		public static var base: Self {
			.radians
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .arcMinutes:
					"ʹ"
				case .arcSeconds:
					"ʺ"
				case .degrees:
					"°"
				case .gradians:
					"grad"
				case .radians:
					"rad"
				case .revolutions:
					"rev"
			}
		}
		
		public var coefficient: Value {
			switch self {
				case .arcMinutes:
					.pi / 10800
				case .arcSeconds:
					.pi / 648000
				case .degrees:
					.pi / 180
				case .gradians:
					.pi / 200
				case .radians:
					1.0
				case .revolutions:
					2 * .pi
			}
		}
	}
	
/// The type or classification of an angle.
///
	public enum Classification {
	/// An acute angle is less than 90 degrees.
	///
		case acute
		
	/// A right angle is exactly 90 degrees.
	///
		case right
		
	/// An obtuse angle is between 90 degrees and 180 degrees.
	///
		case obtuse
	
	/// A straight angle is exactly 180 degrees.
	///
		case straight
		
	/// An obtuse angle is between 180 degrees and 360 degrees.
	///
		case reflex
	}
	
	private(set) public var value: Value
}

extension Angle {	
/// The Angle representing Pi or π.
///
/// Pi is equivalent to approximately 3.142 radians.
///
	public static var π: Angle {
		Angle(.pi, unit: .radians)
	}
	
/// Initialize the angle using a value in arc minutes.
///
/// An arc minute is 1/60th of one degree.
///
/// - Parameters:
///   - value: The angle in arc minutes.
///
/// - Returns: The measurement representing the provided angle.
///
	public static func arcMinutes(_ value: Value) -> Self {
		Self(value, unit: .arcMinutes)
	}
	
/// Initialize the angle using a value in arc seconds.
///
/// An arc second is 1/60th of one arc minute or 1/3600 of one degree.
///
/// - Parameters:
///   - value: The angle in arc seconds.
///
/// - Returns: The measurement representing the provided angle.
///
	public static func arcSeconds(_ value: Value) -> Self {
		Self(value, unit: .arcSeconds)
	}
	
/// Initialize the angle using a value in degrees.
///
/// There are 360 degrees in one revolution.
///
/// - Parameters:
///   - value: The angle in degrees.
///
/// - Returns: The measurement representing the provided angle.
///
	public static func degrees(_ value: Value) -> Self {
		Self(value, unit: .degrees)
	}

/// Initialize the angle using a value in gradians.
///
/// There are 400 gradians in one revolution.
///
/// - Parameters:
///   - value: The angle in gradians.
///
/// - Returns: The measurement representing the provided angle.
///
	public static func gradians(_ value: Value) -> Self {
		Self(value, unit: .gradians)
	}
	
/// Initialize the angle using a value in radians.
///
/// A radian is an angle which intersects the arc of a circle, equal to
/// the radius of the circle.
///
/// - Parameters:
///   - value: The angle in radians.
///
/// - Returns: The measurement representing the provided angle.
///
	public static func radians(_ value: Value) -> Self {
		Self(value, unit: .radians)
	}
	
/// Initialize the angle using a value in revolutions.
///
/// A full revolution rotates 360 degrees.
///
/// - Parameters:
///   - value: The angle in revolutions.
///
/// - Returns: The measurement representing the provided angle.
///
	public static func revolutions(_ value: Value) -> Self {
		Self(value, unit: .revolutions)
	}

/// The type or classification of the angle.
///
	public var classification: Classification {
		let degrees = self.normalized.degrees
		
		if degrees < 90.0 {
			return .acute
		}
		
		if degrees == 90.0 {
			return .right
		}
		
		if degrees < 180.0 {
			return .obtuse
		}
		
		if degrees == 180.0 {
			return .straight
		}
		
		return .reflex
	}

/// Get a normalized version of the angle where the angle is between 0 and
/// 2π, or 0 and 360 degrees.
///
	public mutating func normalize() {
		let twoPi = 2 * Value.pi
		let normalized = self.value.truncatingRemainder(dividingBy: twoPi)
		self.value = normalized >= 0 ? normalized : normalized + twoPi
	}
	
/// Get a normalized version of the angle where the angle is between 0 and
/// 2π, or 0 and 360 degrees.
///
	public var normalized: Angle {
		let twoPi = 2 * Value.pi
		let normalized = self.value.truncatingRemainder(dividingBy: twoPi)
		return Angle(normalized >= 0 ? normalized : normalized + twoPi, unit: .radians)
	}
	
/// The angle measured in arc minutes.
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
	
/// The angle measured in arc seconds.
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
	
/// The angle measured in degrees.
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
	
/// The angle measured in gradians.
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
	
/// The angle measured in radians.
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
	
/// The angle measured in number of revolutions.
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
	
/// Initialize the measurement from an angle measured in arc minutes.
///
/// An arc minute is 1/60th of one degree.
///
/// - Parameters:
///   - value: The angle measured in arc minutes.
///
	public init(arcMinutes value: Value) {
		self = Angle(value, unit: .arcMinutes)
	}
	
/// Initialize the measurement from an angle measured in arc seconds.
///
/// An arc second is 1/60th of one arc minute or 1/3600 of one degree.
///
/// - Parameters:
///   - value: The angle measured in arc seconds.
///
	public init(arcSeconds value: Value) {
		self = Angle(value, unit: .arcSeconds)
	}
	
/// Initialize the measurement from an angle measured in degrees.
///
/// There are 360 degrees in one revolution.
///
/// The value can optionally be normalized to a range of 0..<360.
///
/// - Parameters:
///   - value: The angle measured in degrees.
///   - normalize: Normalize the angle to a range of 0..<360.
///
	public init(degrees value: Value, normalize: Bool = false) {
		if normalize {
			self = Angle(value, unit: .degrees).normalized
		}
		else {
			self = Angle(value, unit: .degrees)
		}
	}
	
/// Initialize the measurement from an angle measured in gradians.
///
/// There are 400 gradians in one revolution.
///
/// - Parameters:
///   - value: The angle measured in gradians.
///
	public init(gradians value: Value) {
		self = Angle(value, unit: .gradians)
	}
	
/// Initialize the measurement from radians.
///
/// A radian is an angle which intersects the arc of a circle, equal to the
/// radius of the circle.
///
/// - Parameters:
///   - value: The angle measured in radians.
///
	public init(radians value: Value) {
		self = Angle(value, unit: .radians)
	}
	
/// Initialize the measurement from an angle measured in revolutions.
///
/// A full revolution rotates 360 degrees.
///
/// - Parameters:
///   - value: The angle measured in revolutions.
///
	public init(revolutions value: Value) {
		self = Angle(value, unit: .revolutions)
	}
}

extension Angle: Codable where Value: Codable {
	
}

extension Angle: Comparable where Value: Comparable {
	public static func < (lhs: Self, rhs: Self) -> Bool {
		lhs.value < rhs.value
	}
}

extension Angle: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		let a = lhs.normalized
		let b = rhs.normalized
	
		return a.value == b.value
	}
}

extension Angle: MeasurementBinaryFloatingPoint {
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

extension Angle: Sendable where Value: Sendable {

}
