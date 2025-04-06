//
//  Volume.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the amount of three-dimensional space occupied
/// by a substance or object.
///
/// Volume is stored as litres, however it can be read and written in various
/// units representing a volume.
///
public struct Volume<T: BinaryFloatingPoint> {
	public enum MeasurementUnit: Unit {
		public typealias Value = T
		
		case acreFeet
		case bushels
		case centiliters
		case cubicCentimeters
		case cubicDecimeters
		case cubicFeet
		case cubicInches
		case cubicKilometers
		case cubicMeters
		case cubicMiles
		case cubicMillimeters
		case cubicYards
		case cups
		case deciliters
		case fluidOunces
		case gallons
		case imperialFluidOunces
		case imperialGallons
		case imperialPints
		case imperialQuarts
		case imperialTablespoons
		case imperialTeaspoons
		case kiloliters
		case liters
		case megaliters
		case metricCups
		case milliliters
		case pints
		case quarts
		case tablespoons
		case teaspoons
		
		public static var base: Self {
			.liters
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .acreFeet:
					return "af"

				case .bushels:
					return "bsh"

				case .centiliters:
					return "cL"

				case .cubicCentimeters:
					return "cm³"

				case .cubicDecimeters:
					return "dm³"

				case .cubicFeet:
					return "ft³"

				case .cubicInches:
					return "in³"

				case .cubicKilometers:
					return "km³"

				case .cubicMeters:
					return "m³"

				case .cubicMiles:
					return "mi³"

				case .cubicMillimeters:
					return "mm³"

				case .cubicYards:
					return "yd³"

				case .cups:
					return "cup"

				case .deciliters:
					return "dL"

				case .fluidOunces:
					return "fl oz"

				case .gallons:
					return "gal"

				case .imperialFluidOunces:
					return "fl oz"

				case .imperialGallons:
					return "gal"

				case .imperialPints:
					return "pt"

				case .imperialQuarts:
					return "qt"

				case .imperialTablespoons:
					return "tbsp"

				case .imperialTeaspoons:
					return "tsp"

				case .kiloliters:
					return "kL"

				case .liters:
					return "L"

				case .megaliters:
					return "ML"

				case .metricCups:
					return "metric cup"

				case .milliliters:
					return "mL"

				case .pints:
					return "pt"

				case .quarts:
					return "qt"

				case .tablespoons:
					return "tbsp"

				case .teaspoons:
					return "tsp"
			}
		}
		
		public static func convert(value: Value, from: Volume<Value>.MeasurementUnit, to: Volume<Value>.MeasurementUnit) -> Value {
			guard from != to else {
				return value
			}
			
			let base: T = {
				switch from {
					case .acreFeet:
						value * 1233000.0

					case .bushels:
						value * 35.2391

					case .centiliters:
						value * 0.01

					case .cubicCentimeters:
						value * 0.001

					case .cubicDecimeters:
						value * 1.0

					case .cubicFeet:
						value * 28.3168

					case .cubicInches:
						value * 0.0163871

					case .cubicKilometers:
						value * 1000000000000.0

					case .cubicMeters:
						value * 1000.0

					case .cubicMiles:
						value * 4168000000000.0

					case .cubicMillimeters:
						value * 1e-06

					case .cubicYards:
						value * 764.555

					case .cups:
						value * 0.24

					case .deciliters:
						value * 0.1

					case .fluidOunces:
						value * 0.0295735

					case .gallons:
						value * 3.78541

					case .imperialFluidOunces:
						value * 0.0284131

					case .imperialGallons:
						value * 4.54609

					case .imperialPints:
						value * 0.568261

					case .imperialQuarts:
						value * 1.13652

					case .imperialTablespoons:
						value * 0.0177582

					case .imperialTeaspoons:
						value * 0.00591939

					case .kiloliters:
						value * 1000.0

					case .liters:
						value * 1.0

					case .megaliters:
						value * 1000000.0

					case .metricCups:
						value * 0.25

					case .milliliters:
						value * 0.001

					case .pints:
						value * 0.473176

					case .quarts:
						value * 0.946353

					case .tablespoons:
						value * 0.0147868

					case .teaspoons:
						value * 0.00492892
				}
			}()

			switch to {
				case .acreFeet:
					return base * 8.110300081103001e-07

				case .bushels:
					return base * 0.02837756923417454

				case .centiliters:
					return base * 100.0

				case .cubicCentimeters:
					return base * 1000.0

				case .cubicDecimeters:
					return base * 1.0

				case .cubicFeet:
					return base * 0.035314724827664144

				case .cubicInches:
					return base * 61.02361003472243

				case .cubicKilometers:
					return base * 1e-12

				case .cubicMeters:
					return base * 0.001

				case .cubicMiles:
					return base * 2.399232245681382e-13

				case .cubicMillimeters:
					return base * 1000000.0

				case .cubicYards:
					return base * 0.001307950376362721

				case .cups:
					return base * 4.166666666666667

				case .deciliters:
					return base * 10.0

				case .fluidOunces:
					return base * 33.81405650328842

				case .gallons:
					return base * 0.26417217685798894

				case .imperialFluidOunces:
					return base * 35.19503327690396

				case .imperialGallons:
					return base * 0.21996924829908776

				case .imperialPints:
					return base * 1.759754760576566

				case .imperialQuarts:
					return base * 0.8798789286594165

				case .imperialTablespoons:
					return base * 56.31201360498249

				case .imperialTeaspoons:
					return base * 168.93632620928847

				case .kiloliters:
					return base * 0.001

				case .liters:
					return base * 1.0

				case .megaliters:
					return base * 1e-06

				case .metricCups:
					return base * 4.0

				case .milliliters:
					return base * 1000.0

				case .pints:
					return base * 2.1133785314555262

				case .quarts:
					return base * 1.0566881491367386

				case .tablespoons:
					return base * 67.62788432926665

				case .teaspoons:
					return base * 202.88420181297323
			}
	
		}
	}
	
	private(set) public var value: T
}

