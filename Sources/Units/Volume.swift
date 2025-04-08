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
/// units.
///
public struct Volume<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One acre-foot is about 1,233.5 cubic meters, the volume of water
	/// covering one acre to a depth of one foot.
	///
		case acreFeet

	/// One bushel is approximately 35.24 liters, used mainly for dry goods
	/// like grain.
	///
		case bushels

	/// One centiliter is 1⁄100 of a liter or 10 milliliters.
	///
		case centiliters

	/// One cubic centimeter is equal to 1 milliliter or 1⁄1,000,000 of a
	/// cubic meter.
	///
		case cubicCentimeters

	/// One cubic decimeter is equal to 1 liter or 1,000 cubic centimeters.
	///
		case cubicDecimeters

	/// One cubic foot is about 28.32 liters or 1,728 cubic inches.
	///
		case cubicFeet

	/// One cubic inch is approximately 16.39 milliliters or 1⁄61 of a liter.
	///
		case cubicInches

	/// One cubic kilometer is 1,000,000,000,000 liters or 1 billion cubic
	/// meters.
	///
		case cubicKilometers

	/// One cubic meter is the base SI unit of volume, equal to 1,000 liters
	/// or 1,000,000 cubic centimeters.
	///
		case cubicMeters

	/// One cubic mile is about 4.17 billion cubic meters or 1.1 trillion
	/// gallons.
	///
		case cubicMiles

	/// One cubic millimeter is 1⁄1,000,000 of a liter or 1⁄1,000 of a cubic
	/// centimeter.
	///
		case cubicMillimeters

	/// One cubic yard is about 764.55 liters or 27 cubic feet.
	///
		case cubicYards

	/// One cup is typically 240 milliliters in US measurement, used for
	/// cooking and serving sizes.
	///
		case cups

	/// One deciliter is 1⁄10 of a liter or 100 milliliters.
	///
		case deciliters

	/// One fluid ounce (US) is about 29.57 milliliters or 1⁄128 of a
	/// gallon.
	///
		case fluidOunces

	/// One gallon (US) is 3.785 liters or 128 fluid ounces.
	///
		case gallons

	/// One imperial fluid ounce is about 28.41 milliliters, slightly larger
	/// than the US fluid ounce.
	///
		case imperialFluidOunces

	/// One imperial gallon is 4.546 liters or 160 imperial fluid ounces.
	///
		case imperialGallons

	/// One imperial pint is 568 milliliters or 20 imperial fluid ounces.
	///
		case imperialPints

	/// One imperial quart is 1.136 liters or 2 imperial pints.
	///
		case imperialQuarts

	/// One imperial tablespoon is 17.76 milliliters or 3 imperial
	/// teaspoons.
	///
		case imperialTablespoons

	/// One imperial teaspoon is 5.92 milliliters, slightly larger than a US
	/// teaspoon.
	///
		case imperialTeaspoons

	/// One kiloliter is 1,000 liters or one cubic meter.
	///
		case kiloliters

	/// One liter is 1,000 milliliters or one cubic decimeter.
	///
		case liters

	/// One megaliter is 1,000,000 liters or 1,000 cubic meters.
	///
		case megaliters

	/// One metric cup is 250 milliliters, used in Australian and New
	/// Zealand recipes.
	///
		case metricCups

	/// One milliliter is 1⁄1,000 of a liter or one cubic centimeter.
	///
		case milliliters

	/// One pint (US) is 473 milliliters or 16 fluid ounces.
	///
		case pints

	/// One quart (US) is 946 milliliters or 2 pints.
	///
		case quarts

	/// One tablespoon (US) is about 14.79 milliliters or 3 teaspoons.
	///
		case tablespoons

	/// One teaspoon (US) is about 4.93 milliliters.
	///
		case teaspoons
		
		public static var base: Self {
			.liters
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .acreFeet:
					"af"

				case .bushels:
					"bsh"

				case .centiliters:
					"cL"

				case .cubicCentimeters:
					"cm³"

				case .cubicDecimeters:
					"dm³"

				case .cubicFeet:
					"ft³"

				case .cubicInches:
					"in³"

				case .cubicKilometers:
					"km³"

				case .cubicMeters:
					"m³"

				case .cubicMiles:
					"mi³"

				case .cubicMillimeters:
					"mm³"

				case .cubicYards:
					"yd³"

				case .cups:
					"cup"

				case .deciliters:
					"dL"

				case .fluidOunces:
					"fl oz"

				case .gallons:
					"gal"

				case .imperialFluidOunces:
					"fl oz"

				case .imperialGallons:
					"gal"

				case .imperialPints:
					"pt"

				case .imperialQuarts:
					"qt"

				case .imperialTablespoons:
					"tbsp"

				case .imperialTeaspoons:
					"tsp"

				case .kiloliters:
					"kL"

				case .liters:
					"L"

				case .megaliters:
					"ML"

				case .metricCups:
					"metric cup"

				case .milliliters:
					"mL"

				case .pints:
					"pt"

				case .quarts:
					"qt"

				case .tablespoons:
					"tbsp"

				case .teaspoons:
					"tsp"
			}
		}
		
		public var coefficient: Value {
			switch self {
				case .acreFeet:
					1233000.0

				case .bushels:
					35.2391

				case .centiliters:
					0.01

				case .cubicCentimeters:
					0.001

				case .cubicDecimeters:
					1.0

				case .cubicFeet:
					28.3168

				case .cubicInches:
					0.0163871

				case .cubicKilometers:
					1000000000000.0

				case .cubicMeters:
					1000.0

				case .cubicMiles:
					4168000000000.0

				case .cubicMillimeters:
					1e-06

				case .cubicYards:
					764.555

				case .cups:
					0.24

				case .deciliters:
					0.1

				case .fluidOunces:
					0.0295735

				case .gallons:
					3.78541

				case .imperialFluidOunces:
					0.0284131

				case .imperialGallons:
					4.54609

				case .imperialPints:
					0.568261

				case .imperialQuarts:
					1.13652

				case .imperialTablespoons:
					0.0177582

				case .imperialTeaspoons:
					0.00591939

				case .kiloliters:
					1000.0

				case .liters:
					1.0

				case .megaliters:
					1000000.0

				case .metricCups:
					0.25

				case .milliliters:
					0.001

				case .pints:
					0.473176

				case .quarts:
					0.946353

				case .tablespoons:
					0.0147868

				case .teaspoons:
					0.00492892
			}
		}
	}
	
	private(set) public var value: Value
}

