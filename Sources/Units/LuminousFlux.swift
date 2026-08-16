//
//  LuminousFlux.swift
//  Units
//
//  Created by Matt Cox on 16/08/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

/// A measurement representing the total perceived power of light emitted by
/// a source.
///
/// Luminous flux is stored as lumens.
///
public struct LuminousFlux<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One lumen is equal to one candela steradian.
	///
	/// A typical wax candle emits around 12 lumens, and a 100 watt
	/// incandescent bulb emits around 1,600 lumens.
	///
		case lumens
		
		public static var base: Self {
			.lumens
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .lumens:
					"lm"
			}
		}
		
		public var coefficient: Value {
			switch self {
				case .lumens:
					1.0
			}
		}
	}
	
	private(set) public var value: Value
}

extension LuminousFlux {
/// Initialize the luminous flux using a value in lumens.
///
/// One lumen is equal to one candela steradian.
///
/// A typical wax candle emits around 12 lumens, and a 100 watt incandescent
/// bulb emits around 1,600 lumens.
///
/// - Parameters:
///   - value: The luminous flux in lumens.
///
/// - Returns: The measurement representing the provided luminous flux.
///
	public static func lumens(_ value: Value) -> Self {
		Self(value, unit: .lumens)
	}

/// The luminous flux measured in lumens.
///
/// One lumen is equal to one candela steradian.
///
/// A typical wax candle emits around 12 lumens, and a 100 watt incandescent
/// bulb emits around 1,600 lumens.
///
	public var lumens: Value {
		get {
			self.get(unit: .lumens)
		}
		set {
			self.set(newValue, unit: .lumens)
		}
	}

/// Initialize the measurement from a luminous flux measured in lumens.
///
/// One lumen is equal to one candela steradian.
///
/// A typical wax candle emits around 12 lumens, and a 100 watt incandescent
/// bulb emits around 1,600 lumens.
///
/// - Parameters:
///   - value: The luminous flux measured in lumens.
///
	public init(lumens value: Value) {
		self = Self(value, unit: .lumens)
	}
}

extension LuminousFlux: Codable where Value: Codable {

}

extension LuminousFlux: Comparable where Value: Comparable {
	
}

extension LuminousFlux: Equatable {
	
}

extension LuminousFlux: MeasurementBinaryFloatingPoint {
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

extension LuminousFlux: Sendable where Value: Sendable {

}