extension Volume {
/// Initialize the measurement from a volume in acre feet.
///
/// - Parameters:
///   - value: The volume in acre feet.
///
/// - Returns: The measurement of the provided volume.
///
	public static func acreFeet(_ value: Value) -> Self {
		Self(value, unit: .acreFeet)
	}

/// Initialize the measurement from a volume in bushels.
///
/// - Parameters:
///   - value: The volume in bushels.
///
/// - Returns: The measurement of the provided volume.
///
	public static func bushels(_ value: Value) -> Self {
		Self(value, unit: .bushels)
	}

/// Initialize the measurement from a volume in centiliters.
///
/// - Parameters:
///   - value: The volume in centiliters.
///
/// - Returns: The measurement of the provided volume.
///
	public static func centiliters(_ value: Value) -> Self {
		Self(value, unit: .centiliters)
	}

/// Initialize the measurement from a volume in cubic centimeters.
///
/// - Parameters:
///   - value: The volume in cubic centimeters.
///
/// - Returns: The measurement of the provided volume.
///
	public static func cubicCentimeters(_ value: Value) -> Self {
		Self(value, unit: .cubicCentimeters)
	}

/// Initialize the measurement from a volume in cubic decimeters.
///
/// - Parameters:
///   - value: The volume in cubic decimeters.
///
/// - Returns: The measurement of the provided volume.
///
	public static func cubicDecimeters(_ value: Value) -> Self {
		Self(value, unit: .cubicDecimeters)
	}

/// Initialize the measurement from a volume in cubic feet.
///
/// - Parameters:
///   - value: The volume in cubic feet.
///
/// - Returns: The measurement of the provided volume.
///
	public static func cubicFeet(_ value: Value) -> Self {
		Self(value, unit: .cubicFeet)
	}

/// Initialize the measurement from a volume in cubic inches.
///
/// - Parameters:
///   - value: The volume in cubic inches.
///
/// - Returns: The measurement of the provided volume.
///
	public static func cubicInches(_ value: Value) -> Self {
		Self(value, unit: .cubicInches)
	}

/// Initialize the measurement from a volume in cubic kilometers.
///
/// - Parameters:
///   - value: The volume in cubic kilometers.
///
/// - Returns: The measurement of the provided volume.
///
	public static func cubicKilometers(_ value: Value) -> Self {
		Self(value, unit: .cubicKilometers)
	}

/// Initialize the measurement from a volume in cubic meters.
///
/// - Parameters:
///   - value: The volume in cubic meters.
///
/// - Returns: The measurement of the provided volume.
///
	public static func cubicMeters(_ value: Value) -> Self {
		Self(value, unit: .cubicMeters)
	}

/// Initialize the measurement from a volume in cubic miles.
///
/// - Parameters:
///   - value: The volume in cubic miles.
///
/// - Returns: The measurement of the provided volume.
///
	public static func cubicMiles(_ value: Value) -> Self {
		Self(value, unit: .cubicMiles)
	}

/// Initialize the measurement from a volume in cubic millimeters.
///
/// - Parameters:
///   - value: The volume in cubic millimeters.
///
/// - Returns: The measurement of the provided volume.
///
	public static func cubicMillimeters(_ value: Value) -> Self {
		Self(value, unit: .cubicMillimeters)
	}

/// Initialize the measurement from a volume in cubic yards.
///
/// - Parameters:
///   - value: The volume in cubic yards.
///
/// - Returns: The measurement of the provided volume.
///
	public static func cubicYards(_ value: Value) -> Self {
		Self(value, unit: .cubicYards)
	}

/// Initialize the measurement from a volume in cups.
///
/// - Parameters:
///   - value: The volume in cups.
///
/// - Returns: The measurement of the provided volume.
///
	public static func cups(_ value: Value) -> Self {
		Self(value, unit: .cups)
	}

/// Initialize the measurement from a volume in deciliters.
///
/// - Parameters:
///   - value: The volume in deciliters.
///
/// - Returns: The measurement of the provided volume.
///
	public static func deciliters(_ value: Value) -> Self {
		Self(value, unit: .deciliters)
	}

/// Initialize the measurement from a volume in fluid ounces.
///
/// - Parameters:
///   - value: The volume in fluid ounces.
///
/// - Returns: The measurement of the provided volume.
///
	public static func fluidOunces(_ value: Value) -> Self {
		Self(value, unit: .fluidOunces)
	}

/// Initialize the measurement from a volume in gallons.
///
/// - Parameters:
///   - value: The volume in gallons.
///
/// - Returns: The measurement of the provided volume.
///
	public static func gallons(_ value: Value) -> Self {
		Self(value, unit: .gallons)
	}

/// Initialize the measurement from a volume in imperial fluid ounces.
///
/// - Parameters:
///   - value: The volume in imperial fluid ounces.
///
/// - Returns: The measurement of the provided volume.
///
	public static func imperialFluidOunces(_ value: Value) -> Self {
		Self(value, unit: .imperialFluidOunces)
	}

/// Initialize the measurement from a volume in imperial gallons.
///
/// - Parameters:
///   - value: The volume in imperial gallons.
///
/// - Returns: The measurement of the provided volume.
///
	public static func imperialGallons(_ value: Value) -> Self {
		Self(value, unit: .imperialGallons)
	}

/// Initialize the measurement from a volume in imperial pints.
///
/// - Parameters:
///   - value: The volume in imperial pints.
///
/// - Returns: The measurement of the provided volume.
///
	public static func imperialPints(_ value: Value) -> Self {
		Self(value, unit: .imperialPints)
	}

/// Initialize the measurement from a volume in imperial quarts.
///
/// - Parameters:
///   - value: The volume in imperial quarts.
///
/// - Returns: The measurement of the provided volume.
///
	public static func imperialQuarts(_ value: Value) -> Self {
		Self(value, unit: .imperialQuarts)
	}

/// Initialize the measurement from a volume in imperial tablespoons.
///
/// - Parameters:
///   - value: The volume in imperial tablespoons.
///
/// - Returns: The measurement of the provided volume.
///
	public static func imperialTablespoons(_ value: Value) -> Self {
		Self(value, unit: .imperialTablespoons)
	}

/// Initialize the measurement from a volume in imperial teaspoons.
///
/// - Parameters:
///   - value: The volume in imperial teaspoons.
///
/// - Returns: The measurement of the provided volume.
///
	public static func imperialTeaspoons(_ value: Value) -> Self {
		Self(value, unit: .imperialTeaspoons)
	}

/// Initialize the measurement from a volume in kiloliters.
///
/// - Parameters:
///   - value: The volume in kiloliters.
///
/// - Returns: The measurement of the provided volume.
///
	public static func kiloliters(_ value: Value) -> Self {
		Self(value, unit: .kiloliters)
	}

/// Initialize the measurement from a volume in liters.
///
/// - Parameters:
///   - value: The volume in liters.
///
/// - Returns: The measurement of the provided volume.
///
	public static func liters(_ value: Value) -> Self {
		Self(value, unit: .liters)
	}

/// Initialize the measurement from a volume in megaliters.
///
/// - Parameters:
///   - value: The volume in megaliters.
///
/// - Returns: The measurement of the provided volume.
///
	public static func megaliters(_ value: Value) -> Self {
		Self(value, unit: .megaliters)
	}

/// Initialize the measurement from a volume in metric cups.
///
/// - Parameters:
///   - value: The volume in metric cups.
///
/// - Returns: The measurement of the provided volume.
///
	public static func metricCups(_ value: Value) -> Self {
		Self(value, unit: .metricCups)
	}

/// Initialize the measurement from a volume in milliliters.
///
/// - Parameters:
///   - value: The volume in milliliters.
///
/// - Returns: The measurement of the provided volume.
///
	public static func milliliters(_ value: Value) -> Self {
		Self(value, unit: .milliliters)
	}

/// Initialize the measurement from a volume in pints.
///
/// - Parameters:
///   - value: The volume in pints.
///
/// - Returns: The measurement of the provided volume.
///
	public static func pints(_ value: Value) -> Self {
		Self(value, unit: .pints)
	}

/// Initialize the measurement from a volume in quarts.
///
/// - Parameters:
///   - value: The volume in quarts.
///
/// - Returns: The measurement of the provided volume.
///
	public static func quarts(_ value: Value) -> Self {
		Self(value, unit: .quarts)
	}

/// Initialize the measurement from a volume in tablespoons.
///
/// - Parameters:
///   - value: The volume in tablespoons.
///
/// - Returns: The measurement of the provided volume.
///
	public static func tablespoons(_ value: Value) -> Self {
		Self(value, unit: .tablespoons)
	}

/// Initialize the measurement from a volume in teaspoons.
///
/// - Parameters:
///   - value: The volume in teaspoons.
///
/// - Returns: The measurement of the provided volume.
///
	public static func teaspoons(_ value: Value) -> Self {
		Self(value, unit: .teaspoons)
	}

/// The measurement in acre feet.
///
	public var acreFeet: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .acreFeet)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .acreFeet, to: .base)
		}
	}