extension Volume {
/// Initialize the volume using a value in acre feet.
///
/// One acre-foot is about 1,233.5 cubic meters, the volume of water
/// covering one acre to a depth of one foot.
///
/// - Parameters:
///   - value: The volume in acre feet.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func acreFeet(_ value: Value) -> Self {
		Self(value, unit: .acreFeet)
	}

/// Initialize the volume using a value in bushels.
///
/// One bushel is approximately 35.24 liters, used mainly for dry goods like
/// grain.
///
/// - Parameters:
///   - value: The volume in bushels.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func bushels(_ value: Value) -> Self {
		Self(value, unit: .bushels)
	}

/// Initialize the volume using a value in centiliters.
///
/// One centiliter is 1⁄100 of a liter or 10 milliliters.
///
/// - Parameters:
///   - value: The volume in centiliters.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func centiliters(_ value: Value) -> Self {
		Self(value, unit: .centiliters)
	}

/// Initialize the volume using a value in cubic centimeters.
///
/// One cubic centimeter is equal to 1 milliliter or 1⁄1,000,000 of a cubic
/// meter.
///
/// - Parameters:
///   - value: The volume in cubic centimeters.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func cubicCentimeters(_ value: Value) -> Self {
		Self(value, unit: .cubicCentimeters)
	}

/// Initialize the volume using a value in cubic decimeters.
///
/// One cubic decimeter is equal to 1 liter or 1,000 cubic centimeters.
///
/// - Parameters:
///   - value: The volume in cubic decimeters.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func cubicDecimeters(_ value: Value) -> Self {
		Self(value, unit: .cubicDecimeters)
	}

/// Initialize the volume using a value in cubic feet.
///
/// One cubic foot is about 28.32 liters or 1,728 cubic inches.
///
/// - Parameters:
///   - value: The volume in cubic feet.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func cubicFeet(_ value: Value) -> Self {
		Self(value, unit: .cubicFeet)
	}

