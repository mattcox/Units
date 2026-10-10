//
//  Luminance.swift
//  Units
//
//  Created by Matt Cox on 20/08/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

/// A measurement representing the luminous intensity per unit area emitted or
/// reflected from a surface in a particular direction.
///
/// Luminance is stored as candela per square meter.
///
/// This is the quantity that describes how bright a surface appears, because it
/// accounts for the area the light leaves as well as its intensity. A larger
/// surface emitting the same ``LuminousIntensity`` appears dimmer, a distinction
/// luminous intensity alone cannot make. It is the measure used for the
/// brightness of displays and the luminance of a photographic scene.
///
public struct Luminance<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One candela per square meter is equal to one candela emitted from one
	/// square meter of surface.
	///
	/// A typical computer display is around 200–300 candela per square meter,
	/// and a clear daytime sky is around 8,000 candela per square meter.
	///
		case candelaPerSquareMeter

		public static var base: Self {
			.candelaPerSquareMeter
		}

		public func symbol(for value: Value) -> String {
			switch self {
				case .candelaPerSquareMeter:
					"cd/m²"
			}
		}

		public var coefficient: Value {
			switch self {
				case .candelaPerSquareMeter:
					1.0
			}
		}
	}

	private(set) public var value: Value
}

extension Luminance {
/// Initialize the luminance using a value in candela per square meter.
///
/// One candela per square meter is equal to one candela emitted from one
/// square meter of surface.
///
/// A typical computer display is around 200–300 candela per square meter, and
/// a clear daytime sky is around 8,000 candela per square meter.
///
/// - Parameters:
///   - value: The luminance in candela per square meter.
///
/// - Returns: The measurement representing the provided luminance.
///
	public static func candelaPerSquareMeter(_ value: Value) -> Self {
		Self(value, unit: .candelaPerSquareMeter)
	}

/// The luminance measured in candela per square meter.
///
/// One candela per square meter is equal to one candela emitted from one
/// square meter of surface.
///
/// A typical computer display is around 200–300 candela per square meter, and
/// a clear daytime sky is around 8,000 candela per square meter.
///
	public var candelaPerSquareMeter: Value {
		get {
			self.get(unit: .candelaPerSquareMeter)
		}
		set {
			self.set(newValue, unit: .candelaPerSquareMeter)
		}
	}

/// Initialize the measurement from a luminance measured in candela per square
/// meter.
///
/// One candela per square meter is equal to one candela emitted from one
/// square meter of surface.
///
/// A typical computer display is around 200–300 candela per square meter, and
/// a clear daytime sky is around 8,000 candela per square meter.
///
/// - Parameters:
///   - value: The luminance measured in candela per square meter.
///
	public init(candelaPerSquareMeter value: Value) {
		self = Self(value, unit: .candelaPerSquareMeter)
	}
}

extension Luminance: Codable where Value: Codable {

}

extension Luminance: Comparable where Value: Comparable {

}

extension Luminance: Equatable {

}

extension Luminance: CustomStringConvertible, LosslessStringConvertible where Value: LosslessStringConvertible {

}

extension Luminance: MeasurementBinaryFloatingPoint {
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

extension Luminance: Sendable where Value: Sendable {

}
