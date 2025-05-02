//
//  Force.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Foundation

/// A measurement representing the direction and magnitude that can be
/// applied to an object with mass, causing it to change it's velocity.
///
/// Forces are stored in newtons.
///
public struct Force<Value: SIMD> where Value.Scalar: BinaryFloatingPoint {
	public typealias MeasurementUnit = Scalar.MeasurementUnit
	
	private(set) public var value: Value
}

extension Force {
/// Initialize the force using a value in newtons.
///
/// A newton is the amount of force that when applied to 1-kilogram mass,
/// it will keep accelerating by 1 m/s each second, as long as the force
/// is applied.
///
/// - Parameters:
///   - value: The force in newtons.
///
/// - Returns: The measurement representing the provided force.
///
	public static func newtons(_ value: Value) -> Self {
		Self(value, unit: .newtons)
	}
	
/// The force measured in newtons.
///
/// A newton is the amount of force that when applied to 1-kilogram mass,
/// it will keep accelerating by 1 m/s each second, as long as the force
/// is applied.
///
	public var newtons: Value {
		get {
			self.get(unit: .newtons)
		}
		set {
			self.set(newValue, unit: .newtons)
		}
	}
	
/// Initialize the measurement from a force measured in newtons.
///
/// A newton is the amount of force that when applied to 1-kilogram mass,
/// it will keep accelerating by 1 m/s each second, as long as the force
/// is applied.
///
/// - Parameters:
///   - value: The force measured in newtons.
///
	public init(newtons value: Value) {
		self = Self(value, unit: .newtons)
	}
}

extension Force: Codable where Value: Codable {
	
}

extension Force: Comparable where Value: Comparable {
	public static func < (lhs: Self, rhs: Self) -> Bool {
		lhs.value < rhs.value
	}
}

extension Force: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Force: MeasurementVector {
	public typealias Scalar = ForceComponent<Value.Scalar>
	
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

extension Force: Sendable where Value: Sendable {

}

public struct ForceComponent<Value: BinaryFloatingPoint>: MeasurementBinaryFloatingPoint {
	public enum MeasurementUnit: UnitLinear {
	/// A newton is the amount of force that when applied to 1-kilogram
	/// mass, it will keep accelerating by 1 m/s each second, as long as
	/// the force is applied.
	///
		case newtons
		
		public static var base: Self {
			.newtons
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .newtons:
					"N"
			}
		}
		
		public var coefficient: Value {
			switch self {
				case .newtons:
					1.0
			}
		}
	}
	
	private(set) public var value: Value
	
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

extension ForceComponent {
/// Initialize the force using a value in newtons.
///
/// A newton is the amount of force that when applied to 1-kilogram mass,
/// it will keep accelerating by 1 m/s each second, as long as the force
/// is applied.
///
/// - Parameters:
///   - value: The force in newtons.
///
/// - Returns: The measurement representing the provided force.
///
	public static func newtons(_ value: Value) -> Self {
		Self(value, unit: .newtons)
	}
	
/// The force measured in newtons.
///
/// A newton is the amount of force that when applied to 1-kilogram mass,
/// it will keep accelerating by 1 m/s each second, as long as the force
/// is applied.
///
	public var newtons: Value {
		get {
			self.get(unit: .newtons)
		}
		set {
			self.set(newValue, unit: .newtons)
		}
	}
	
/// Initialize the measurement from a force measured in newtons.
///
/// A newton is the amount of force that when applied to 1-kilogram mass,
/// it will keep accelerating by 1 m/s each second, as long as the force
/// is applied.
///
/// - Parameters:
///   - value: The force measured in newtons.
///
	public init(newtons value: Value) {
		self = Self(value, unit: .newtons)
	}
}

extension ForceComponent: Codable where Value: Codable {
	
}

extension ForceComponent: Comparable where Value: Comparable {
	public static func < (lhs: Self, rhs: Self) -> Bool {
		lhs.value < rhs.value
	}
}

extension ForceComponent: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension ForceComponent: Sendable where Value: Sendable {

}
