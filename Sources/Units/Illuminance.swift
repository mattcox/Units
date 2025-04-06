//
//  Illuminance.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// An measurement representing the the luminous flux per unit area incident
/// on a surface.
///
/// Illuminance is stored as lux.
///
public struct Illuminance<T: BinaryFloatingPoint> {
	public enum MeasurementUnit: Unit {
		public typealias Value = T
		
		case lux
		
		public static var base: Self {
			.lux
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .lux:
					return "lx"
			}
		}
		
		public static func convert(value: Value, from: Illuminance<Value>.MeasurementUnit, to: Illuminance<Value>.MeasurementUnit) -> Value {
			guard from != to else {
				return value
			}
			
			let base: T = {
				switch from {
					case .lux:
						value * 1.0
				}
			}()

			switch to {
				case .lux:
					return base * 1.0
			}
		}
	}
	
	private(set) public var value: T
}

extension Illuminance {
/// Initialize the measurement from illuminance in lux.
///
/// - Parameters:
///   - value: The illuminance in lux.
///
/// - Returns: The measurement of the provided illuminance.
///
	public static func lux(_ value: Value) -> Self {
		Self(value, unit: .lux)
	}

/// The illuminance in lux.
///
	public var lux: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .lux)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .lux, to: .base)
		}
	}

/// Initialize the measurement from lux.
///
/// - Parameters:
///   - value: The illuminance in lux.
///
	public init(lux value: Value) {
		self = Illuminance(value, unit: .lux)
	}
}

extension Illuminance: Codable where Value: Codable {

}

extension Illuminance: Comparable where Value: Comparable {
	public static func < (lhs: Illuminance<T>, rhs: Illuminance<T>) -> Bool {
		lhs.value < rhs.value
	}
}

extension Illuminance: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Illuminance: Measurement {
	public init(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
	
	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
}

extension Illuminance: Sendable where Value: Sendable {

}