/// Initialize the volume using a value in cubic inches.
///
/// One cubic inch is approximately 16.39 milliliters or 1⁄61 of a liter.
///
/// - Parameters:
///   - value: The volume in cubic inches.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func cubicInches(_ value: Value) -> Self {
		Self(value, unit: .cubicInches)
	}

/// Initialize the volume using a value in cubic kilometers.
///
/// One cubic kilometer is 1,000,000,000,000 liters or 1 billion cubic
/// meters.
///
/// - Parameters:
///   - value: The volume in cubic kilometers.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func cubicKilometers(_ value: Value) -> Self {
		Self(value, unit: .cubicKilometers)
	}

/// Initialize the volume using a value in cubic meters.
///
/// One cubic meter is the base SI unit of volume, equal to 1,000 liters or
/// 1,000,000 cubic centimeters.
///
/// - Parameters:
///   - value: The volume in cubic meters.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func cubicMeters(_ value: Value) -> Self {
		Self(value, unit: .cubicMeters)
	}

/// Initialize the volume using a value in cubic miles.
///
/// One cubic mile is about 4.17 billion cubic meters or 1.1 trillion
/// gallons.
///
/// - Parameters:
///   - value: The volume in cubic miles.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func cubicMiles(_ value: Value) -> Self {
		Self(value, unit: .cubicMiles)
	}

/// Initialize the volume using a value in cubic millimeters.
///
/// One cubic millimeter is 1⁄1,000,000 of a liter or 1⁄1,000 of a cubic
/// centimeter.
///
/// - Parameters:
///   - value: The volume in cubic millimeters.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func cubicMillimeters(_ value: Value) -> Self {
		Self(value, unit: .cubicMillimeters)
	}

/// Initialize the volume using a value in cubic yards.
///
/// One cubic yard is about 764.55 liters or 27 cubic feet.
///
/// - Parameters:
///   - value: The volume in cubic yards.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func cubicYards(_ value: Value) -> Self {
		Self(value, unit: .cubicYards)
	}

/// Initialize the volume using a value in cups.
///
/// One cup is typically 240 milliliters in US measurement, used for cooking
/// and serving sizes.
///
/// - Parameters:
///   - value: The volume in cups.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func cups(_ value: Value) -> Self {
		Self(value, unit: .cups)
	}

/// Initialize the volume using a value in deciliters.
///
/// One deciliter is 1⁄10 of a liter or 100 milliliters.
///
/// - Parameters:
///   - value: The volume in deciliters.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func deciliters(_ value: Value) -> Self {
		Self(value, unit: .deciliters)
	}

/// Initialize the volume using a value in fluid ounces.
///
/// One fluid ounce (US) is about 29.57 milliliters or 1⁄128 of a gallon.
///
/// - Parameters:
///   - value: The volume in fluid ounces.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func fluidOunces(_ value: Value) -> Self {
		Self(value, unit: .fluidOunces)
	}

/// Initialize the volume using a value in gallons.
///
/// One gallon (US) is 3.785 liters or 128 fluid ounces.
///
/// - Parameters:
///   - value: The volume in gallons.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func gallons(_ value: Value) -> Self {
		Self(value, unit: .gallons)
	}

/// Initialize the volume using a value in imperial fluid ounces.
///
/// One imperial fluid ounce is about 28.41 milliliters, slightly larger
/// than the US fluid ounce.
///
/// - Parameters:
///   - value: The volume in imperial fluid ounces.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func imperialFluidOunces(_ value: Value) -> Self {
		Self(value, unit: .imperialFluidOunces)
	}

/// Initialize the volume using a value in imperial gallons.
///
/// One imperial gallon is 4.546 liters or 160 imperial fluid ounces.
///
/// - Parameters:
///   - value: The volume in imperial gallons.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func imperialGallons(_ value: Value) -> Self {
		Self(value, unit: .imperialGallons)
	}

/// Initialize the volume using a value in imperial pints.
///
/// One imperial pint is 568 milliliters or 20 imperial fluid ounces.
///
/// - Parameters:
///   - value: The volume in imperial pints.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func imperialPints(_ value: Value) -> Self {
		Self(value, unit: .imperialPints)
	}

