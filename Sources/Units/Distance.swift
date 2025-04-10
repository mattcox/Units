//
//  Distance.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

/// A measurement representing the distance or length between two positions.
///
/// Distances are stored as meters, however they can be read and written in
/// various units.
///
public struct Distance<Value: BinaryFloatingPoint> {
	public enum MeasurementUnit: UnitLinear {
	/// One astronomical unit is about 149.6 million kilometers, the average
	/// distance from the Earth to the Sun.
	///
		case astronomicalUnits
		
	/// One centimeter is 10 millimeters or 1⁄100 of a meter.
	///
		case centimeters
		
	/// One decameter is 10 meters or 1⁄100 of a kilometer.
	///
		case decameters
		
	/// One decimeter is 10 centimeters or 1⁄10 of a meter.
	///
		case decimeters
		
	/// One fathom is 6 feet or 1.8288 meters and is traditionally used to
	/// measure water depth.
	///
		case fathoms
		
	/// One foot is 12 inches or 0.3048 meters.
	///
		case feet
		
	/// One furlong is 660 feet or 201.168 meters.
	///
		case furlongs
		
	/// One hectometer is 100 meters or 1⁄10 of a kilometer.
	///
		case hectometers
		
	/// One inch is 2.54 centimeters or 1⁄12 of a foot.
	///
		case inches
		
	/// One kilometer is 1,000 meters or about 0.621 miles.
	///
		case kilometers
		
	/// One lightyear is about 9.46 trillion kilometers or 63,241
	/// astronomical units.
	///
		case lightyears
	
	/// One megameter is 1,000 kilometers or 1 million meters.
	///
		case megameters
	
	/// One meter is equal to 100 centimeters or about 3.28 feet.
	///
		case meters
	
	/// One micrometer is 1⁄1,000,000 of a meter or 1,000 nanometers.
	///
		case micrometers
		
	/// One mile is 5,280 feet or about 1.609 kilometers.
	///
		case miles
		
	/// One millimeter is 1⁄1,000 of a meter or 1⁄10 of a centimeter.
	///
		case millimeters
		
	/// One nanometer is 1⁄1,000,000,000 of a meter or 1⁄1,000 of a
	/// micrometer.
	///
		case nanometers
	
	/// One nautical mile is 1,852 meters or about 1.151 miles and is used
	/// in maritime and air navigation.
	///
		case nauticalMiles
		
	/// One parsec is about 3.26 lightyears or 206,265 astronomical units.
	///
		case parsecs
		
	/// One picometer is 1⁄1,000,000,000,000 of a meter or 1⁄1,000 of a
	/// nanometer.
	///
		case picometers
		
	/// One Scandinavian mile is exactly 10 kilometers and used mainly in
	/// Sweden and Norway.
	///
		case scandinavianMiles
		
	/// One yard is 3 feet or 0.9144 meters.
	/// 
		case yards
		
		public static var base: Self {
			.meters
		}
		
		public func symbol(for value: Value) -> String {
			switch self {
				case .astronomicalUnits:
					"ua"

				case .centimeters:
					"cm"

				case .decameters:
					"dam"

				case .decimeters:
					"dm"

				case .fathoms:
					"ftm"

				case .feet:
					"ft"

				case .furlongs:
					"fur"

				case .hectometers:
					"hm"

				case .inches:
					"in"

				case .kilometers:
					"km"

				case .lightyears:
					"ly"

				case .megameters:
					"Mm"

				case .meters:
					"m"

				case .micrometers:
					"µm"

				case .miles:
					"mi"

				case .millimeters:
					"mm"

				case .nanometers:
					"nm"

				case .nauticalMiles:
					"NM"

				case .parsecs:
					"pc"

				case .picometers:
					"pm"

				case .scandinavianMiles:
					"smi"

				case .yards:
					"yd"
			}
		}
		
		public var coefficient: Value {
			switch self {
				case .astronomicalUnits:
					149597870700.0

				case .centimeters:
					0.01

				case .decameters:
					10.0

				case .decimeters:
					0.1

				case .fathoms:
					1.8288

				case .feet:
					0.3048

				case .furlongs:
					201.168

				case .hectometers:
					100.0

				case .inches:
					0.0254

				case .kilometers:
					1000.0

				case .lightyears:
					9.4607304725808e+15

				case .megameters:
					1000000.0

				case .meters:
					1.0

				case .micrometers:
					1e-06

				case .miles:
					1609.344

				case .millimeters:
					0.001

				case .nanometers:
					1e-09

				case .nauticalMiles:
					1852.0

				case .parsecs:
					3.085677581491367e+16

				case .picometers:
					1e-12

				case .scandinavianMiles:
					10000.0

				case .yards:
					0.9144
			}
		}
	}
	