/// The measurement in bushels.
///
	public var bushels: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .bushels)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .bushels, to: .base)
		}
	}

/// The measurement in centiliters.
///
	public var centiliters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .centiliters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .centiliters, to: .base)
		}
	}

/// The measurement in cubic centimeters.
///
	public var cubicCentimeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicCentimeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicCentimeters, to: .base)
		}
	}

/// The measurement in cubic decimeters.
///
	public var cubicDecimeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicDecimeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicDecimeters, to: .base)
		}
	}

/// The measurement in cubic feet.
///
	public var cubicFeet: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicFeet)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicFeet, to: .base)
		}
	}

/// The measurement in cubic inches.
///
	public var cubicInches: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicInches)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicInches, to: .base)
		}
	}

/// The measurement in cubic kilometers.
///
	public var cubicKilometers: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicKilometers)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicKilometers, to: .base)
		}
	}

/// The measurement in cubic meters.
///
	public var cubicMeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicMeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicMeters, to: .base)
		}
	}

/// The measurement in cubic miles.
///
	public var cubicMiles: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicMiles)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicMiles, to: .base)
		}
	}

/// The measurement in cubic millimeters.
///
	public var cubicMillimeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicMillimeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicMillimeters, to: .base)
		}
	}

/// The measurement in cubic yards.
///
	public var cubicYards: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicYards)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicYards, to: .base)
		}
	}