/// Initialize the volume using a value in imperial quarts.
///
/// One imperial quart is 1.136 liters or 2 imperial pints.
///
/// - Parameters:
///   - value: The volume in imperial quarts.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func imperialQuarts(_ value: Value) -> Self {
		Self(value, unit: .imperialQuarts)
	}

/// Initialize the volume using a value in imperial tablespoons.
///
/// One imperial tablespoon is 17.76 milliliters or 3 imperial teaspoons.
///
/// - Parameters:
///   - value: The volume in imperial tablespoons.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func imperialTablespoons(_ value: Value) -> Self {
		Self(value, unit: .imperialTablespoons)
	}

/// Initialize the volume using a value in imperial teaspoons.
///
/// One imperial teaspoon is 5.92 milliliters, slightly larger than a US
/// teaspoon.
///
/// - Parameters:
///   - value: The volume in imperial teaspoons.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func imperialTeaspoons(_ value: Value) -> Self {
		Self(value, unit: .imperialTeaspoons)
	}

/// Initialize the volume using a value in kiloliters.
///
/// One kiloliter is 1,000 liters or one cubic meter.
///
/// - Parameters:
///   - value: The volume in kiloliters.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func kiloliters(_ value: Value) -> Self {
		Self(value, unit: .kiloliters)
	}

/// Initialize the volume using a value in liters.
///
/// One liter is 1,000 milliliters or one cubic decimeter.
///
/// - Parameters:
///   - value: The volume in liters.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func liters(_ value: Value) -> Self {
		Self(value, unit: .liters)
	}

/// Initialize the volume using a value in megaliters.
///
/// One megaliter is 1,000,000 liters or 1,000 cubic meters.
///
/// - Parameters:
///   - value: The volume in megaliters.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func megaliters(_ value: Value) -> Self {
		Self(value, unit: .megaliters)
	}

/// Initialize the volume using a value in metric cups.
///
/// One metric cup is 250 milliliters, used in Australian and New Zealand
/// recipes.
///
/// - Parameters:
///   - value: The volume in metric cups.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func metricCups(_ value: Value) -> Self {
		Self(value, unit: .metricCups)
	}

/// Initialize the volume using a value in milliliters.
///
/// One milliliter is 1⁄1,000 of a liter or one cubic centimeter.
///
/// - Parameters:
///   - value: The volume in milliliters.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func milliliters(_ value: Value) -> Self {
		Self(value, unit: .milliliters)
	}

/// Initialize the volume using a value in pints.
///
/// One pint (US) is 473 milliliters or 16 fluid ounces.
///
/// - Parameters:
///   - value: The volume in pints.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func pints(_ value: Value) -> Self {
		Self(value, unit: .pints)
	}

/// Initialize the volume using a value in quarts.
///
/// One quart (US) is 946 milliliters or 2 pints.
///
/// - Parameters:
///   - value: The volume in quarts.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func quarts(_ value: Value) -> Self {
		Self(value, unit: .quarts)
	}

/// Initialize the volume using a value in tablespoons.
///
/// One tablespoon (US) is about 14.79 milliliters or 3 teaspoons.
///
/// - Parameters:
///   - value: The volume in tablespoons.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func tablespoons(_ value: Value) -> Self {
		Self(value, unit: .tablespoons)
	}

/// Initialize the volume using a value in teaspoons.
///
/// One teaspoon (US) is about 4.93 milliliters.
///
/// - Parameters:
///   - value: The volume in teaspoons.
///
/// - Returns: The measurement representing the provided volume.
///
	public static func teaspoons(_ value: Value) -> Self {
		Self(value, unit: .teaspoons)
	}

/// The volume measured in acre feet.
///
/// One acre-foot is about 1,233.5 cubic meters, the volume of water
/// covering one acre to a depth of one foot.
///
	public var acreFeet: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .acreFeet)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .acreFeet, to: .base)
		}
	}

/// The volume measured in bushels.
///
/// One bushel is approximately 35.24 liters, used mainly for dry goods like
/// grain.
///
	public var bushels: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .bushels)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .bushels, to: .base)
		}
	}

/// The volume measured in centiliters.
///
/// One centiliter is 1⁄100 of a liter or 10 milliliters.
///
	public var centiliters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .centiliters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .centiliters, to: .base)
		}
	}

