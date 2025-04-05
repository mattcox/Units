//
//  Angle.swift
//  Units
//
//  Created by Matt Cox on 04/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// An measurement representing the angle between two intersecting lines.
///
/// Angles are stored as radians, however they can be read and written in
/// various units representing an angle.
///
public struct Angle<T: BinaryFloatingPoint> {
	public enum MeasurementUnit: Unit {
		public typealias Value = T
		
	/// An arc minute is 1/60th of one degree.
	///
		case arcMinutes
		
	/// An arc second is 1/60th of one arc minute or 1/3600 of one
	/// degree.
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
	
	/// A full revolution rotates 360 degree.
	///
		case revolutions
		
		public static var base: Self {
			.radians
		}
		
		public func symbol(for value: T) -> String {
			switch self {
				case .arcMinutes:
					return "ʹ"
				case .arcSeconds:
					return "ʺ"
				case .degrees:
					return "°"
				case .gradians:
					return "grad"
				case .radians:
					return "rad"
				case .revolutions:
					return "rev"
			}
		}
		
		public static func convert(value: T, from: Angle<T>.MeasurementUnit, to: Angle<T>.MeasurementUnit) -> T {
			guard from != to else {
				return value
			}
			
			// Convert the value to the base unit - radians.
			//
			let radians: T = {
				switch from {
					case .arcMinutes:
						value * (.pi / 10800)
					case .arcSeconds:
						value * (.pi / 648000)
					case .degrees:
						value * (.pi / 180)
					case .gradians:
						value * (.pi / 200)
					case .radians:
						value
					case .revolutions:
						value * (2 * .pi)
				}
			}()
			
			// Convert the value from the base unit to the target unit.
			//
			switch to {
				case .arcMinutes:
					return radians * (10800 / .pi)
				case .arcSeconds:
					return radians * (648000 / .pi)
				case .degrees:
					return radians * (180 / .pi)
				case .gradians:
					return radians * (200 / .pi)
				case .radians:
					return radians
				case .revolutions:
					return radians / (2 * .pi)
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
	
	private(set) public var value: T
}

extension Angle {
/// The Angle representing Pi.
///
/// Pi is equivalent to approximately 3.142 radians.
///
	public static var pi: Angle {
		Angle(.pi, unit: .radians)
	}
	
/// The Angle representing Pi.
///
	public static var π: Angle {
		Angle(.pi, unit: .radians)
	}
	
/// Initialize the measurement from an angle in arc minutes.
///
/// - Parameters:
///   - value: The angle in arc minutes.
///
/// - Returns: The measurement of the provided angle.
///
	public static func arcMinutes(_ value: T) -> Self {
		Self(value, unit: .arcMinutes)
	}
	
/// Initialize the measurement from an angle in arc seconds.
///
/// - Parameters:
///   - value: The angle in arc seconds.
///
/// - Returns: The measurement of the provided angle.
///
	public static func arcSeconds(_ value: T) -> Self {
		Self(value, unit: .arcSeconds)
	}
	
/// Initialize the measurement from an angle in degrees.
///
/// - Parameters:
///   - value: The angle in degrees.
///
/// - Returns: The measurement of the provided angle.
///
	public static func degrees(_ value: T) -> Self {
		Self(value, unit: .degrees)
	}

/// Initialize the measurement from an angle in gradians.
///
/// - Parameters:
///   - value: The angle in gradians.
///
/// - Returns: The measurement of the provided angle.
///
	public static func gradians(_ value: T) -> Self {
		Self(value, unit: .gradians)
	}
	
/// Initialize the measurement from an angle in radians.
///
/// - Parameters:
///   - value: The angle in radians.
///
/// - Returns: The measurement of the provided angle.
///
	public static func radians(_ value: T) -> Self {
		Self(value, unit: .radians)
	}
	
/// Initialize the measurement from an angle in revolutions.
///
/// - Parameters:
///   - value: The angle in revolutions.
///
/// - Returns: The measurement of the provided angle.
///
	public static func revolutions(_ value: T) -> Self {
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

/// Get a normalized version of the angle, in the range 0..<360.
///
	public var normalized: Angle {
		var degrees = self.degrees
		while degrees >= 360.0 {
			degrees -= 360.0
		}
		while degrees < 0.0 {
			degrees += 360.0
		}
		return Angle(degrees, unit: .degrees)
	}
	
/// The angle in arc minutes.
///
	public var arcMinutes: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .arcMinutes)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .arcMinutes, to: .base)
		}
	}
	
/// The angle in arc seconds.
///
	public var arcSeconds: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .arcSeconds)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .arcSeconds, to: .base)
		}
	}
	
/// The angle in arc seconds.
///
	public var degrees: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .degrees)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .degrees, to: .base)
		}
	}
	
/// The angle in gradians.
///
	public var gradians: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .gradians)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .gradians, to: .base)
		}
	}
	
/// The angle in radians.
///
	public var radians: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .radians)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .radians, to: .base)
		}
	}
	
/// The angle in revolutions.
///
	public var revolutions: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .revolutions)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .revolutions, to: .base)
		}
	}
	
/// Initialize the measurement from arc minutes.
///
/// - Parameters:
///   - value: The angle in arc minutes.
///
	public init(arcMinutes value: Value) {
		self = Angle(value, unit: .arcMinutes)
	}
	
/// Initialize the measurement from arc seconds.
///
/// - Parameters:
///   - value: The angle in arc seconds.
///
	public init(arcSeconds value: Value) {
		self = Angle(value, unit: .arcSeconds)
	}
	
/// Initialize the measurement from degrees.
///
/// The value can optionally be normalized to a range of 0..<360.
///
/// - Parameters:
///   - value: The angle in degrees.
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
	
/// Initialize the measurement from gradians.
///
/// - Parameters:
///   - value: The angle in gradians.
///
	public init(gradians value: Value) {
		self = Angle(value, unit: .gradians)
	}
	
/// Initialize the measurement from radians.
///
/// - Parameters:
///   - value: The angle in radians.
///
	public init(radians value: Value) {
		self = Angle(value, unit: .radians)
	}
	
/// Initialize the measurement from revolutions.
///
/// - Parameters:
///   - value: The angle in revolutions.
///
	public init(revolutions value: Value) {
		self = Angle(value, unit: .revolutions)
	}
}

extension Angle: Codable where Value: Codable {
	
}

extension Angle: Comparable where Value: Comparable {
	public static func < (lhs: Angle<T>, rhs: Angle<T>) -> Bool {
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

extension Angle: Measurement {
	public init(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
	
	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
}

extension Angle: Sendable where Value: Sendable {

}
