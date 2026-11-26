//
//  MeasurementAffine.swift
//  Units
//
//  Created by Matt Cox on 26/11/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

/// A measurement of a quantity measured from an arbitrary zero.
///
/// Temperature is the familiar example. 0 °C is not "no temperature", it is the
/// point the Celsius scale happens to start from, so adding two temperatures
/// means nothing: 20 °C and 20 °C do not make 40 °C. What does mean something
/// is the *difference* between two temperatures, and a temperature moved by a
/// difference.
///
/// So an affine measurement is paired with a separate ``Difference`` type, and
/// its arithmetic is the arithmetic between the two:
///
/// - Subtracting one measurement from another gives a difference.
/// - Adding or subtracting a difference moves a measurement.
///
/// ```swift
/// let rise = Temperature(celsius: 21.0) - Temperature(celsius: 18.0)  // 3 K
/// let target = Temperature(celsius: 18.0) + rise                      // 21 °C
/// ```
///
/// > Treating an affine measurement as linear goes wrong quietly. Stored in
/// > kelvin, 21 °C plus 2 °C is 294.15 K plus 275.15 K — about 296 °C — and
/// > nothing about the result looks like an error.
///
public protocol MeasurementAffine: Measurement where Value: FloatingPoint {
/// The measurement of a difference between two of these measurements.
///
/// The base unit of the difference must be the same size as the base unit of
/// the measurement. A difference is applied by adding base values, so a
/// kelvin of temperature has to be a kelvin of difference.
///
	associatedtype Difference: MeasurementArithmetic where Difference.Value == Value
}

extension MeasurementAffine {
/// The measurement at the zero of its base unit.
///
/// For a temperature that is absolute zero, because the base unit is kelvin.
///
	public static var zero: Self {
		Self(.zero, unit: .base)
	}

/// Whether the measurement is finite.
///
	public var isFinite: Bool {
		value.isFinite
	}

/// Whether the measurement is not a number.
///
	public var isNaN: Bool {
		value.isNaN
	}

/// The difference between two measurements.
///
	public static func - (lhs: Self, rhs: Self) -> Difference {
		Difference(lhs.value - rhs.value, unit: .base)
	}

/// A measurement moved by a difference.
///
	public static func + (lhs: Self, rhs: Difference) -> Self {
		Self(lhs.value + rhs.value, unit: .base)
	}

/// A measurement moved by a difference.
///
	public static func + (lhs: Difference, rhs: Self) -> Self {
		Self(lhs.value + rhs.value, unit: .base)
	}

/// A measurement moved back by a difference.
///
	public static func - (lhs: Self, rhs: Difference) -> Self {
		Self(lhs.value - rhs.value, unit: .base)
	}

/// Moves a measurement by a difference, in place.
///
	public static func += (lhs: inout Self, rhs: Difference) {
		lhs = lhs + rhs
	}

/// Moves a measurement back by a difference, in place.
///
	public static func -= (lhs: inout Self, rhs: Difference) {
		lhs = lhs - rhs
	}

/// Whether one measurement is less than another.
///
	public static func < (lhs: Self, rhs: Self) -> Bool {
		lhs.value < rhs.value
	}
}