/// The volume measured in cubic centimeters.
///
/// One cubic centimeter is equal to 1 milliliter or 1⁄1,000,000 of a cubic
/// meter.
///
	public var cubicCentimeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicCentimeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicCentimeters, to: .base)
		}
	}

/// The volume measured in cubic decimeters.
///
/// One cubic decimeter is equal to 1 liter or 1,000 cubic centimeters.
///
	public var cubicDecimeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicDecimeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicDecimeters, to: .base)
		}
	}

/// The volume measured in cubic feet.
///
/// One cubic foot is about 28.32 liters or 1,728 cubic inches.
///
	public var cubicFeet: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicFeet)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicFeet, to: .base)
		}
	}

/// The volume measured in cubic inches.
///
/// One cubic inch is approximately 16.39 milliliters or 1⁄61 of a liter.
///
	public var cubicInches: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicInches)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicInches, to: .base)
		}
	}

/// The volume measured in cubic kilometers.
///
/// One cubic kilometer is 1,000,000,000,000 liters or 1 billion cubic
/// meters.
///
	public var cubicKilometers: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicKilometers)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicKilometers, to: .base)
		}
	}

/// The volume measured in cubic meters.
///
/// One cubic meter is the base SI unit of volume, equal to 1,000 liters or
/// 1,000,000 cubic centimeters.
///
	public var cubicMeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicMeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicMeters, to: .base)
		}
	}

/// The volume measured in cubic miles.
///
/// One cubic mile is about 4.17 billion cubic meters or 1.1 trillion
/// gallons.
///
	public var cubicMiles: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicMiles)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicMiles, to: .base)
		}
	}

/// The volume measured in cubic millimeters.
///
/// One cubic millimeter is 1⁄1,000,000 of a liter or 1⁄1,000 of a cubic
/// centimeter.
///
	public var cubicMillimeters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicMillimeters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicMillimeters, to: .base)
		}
	}

/// The volume measured in cubic yards.
///
/// One cubic yard is about 764.55 liters or 27 cubic feet.
///
	public var cubicYards: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cubicYards)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cubicYards, to: .base)
		}
	}

/// The volume measured in cups.
///
/// One cup is typically 240 milliliters in US measurement, used for cooking
/// and serving sizes.
///
	public var cups: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .cups)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .cups, to: .base)
		}
	}

/// The volume measured in deciliters.
///
/// One deciliter is 1⁄10 of a liter or 100 milliliters.
///
	public var deciliters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .deciliters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .deciliters, to: .base)
		}
	}

/// The volume measured in fluid ounces.
///
/// One fluid ounce (US) is about 29.57 milliliters or 1⁄128 of a gallon.
///
	public var fluidOunces: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .fluidOunces)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .fluidOunces, to: .base)
		}
	}

/// The volume measured in gallons.
///
/// One gallon (US) is 3.785 liters or 128 fluid ounces.
///
	public var gallons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .gallons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .gallons, to: .base)
		}
	}

/// The volume measured in imperial fluid ounces.
///
/// One imperial fluid ounce is about 28.41 milliliters, slightly larger
/// than the US fluid ounce.
///
	public var imperialFluidOunces: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .imperialFluidOunces)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .imperialFluidOunces, to: .base)
		}
	}

/// The volume measured in imperial gallons.
///
/// One imperial gallon is 4.546 liters or 160 imperial fluid ounces.
///
	public var imperialGallons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .imperialGallons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .imperialGallons, to: .base)
		}
	}

/// The volume measured in imperial pints.
///
/// One imperial pint is 568 milliliters or 20 imperial fluid ounces.
///
	public var imperialPints: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .imperialPints)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .imperialPints, to: .base)
		}
	}

/// The volume measured in imperial quarts.
///
/// One imperial quart is 1.136 liters or 2 imperial pints.
///
	public var imperialQuarts: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .imperialQuarts)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .imperialQuarts, to: .base)
		}
	}

/// The volume measured in imperial tablespoons.
///
/// One imperial tablespoon is 17.76 milliliters or 3 imperial teaspoons.
///
	public var imperialTablespoons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .imperialTablespoons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .imperialTablespoons, to: .base)
		}
	}