/// The measurement in cups.
///
	public var cups: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cups)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cups, to: .base)
		}
	}

/// The measurement in deciliters.
///
	public var deciliters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .deciliters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .deciliters, to: .base)
		}
	}

/// The measurement in fluid ounces.
///
	public var fluidOunces: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .fluidOunces)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .fluidOunces, to: .base)
		}
	}

/// The measurement in gallons.
///
	public var gallons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .gallons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .gallons, to: .base)
		}
	}

/// The measurement in imperial fluid ounces.
///
	public var imperialFluidOunces: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .imperialFluidOunces)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .imperialFluidOunces, to: .base)
		}
	}

/// The measurement in imperial gallons.
///
	public var imperialGallons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .imperialGallons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .imperialGallons, to: .base)
		}
	}

/// The measurement in imperial pints.
///
	public var imperialPints: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .imperialPints)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .imperialPints, to: .base)
		}
	}

/// The measurement in imperial quarts.
///
	public var imperialQuarts: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .imperialQuarts)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .imperialQuarts, to: .base)
		}
	}

/// The measurement in imperial tablespoons.
///
	public var imperialTablespoons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .imperialTablespoons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .imperialTablespoons, to: .base)
		}
	}

/// The measurement in imperial teaspoons.
///
	public var imperialTeaspoons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .imperialTeaspoons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .imperialTeaspoons, to: .base)
		}
	}

