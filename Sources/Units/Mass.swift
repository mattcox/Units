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
/// units representing mass.
///
public struct Mass<T: BinaryFloatingPoint> {
	public enum MeasurementUnit: Unit {
		public typealias Value = T
		
		case carats
		case centigrams
		case decigrams
		case grams
		case kilograms
		case metricTons
		case micrograms
		case milligrams
		case nanograms
		case ounces
		case ouncesTroy
		case picograms
		case pounds
		case shortTons
		case slugs
		case stones
		
		public static var base: Self {
			.kilograms
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .carats:
					return "ct"

				case .centigrams:
					return "cg"

				case .decigrams:
					return "dg"

				case .grams:
					return "g"

				case .kilograms:
					return "kg"

				case .metricTons:
					return "t"

				case .micrograms:
					return "µg"

				case .milligrams:
					return "mg"

				case .nanograms:
					return "ng"

				case .ounces:
					return "oz"

				case .ouncesTroy:
					return "oz t"

				case .picograms:
					return "pg"

				case .pounds:
					return "lb"

				case .shortTons:
					return "ton"

				case .slugs:
					return "slug"

				case .stones:
					return "st"
			}
		}
		
		public static func convert(value: Value, from: Mass<Value>.MeasurementUnit, to: Mass<Value>.MeasurementUnit) -> Value {
			guard from != to else {
				return value
			}
			
			let base: T = {
				switch from {
					case .carats:
						value * 0.0002

					case .centigrams:
						value * 1e-05

					case .decigrams:
						value * 0.0001

					case .grams:
						value * 0.001

					case .kilograms:
						value * 1.0

					case .metricTons:
						value * 1000.0

					case .micrograms:
						value * 1e-09

					case .milligrams:
						value * 1e-06

					case .nanograms:
						value * 1e-12

					case .ounces:
						value * 0.0283495

					case .ouncesTroy:
						value * 0.03110348

					case .picograms:
						value * 1e-15

					case .pounds:
						value * 0.453592

					case .shortTons:
						value * 907.185

					case .slugs:
						value * 14.5939

					case .stones:
						value * 6.35029
				}
			}()

			switch to {
				case .carats:
					return base * 5000.0

				case .centigrams:
					return base * 99999.99999999999

				case .decigrams:
					return base * 10000.0

				case .grams:
					return base * 1000.0

				case .kilograms:
					return base * 1.0

				case .metricTons:
					return base * 0.001

				case .micrograms:
					return base * 999999999.9999999

				case .milligrams:
					return base * 1000000.0

				case .nanograms:
					return base * 1000000000000.0

				case .ounces:
					return base * 35.27399072294044

				case .ouncesTroy:
					return base * 32.150743260882706

				case .picograms:
					return base * 999999999999999.9

				case .pounds:
					return base * 2.2046244201837775

				case .shortTons:
					return base * 0.0011023109950010197

				case .slugs:
					return base * 0.06852177964766101

				case .stones:
					return base * 0.1574731232746851
			}
	
		}
	}
	
	private(set) public var value: T
}

