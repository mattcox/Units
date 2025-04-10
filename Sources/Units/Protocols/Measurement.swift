//
//  Measurement.swift
//  Units
//
//  Created by Matt Cox on 04/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A type representing a measurement in a specified unit.
///
public protocol Measurement {
/// The unit type the measurement represents.
///
	associatedtype MeasurementUnit: Unit
	associatedtype Value = MeasurementUnit.Value
	
/// The measurement with an equivalent value of 0.
///
	static var zero: Self { get }
	
/// The stored value of this measurement.
///
	var value: Value { get }
	
/// Initialize the measurement with a value and a unit.
///
/// - Parameters:
///   - value: The value to store in the measurement.
///   - unit: The unit of measurement the value represents.
///
	init(_ value: Value, unit: MeasurementUnit)
	
/// Set the value of the measurement with a value in the specified units.
///
/// - Parameters:
///   - value: The new value for the measurement.
///   - unit: The unit the value is measured in.
///
	mutating func set(_ value: Value, unit: MeasurementUnit)
	
/// Get the value of the measurement with a value in the specified units.
///
/// - Parameters:
///   - unit: The unit to get the value in.
///
	func get(unit: MeasurementUnit) -> Value
}
