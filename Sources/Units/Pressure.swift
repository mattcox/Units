//
//  Pressure.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the amount of force applied per unit area.
///
/// Pressure is stored as newtons per meters squared, however it can be read and
/// written in various units.
///
public struct Pressure<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One bar is equal to 100,000 pascals or 100 kilopascals, slightly
	/// less than atmospheric pressure.
	///
		case bars

	/// One gigapascal is 1,000,000,000 pascals, used in materials science
	/// for extremely high pressures.
	///
		case gigapascals

	/// One hectopascal is 100 pascals and is commonly used in meteorology;
	/// 1,013.25 hPa equals standard atmospheric pressure.
	///
		case hectopascals

	/// One inch of mercury (inHg) is approximately 3,386.39 pascals, often
	/// used in aviation and weather reports.
	///
		case inchesOfMercury

	/// One kilopascal is 1,000 pascals; 101.325 kPa equals standard
	/// atmospheric pressure.
	///
		case kilopascals

	/// One megapascal is 1,000,000 pascals or 1,000 kilopascals, used in
	/// hydraulics and engineering contexts.
	///
		case megapascals

	/// One millibar is 100 pascals or 1 hectopascal, commonly used in
	/// meteorology.
	///
		case millibars

	/// One millimeter of mercury (mmHg) is approximately 133.322 pascals,
	/// used in medicine and physiology.
	///
		case millimetersOfMercury

	/// One newton per meter squared is equal to one pascal, the SI base
	/// unit of pressure.
	///
		case newtonsPerMetersSquared

	/// One pound-force per square inch (psi) is approximately 6,894.76
	/// pascals, commonly used in tires and hydraulics.
	///
		case poundsForcePerSquareInch
		
		public static var base: Self {
			.newtonsPerMetersSquared
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .bars:
					"bar"

				case .gigapascals:
					"GPa"

				case .hectopascals:
					"hPa"

				case .inchesOfMercury:
					"inHg"

				case .kilopascals:
					"kPa"

				case .megapascals:
					"MPa"

				case .millibars:
					"mbar"

				case .millimetersOfMercury:
					"mmHg"

				case .newtonsPerMetersSquared:
					"N/m²"

				case .poundsForcePerSquareInch:
					"psi"
			}
		}
		
		public var coefficient: Value {
			switch self {
				case .bars:
					100000.0

				case .gigapascals:
					1000000000.0

				case .hectopascals:
					100.0

				case .inchesOfMercury:
					3386.39

				case .kilopascals:
					1000.0

				case .megapascals:
					1000000.0

				case .millibars:
					100.0

				case .millimetersOfMercury:
					133.322

				case .newtonsPerMetersSquared:
					1.0

				case .poundsForcePerSquareInch:
					6894.76
			}
		}
	}
	
	private(set) public var value: Value
}

