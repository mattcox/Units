//
//  Mass.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the resistance to acceleration when a force is
/// applied.
///
/// Mass is stored as kilograms, however it can be read and written in various
/// units.
///
public struct Mass<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One carat is 0.2 grams, commonly used to measure gemstones.
	///
		case carats

	/// One centigram is 1⁄100 of a gram or 10 milligrams.
	///
		case centigrams

	/// One decigram is 1⁄10 of a gram or 100 milligrams.
	///
		case decigrams

	/// One gram is the base metric unit of mass, equal to 1,000 milligrams
	/// or 0.001 kilograms.
	///
		case grams

	/// One kilogram is 1,000 grams or approximately 2.205 pounds.
	///
		case kilograms

	/// One metric ton (or tonne) is 1,000 kilograms or about 2,204.6
	/// pounds.
	///
		case metricTons

	/// One microgram is 1⁄1,000,000 of a gram or 1,000 nanograms.
	///
		case micrograms

	/// One milligram is 1⁄1,000 of a gram or 1,000 micrograms.
	///
		case milligrams

	/// One nanogram is 1⁄1,000,000,000 of a gram or 1⁄1,000 of a
	/// microgram.
	///
		case nanograms

	/// One ounce is about 28.35 grams or 1⁄16 of a pound.
	///
		case ounces

	/// One troy ounce is about 31.103 grams, used for precious metals.
	///
		case ouncesTroy

	/// One picogram is 1⁄1,000,000,000,000 of a gram or 1⁄1,000 of a
	/// nanogram.
	///
		case picograms

	/// One pound is 16 ounces or about 453.592 grams.
	///
		case pounds

	/// One short ton (US ton) is 2,000 pounds or about 907.18 kilograms.
	///
		case shortTons

	/// One slug is about 14.5939 kilograms, used in physics to relate mass
	/// to force under Earth’s gravity.
	///
		case slugs

	/// One stone is 14 pounds or about 6.35 kilograms, commonly used in the
	/// UK for body weight.
	///
		case stones
		
		public static var base: Self {
			.kilograms
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .carats:
					"ct"

				case .centigrams:
					"cg"

				case .decigrams:
					"dg"

				case .grams:
					"g"

				case .kilograms:
					"kg"

				case .metricTons:
					"t"

				case .micrograms:
					"µg"

				case .milligrams:
					"mg"

				case .nanograms:
					"ng"

				case .ounces:
					"oz"

				case .ouncesTroy:
					"oz t"

				case .picograms:
					"pg"

				case .pounds:
					"lb"

				case .shortTons:
					"ton"

				case .slugs:
					"slug"

				case .stones:
					"st"
			}
		}
		
		public var coefficient: Value {
			switch self {
				case .carats:
					0.0002

				case .centigrams:
					1e-05

				case .decigrams:
					0.0001

				case .grams:
					0.001

				case .kilograms:
					1.0

				case .metricTons:
					1000.0

				case .micrograms:
					1e-09

				case .milligrams:
					1e-06

				case .nanograms:
					1e-12

				case .ounces:
					0.0283495

				case .ouncesTroy:
					0.03110348

				case .picograms:
					1e-15

				case .pounds:
					0.453592

				case .shortTons:
					907.185

				case .slugs:
					14.5939

				case .stones:
					6.35029
			}
		}
	}
	
	private(set) public var value: Value
}

extension Mass {
/// Initialize the mass using a value in carats.
///
/// One carat is 0.2 grams, commonly used to measure gemstones.
///
/// - Parameters:
///   - value: The mass in carats.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func carats(_ value: Value) -> Self {
		Self(value, unit: .carats)
	}

/// Initialize the mass using a value in centigrams.
///
/// One centigram is 1⁄100 of a gram or 10 milligrams.
///
/// - Parameters:
///   - value: The mass in centigrams.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func centigrams(_ value: Value) -> Self {
		Self(value, unit: .centigrams)
	}

/// Initialize the mass using a value in decigrams.
///
/// One decigram is 1⁄10 of a gram or 100 milligrams.
///
/// - Parameters:
///   - value: The mass in decigrams.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func decigrams(_ value: Value) -> Self {
		Self(value, unit: .decigrams)
	}

