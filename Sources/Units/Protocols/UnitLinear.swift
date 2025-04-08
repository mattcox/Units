//
//  UnitLinear.swift
//  Units
//
//  Created by Matt Cox on 07/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A type specifying a unit of measurement that can be converted from one
/// type to another using a linear equation in the form y=mx+c.
///
public protocol UnitLinear: Unit {
/// The coefficient for the linear equation.
///
/// This must not be zero.
///
	var coefficient: Value { get }
	
/// The constant for the linear equation.
///
	var constant: Value { get }
}

extension UnitLinear where Value: FloatingPoint {
	public var constant: Value {
		.zero
	}

	public static func convert(value: Value, from: Self, to: Self) -> Value {
		(((value * from.coefficient) + from.constant) / to.coefficient) - to.constant
	}
}