	private(set) public var value: Value
}

extension Distance {
/// Initialize the distance from a value in astronomical units.
///
/// One astronomical unit is about 149.6 million kilometers, the average
/// distance from the Earth to the Sun.
///
/// - Parameters:
///   - value: The distance in astronomical units.
///
/// - Returns: The measurement representing the provided distance.
///
	public static func astronomicalUnits(_ value: Value) -> Self {
		Self(value, unit: .astronomicalUnits)
	}

/// Initialize the distance from a value in centimeters.
///
/// One centimeter is 10 millimeters or 1⁄100 of a meter.
///
/// - Parameters:
///   - value: The distance in centimeters.
///
/// - Returns: The measurement representing the provided distance
///
	public static func centimeters(_ value: Value) -> Self {
		Self(value, unit: .centimeters)
	}

/// Initialize the distance from a value in decameters.
///
/// One decameter is 10 meters or 1⁄100 of a kilometer.
///
/// - Parameters:
///   - value: The distance in decameters.
///
/// - Returns: The measurement representing the provided distance
///
	public static func decameters(_ value: Value) -> Self {
		Self(value, unit: .decameters)
	}

/// Initialize the distance from a value in decimeters.
///
/// One decimeter is 10 centimeters or 1⁄10 of a meter.
///
/// - Parameters:
///   - value: The distance in decimeters.
///
/// - Returns: The measurement representing the provided distance
///
	public static func decimeters(_ value: Value) -> Self {
		Self(value, unit: .decimeters)
	}

/// Initialize the distance from a value in fathoms.
///
/// One fathom is 6 feet or 1.8288 meters and is traditionally used to
/// measure water depth.
///
/// - Parameters:
///   - value: The distance in fathoms.
///
/// - Returns: The measurement representing the provided distance
///
	public static func fathoms(_ value: Value) -> Self {
		Self(value, unit: .fathoms)
	}

/// Initialize the distance from a value in feet.
///
/// One foot is 12 inches or 0.3048 meters.
///
/// - Parameters:
///   - value: The distance in feet.
///
/// - Returns: The measurement representing the provided distance
///
	public static func feet(_ value: Value) -> Self {
		Self(value, unit: .feet)
	}

/// Initialize the distance from a value in furlongs.
///
/// One furlong is 660 feet or 201.168 meters.
///
/// - Parameters:
///   - value: The distance in furlongs.
///
/// - Returns: The measurement representing the provided distance
///
	public static func furlongs(_ value: Value) -> Self {
		Self(value, unit: .furlongs)
	}

/// Initialize the distance from a value in hectometers.
///
/// One hectometer is 100 meters or 1⁄10 of a kilometer.
///
/// - Parameters:
///   - value: The distance in hectometers.
///
/// - Returns: The measurement representing the provided distance
///
	public static func hectometers(_ value: Value) -> Self {
		Self(value, unit: .hectometers)
	}

/// Initialize the distance from a value in inches.
///
/// One inch is 2.54 centimeters or 1⁄12 of a foot.
///
/// - Parameters:
///   - value: The distance in inches.
///
/// - Returns: The measurement representing the provided distance
///
	public static func inches(_ value: Value) -> Self {
		Self(value, unit: .inches)
	}

/// Initialize the distance from a value in kilometers.
///
/// One kilometer is 1,000 meters or about 0.621 miles.
///
/// - Parameters:
///   - value: The distance in kilometers.
///
/// - Returns: The measurement representing the provided distance
///
	public static func kilometers(_ value: Value) -> Self {
		Self(value, unit: .kilometers)
	}

/// Initialize the distance from a value in lightyears.
///
/// One lightyear is about 9.46 trillion kilometers or 63,241 astronomical
/// units.
///
/// - Parameters:
///   - value: The distance in lightyears.
///
/// - Returns: The measurement representing the provided distance
///
	public static func lightyears(_ value: Value) -> Self {
		Self(value, unit: .lightyears)
	}

/// Initialize the distance from a value in megameters.
///
/// One megameter is 1,000 kilometers or 1 million meters.
///
/// - Parameters:
///   - value: The distance in megameters.
///
/// - Returns: The measurement representing the provided distance
///
	public static func megameters(_ value: Value) -> Self {
		Self(value, unit: .megameters)
	}

/// Initialize the distance from a value in meters.
///
/// One meter is equal to 100 centimeters or about 3.28 feet.
///
/// - Parameters:
///   - value: The distance in meters.
///
/// - Returns: The measurement representing the provided distance
///
	public static func meters(_ value: Value) -> Self {
		Self(value, unit: .meters)
	}

/// Initialize the distance from a value in micrometers.
///
/// One micrometer is 1⁄1,000,000 of a meter or 1,000 nanometers.
///
/// - Parameters:
///   - value: The distance in micrometers.
///
/// - Returns: The measurement representing the provided distance
///
	public static func micrometers(_ value: Value) -> Self {
		Self(value, unit: .micrometers)
	}

/// Initialize the distance from a value in miles.
///
/// One mile is 5,280 feet or about 1.609 kilometers.
///
/// - Parameters:
///   - value: The distance in miles.
///
/// - Returns: The measurement representing the provided distance
///
	public static func miles(_ value: Value) -> Self {
		Self(value, unit: .miles)
	}

/// Initialize the distance from a value in millimeters.
///
/// One millimeter is 1⁄1,000 of a meter or 1⁄10 of a centimeter.
///
/// - Parameters:
///   - value: The distance in millimeters.
///
/// - Returns: The measurement representing the provided distance
///
	public static func millimeters(_ value: Value) -> Self {
		Self(value, unit: .millimeters)
	}

/// Initialize the distance from a value in nanometers.
///
/// One nanometer is 1⁄1,000,000,000 of a meter or 1⁄1,000 of a micrometer.
///
/// - Parameters:
///   - value: The distance in nanometers.
///
/// - Returns: The measurement representing the provided distance
///
	public static func nanometers(_ value: Value) -> Self {
		Self(value, unit: .nanometers)
	}

/// Initialize the distance from a value in nautical miles.
///
/// One nautical mile is 1,852 meters or about 1.151 miles and is used in
/// maritime and air navigation.
///
/// - Parameters:
///   - value: The distance in nautical miles.
///
/// - Returns: The measurement representing the provided distance
///
	public static func nauticalMiles(_ value: Value) -> Self {
		Self(value, unit: .nauticalMiles)
	}

/// Initialize the distance from a value in parsecs.
///
/// One parsec is about 3.26 lightyears or 206,265 astronomical units.
///
/// - Parameters:
///   - value: The distance in parsecs.
///
/// - Returns: The measurement representing the provided distance
///
	public static func parsecs(_ value: Value) -> Self {
		Self(value, unit: .parsecs)
	}

/// Initialize the distance from a value in picometers.
///
/// One picometer is 1⁄1,000,000,000,000 of a meter or 1⁄1,000 of a
/// nanometer.
///
/// - Parameters:
///   - value: The distance in picometers.
///
/// - Returns: The measurement representing the provided distance
///
	public static func picometers(_ value: Value) -> Self {
		Self(value, unit: .picometers)
	}

/// Initialize the distance from a value in scandinavian miles.
///
/// One Scandinavian mile is exactly 10 kilometers and used mainly in Sweden
/// and Norway.
///
/// - Parameters:
///   - value: The distance in scandinavian miles.
///
/// - Returns: The measurement representing the provided distance
///
	public static func scandinavianMiles(_ value: Value) -> Self {
		Self(value, unit: .scandinavianMiles)
	}

/// Initialize the distance from a value in yards.
///
/// One yard is 3 feet or 0.9144 meters.
///
/// - Parameters:
///   - value: The distance in yards.
///
/// - Returns: The measurement representing the provided distance
///
	public static func yards(_ value: Value) -> Self {
		Self(value, unit: .yards)
	}

/// The distance measured in astronomical units.
///
/// One astronomical unit is about 149.6 million kilometers, the average
/// distance from the Earth to the Sun.
///
	public var astronomicalUnits: Value {
		get {
			self.get(unit: .astronomicalUnits)
		}
		set {
			self.set(newValue, unit: .astronomicalUnits)
		}
	}

/// The distance measured in centimeters.
///
/// One centimeter is 10 millimeters or 1⁄100 of a meter.
///
	public var centimeters: Value {
		get {
			self.get(unit: .centimeters)
		}
		set {
			self.set(newValue, unit: .centimeters)
		}
	}

/// The distance measured in decameters.
///
/// One decameter is 10 meters or 1⁄100 of a kilometer.
///
	public var decameters: Value {
		get {
			self.get(unit: .decameters)
		}
		set {
			self.set(newValue, unit: .decameters)
		}
	}

/// The distance measured in decimeters.
///
/// One decimeter is 10 centimeters or 1⁄10 of a meter.
///
	public var decimeters: Value {
		get {
			self.get(unit: .decimeters)
		}
		set {
			self.set(newValue, unit: .decimeters)
		}
	}

/// The distance measured in fathoms.
///
/// One fathom is 6 feet or 1.8288 meters and is traditionally used to
/// measure water depth.
///
	public var fathoms: Value {
		get {
			self.get(unit: .fathoms)
		}
		set {
			self.set(newValue, unit: .fathoms)
		}
	}

/// The distance measured in feet.
///
/// One foot is 12 inches or 0.3048 meters.
///
	public var feet: Value {
		get {
			self.get(unit: .feet)
		}
		set {
			self.set(newValue, unit: .feet)
		}
	}

/// The distance measured in furlongs.
///
/// One furlong is 660 feet or 201.168 meters.
///
	public var furlongs: Value {
		get {
			self.get(unit: .furlongs)
		}
		set {
			self.set(newValue, unit: .furlongs)
		}
	}

/// The distance measured in hectometers.
///
/// One hectometer is 100 meters or 1⁄10 of a kilometer.
///
	public var hectometers: Value {
		get {
			self.get(unit: .hectometers)
		}
		set {
			self.set(newValue, unit: .hectometers)
		}
	}

/// The distance measured in inches.
///
/// One inch is 2.54 centimeters or 1⁄12 of a foot.
///
	public var inches: Value {
		get {
			self.get(unit: .inches)
		}
		set {
			self.set(newValue, unit: .inches)
		}
	}

/// The distance measured in kilometers.
///
/// One kilometer is 1,000 meters or about 0.621 miles.
///
	public var kilometers: Value {
		get {
			self.get(unit: .kilometers)
		}
		set {
			self.set(newValue, unit: .kilometers)
		}
	}

/// The distance measured in lightyears.
///
/// One lightyear is about 9.46 trillion kilometers or 63,241 astronomical
/// units.
///
	public var lightyears: Value {
		get {
			self.get(unit: .lightyears)
		}
		set {
			self.set(newValue, unit: .lightyears)
		}
	}

/// The distance measured in megameters.
///
/// One megameter is 1,000 kilometers or 1 million meters.
///
	public var megameters: Value {
		get {
			self.get(unit: .megameters)
		}
		set {
			self.set(newValue, unit: .megameters)
		}
	}

/// The distance measured in meters.
///
/// One meter is equal to 100 centimeters or about 3.28 feet.
///
	public var meters: Value {
		get {
			self.get(unit: .meters)
		}
		set {
			self.set(newValue, unit: .meters)
		}
	}

/// The distance measured in micrometers.
///
/// One micrometer is 1⁄1,000,000 of a meter or 1,000 nanometers.
///
	public var micrometers: Value {
		get {
			self.get(unit: .micrometers)
		}
		set {
			self.set(newValue, unit: .micrometers)
		}
	}

/// The distance measured in miles.
///
/// One mile is 5,280 feet or about 1.609 kilometers.
///
	public var miles: Value {
		get {
			self.get(unit: .miles)
		}
		set {
			self.set(newValue, unit: .miles)
		}
	}

/// The distance measured in millimeters.
///
/// One millimeter is 1⁄1,000 of a meter or 1⁄10 of a centimeter.
///
	public var millimeters: Value {
		get {
			self.get(unit: .millimeters)
		}
		set {
			self.set(newValue, unit: .millimeters)
		}
	}

/// The distance measured in nanometers.
///
/// One nanometer is 1⁄1,000,000,000 of a meter or 1⁄1,000 of a micrometer.
///
	public var nanometers: Value {
		get {
			self.get(unit: .nanometers)
		}
		set {
			self.set(newValue, unit: .nanometers)
		}
	}

/// The distance measured in nautical miles.
///
/// One nautical mile is 1,852 meters or about 1.151 miles and is used in
/// maritime and air navigation.
///
	public var nauticalMiles: Value {
		get {
			self.get(unit: .nauticalMiles)
		}
		set {
			self.set(newValue, unit: .nauticalMiles)
		}
	}

/// The distance measured in parsecs.
///
/// One parsec is about 3.26 lightyears or 206,265 astronomical units.
///
	public var parsecs: Value {
		get {
			self.get(unit: .parsecs)
		}
		set {
			self.set(newValue, unit: .parsecs)
		}
	}

/// The distance measured in picometers.
///
/// One picometer is 1⁄1,000,000,000,000 of a meter or 1⁄1,000 of a nanometer.
///
	public var picometers: Value {
		get {
			self.get(unit: .picometers)
		}
		set {
			self.set(newValue, unit: .picometers)
		}
	}

/// The distance measured in scandinavian miles.
///
/// One Scandinavian mile is exactly 10 kilometers and used mainly in Sweden
/// and Norway.
///
	public var scandinavianMiles: Value {
		get {
			self.get(unit: .scandinavianMiles)
		}
		set {
			self.set(newValue, unit: .scandinavianMiles)
		}
	}

/// The distance measured in yards.
///
/// One yard is 3 feet or 0.9144 meters.
///
	public var yards: Value {
		get {
			self.get(unit: .yards)
		}
		set {
			self.set(newValue, unit: .yards)
		}
	}

/// Initialize the measurement from a distance measured in astronomical
/// units.
///
/// One astronomical unit is about 149.6 million kilometers, the average
/// distance from the Earth to the Sun.
///
/// - Parameters:
///   - value: The distance measured in astronomical units.
///
	public init(astronomicalUnits value: Value) {
		self = Distance(value, unit: .astronomicalUnits)
	}

/// Initialize the measurement from a distance measured in centimeters.
///
/// One centimeter is 10 millimeters or 1⁄100 of a meter.
///
/// - Parameters:
///   - value: The distance measured in centimeters.
///
	public init(centimeters value: Value) {
		self = Distance(value, unit: .centimeters)
	}

/// Initialize the measurement from a distance measured in decameters.
///
/// One decameter is 10 meters or 1⁄100 of a kilometer.
///
/// - Parameters:
///   - value: The distance measured in decameters.
///
	public init(decameters value: Value) {
		self = Distance(value, unit: .decameters)
	}

/// Initialize the measurement from a distance measured in decimeters.
///
/// One decimeter is 10 centimeters or 1⁄10 of a meter.
///
/// - Parameters:
///   - value: The distance measured in decimeters.
///
	public init(decimeters value: Value) {
		self = Distance(value, unit: .decimeters)
	}

/// Initialize the measurement from a distance measured in fathoms.
///
/// One fathom is 6 feet or 1.8288 meters and is traditionally used to
/// measure water depth.
///
/// - Parameters:
///   - value: The distance measured in fathoms.
///
	public init(fathoms value: Value) {
		self = Distance(value, unit: .fathoms)
	}

/// Initialize the measurement from a distance measured in feet.
///
/// One foot is 12 inches or 0.3048 meters.
///
/// - Parameters:
///   - value: The distance measured in feet.
///
	public init(feet value: Value) {
		self = Distance(value, unit: .feet)
	}

/// Initialize the measurement from a distance measured in furlongs.
///
/// One furlong is 660 feet or 201.168 meters.
///
/// - Parameters:
///   - value: The distance measured in furlongs.
///
	public init(furlongs value: Value) {
		self = Distance(value, unit: .furlongs)
	}

/// Initialize the measurement from a distance measured in hectometers.
///
/// One hectometer is 100 meters or 1⁄10 of a kilometer.
///
/// - Parameters:
///   - value: The distance measured in hectometers.
///
	public init(hectometers value: Value) {
		self = Distance(value, unit: .hectometers)
	}

/// Initialize the measurement from a distance measured in inches.
///
/// One inch is 2.54 centimeters or 1⁄12 of a foot.
///
/// - Parameters:
///   - value: The distance measured in inches.
///
	public init(inches value: Value) {
		self = Distance(value, unit: .inches)
	}

/// Initialize the measurement from a distance measured in kilometers.
///
/// One kilometer is 1,000 meters or about 0.621 miles.
///
/// - Parameters:
///   - value: The distance measured in kilometers.
///
	public init(kilometers value: Value) {
		self = Distance(value, unit: .kilometers)
	}

/// Initialize the measurement from a distance measured in lightyears.
///
/// One lightyear is about 9.46 trillion kilometers or 63,241 astronomical
/// units.
///
/// - Parameters:
///   - value: The distance measured in lightyears.
///
	public init(lightyears value: Value) {
		self = Distance(value, unit: .lightyears)
	}

/// Initialize the measurement from a distance measured in megameters.
///
/// One megameter is 1,000 kilometers or 1 million meters.
///
/// - Parameters:
///   - value: The distance measured in megameters.
///
	public init(megameters value: Value) {
		self = Distance(value, unit: .megameters)
	}

/// Initialize the measurement from a distance measured in meters.
///
/// One meter is equal to 100 centimeters or about 3.28 feet.
///
/// - Parameters:
///   - value: The distance measured in meters.
///
	public init(meters value: Value) {
		self = Distance(value, unit: .meters)
	}

/// Initialize the measurement from a distance measured in micrometers.
///
/// One micrometer is 1⁄1,000,000 of a meter or 1,000 nanometers.
///
/// - Parameters:
///   - value: The distance measured in micrometers.
///
	public init(micrometers value: Value) {
		self = Distance(value, unit: .micrometers)
	}

/// Initialize the measurement from a distance measured in miles.
///
/// One mile is 5,280 feet or about 1.609 kilometers.
///
/// - Parameters:
///   - value: The distance measured in miles.
///
	public init(miles value: Value) {
		self = Distance(value, unit: .miles)
	}

/// Initialize the measurement from a distance measured in millimeters.
///
/// One millimeter is 1⁄1,000 of a meter or 1⁄10 of a centimeter.
///
/// - Parameters:
///   - value: The distance measured in millimeters.
///
	public init(millimeters value: Value) {
		self = Distance(value, unit: .millimeters)
	}

/// Initialize the measurement from a distance measured in nanometers.
///
/// One nanometer is 1⁄1,000,000,000 of a meter or 1⁄1,000 of a micrometer.
///
/// - Parameters:
///   - value: The distance measured in nanometers.
///
	public init(nanometers value: Value) {
		self = Distance(value, unit: .nanometers)
	}

/// Initialize the measurement from a distance measured in nautical miles.
///
/// One nautical mile is 1,852 meters or about 1.151 miles and is used in
/// maritime and air navigation.
///
/// - Parameters:
///   - value: The distance measured in nautical miles.
///
	public init(nauticalMiles value: Value) {
		self = Distance(value, unit: .nauticalMiles)
	}

/// Initialize the measurement from a distance measured in parsecs.
///
/// One parsec is about 3.26 lightyears or 206,265 astronomical units.
///
/// - Parameters:
///   - value: The distance measured in parsecs.
///
	public init(parsecs value: Value) {
		self = Distance(value, unit: .parsecs)
	}

/// Initialize the measurement from a distance measured in picometers.
///
/// One picometer is 1⁄1,000,000,000,000 of a meter or 1⁄1,000 of a
/// nanometer.
///
/// - Parameters:
///   - value: The distance measured in picometers.
///
	public init(picometers value: Value) {
		self = Distance(value, unit: .picometers)
	}

/// Initialize the measurement from a distance measured in scandinavian
/// miles.
///
/// One Scandinavian mile is exactly 10 kilometers and used mainly in Sweden
/// and Norway.
///
/// - Parameters:
///   - value: The distance measured in scandinavian miles.
///
	public init(scandinavianMiles value: Value) {
		self = Distance(value, unit: .scandinavianMiles)
	}

/// Initialize the measurement from a distance measured in yards.
///
/// One yard is 3 feet or 0.9144 meters.
///
/// - Parameters:
///   - value: The distance measured in yards.
///
	public init(yards value: Value) {
		self = Distance(value, unit: .yards)
	}
}

extension Distance: Codable where Value: Codable {

}

extension Distance: Comparable where Value: Comparable {
	public static func < (lhs: Self, rhs: Self) -> Bool {
		lhs.value < rhs.value
	}
}

extension Distance: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.value == rhs.value
	}
}

extension Distance: MeasurementBinaryFloatingPoint {
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

extension Distance: Sendable where Value: Sendable {

}
