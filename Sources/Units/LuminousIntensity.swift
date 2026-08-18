//
//  LuminousIntensity.swift
//  Units
//
//  Created by Matt Cox on 18/08/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

/// A measurement representing the perceived power of light emitted by a source
/// in a particular direction.
///
/// Luminous intensity is stored as candela.
///
/// This is the quantity a light that emits into a cone is measured in, because
/// it is measured per unit of solid angle rather than in total. A source that
/// emits the same total light through a narrower cone is more intense without
/// being more luminous, which is a distinction ``LuminousFlux`` cannot make.
///
public struct LuminousIntensity<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One candela is equal to one lumen per steradian.
	///
	/// A typical wax candle burns at around 1 candela, which is where the
	/// unit takes its name from, and a car headlight dipped beam is around
	/// 20,000 candela.
	///
		case candela
		
		public static var base: Self {
			.candela
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .candela:
					"cd"
			}
		}
		
		public var coefficient: Value {
			switch self {
				case .candela:
					1.0
			}
		}
	}
	
	private(set) public var value: Value
}

extension LuminousIntensity {
/// Initialize the luminous intensity using a value in candela.
///
/// One candela is equal to one lumen per steradian.
///
/// A typical wax candle burns at around 1 candela, and a car headlight dipped
/// beam is around 20,000 candela.
///
/// - Parameters:
///   - value: The luminous intensity in candela.
///
/// - Returns: The measurement representing the provided luminous intensity.
///
	public static func candela(_ value: Value) -> Self {
		Self(value, unit: .candela)
	}

/// The luminous intensity measured in candela.
///
/// One candela is equal to one lumen per steradian.
///
/// A typical wax candle burns at around 1 candela, and a car headlight dipped
/// beam is around 20,000 candela.
///
	public var candela: Value {
		get {
			self.get(unit: .candela)
		}
		set {
			self.set(newValue, unit: .candela)
		}
	}

/// Initialize the measurement from a luminous intensity measured in candela.
///
/// One candela is equal to one lumen per steradian.
///
/// A typical wax candle burns at around 1 candela, and a car headlight dipped
/// beam is around 20,000 candela.
///
/// - Parameters:
///   - value: The luminous intensity measured in candela.
///
	public init(candela value: Value) {
		self = Self(value, unit: .candela)
	}
}

extension LuminousIntensity: Codable where Value: Codable {

}

extension LuminousIntensity: Comparable where Value: Comparable {
	
}

extension LuminousIntensity: Equatable {
	
}

extension LuminousIntensity: MeasurementBinaryFloatingPoint {
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

extension LuminousIntensity: Sendable where Value: Sendable {

}