/// The measurement in kiloliters.
///
	public var kiloliters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .kiloliters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .kiloliters, to: .base)
		}
	}

/// The measurement in liters.
///
	public var liters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .liters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .liters, to: .base)
		}
	}

/// The measurement in megaliters.
///
	public var megaliters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .megaliters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .megaliters, to: .base)
		}
	}

/// The measurement in metric cups.
///
	public var metricCups: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .metricCups)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .metricCups, to: .base)
		}
	}

/// The measurement in milliliters.
///
	public var milliliters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .milliliters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .milliliters, to: .base)
		}
	}

/// The measurement in pints.
///
	public var pints: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .pints)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .pints, to: .base)
		}
	}

/// The measurement in quarts.
///
	public var quarts: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .quarts)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .quarts, to: .base)
		}
	}

/// The measurement in tablespoons.
///
	public var tablespoons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .tablespoons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .tablespoons, to: .base)
		}
	}

/// The measurement in teaspoons.
///
	public var teaspoons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .teaspoons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .teaspoons, to: .base)
		}
	}

/// Initialize the measurement from acre feet.
///
/// - Parameters:
///   - value: The Volume in acre feet.
///
	public init(acreFeet value: Value) {
		self = Volume(value, unit: .acreFeet)
	}

/// Initialize the measurement from bushels.
///
/// - Parameters:
///   - value: The Volume in bushels.
///
	public init(bushels value: Value) {
		self = Volume(value, unit: .bushels)
	}

/// Initialize the measurement from centiliters.
///
/// - Parameters:
///   - value: The Volume in centiliters.
///
	public init(centiliters value: Value) {
		self = Volume(value, unit: .centiliters)
	}

/// Initialize the measurement from cubic centimeters.
///
/// - Parameters:
///   - value: The Volume in cubic centimeters.
///
	public init(cubicCentimeters value: Value) {
		self = Volume(value, unit: .cubicCentimeters)
	}

/// Initialize the measurement from cubic decimeters.
///
/// - Parameters:
///   - value: The Volume in cubic decimeters.
///
	public init(cubicDecimeters value: Value) {
		self = Volume(value, unit: .cubicDecimeters)
	}

/// Initialize the measurement from cubic feet.
///
/// - Parameters:
///   - value: The Volume in cubic feet.
///
	public init(cubicFeet value: Value) {
		self = Volume(value, unit: .cubicFeet)
	}

/// Initialize the measurement from cubic inches.
///
/// - Parameters:
///   - value: The Volume in cubic inches.
///
	public init(cubicInches value: Value) {
		self = Volume(value, unit: .cubicInches)
	}

/// Initialize the measurement from cubic kilometers.
///
/// - Parameters:
///   - value: The Volume in cubic kilometers.
///
	public init(cubicKilometers value: Value) {
		self = Volume(value, unit: .cubicKilometers)
	}

/// Initialize the measurement from cubic meters.
///
/// - Parameters:
///   - value: The Volume in cubic meters.
///
	public init(cubicMeters value: Value) {
		self = Volume(value, unit: .cubicMeters)
	}

/// Initialize the measurement from cubic miles.
///
/// - Parameters:
///   - value: The Volume in cubic miles.
///
	public init(cubicMiles value: Value) {
		self = Volume(value, unit: .cubicMiles)
	}

/// Initialize the measurement from cubic millimeters.
///
/// - Parameters:
///   - value: The Volume in cubic millimeters.
///
	public init(cubicMillimeters value: Value) {
		self = Volume(value, unit: .cubicMillimeters)
	}

/// Initialize the measurement from cubic yards.
///
/// - Parameters:
///   - value: The Volume in cubic yards.
///
	public init(cubicYards value: Value) {
		self = Volume(value, unit: .cubicYards)
	}

/// Initialize the measurement from cups.
///
/// - Parameters:
///   - value: The Volume in cups.
///
	public init(cups value: Value) {
		self = Volume(value, unit: .cups)
	}