extension Mass {
/// Initialize the measurement from a mass in carats.
///
/// - Parameters:
///   - value: The mass in carats.
///
/// - Returns: The measurement of the provided mass.
///
	public static func carats(_ value: Value) -> Self {
		Self(value, unit: .carats)
	}

/// Initialize the measurement from a mass in centigrams.
///
/// - Parameters:
///   - value: The mass in centigrams.
///
/// - Returns: The measurement of the provided mass.
///
	public static func centigrams(_ value: Value) -> Self {
		Self(value, unit: .centigrams)
	}

/// Initialize the measurement from a mass in decigrams.
///
/// - Parameters:
///   - value: The mass in decigrams.
///
/// - Returns: The measurement of the provided mass.
///
	public static func decigrams(_ value: Value) -> Self {
		Self(value, unit: .decigrams)
	}

/// Initialize the measurement from a mass in grams.
///
/// - Parameters:
///   - value: The mass in grams.
///
/// - Returns: The measurement of the provided mass.
///
	public static func grams(_ value: Value) -> Self {
		Self(value, unit: .grams)
	}

/// Initialize the measurement from a mass in kilograms.
///
/// - Parameters:
///   - value: The mass in kilograms.
///
/// - Returns: The measurement of the provided mass.
///
	public static func kilograms(_ value: Value) -> Self {
		Self(value, unit: .kilograms)
	}

/// Initialize the measurement from a mass in metric tons.
///
/// - Parameters:
///   - value: The mass in metric tons.
///
/// - Returns: The measurement of the provided mass.
///
	public static func metricTons(_ value: Value) -> Self {
		Self(value, unit: .metricTons)
	}

/// Initialize the measurement from a mass in micrograms.
///
/// - Parameters:
///   - value: The mass in micrograms.
///
/// - Returns: The measurement of the provided mass.
///
	public static func micrograms(_ value: Value) -> Self {
		Self(value, unit: .micrograms)
	}

/// Initialize the measurement from a mass in milligrams.
///
/// - Parameters:
///   - value: The mass in milligrams.
///
/// - Returns: The measurement of the provided mass.
///
	public static func milligrams(_ value: Value) -> Self {
		Self(value, unit: .milligrams)
	}

/// Initialize the measurement from a mass in nanograms.
///
/// - Parameters:
///   - value: The mass in nanograms.
///
/// - Returns: The measurement of the provided mass.
///
	public static func nanograms(_ value: Value) -> Self {
		Self(value, unit: .nanograms)
	}

/// Initialize the measurement from a mass in ounces.
///
/// - Parameters:
///   - value: The mass in ounces.
///
/// - Returns: The measurement of the provided mass.
///
	public static func ounces(_ value: Value) -> Self {
		Self(value, unit: .ounces)
	}

/// Initialize the measurement from a mass in ounces troy.
///
/// - Parameters:
///   - value: The mass in ounces troy.
///
/// - Returns: The measurement of the provided mass.
///
	public static func ouncesTroy(_ value: Value) -> Self {
		Self(value, unit: .ouncesTroy)
	}

/// Initialize the measurement from a mass in picograms.
///
/// - Parameters:
///   - value: The mass in picograms.
///
/// - Returns: The measurement of the provided mass.
///
	public static func picograms(_ value: Value) -> Self {
		Self(value, unit: .picograms)
	}

/// Initialize the measurement from a mass in pounds.
///
/// - Parameters:
///   - value: The mass in pounds.
///
/// - Returns: The measurement of the provided mass.
///
	public static func pounds(_ value: Value) -> Self {
		Self(value, unit: .pounds)
	}

/// Initialize the measurement from a mass in short tons.
///
/// - Parameters:
///   - value: The mass in short tons.
///
/// - Returns: The measurement of the provided mass.
///
	public static func shortTons(_ value: Value) -> Self {
		Self(value, unit: .shortTons)
	}

/// Initialize the measurement from a mass in slugs.
///
/// - Parameters:
///   - value: The mass in slugs.
///
/// - Returns: The measurement of the provided mass.
///
	public static func slugs(_ value: Value) -> Self {
		Self(value, unit: .slugs)
	}

/// Initialize the measurement from a mass in stones.
///
/// - Parameters:
///   - value: The mass in stones.
///
/// - Returns: The measurement of the provided mass.
///
	public static func stones(_ value: Value) -> Self {
		Self(value, unit: .stones)
	}

/// The measurement in carats.
///
	public var carats: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .carats)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .carats, to: .base)
		}
	}

/// The measurement in centigrams.
///
	public var centigrams: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .centigrams)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .centigrams, to: .base)
		}
	}

/// The measurement in decigrams.
///
	public var decigrams: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .decigrams)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .decigrams, to: .base)
		}
	}

/// The measurement in grams.
///
	public var grams: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .grams)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .grams, to: .base)
		}
	}

/// The measurement in kilograms.
///
	public var kilograms: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .kilograms)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .kilograms, to: .base)
		}
	}

/// The measurement in metric tons.
///
	public var metricTons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .metricTons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .metricTons, to: .base)
		}
	}

/// The measurement in micrograms.
///
	public var micrograms: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .micrograms)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .micrograms, to: .base)
		}
	}

/// The measurement in milligrams.
///
	public var milligrams: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .milligrams)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .milligrams, to: .base)
		}
	}

/// The measurement in nanograms.
///
	public var nanograms: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .nanograms)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .nanograms, to: .base)
		}
	}