extension Pressure {
/// Initialize the pressure using a value in bars.
///
/// One bar is equal to 100,000 pascals or 100 kilopascals, slightly less
/// than atmospheric pressure.
///
/// - Parameters:
///   - value: The pressure in bars.
///
/// - Returns: The measurement representing the provided pressure.
///
	public static func bars(_ value: Value) -> Self {
		Self(value, unit: .bars)
	}

/// Initialize the pressure using a value in gigapascals.
///
/// One gigapascal is 1,000,000,000 pascals, used in materials science for
/// extremely high pressures.
///
/// - Parameters:
///   - value: The pressure in gigapascals.
///
/// - Returns: The measurement representing the provided pressure.
///
	public static func gigapascals(_ value: Value) -> Self {
		Self(value, unit: .gigapascals)
	}

/// Initialize the pressure using a value in hectopascals.
///
/// One hectopascal is 100 pascals and is commonly used in meteorology;
/// 1,013.25 hPa equals standard atmospheric pressure.
///
/// - Parameters:
///   - value: The pressure in hectopascals.
///
/// - Returns: The measurement representing the provided pressure.
///
	public static func hectopascals(_ value: Value) -> Self {
		Self(value, unit: .hectopascals)
	}

/// Initialize the pressure using a value in inches of mercury.
///
/// One inch of mercury (inHg) is approximately 3,386.39 pascals, often used
/// in aviation and weather reports.
///
/// - Parameters:
///   - value: The pressure in inches of mercury.
///
/// - Returns: The measurement representing the provided pressure.
///
	public static func inchesOfMercury(_ value: Value) -> Self {
		Self(value, unit: .inchesOfMercury)
	}

/// Initialize the pressure using a value in kilopascals.
///
/// One kilopascal is 1,000 pascals; 101.325 kPa equals standard atmospheric
/// pressure.
///
/// - Parameters:
///   - value: The pressure in kilopascals.
///
/// - Returns: The measurement representing the provided pressure.
///
	public static func kilopascals(_ value: Value) -> Self {
		Self(value, unit: .kilopascals)
	}

/// Initialize the pressure using a value in megapascals.
///
/// One megapascal is 1,000,000 pascals or 1,000 kilopascals, used in
/// hydraulics and engineering contexts.
///
/// - Parameters:
///   - value: The pressure in megapascals.
///
/// - Returns: The measurement representing the provided pressure.
///
	public static func megapascals(_ value: Value) -> Self {
		Self(value, unit: .megapascals)
	}

/// Initialize the pressure using a value in millibars.
///
/// One millibar is 100 pascals or 1 hectopascal, commonly used in
/// meteorology.
///
/// - Parameters:
///   - value: The pressure in millibars.
///
/// - Returns: The measurement representing the provided pressure.
///
	public static func millibars(_ value: Value) -> Self {
		Self(value, unit: .millibars)
	}

/// Initialize the pressure using a value in millimeters of mercury.
///
/// One millimeter of mercury (mmHg) is approximately 133.322 pascals, used
/// in medicine and physiology.
///
/// - Parameters:
///   - value: The pressure in millimeters of mercury.
///
/// - Returns: The measurement representing the provided pressure.
///
	public static func millimetersOfMercury(_ value: Value) -> Self {
		Self(value, unit: .millimetersOfMercury)
	}

/// Initialize the pressure using a value in newtons per meters squared.
///
/// One newton per meter squared is equal to one pascal, the SI base unit of
/// pressure.
///
/// - Parameters:
///   - value: The pressure in newtons per meters squared.
///
/// - Returns: The measurement representing the provided pressure.
///
	public static func newtonsPerMetersSquared(_ value: Value) -> Self {
		Self(value, unit: .newtonsPerMetersSquared)
	}

/// Initialize the pressure using a value in pounds force per square inch.
///
/// One pound-force per square inch (psi) is approximately 6,894.76 pascals,
/// commonly used in tires and hydraulics.
///
/// - Parameters:
///   - value: The pressure in pounds force per square inch.
///
/// - Returns: The measurement representing the provided pressure.
///
	public static func poundsForcePerSquareInch(_ value: Value) -> Self {
		Self(value, unit: .poundsForcePerSquareInch)
	}

/// The pressure measured in bars.
///
/// One bar is equal to 100,000 pascals or 100 kilopascals, slightly less
/// than atmospheric pressure.
///
	public var bars: Value {
		get {
			self.get(unit: .bars)
		}
		set {
			self.set(newValue, unit: .bars)
		}
	}

/// The pressure measured in gigapascals.
///
/// One gigapascal is 1,000,000,000 pascals, used in materials science for
/// extremely high pressures.
///
	public var gigapascals: Value {
		get {
			self.get(unit: .gigapascals)
		}
		set {
			self.set(newValue, unit: .gigapascals)
		}
	}

/// The pressure measured in hectopascals.
///
/// One hectopascal is 100 pascals and is commonly used in meteorology;
/// 1,013.25 hPa equals standard atmospheric pressure.
///
	public var hectopascals: Value {
		get {
			self.get(unit: .hectopascals)
		}
		set {
			self.set(newValue, unit: .hectopascals)
		}
	}

/// The pressure measured in inches of mercury.
///
/// One inch of mercury (inHg) is approximately 3,386.39 pascals, often used
/// in aviation and weather reports.
///
	public var inchesOfMercury: Value {
		get {
			self.get(unit: .inchesOfMercury)
		}
		set {
			self.set(newValue, unit: .inchesOfMercury)
		}
	}

/// The pressure measured in kilopascals.
///
/// One kilopascal is 1,000 pascals; 101.325 kPa equals standard atmospheric
/// pressure.
///
	public var kilopascals: Value {
		get {
			self.get(unit: .kilopascals)
		}
		set {
			self.set(newValue, unit: .kilopascals)
		}
	}

/// The pressure measured in megapascals.
///
/// One megapascal is 1,000,000 pascals or 1,000 kilopascals, used in
/// hydraulics and engineering contexts.
///
	public var megapascals: Value {
		get {
			self.get(unit: .megapascals)
		}
		set {
			self.set(newValue, unit: .megapascals)
		}
	}

/// The pressure measured in millibars.
///
/// One millibar is 100 pascals or 1 hectopascal, commonly used in
/// meteorology.
///
	public var millibars: Value {
		get {
			self.get(unit: .millibars)
		}
		set {
			self.set(newValue, unit: .millibars)
		}
	}

/// The pressure measured in millimeters of mercury.
///
/// One millimeter of mercury (mmHg) is approximately 133.322 pascals, used
/// in medicine and physiology.
///
	public var millimetersOfMercury: Value {
		get {
			self.get(unit: .millimetersOfMercury)
		}
		set {
			self.set(newValue, unit: .millimetersOfMercury)
		}
	}

/// The pressure measured in newtons per meters squared.
///
/// One newton per meter squared is equal to one pascal, the SI base unit of
/// pressure.
///
	public var newtonsPerMetersSquared: Value {
		get {
			self.get(unit: .newtonsPerMetersSquared)
		}
		set {
			self.set(newValue, unit: .newtonsPerMetersSquared)
		}
	}

/// The pressure measured in pounds force per square inch.
///
/// One pound-force per square inch (psi) is approximately 6,894.76 pascals,
/// commonly used in tires and hydraulics.
///
	public var poundsForcePerSquareInch: Value {
		get {
			self.get(unit: .poundsForcePerSquareInch)
		}
		set {
			self.set(newValue, unit: .poundsForcePerSquareInch)
		}
	}

/// Initialize the measurement from a pressure measured in bars.
///
/// One bar is equal to 100,000 pascals or 100 kilopascals, slightly less
/// than atmospheric pressure.
///
/// - Parameters:
///   - value: The pressure measured in bars.
///
	public init(bars value: Value) {
		self = Pressure(value, unit: .bars)
	}

/// Initialize the measurement from a pressure measured in gigapascals.
///
/// One gigapascal is 1,000,000,000 pascals, used in materials science for
/// extremely high pressures.
///
/// - Parameters:
///   - value: The pressure measured in gigapascals.
///
	public init(gigapascals value: Value) {
		self = Pressure(value, unit: .gigapascals)
	}

/// Initialize the measurement from a pressure measured in hectopascals.
///
/// One hectopascal is 100 pascals and is commonly used in meteorology;
/// 1,013.25 hPa equals standard atmospheric pressure.
///
/// - Parameters:
///   - value: The pressure measured in hectopascals.
///
	public init(hectopascals value: Value) {
		self = Pressure(value, unit: .hectopascals)
	}

/// Initialize the measurement from a pressure measured in inches of
/// mercury.
///
/// One inch of mercury (inHg) is approximately 3,386.39 pascals, often used
/// in aviation and weather reports.
///
/// - Parameters:
///   - value: The pressure measured in inches of mercury.
///
	public init(inchesOfMercury value: Value) {
		self = Pressure(value, unit: .inchesOfMercury)
	}

/// Initialize the measurement from a pressure measured in kilopascals.
///
/// One kilopascal is 1,000 pascals; 101.325 kPa equals standard atmospheric
/// pressure.
///
/// - Parameters:
///   - value: The pressure measured in kilopascals.
///
	public init(kilopascals value: Value) {
		self = Pressure(value, unit: .kilopascals)
	}

/// Initialize the measurement from a pressure measured in megapascals.
///
/// One megapascal is 1,000,000 pascals or 1,000 kilopascals, used in
/// hydraulics and engineering contexts.
///
/// - Parameters:
///   - value: The pressure measured in megapascals.
///
	public init(megapascals value: Value) {
		self = Pressure(value, unit: .megapascals)
	}

/// Initialize the measurement from a pressure measured in millibars.
///
/// One millibar is 100 pascals or 1 hectopascal, commonly used in
/// meteorology.
///
/// - Parameters:
///   - value: The pressure measured in millibars.
///
	public init(millibars value: Value) {
		self = Pressure(value, unit: .millibars)
	}

/// Initialize the measurement from a pressure measured in millimeters of
/// mercury.
///
/// One millimeter of mercury (mmHg) is approximately 133.322 pascals, used
/// in medicine and physiology.
///
/// - Parameters:
///   - value: The pressure measured in millimeters of mercury.
///
	public init(millimetersOfMercury value: Value) {
		self = Pressure(value, unit: .millimetersOfMercury)
	}

/// Initialize the measurement from a pressure measured in newtons per
/// meters squared.
///
/// One newton per meter squared is equal to one pascal, the SI base unit of
/// pressure.
///
/// - Parameters:
///   - value: The pressure measured in newtons per meters squared.
///
	public init(newtonsPerMetersSquared value: Value) {
		self = Pressure(value, unit: .newtonsPerMetersSquared)
	}

/// Initialize the measurement from a pressure measured in pounds force per
/// square inch.
///
/// One pound-force per square inch (psi) is approximately 6,894.76 pascals,
/// commonly used in tires and hydraulics.
///
/// - Parameters:
///   - value: The pressure measured in pounds force per square inch.
///
	public init(poundsForcePerSquareInch value: Value) {
		self = Pressure(value, unit: .poundsForcePerSquareInch)
	}
}

extension Pressure: Codable where Value: Codable {

}

extension Pressure: Comparable where Value: Comparable {
	public static func < (lhs: Self, rhs: Self) -> Bool {
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
	
	public func get(unit: MeasurementUnit) -> Value {
		MeasurementUnit.convert(value: self.value, from: .base, to: unit)
	}
}

extension Pressure: Sendable where Value: Sendable {

}
