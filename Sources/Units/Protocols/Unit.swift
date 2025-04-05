//
//  Unit.swift
//  Units
//
//  Created by Matt Cox on 04/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A type specifying a unit of measurement.
///
public protocol Unit: CaseIterable {
/// The value type associated with the unit.
///
	associatedtype Value

/// The base unit type.
///
/// This is often the base SI unit for the quanitity being measured.
///
	static var base: Self { get }
	
/// The symbol for the unit of measurement.
///
/// The value is provided, as the symbol may vary depending on the
/// measurement value.
///
	func symbol(for value: Value) -> String
	
/// Convert a value from one measurement of this unit type to another.
///
/// - Parameters:
///   - value: The value to convert.
///   - from: The unit to convert from.
///   - to: The unit to convert to.
///
/// - Returns: The converted value.
///
	static func convert(value: Value, from: Self, to: Self) -> Value
}
