//
//  Percentage.swift
//  Units
//
//  Created by Matt Cox on 09/08/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

/// A measurement representing a proportion of a whole, or a multiple of it.
///
/// A percentage is stored as a factor, where `1.0` is the whole: `0.5` is half
/// and `2.0` is double. It can be read as a factor or as parts per hundred,
/// where `100` is the whole.
///
/// This is the quantity for anything that scales or blends rather than
/// measures: an opacity, a scale, how strongly a falloff weighs a point. Being
/// a measurement is what lets it be read, written and edited in whichever of
/// its units suits, by the same machinery as a distance or an angle.
///
public struct Percentage<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// The value as a multiplier, where `1.0` is the whole.
	///
		case factor

	/// The value as parts per hundred, where `100` is the whole.
	///
		case percent

		public static var base: Self {
			.factor
		}

		public func symbol(for value: Value) -> String {
			switch self {
				case .factor:
					// The multiplication sign rather than the letter, so that
					// `1.5×` reads as a multiple the way `45°` reads as an
					// angle.
					//
					"×"

				case .percent:
					"%"
			}
		}

		public var coefficient: Value {
			switch self {
				case .factor:
					1.0

				case .percent:
					0.01
			}
		}
	}

	private(set) public var value: Value
}

extension Percentage {
/// Initialize the percentage using a factor, where `1.0` is the whole.
///
/// - Parameters:
///   - value: The percentage as a factor.
///
/// - Returns: The measurement representing the provided percentage.
///
	public static func factor(_ value: Value) -> Self {
		Self(value, unit: .factor)
	}

/// The percentage as a factor, where `1.0` is the whole.
///
	public var factor: Value {
		get {
			self.get(unit: .factor)
		}
		set {
			self.set(newValue, unit: .factor)
		}
	}

/// Initialize the measurement from a percentage as a factor, where `1.0` is
/// the whole.
///
/// - Parameters:
///   - value: The percentage as a factor.
///
	public init(factor value: Value) {
		self = Self(value, unit: .factor)
	}
}

extension Percentage {
/// Initialize the percentage using parts per hundred, where `100` is the
/// whole.
///
/// - Parameters:
///   - value: The percentage in parts per hundred.
///
/// - Returns: The measurement representing the provided percentage.
///
	public static func percent(_ value: Value) -> Self {
		Self(value, unit: .percent)
	}

/// The percentage in parts per hundred, where `100` is the whole.
///
	public var percent: Value {
		get {
			self.get(unit: .percent)
		}
		set {
			self.set(newValue, unit: .percent)
		}
	}

/// Initialize the measurement from a percentage in parts per hundred, where
/// `100` is the whole.
///
/// - Parameters:
///   - value: The percentage in parts per hundred.
///
	public init(percent value: Value) {
		self = Self(value, unit: .percent)
	}
}

extension Percentage: Codable where Value: Codable {

}

extension Percentage: Comparable where Value: Comparable {

}

extension Percentage: Equatable {

}

extension Percentage: CustomStringConvertible, LosslessStringConvertible where Value: LosslessStringConvertible {

}

extension Percentage: MeasurementArithmetic {
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

extension Percentage: Sendable where Value: Sendable {

}