/// The volume measured in imperial teaspoons.
///
/// One imperial teaspoon is 5.92 milliliters, slightly larger than a US
/// teaspoon.
///
	public var imperialTeaspoons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .imperialTeaspoons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .imperialTeaspoons, to: .base)
		}
	}

/// The volume measured in kiloliters.
///
/// One kiloliter is 1,000 liters or one cubic meter.
///
	public var kiloliters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .kiloliters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .kiloliters, to: .base)
		}
	}

/// The volume measured in liters.
///
/// One liter is 1,000 milliliters or one cubic decimeter.
///
	public var liters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .liters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .liters, to: .base)
		}
	}

/// The volume measured in megaliters.
///
/// One megaliter is 1,000,000 liters or 1,000 cubic meters.
///
	public var megaliters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .megaliters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .megaliters, to: .base)
		}
	}

/// The volume measured in metric cups.
///
/// One metric cup is 250 milliliters, used in Australian and New Zealand
/// recipes.
///
	public var metricCups: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .metricCups)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .metricCups, to: .base)
		}
	}

/// The volume measured in milliliters.
///
/// One milliliter is 1⁄1,000 of a liter or one cubic centimeter.
///
	public var milliliters: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .milliliters)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .milliliters, to: .base)
		}
	}

/// The volume measured in pints.
///
/// One pint (US) is 473 milliliters or 16 fluid ounces.
///
	public var pints: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .pints)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .pints, to: .base)
		}
	}

/// The volume measured in quarts.
///
/// One quart (US) is 946 milliliters or 2 pints.
///
	public var quarts: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .quarts)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .quarts, to: .base)
		}
	}

/// The volume measured in tablespoons.
///
/// One tablespoon (US) is about 14.79 milliliters or 3 teaspoons.
///
	public var tablespoons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .tablespoons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .tablespoons, to: .base)
		}
	}

/// The volume measured in teaspoons.
///
/// One teaspoon (US) is about 4.93 milliliters.
///
	public var teaspoons: Value {
		get {
			MeasurementUnit.convert(value: self.value, from: .base, to: .teaspoons)
		}
		set {
			self.value = MeasurementUnit.convert(value: newValue, from: .teaspoons, to: .base)
		}
	}

/// Initialize the measurement from a volume measured in acre feet.
///
/// One acre-foot is about 1,233.5 cubic meters, the volume of water
/// covering one acre to a depth of one foot.
///
/// - Parameters:
///   - value: The volume measured in acre feet.
///
	public init(acreFeet value: Value) {
		self = Volume(value, unit: .acreFeet)
	}

/// Initialize the measurement from a volume measured in bushels.
///
/// One bushel is approximately 35.24 liters, used mainly for dry goods like
/// grain.
///
/// - Parameters:
///   - value: The volume measured in bushels.
///
	public init(bushels value: Value) {
		self = Volume(value, unit: .bushels)
	}

/// Initialize the measurement from a volume measured in centiliters.
///
/// One centiliter is 1⁄100 of a liter or 10 milliliters.
///
/// - Parameters:
///   - value: The volume measured in centiliters.
///
	public init(centiliters value: Value) {
		self = Volume(value, unit: .centiliters)
	}

/// Initialize the measurement from a volume measured in cubic centimeters.
///
/// One cubic centimeter is equal to 1 milliliter or 1⁄1,000,000 of a cubic
/// meter.
///
/// - Parameters:
///   - value: The volume measured in cubic centimeters.
///
	public init(cubicCentimeters value: Value) {
		self = Volume(value, unit: .cubicCentimeters)
	}

/// Initialize the measurement from a volume measured in cubic decimeters.
///
/// One cubic decimeter is equal to 1 liter or 1,000 cubic centimeters.
///
/// - Parameters:
///   - value: The volume measured in cubic decimeters.
///
	public init(cubicDecimeters value: Value) {
		self = Volume(value, unit: .cubicDecimeters)
	}

/// Initialize the measurement from a volume measured in cubic feet.
///
/// One cubic foot is about 28.32 liters or 1,728 cubic inches.
///
/// - Parameters:
///   - value: The volume measured in cubic feet.
///
	public init(cubicFeet value: Value) {
		self = Volume(value, unit: .cubicFeet)
	}

