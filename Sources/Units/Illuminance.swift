//
//  Illuminance.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the the luminous flux per unit area incident
/// on a surface.
///
/// Illuminance is stored as lux.
///
public struct Illuminance<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One lux is equal to one lumen per square meter.
	///
	/// Typical daylight is around 10,000–100,000 lux, and a well-lit office
	/// is around 300–500 lux.
	///
		case lux
		
		public static var base: Self {
			.lux
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .lux:
					"lx"
			}
		}
		
		public var coefficient: Value {
			switch self {
				case .lux:
					1.0
			}
		}
	}
	
	private(set) public var value: Value
}

extension Illuminance {
/// Initialize the illuminance using a value in lux.
///
/// One lux is equal to one lumen per square meter.
///
/// Typical daylight is around 10,000–100,000 lux, and a well-lit office is
/// around 300–500 lux.
///
/// - Parameters:
///   - value: The illuminance in lux.
///
/// - Returns: The measurement representing the provided illuminance.
///
	public static func lux(_ value: Value) -> Self {
		Self(value, unit: .lux)
	}

/// The illuminance measured in lux.
///
/// One lux is equal to one lumen per square meter.
///
/// Typical daylight is around 10,000–100,000 lux, and a well-lit office is
/// around 300–500 lux.
///
	public var lux: Value {
		get {
			self.get(unit: .lux)
		}
		set {
			self.set(newValue, unit: .lux)
		}
	}

/// Initialize the measurement from an illuminance measured in lux.
///
/// One lux is equal to one lumen per square meter.
///
/// Typical daylight is around 10,000–100,000 lux, and a well-lit office is
/// around 300–500 lux.
///
/// - Parameters:
///   - value: The illuminance measured in lux.
///
	public init(lux value: Value) {
		self = Self(value, unit: .lux)
	}
}

extension Illuminance: Codable where Value: Codable {

}

extension Illuminance: Comparable where Value: Comparable {
	public static func < (lhs: Self, rhs: Self) -> Bool {
		lhs.value < rhs.value
	}
}

extension Illuminance: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Illuminance: MeasurementBinaryFloatingPoint {
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

extension Illuminance: Sendable where Value: Sendable {

}
