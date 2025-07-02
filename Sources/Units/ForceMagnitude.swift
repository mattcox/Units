//
//  ForceMagnitude.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Foundation

/// A measurement representing the magnitude of a force that can be applied to
/// an object with mass, causing it to change it's velocity.
///
/// Forces are stored in newtons.
///
public struct ForceMagnitude<Value: BinaryFloatingPoint> {
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
}

extension ForceMagnitude {
/// Initialize the force magnitude using a value in newtons.
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
	
/// The force magnitude measured in newtons.
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
	
/// Initialize the measurement from a force magnitude measured in newtons.
///
/// A newton is the amount of force that when applied to 1-kilogram mass,
/// it will keep accelerating by 1 m/s each second, as long as the force
/// is applied.
///
/// - Parameters:
///   - value: The force magnitude measured in newtons.
///
	public init(newtons value: Value) {
		self = Self(value, unit: .newtons)
	}
}

extension ForceMagnitude: Codable where Value: Codable {
	
}

extension ForceMagnitude: Comparable where Value: Comparable {
	
}

extension ForceMagnitude: Equatable {
	
}

extension ForceMagnitude: MeasurementBinaryFloatingPoint {
	public init(_ value: Value, unit: MeasurementUnit = .base) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
	
	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
	
	public func get(unit: MeasurementUnit) -> Value {
		MeasurementUnit.convert(value: self.value, from: .base, to: unit)
	}
}

extension ForceMagnitude: Sendable where Value: Sendable {

}