/// Initialize the measurement from a volume measured in cubic inches.
///
/// One cubic inch is approximately 16.39 milliliters or 1⁄61 of a liter.
///
/// - Parameters:
///   - value: The volume measured in cubic inches.
///
	public init(cubicInches value: Value) {
		self = Volume(value, unit: .cubicInches)
	}

/// Initialize the measurement from a volume measured in cubic kilometers.
///
/// One cubic kilometer is 1,000,000,000,000 liters or 1 billion cubic
/// meters.
///
/// - Parameters:
///   - value: The volume measured in cubic kilometers.
///
	public init(cubicKilometers value: Value) {
		self = Volume(value, unit: .cubicKilometers)
	}

/// Initialize the measurement from a volume measured in cubic meters.
///
/// One cubic meter is the base SI unit of volume, equal to 1,000 liters or
/// 1,000,000 cubic centimeters.
///
/// - Parameters:
///   - value: The volume measured in cubic meters.
///
	public init(cubicMeters value: Value) {
		self = Volume(value, unit: .cubicMeters)
	}

/// Initialize the measurement from a volume measured in cubic miles.
///
/// One cubic mile is about 4.17 billion cubic meters or 1.1 trillion
/// gallons.
///
/// - Parameters:
///   - value: The volume measured in cubic miles.
///
	public init(cubicMiles value: Value) {
		self = Volume(value, unit: .cubicMiles)
	}

/// Initialize the measurement from a volume measured in cubic millimeters.
///
/// One cubic millimeter is 1⁄1,000,000 of a liter or 1⁄1,000 of a cubic
/// centimeter.
///
/// - Parameters:
///   - value: The volume measured in cubic millimeters.
///
	public init(cubicMillimeters value: Value) {
		self = Volume(value, unit: .cubicMillimeters)
	}

/// Initialize the measurement from a volume measured in cubic yards.
///
/// One cubic yard is about 764.55 liters or 27 cubic feet.
///
/// - Parameters:
///   - value: The volume measured in cubic yards.
///
	public init(cubicYards value: Value) {
		self = Volume(value, unit: .cubicYards)
	}

/// Initialize the measurement from a volume measured in cups.
///
/// One cup is typically 240 milliliters in US measurement, used for cooking
/// and serving sizes.
///
/// - Parameters:
///   - value: The volume measured in cups.
///
	public init(cups value: Value) {
		self = Volume(value, unit: .cups)
	}

/// Initialize the measurement from a volume measured in deciliters.
///
/// One deciliter is 1⁄10 of a liter or 100 milliliters.
///
/// - Parameters:
///   - value: The volume measured in deciliters.
///
	public init(deciliters value: Value) {
		self = Volume(value, unit: .deciliters)
	}

/// Initialize the measurement from a volume measured in fluid ounces.
///
/// One fluid ounce (US) is about 29.57 milliliters or 1⁄128 of a gallon.
///
/// - Parameters:
///   - value: The volume measured in fluid ounces.
///
	public init(fluidOunces value: Value) {
		self = Volume(value, unit: .fluidOunces)
	}

/// Initialize the measurement from a volume measured in gallons.
///
/// One gallon (US) is 3.785 liters or 128 fluid ounces.
///
/// - Parameters:
///   - value: The volume measured in gallons.
///
	public init(gallons value: Value) {
		self = Volume(value, unit: .gallons)
	}

/// Initialize the measurement from a volume measured in imperial fluid ounces.
///
/// One imperial fluid ounce is about 28.41 milliliters, slightly larger
/// than the US fluid ounce.
///
/// - Parameters:
///   - value: The volume measured in imperial fluid ounces.
///
	public init(imperialFluidOunces value: Value) {
		self = Volume(value, unit: .imperialFluidOunces)
	}

/// Initialize the measurement from a volume measured in imperial gallons.
///
/// One imperial gallon is 4.546 liters or 160 imperial fluid ounces.
///
/// - Parameters:
///   - value: The volume measured in imperial gallons.
///
	public init(imperialGallons value: Value) {
		self = Volume(value, unit: .imperialGallons)
	}