/// Initialize the mass using a value in grams.
///
/// One gram is the base metric unit of mass, equal to 1,000 milligrams or
/// 0.001 kilograms.
///
/// - Parameters:
///   - value: The mass in grams.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func grams(_ value: Value) -> Self {
		Self(value, unit: .grams)
	}

/// Initialize the mass using a value in kilograms.
///
/// One kilogram is 1,000 grams or approximately 2.205 pounds.
///
/// - Parameters:
///   - value: The mass in kilograms.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func kilograms(_ value: Value) -> Self {
		Self(value, unit: .kilograms)
	}

/// Initialize the mass using a value in metric tons.
///
/// One metric ton (or tonne) is 1,000 kilograms or about 2,204.6 pounds.
///
/// - Parameters:
///   - value: The mass in metric tons.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func metricTons(_ value: Value) -> Self {
		Self(value, unit: .metricTons)
	}

/// Initialize the mass using a value in micrograms.
///
/// One microgram is 1⁄1,000,000 of a gram or 1,000 nanograms.
///
/// - Parameters:
///   - value: The mass in micrograms.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func micrograms(_ value: Value) -> Self {
		Self(value, unit: .micrograms)
	}

/// Initialize the mass using a value in milligrams.
///
/// One milligram is 1⁄1,000 of a gram or 1,000 micrograms.
///
/// - Parameters:
///   - value: The mass in milligrams.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func milligrams(_ value: Value) -> Self {
		Self(value, unit: .milligrams)
	}

/// Initialize the mass using a value in nanograms.
///
/// One nanogram is 1⁄1,000,000,000 of a gram or 1⁄1,000 of a microgram.
///
/// - Parameters:
///   - value: The mass in nanograms.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func nanograms(_ value: Value) -> Self {
		Self(value, unit: .nanograms)
	}

/// Initialize the mass using a value in ounces.
///
/// One ounce is about 28.35 grams or 1⁄16 of a pound.
///
/// - Parameters:
///   - value: The mass in ounces.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func ounces(_ value: Value) -> Self {
		Self(value, unit: .ounces)
	}

/// Initialize the mass using a value in troy ounces.
///
/// One troy ounce is about 31.103 grams, used for precious metals.
///
/// - Parameters:
///   - value: The mass in troy ounces.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func ouncesTroy(_ value: Value) -> Self {
		Self(value, unit: .ouncesTroy)
	}

/// Initialize the mass using a value in picograms.
///
/// One picogram is 1⁄1,000,000,000,000 of a gram or 1⁄1,000 of a nanogram.
///
/// - Parameters:
///   - value: The mass in picograms.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func picograms(_ value: Value) -> Self {
		Self(value, unit: .picograms)
	}

/// Initialize the mass using a value in pounds.
///
/// One pound is 16 ounces or about 453.592 grams.
///
/// - Parameters:
///   - value: The mass in pounds.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func pounds(_ value: Value) -> Self {
		Self(value, unit: .pounds)
	}

/// Initialize the mass using a value in short tons.
///
/// One short ton (US ton) is 2,000 pounds or about 907.18 kilograms.
///
/// - Parameters:
///   - value: The mass in short tons.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func shortTons(_ value: Value) -> Self {
		Self(value, unit: .shortTons)
	}

/// Initialize the mass using a value in slugs.
///
/// One slug is about 14.5939 kilograms, used in physics to relate mass to
/// force under Earth’s gravity.
///
/// - Parameters:
///   - value: The mass in slugs.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func slugs(_ value: Value) -> Self {
		Self(value, unit: .slugs)
	}

/// Initialize the mass using a value in stones.
///
/// One stone is 14 pounds or about 6.35 kilograms, commonly used in the UK
/// for body weight.
///
/// - Parameters:
///   - value: The mass in stones.
///
/// - Returns: The measurement representing the provided mass.
///
	public static func stones(_ value: Value) -> Self {
		Self(value, unit: .stones)
	}

/// The mass measured in carats.
///
/// One carat is 0.2 grams, commonly used to measure gemstones.
///
	public var carats: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .carats)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .carats, to: .base)
		}
	}

