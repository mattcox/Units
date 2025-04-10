//
//  Density.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the density or compactness of a surface.
///
/// Density is stored as kilograms per cubic meter.
///
public struct Density<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One kilogram per cubic meter represents the mass of one kilogram
	/// evenly distributed throughout one cubic meter of volume.
	///
	/// Water has a density of approximately 1,000 kilograms per cubic
	/// meter.
	///
		case kilogramsPerCubicMeter
		
		public static var base: Self {
			.kilogramsPerCubicMeter
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .kilogramsPerCubicMeter:
					"kg/m³"
			}
		}
		
		public var coefficient: Value {
			switch self {
				case .kilogramsPerCubicMeter:
					1.0
			}
		}
	}
	
	private(set) public var value: Value
}

extension Density {
/// Initialize the density using a value in kilograms per cubic meter.
///
/// One kilogram per cubic meter represents the mass of one kilogram
/// evenly distributed throughout one cubic meter of volume.
///
/// Water has a density of approximately 1,000 kilograms per cubic meter.
///
/// - Parameters:
///   - value: The density in kilograms per cubic meter.
///
/// - Returns: The measurement representing the provided density.
///
	public static func kilogramsPerCubicMeter(_ value: Value) -> Self {
		Self(value, unit: .kilogramsPerCubicMeter)
	}

/// The density measured in kilograms per cubic meter.
///
/// One kilogram per cubic meter represents the mass of one kilogram evenly
/// distributed throughout one cubic meter of volume.
///
/// Water has a density of approximately 1,000 kilograms per cubic meter.
///
	public var kilogramsPerCubicMeter: Value {
		get {
			self.get(unit: .kilogramsPerCubicMeter)
		}
		set {
			self.set(newValue, unit: .kilogramsPerCubicMeter)
		}
	}

/// Initialize the measurement from a density measured in kilograms per
/// cubic meter.
///
/// One kilogram per cubic meter represents the mass of one kilogram evenly
/// distributed throughout one cubic meter of volume.
///
/// Water has a density of approximately 1,000 kilograms per cubic meter.
///
/// - Parameters:
///   - value: The density measured in kilograms per cubic meter.
///
	public init(kilogramsPerCubicMeter value: Value) {
		self = Density(value, unit: .kilogramsPerCubicMeter)
	}
}

extension Density: Codable where Value: Codable {

}

extension Density: Comparable where Value: Comparable {
	public static func < (lhs: Self, rhs: Self) -> Bool {
		lhs.value < rhs.value
	}
}

extension Density: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Density: MeasurementBinaryFloatingPoint {
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

extension Density: Sendable where Value: Sendable {

}