/// Initialize the measurement from a volume measured in imperial pints.
///
/// One imperial pint is 568 milliliters or 20 imperial fluid ounces.
///
/// - Parameters:
///   - value: The volume measured in imperial pints.
///
	public init(imperialPints value: Value) {
		self = Volume(value, unit: .imperialPints)
	}

/// Initialize the measurement from a volume measured in imperial quarts.
///
/// One imperial quart is 1.136 liters or 2 imperial pints.
///
/// - Parameters:
///   - value: The volume measured in imperial quarts.
///
	public init(imperialQuarts value: Value) {
		self = Volume(value, unit: .imperialQuarts)
	}

/// Initialize the measurement from a volume measured in imperial tablespoons.
///
/// One imperial tablespoon is 17.76 milliliters or 3 imperial teaspoons.
///
/// - Parameters:
///   - value: The volume measured in imperial tablespoons.
///
	public init(imperialTablespoons value: Value) {
		self = Volume(value, unit: .imperialTablespoons)
	}

/// Initialize the measurement from a volume measured in imperial teaspoons.
///
/// One imperial teaspoon is 5.92 milliliters, slightly larger than a US
/// teaspoon.
///
/// - Parameters:
///   - value: The volume measured in imperial teaspoons.
///
	public init(imperialTeaspoons value: Value) {
		self = Volume(value, unit: .imperialTeaspoons)
	}

/// Initialize the measurement from a volume measured in kiloliters.
///
/// One kiloliter is 1,000 liters or one cubic meter.
///
/// - Parameters:
///   - value: The volume measured in kiloliters.
///
	public init(kiloliters value: Value) {
		self = Volume(value, unit: .kiloliters)
	}

/// Initialize the measurement from a volume measured in liters.
///
/// One liter is 1,000 milliliters or one cubic decimeter.
///
/// - Parameters:
///   - value: The volume measured in liters.
///
	public init(liters value: Value) {
		self = Volume(value, unit: .liters)
	}

/// Initialize the measurement from a volume measured in megaliters.
///
/// One megaliter is 1,000,000 liters or 1,000 cubic meters.
///
/// - Parameters:
///   - value: The volume measured in megaliters.
///
	public init(megaliters value: Value) {
		self = Volume(value, unit: .megaliters)
	}

/// Initialize the measurement from a volume measured in metric cups.
///
/// One metric cup is 250 milliliters, used in Australian and New Zealand
/// recipes.
///
/// - Parameters:
///   - value: The volume measured in metric cups.
///
	public init(metricCups value: Value) {
		self = Volume(value, unit: .metricCups)
	}

/// Initialize the measurement from a volume measured in milliliters.
///
/// One milliliter is 1⁄1,000 of a liter or one cubic centimeter.
///
/// - Parameters:
///   - value: The volume measured in milliliters.
///
	public init(milliliters value: Value) {
		self = Volume(value, unit: .milliliters)
	}

/// Initialize the measurement from a volume measured in pints.
///
/// One pint (US) is 473 milliliters or 16 fluid ounces.
///
/// - Parameters:
///   - value: The volume measured in pints.
///
	public init(pints value: Value) {
		self = Volume(value, unit: .pints)
	}

/// Initialize the measurement from a volume measured in quarts.
///
/// One quart (US) is 946 milliliters or 2 pints.
///
/// - Parameters:
///   - value: The volume measured in quarts.
///
	public init(quarts value: Value) {
		self = Volume(value, unit: .quarts)
	}

/// Initialize the measurement from a volume measured in tablespoons.
///
/// One tablespoon (US) is about 14.79 milliliters or 3 teaspoons.
///
/// - Parameters:
///   - value: The volume measured in tablespoons.
///
	public init(tablespoons value: Value) {
		self = Volume(value, unit: .tablespoons)
	}

/// Initialize the measurement from a volume measured in teaspoons.
///
/// One teaspoon (US) is about 4.93 milliliters.
///
/// - Parameters:
///   - value: The volume measured in teaspoons.
///
	public init(teaspoons value: Value) {
		self = Volume(value, unit: .teaspoons)
	}
}

extension Volume: Codable where Value: Codable {

}

extension Volume: Comparable where Value: Comparable {
	public static func < (lhs: Self, rhs: Self) -> Bool {
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