/// The mass measured in centigrams.
///
/// One centigram is 1⁄100 of a gram or 10 milligrams.
///
	public var centigrams: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .centigrams)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .centigrams, to: .base)
		}
	}

/// The mass measured in decigrams.
///
/// One decigram is 1⁄10 of a gram or 100 milligrams.
///
	public var decigrams: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .decigrams)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .decigrams, to: .base)
		}
	}

/// The mass measured in grams.
///
/// One gram is the base metric unit of mass, equal to 1,000 milligrams or
/// 0.001 kilograms.
///
	public var grams: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .grams)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .grams, to: .base)
		}
	}

/// The mass measured in kilograms.
///
/// One kilogram is 1,000 grams or approximately 2.205 pounds.
///
	public var kilograms: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .kilograms)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .kilograms, to: .base)
		}
	}

/// The mass measured in metric tons.
///
/// One metric ton (or tonne) is 1,000 kilograms or about 2,204.6 pounds.
///
	public var metricTons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .metricTons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .metricTons, to: .base)
		}
	}

/// The mass measured in micrograms.
///
/// One microgram is 1⁄1,000,000 of a gram or 1,000 nanograms.
///
	public var micrograms: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .micrograms)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .micrograms, to: .base)
		}
	}

/// The mass measured in milligrams.
///
/// One milligram is 1⁄1,000 of a gram or 1,000 micrograms.
///
	public var milligrams: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .milligrams)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .milligrams, to: .base)
		}
	}

/// The mass measured in nanograms.
///
/// One nanogram is 1⁄1,000,000,000 of a gram or 1⁄1,000 of a microgram.
///
	public var nanograms: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .nanograms)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .nanograms, to: .base)
		}
	}

/// The mass measured in ounces.
///
/// One ounce is about 28.35 grams or 1⁄16 of a pound.
///
	public var ounces: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .ounces)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .ounces, to: .base)
		}
	}

/// The mass measured in troy ounces.
///
/// One troy ounce is about 31.103 grams, used for precious metals.
///
	public var ouncesTroy: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .ouncesTroy)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .ouncesTroy, to: .base)
		}
	}

/// The mass measured in picograms.
///
/// One picogram is 1⁄1,000,000,000,000 of a gram or 1⁄1,000 of a nanogram.
///
	public var picograms: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .picograms)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .picograms, to: .base)
		}
	}

/// The mass measured in pounds.
///
/// One pound is 16 ounces or about 453.592 grams.
///
	public var pounds: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .pounds)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .pounds, to: .base)
		}
	}

/// The mass measured in short tons.
///
/// One short ton (US ton) is 2,000 pounds or about 907.18 kilograms.
///
	public var shortTons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .shortTons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .shortTons, to: .base)
		}
	}

/// The mass measured in slugs.
///
/// One slug is about 14.5939 kilograms, used in physics to relate mass to
/// force under Earth’s gravity.
///
	public var slugs: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .slugs)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .slugs, to: .base)
		}
	}

/// The mass measured in stones.
///
/// One stone is 14 pounds or about 6.35 kilograms, commonly used in the UK
/// for body weight.
///
	public var stones: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .stones)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .stones, to: .base)
		}
	}

/// Initialize the measurement from a mass measured in carats.
///
/// One carat is 0.2 grams, commonly used to measure gemstones.
///
/// - Parameters:
///   - value: The mass measured in carats.
///
	public init(carats value: Value) {
		self = Mass(value, unit: .carats)
	}

/// Initialize the measurement from a mass measured in centigrams.
///
/// One centigram is 1⁄100 of a gram or 10 milligrams.
///
/// - Parameters:
///   - value: The mass measured in centigrams.
///
	public init(centigrams value: Value) {
		self = Mass(value, unit: .centigrams)
	}

/// Initialize the measurement from a mass measured in decigrams.
///
/// One decigram is 1⁄10 of a gram or 100 milligrams.
///
/// - Parameters:
///   - value: The mass measured in decigrams.
///
	public init(decigrams value: Value) {
		self = Mass(value, unit: .decigrams)
	}

/// Initialize the measurement from a mass measured in grams.
///
/// One gram is the base metric unit of mass, equal to 1,000 milligrams or
/// 0.001 kilograms.
///
/// - Parameters:
///   - value: The mass measured in grams.
///
	public init(grams value: Value) {
		self = Mass(value, unit: .grams)
	}