/// The measurement in ounces.
///
	public var ounces: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .ounces)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .ounces, to: .base)
		}
	}

/// The measurement in ounces troy.
///
	public var ouncesTroy: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .ouncesTroy)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .ouncesTroy, to: .base)
		}
	}

/// The measurement in picograms.
///
	public var picograms: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .picograms)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .picograms, to: .base)
		}
	}

/// The measurement in pounds.
///
	public var pounds: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .pounds)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .pounds, to: .base)
		}
	}

/// The measurement in short tons.
///
	public var shortTons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .shortTons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .shortTons, to: .base)
		}
	}

/// The measurement in slugs.
///
	public var slugs: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .slugs)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .slugs, to: .base)
		}
	}

/// The measurement in stones.
///
	public var stones: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .stones)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .stones, to: .base)
		}
	}

/// Initialize the measurement from carats.
///
/// - Parameters:
///   - value: The Mass in carats.
///
	public init(carats value: Value) {
		self = Mass(value, unit: .carats)
	}

/// Initialize the measurement from centigrams.
///
/// - Parameters:
///   - value: The Mass in centigrams.
///
	public init(centigrams value: Value) {
		self = Mass(value, unit: .centigrams)
	}

/// Initialize the measurement from decigrams.
///
/// - Parameters:
///   - value: The Mass in decigrams.
///
	public init(decigrams value: Value) {
		self = Mass(value, unit: .decigrams)
	}

/// Initialize the measurement from grams.
///
/// - Parameters:
///   - value: The Mass in grams.
///
	public init(grams value: Value) {
		self = Mass(value, unit: .grams)
	}

/// Initialize the measurement from kilograms.
///
/// - Parameters:
///   - value: The Mass in kilograms.
///
	public init(kilograms value: Value) {
		self = Mass(value, unit: .kilograms)
	}

/// Initialize the measurement from metric tons.
///
/// - Parameters:
///   - value: The Mass in metric tons.
///
	public init(metricTons value: Value) {
		self = Mass(value, unit: .metricTons)
	}

/// Initialize the measurement from micrograms.
///
/// - Parameters:
///   - value: The Mass in micrograms.
///
	public init(micrograms value: Value) {
		self = Mass(value, unit: .micrograms)
	}

/// Initialize the measurement from milligrams.
///
/// - Parameters:
///   - value: The Mass in milligrams.
///
	public init(milligrams value: Value) {
		self = Mass(value, unit: .milligrams)
	}

/// Initialize the measurement from nanograms.
///
/// - Parameters:
///   - value: The Mass in nanograms.
///
	public init(nanograms value: Value) {
		self = Mass(value, unit: .nanograms)
	}

/// Initialize the measurement from ounces.
///
/// - Parameters:
///   - value: The Mass in ounces.
///
	public init(ounces value: Value) {
		self = Mass(value, unit: .ounces)
	}

/// Initialize the measurement from ounces troy.
///
/// - Parameters:
///   - value: The Mass in ounces troy.
///
	public init(ouncesTroy value: Value) {
		self = Mass(value, unit: .ouncesTroy)
	}

/// Initialize the measurement from picograms.
///
/// - Parameters:
///   - value: The Mass in picograms.
///
	public init(picograms value: Value) {
		self = Mass(value, unit: .picograms)
	}

/// Initialize the measurement from pounds.
///
/// - Parameters:
///   - value: The Mass in pounds.
///
	public init(pounds value: Value) {
		self = Mass(value, unit: .pounds)
	}

/// Initialize the measurement from short tons.
///
/// - Parameters:
///   - value: The Mass in short tons.
///
	public init(shortTons value: Value) {
		self = Mass(value, unit: .shortTons)
	}

/// Initialize the measurement from slugs.
///
/// - Parameters:
///   - value: The Mass in slugs.
///
	public init(slugs value: Value) {
		self = Mass(value, unit: .slugs)
	}

/// Initialize the measurement from stones.
///
/// - Parameters:
///   - value: The Mass in stones.
///
	public init(stones value: Value) {
		self = Mass(value, unit: .stones)
	}
}

extension Mass: Codable where Value: Codable {

}

extension Mass: Comparable where Value: Comparable {
	public static func < (lhs: Mass<T>, rhs: Mass<T>) -> Bool {
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

