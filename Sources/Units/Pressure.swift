//
//  Pressure.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the amount of force applied per unit area.
///
/// Pressure is stored as newtons per meter squared, however it can be read and
/// written in various units representing pressure.
///
public struct Pressure<T: BinaryFloatingPoint> {
	public enum MeasurementUnit: Unit {
		public typealias Value = T
		
		case bars
		case gigapascals
		case hectopascals
		case inchesOfMercury
		case kilopascals
		case megapascals
		case millibars
		case millimetersOfMercury
		case newtonsPerMetersSquared
		case poundsForcePerSquareInch
		
		public static var base: Self {
			.newtonsPerMetersSquared
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .bars:
					return "bar"

				case .gigapascals:
					return "GPa"

				case .hectopascals:
					return "hPa"

				case .inchesOfMercury:
					return "inHg"

				case .kilopascals:
					return "kPa"

				case .megapascals:
					return "MPa"

				case .millibars:
					return "mbar"

				case .millimetersOfMercury:
					return "mmHg"

				case .newtonsPerMetersSquared:
					return "N/m²"

				case .poundsForcePerSquareInch:
					return "psi"
			}
		}
		
		public static func convert(value: Value, from: Pressure<Value>.MeasurementUnit, to: Pressure<Value>.MeasurementUnit) -> Value {
			guard from != to else {
				return value
			}
			
			let base: T = {
				switch from {
					case .bars:
						value * 100000.0

					case .gigapascals:
						value * 1000000000.0

					case .hectopascals:
						value * 100.0

					case .inchesOfMercury:
						value * 3386.39

					case .kilopascals:
						value * 1000.0

					case .megapascals:
						value * 1000000.0

					case .millibars:
						value * 100.0

					case .millimetersOfMercury:
						value * 133.322

					case .newtonsPerMetersSquared:
						value * 1.0

					case .poundsForcePerSquareInch:
						value * 6894.76
				}
			}()

			switch to {
				case .bars:
					return base * 1e-05

				case .gigapascals:
					return base * 1e-09

				case .hectopascals:
					return base * 0.01

				case .inchesOfMercury:
					return base * 0.00029529971444517615

				case .kilopascals:
					return base * 0.001

				case .megapascals:
					return base * 1e-06

				case .millibars:
					return base * 0.01

				case .millimetersOfMercury:
					return base * 0.007500637554192106

				case .newtonsPerMetersSquared:
					return base * 1.0

				case .poundsForcePerSquareInch:
					return base * 0.0001450376807894691
			}
	
		}
	}
	
	private(set) public var value: T
}

extension Pressure {
/// Initialize the measurement from a pressure in bars.
///
/// - Parameters:
///   - value: The pressure in bars.
///
/// - Returns: The measurement of the provided pressure.
///
	public static func bars(_ value: Value) -> Self {
		Self(value, unit: .bars)
	}

/// Initialize the measurement from a pressure in gigapascals.
///
/// - Parameters:
///   - value: The pressure in gigapascals.
///
/// - Returns: The measurement of the provided pressure.
///
	public static func gigapascals(_ value: Value) -> Self {
		Self(value, unit: .gigapascals)
	}

/// Initialize the measurement from a pressure in hectopascals.
///
/// - Parameters:
///   - value: The pressure in hectopascals.
///
/// - Returns: The measurement of the provided pressure.
///
	public static func hectopascals(_ value: Value) -> Self {
		Self(value, unit: .hectopascals)
	}

/// Initialize the measurement from a pressure in inches of mercury.
///
/// - Parameters:
///   - value: The pressure in inches of mercury.
///
/// - Returns: The measurement of the provided pressure.
///
	public static func inchesOfMercury(_ value: Value) -> Self {
		Self(value, unit: .inchesOfMercury)
	}

/// Initialize the measurement from a pressure in kilopascals.
///
/// - Parameters:
///   - value: The pressure in kilopascals.
///
/// - Returns: The measurement of the provided pressure.
///
	public static func kilopascals(_ value: Value) -> Self {
		Self(value, unit: .kilopascals)
	}

/// Initialize the measurement from a pressure in megapascals.
///
/// - Parameters:
///   - value: The pressure in megapascals.
///
/// - Returns: The measurement of the provided pressure.
///
	public static func megapascals(_ value: Value) -> Self {
		Self(value, unit: .megapascals)
	}

/// Initialize the measurement from a pressure in millibars.
///
/// - Parameters:
///   - value: The pressure in millibars.
///
/// - Returns: The measurement of the provided pressure.
///
	public static func millibars(_ value: Value) -> Self {
		Self(value, unit: .millibars)
	}

/// Initialize the measurement from a pressure in millimeters of mercury.
///
/// - Parameters:
///   - value: The pressure in millimeters of mercury.
///
/// - Returns: The measurement of the provided pressure.
///
	public static func millimetersOfMercury(_ value: Value) -> Self {
		Self(value, unit: .millimetersOfMercury)
	}

/// Initialize the measurement from a pressure in newtons per meters squared.
///
/// - Parameters:
///   - value: The pressure in newtons per meters squared.
///
/// - Returns: The measurement of the provided pressure.
///
	public static func newtonsPerMetersSquared(_ value: Value) -> Self {
		Self(value, unit: .newtonsPerMetersSquared)
	}

/// Initialize the measurement from a pressure in pounds force per square inch.
///
/// - Parameters:
///   - value: The pressure in pounds force per square inch.
///
/// - Returns: The measurement of the provided pressure.
///
	public static func poundsForcePerSquareInch(_ value: Value) -> Self {
		Self(value, unit: .poundsForcePerSquareInch)
	}

/// The measurement in bars.
///
	public var bars: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .bars)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .bars, to: .base)
		}
	}