/// Initialize the measurement from a mass measured in kilograms.
///
/// One kilogram is 1,000 grams or approximately 2.205 pounds.
///
/// - Parameters:
///   - value: The mass measured in kilograms.
///
	public init(kilograms value: Value) {
		self = Mass(value, unit: .kilograms)
	}

/// Initialize the measurement from a mass measured in metric tons.
///
/// One metric ton (or tonne) is 1,000 kilograms or about 2,204.6 pounds.
///
/// - Parameters:
///   - value: The mass measured in metric tons.
///
	public init(metricTons value: Value) {
		self = Mass(value, unit: .metricTons)
	}

/// Initialize the measurement from a mass measured in micrograms.
///
/// One microgram is 1⁄1,000,000 of a gram or 1,000 nanograms.
///
/// - Parameters:
///   - value: The mass measured in micrograms.
///
	public init(micrograms value: Value) {
		self = Mass(value, unit: .micrograms)
	}

/// Initialize the measurement from a mass measured in milligrams.
///
/// One milligram is 1⁄1,000 of a gram or 1,000 micrograms.
///
/// - Parameters:
///   - value: The mass measured in milligrams.
///
	public init(milligrams value: Value) {
		self = Mass(value, unit: .milligrams)
	}

/// Initialize the measurement from a mass measured in nanograms.
///
/// One nanogram is 1⁄1,000,000,000 of a gram or 1⁄1,000 of a microgram.
///
/// - Parameters:
///   - value: The mass measured in nanograms.
///
	public init(nanograms value: Value) {
		self = Mass(value, unit: .nanograms)
	}

/// Initialize the measurement from a mass measured in ounces.
///
/// One ounce is about 28.35 grams or 1⁄16 of a pound.
///
/// - Parameters:
///   - value: The mass measured in ounces.
///
	public init(ounces value: Value) {
		self = Mass(value, unit: .ounces)
	}

/// Initialize the measurement from a mass measured in troy ounces.
///
/// One troy ounce is about 31.103 grams, used for precious metals.
///
/// - Parameters:
///   - value: The mass measured in troy ounces.
///
	public init(ouncesTroy value: Value) {
		self = Mass(value, unit: .ouncesTroy)
	}

/// Initialize the measurement from a mass measured in picograms.
///
/// One picogram is 1⁄1,000,000,000,000 of a gram or 1⁄1,000 of a nanogram.
///
/// - Parameters:
///   - value: The mass measured in picograms.
///
	public init(picograms value: Value) {
		self = Mass(value, unit: .picograms)
	}

/// Initialize the measurement from a mass measured in pounds.
///
/// One pound is 16 ounces or about 453.592 grams.
///
/// - Parameters:
///   - value: The mass measured in pounds.
///
	public init(pounds value: Value) {
		self = Mass(value, unit: .pounds)
	}

/// Initialize the measurement from a mass measured in short tons.
///
/// One short ton (US ton) is 2,000 pounds or about 907.18 kilograms.
///
/// - Parameters:
///   - value: The mass measured in short tons.
///
	public init(shortTons value: Value) {
		self = Mass(value, unit: .shortTons)
	}

/// Initialize the measurement from a mass measured in slugs.
///
/// One slug is about 14.5939 kilograms, used in physics to relate mass to
/// force under Earth’s gravity.
///
/// - Parameters:
///   - value: The mass measured in slugs.
///
	public init(slugs value: Value) {
		self = Mass(value, unit: .slugs)
	}

/// Initialize the measurement from a mass measured in stones.
///
/// One stone is 14 pounds or about 6.35 kilograms, commonly used in the UK
/// for body weight.
///
/// - Parameters:
///   - value: The mass measured in stones.
///
	public init(stones value: Value) {
		self = Mass(value, unit: .stones)
	}
}

extension Mass: Codable where Value: Codable {

}

extension Mass: Comparable where Value: Comparable {
	public static func < (lhs: Self, rhs: Self) -> Bool {
		lhs.value < rhs.value
	}
}

extension Mass: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Mass: Measurement {
	public init(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
	
	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
}

extension Mass: Sendable where Value: Sendable {

}