/// Initialize the measurement from deciliters.
///
/// - Parameters:
///   - value: The Volume in deciliters.
///
	public init(deciliters value: Value) {
		self = Volume(value, unit: .deciliters)
	}

/// Initialize the measurement from fluid ounces.
///
/// - Parameters:
///   - value: The Volume in fluid ounces.
///
	public init(fluidOunces value: Value) {
		self = Volume(value, unit: .fluidOunces)
	}

/// Initialize the measurement from gallons.
///
/// - Parameters:
///   - value: The Volume in gallons.
///
	public init(gallons value: Value) {
		self = Volume(value, unit: .gallons)
	}

/// Initialize the measurement from imperial fluid ounces.
///
/// - Parameters:
///   - value: The Volume in imperial fluid ounces.
///
	public init(imperialFluidOunces value: Value) {
		self = Volume(value, unit: .imperialFluidOunces)
	}

/// Initialize the measurement from imperial gallons.
///
/// - Parameters:
///   - value: The Volume in imperial gallons.
///
	public init(imperialGallons value: Value) {
		self = Volume(value, unit: .imperialGallons)
	}

/// Initialize the measurement from imperial pints.
///
/// - Parameters:
///   - value: The Volume in imperial pints.
///
	public init(imperialPints value: Value) {
		self = Volume(value, unit: .imperialPints)
	}

/// Initialize the measurement from imperial quarts.
///
/// - Parameters:
///   - value: The Volume in imperial quarts.
///
	public init(imperialQuarts value: Value) {
		self = Volume(value, unit: .imperialQuarts)
	}

/// Initialize the measurement from imperial tablespoons.
///
/// - Parameters:
///   - value: The Volume in imperial tablespoons.
///
	public init(imperialTablespoons value: Value) {
		self = Volume(value, unit: .imperialTablespoons)
	}

/// Initialize the measurement from imperial teaspoons.
///
/// - Parameters:
///   - value: The Volume in imperial teaspoons.
///
	public init(imperialTeaspoons value: Value) {
		self = Volume(value, unit: .imperialTeaspoons)
	}

/// Initialize the measurement from kiloliters.
///
/// - Parameters:
///   - value: The Volume in kiloliters.
///
	public init(kiloliters value: Value) {
		self = Volume(value, unit: .kiloliters)
	}

/// Initialize the measurement from liters.
///
/// - Parameters:
///   - value: The Volume in liters.
///
	public init(liters value: Value) {
		self = Volume(value, unit: .liters)
	}

/// Initialize the measurement from megaliters.
///
/// - Parameters:
///   - value: The Volume in megaliters.
///
	public init(megaliters value: Value) {
		self = Volume(value, unit: .megaliters)
	}

/// Initialize the measurement from metric cups.
///
/// - Parameters:
///   - value: The Volume in metric cups.
///
	public init(metricCups value: Value) {
		self = Volume(value, unit: .metricCups)
	}

/// Initialize the measurement from milliliters.
///
/// - Parameters:
///   - value: The Volume in milliliters.
///
	public init(milliliters value: Value) {
		self = Volume(value, unit: .milliliters)
	}

/// Initialize the measurement from pints.
///
/// - Parameters:
///   - value: The Volume in pints.
///
	public init(pints value: Value) {
		self = Volume(value, unit: .pints)
	}

/// Initialize the measurement from quarts.
///
/// - Parameters:
///   - value: The Volume in quarts.
///
	public init(quarts value: Value) {
		self = Volume(value, unit: .quarts)
	}

/// Initialize the measurement from tablespoons.
///
/// - Parameters:
///   - value: The Volume in tablespoons.
///
	public init(tablespoons value: Value) {
		self = Volume(value, unit: .tablespoons)
	}

/// Initialize the measurement from teaspoons.
///
/// - Parameters:
///   - value: The Volume in teaspoons.
///
	public init(teaspoons value: Value) {
		self = Volume(value, unit: .teaspoons)
	}
}

extension Volume: Codable where Value: Codable {

}

extension Volume: Comparable where Value: Comparable {
	public static func < (lhs: Volume<T>, rhs: Volume<T>) -> Bool {
		lhs.value < rhs.value
	}
}

extension Volume: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Volume: Measurement {
	public init(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
	
	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		self.value = MeasurementUnit.convert(value: value, from: unit, to: .base)
	}
}

extension Volume: Sendable where Value: Sendable {

}