/// The measurement in gigapascals.
///
	public var gigapascals: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .gigapascals)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .gigapascals, to: .base)
		}
	}

/// The measurement in hectopascals.
///
	public var hectopascals: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .hectopascals)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .hectopascals, to: .base)
		}
	}

/// The measurement in inches of mercury.
///
	public var inchesOfMercury: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .inchesOfMercury)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .inchesOfMercury, to: .base)
		}
	}

/// The measurement in kilopascals.
///
	public var kilopascals: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .kilopascals)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .kilopascals, to: .base)
		}
	}

/// The measurement in megapascals.
///
	public var megapascals: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .megapascals)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .megapascals, to: .base)
		}
	}

/// The measurement in millibars.
///
	public var millibars: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .millibars)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .millibars, to: .base)
		}
	}

/// The measurement in millimeters of mercury.
///
	public var millimetersOfMercury: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .millimetersOfMercury)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .millimetersOfMercury, to: .base)
		}
	}

/// The measurement in newtons per meters squared.
///
	public var newtonsPerMetersSquared: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .newtonsPerMetersSquared)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .newtonsPerMetersSquared, to: .base)
		}
	}

/// The measurement in pounds force per square inch.
///
	public var poundsForcePerSquareInch: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .poundsForcePerSquareInch)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .poundsForcePerSquareInch, to: .base)
		}
	}

/// Initialize the measurement from bars.
///
/// - Parameters:
///   - value: The Pressure in bars.
///
	public init(bars value: Value) {
		self = Pressure(value, unit: .bars)
	}

/// Initialize the measurement from gigapascals.
///
/// - Parameters:
///   - value: The Pressure in gigapascals.
///
	public init(gigapascals value: Value) {
		self = Pressure(value, unit: .gigapascals)
	}

/// Initialize the measurement from hectopascals.
///
/// - Parameters:
///   - value: The Pressure in hectopascals.
///
	public init(hectopascals value: Value) {
		self = Pressure(value, unit: .hectopascals)
	}

/// Initialize the measurement from inches of mercury.
///
/// - Parameters:
///   - value: The Pressure in inches of mercury.
///
	public init(inchesOfMercury value: Value) {
		self = Pressure(value, unit: .inchesOfMercury)
	}

/// Initialize the measurement from kilopascals.
///
/// - Parameters:
///   - value: The Pressure in kilopascals.
///
	public init(kilopascals value: Value) {
		self = Pressure(value, unit: .kilopascals)
	}

/// Initialize the measurement from megapascals.
///
/// - Parameters:
///   - value: The Pressure in megapascals.
///
	public init(megapascals value: Value) {
		self = Pressure(value, unit: .megapascals)
	}

/// Initialize the measurement from millibars.
///
/// - Parameters:
///   - value: The Pressure in millibars.
///
	public init(millibars value: Value) {
		self = Pressure(value, unit: .millibars)
	}

/// Initialize the measurement from millimeters of mercury.
///
/// - Parameters:
///   - value: The Pressure in millimeters of mercury.
///
	public init(millimetersOfMercury value: Value) {
		self = Pressure(value, unit: .millimetersOfMercury)
	}

/// Initialize the measurement from newtons per meters squared.
///
/// - Parameters:
///   - value: The Pressure in newtons per meters squared.
///
	public init(newtonsPerMetersSquared value: Value) {
		self = Pressure(value, unit: .newtonsPerMetersSquared)
	}

/// Initialize the measurement from pounds force per square inch.
///
/// - Parameters:
///   - value: The Pressure in pounds force per square inch.
///
	public init(poundsForcePerSquareInch value: Value) {
		self = Pressure(value, unit: .poundsForcePerSquareInch)
	}
}

extension Pressure: Codable where Value: Codable {

}

extension Pressure: Comparable where Value: Comparable {
	public static func < (lhs: Pressure<T>, rhs: Pressure<T>) -> Bool {
		lhs.value < rhs.value
	}
}

extension Pressure: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Pressure: Measurement {
	public init(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
	
	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
}

extension Pressure: Sendable where Value: Sendable {

}

