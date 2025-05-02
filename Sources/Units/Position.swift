//
//  Position.swift
//  Units
//
//  Created by Matt Cox on 21/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Foundation

/// A measurement representing the position of an object in space.
///
/// This is similar to distance, but is extended into N dimensions.
///
/// Positions are stored in meters, however they can be read and written in
/// various units.
///
public struct Position<Value: SIMD> where Value.Scalar: BinaryFloatingPoint {
	public typealias MeasurementUnit = Scalar.MeasurementUnit

	private(set) public var value: Value
}

extension Position {
/// Initialize the position using a value in astronomical units.
///
/// One astronomical unit is about 149.6 million kilometers, the average
/// distance from the Earth to the Sun.
///
/// - Parameters:
///   - value: The position in astronomical units.
///
/// - Returns: The measurement representing the provided position.
///
	public static func astronomicalUnits(_ value: Value) -> Self {
		Self(value, unit: .astronomicalUnits)
	}

/// Initialize the position using a value in centimeters.
///
/// One centimeter is 10 millimeters or 1⁄100 of a meter.
///
/// - Parameters:
///   - value: The position in centimeters.
///
/// - Returns: The measurement representing the provided position.
///
	public static func centimeters(_ value: Value) -> Self {
		Self(value, unit: .centimeters)
	}

/// Initialize the position using a value in decameters.
///
/// One decameter is 10 meters or 1⁄100 of a kilometer.
///
/// - Parameters:
///   - value: The position in decameters.
///
/// - Returns: The measurement representing the provided position.
///
	public static func decameters(_ value: Value) -> Self {
		Self(value, unit: .decameters)
	}

/// Initialize the position using a value in decimeters.
///
/// One decimeter is 10 centimeters or 1⁄10 of a meter.
///
/// - Parameters:
///   - value: The position in decimeters.
///
/// - Returns: The measurement representing the provided position.
///
	public static func decimeters(_ value: Value) -> Self {
		Self(value, unit: .decimeters)
	}

/// Initialize the position using a value in fathoms.
///
/// One fathom is 6 feet or 1.8288 meters and is traditionally used to
/// measure water depth.
///
/// - Parameters:
///   - value: The position in fathoms.
///
/// - Returns: The measurement representing the provided position.
///
	public static func fathoms(_ value: Value) -> Self {
		Self(value, unit: .fathoms)
	}

/// Initialize the position using a value in feet.
///
/// One foot is 12 inches or 0.3048 meters.
///
/// - Parameters:
///   - value: The position in feet.
///
/// - Returns: The measurement representing the provided position.
///
	public static func feet(_ value: Value) -> Self {
		Self(value, unit: .feet)
	}

/// Initialize the position using a value in furlongs.
///
/// One furlong is 660 feet or 201.168 meters.
///
/// - Parameters:
///   - value: The position in furlongs.
///
/// - Returns: The measurement representing the provided position.
///
	public static func furlongs(_ value: Value) -> Self {
		Self(value, unit: .furlongs)
	}

/// Initialize the position using a value in hectometers.
///
/// One hectometer is 100 meters or 1⁄10 of a kilometer.
///
/// - Parameters:
///   - value: The position in hectometers.
///
/// - Returns: The measurement representing the provided position.
///
	public static func hectometers(_ value: Value) -> Self {
		Self(value, unit: .hectometers)
	}

/// Initialize the position using a value in inches.
///
/// One inch is 2.54 centimeters or 1⁄12 of a foot.
///
/// - Parameters:
///   - value: The position in inches.
///
/// - Returns: The measurement representing the provided position.
///
	public static func inches(_ value: Value) -> Self {
		Self(value, unit: .inches)
	}

/// Initialize the position using a value in kilometers.
///
/// One kilometer is 1,000 meters or about 0.621 miles.
///
/// - Parameters:
///   - value: The position in kilometers.
///
/// - Returns: The measurement representing the provided position.
///
	public static func kilometers(_ value: Value) -> Self {
		Self(value, unit: .kilometers)
	}

/// Initialize the position using a value in lightyears.
///
/// One lightyear is about 9.46 trillion kilometers or 63,241 astronomical
/// units.
///
/// - Parameters:
///   - value: The position in lightyears.
///
/// - Returns: The measurement representing the provided position.
///
	public static func lightyears(_ value: Value) -> Self {
		Self(value, unit: .lightyears)
	}

/// Initialize the position using a value in megameters.
///
/// One megameter is 1,000 kilometers or 1 million meters.
///
/// - Parameters:
///   - value: The position in megameters.
///
/// - Returns: The measurement representing the provided position.
///
	public static func megameters(_ value: Value) -> Self {
		Self(value, unit: .megameters)
	}

/// Initialize the position using a value in meters.
///
/// One meter is equal to 100 centimeters or about 3.28 feet.
///
/// - Parameters:
///   - value: The position in meters.
///
/// - Returns: The measurement representing the provided position.
///
	public static func meters(_ value: Value) -> Self {
		Self(value, unit: .meters)
	}

/// Initialize the position using a value in micrometers.
///
/// One micrometer is 1⁄1,000,000 of a meter or 1,000 nanometers.
///
/// - Parameters:
///   - value: The position in micrometers.
///
/// - Returns: The measurement representing the provided position.
///
	public static func micrometers(_ value: Value) -> Self {
		Self(value, unit: .micrometers)
	}

/// Initialize the position using a value in miles.
///
/// One mile is 5,280 feet or about 1.609 kilometers.
///
/// - Parameters:
///   - value: The position in miles.
///
/// - Returns: The measurement representing the provided position.
///
	public static func miles(_ value: Value) -> Self {
		Self(value, unit: .miles)
	}

/// Initialize the position using a value in millimeters.
///
/// One millimeter is 1⁄1,000 of a meter or 1⁄10 of a centimeter.
///
/// - Parameters:
///   - value: The position in millimeters.
///
/// - Returns: The measurement representing the provided position.
///
	public static func millimeters(_ value: Value) -> Self {
		Self(value, unit: .millimeters)
	}

/// Initialize the position using a value in nanometers.
///
/// One nanometer is 1⁄1,000,000,000 of a meter or 1⁄1,000 of a micrometer.
///
/// - Parameters:
///   - value: The position in nanometers.
///
/// - Returns: The measurement representing the provided position.
///
	public static func nanometers(_ value: Value) -> Self {
		Self(value, unit: .nanometers)
	}

/// Initialize the position using a value in nautical miles.
///
/// One nautical mile is 1,852 meters or about 1.151 miles and is used in
/// maritime and air navigation.
///
/// - Parameters:
///   - value: The position in nautical miles.
///
/// - Returns: The measurement representing the provided position.
///
	public static func nauticalMiles(_ value: Value) -> Self {
		Self(value, unit: .nauticalMiles)
	}

/// Initialize the position using a value in parsecs.
///
/// One parsec is about 3.26 lightyears or 206,265 astronomical units.
///
/// - Parameters:
///   - value: The position in parsecs.
///
/// - Returns: The measurement representing the provided position.
///
	public static func parsecs(_ value: Value) -> Self {
		Self(value, unit: .parsecs)
	}

/// Initialize the position using a value in picometers.
///
/// One picometer is 1⁄1,000,000,000,000 of a meter or 1⁄1,000 of a
/// nanometer.
///
/// - Parameters:
///   - value: The position in picometers.
///
/// - Returns: The measurement representing the provided position.
///
	public static func picometers(_ value: Value) -> Self {
		Self(value, unit: .picometers)
	}

/// Initialize the position using a value in scandinavian miles.
///
/// One Scandinavian mile is exactly 10 kilometers and used mainly in Sweden
/// and Norway.
///
/// - Parameters:
///   - value: The position in scandinavian miles.
///
/// - Returns: The measurement representing the provided position.
///
	public static func scandinavianMiles(_ value: Value) -> Self {
		Self(value, unit: .scandinavianMiles)
	}

/// Initialize the position using a value in yards.
///
/// One yard is 3 feet or 0.9144 meters.
///
/// - Parameters:
///   - value: The position in yards.
///
/// - Returns: The measurement representing the provided position.
///
	public static func yards(_ value: Value) -> Self {
		Self(value, unit: .yards)
	}

/// The position measured in astronomical units.
///
/// One astronomical unit is about 149.6 million kilometers, the average
/// position from the Earth to the Sun.
///
	public var astronomicalUnits: Value {
		get {
			self.get(unit: .astronomicalUnits)
		}
		set {
			self.set(newValue, unit: .astronomicalUnits)
		}
	}

/// The position measured in centimeters.
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

/// The position measured in decameters.
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

/// The position measured in decimeters.
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

/// The position measured in fathoms.
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

/// The position measured in feet.
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

/// The position measured in furlongs.
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

/// The position measured in hectometers.
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

/// The position measured in inches.
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

/// The position measured in kilometers.
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

/// The position measured in lightyears.
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

/// The position measured in megameters.
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

/// The position measured in meters.
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

/// The position measured in micrometers.
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

/// The position measured in miles.
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

/// The position measured in millimeters.
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

/// The position measured in nanometers.
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

/// The position measured in nautical miles.
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

/// The position measured in parsecs.
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

/// The position measured in picometers.
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

/// The position measured in scandinavian miles.
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

/// The position measured in yards.
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

/// Initialize the measurement from a position measured in astronomical
/// units.
///
/// One astronomical unit is about 149.6 million kilometers, the average
/// position from the Earth to the Sun.
///
/// - Parameters:
///   - value: The position measured in astronomical units.
///
	public init(astronomicalUnits value: Value) {
		self = Self(value, unit: .astronomicalUnits)
	}

/// Initialize the measurement from a position measured in centimeters.
///
/// One centimeter is 10 millimeters or 1⁄100 of a meter.
///
/// - Parameters:
///   - value: The position measured in centimeters.
///
	public init(centimeters value: Value) {
		self = Self(value, unit: .centimeters)
	}

/// Initialize the measurement from a position measured in decameters.
///
/// One decameter is 10 meters or 1⁄100 of a kilometer.
///
/// - Parameters:
///   - value: The position measured in decameters.
///
	public init(decameters value: Value) {
		self = Self(value, unit: .decameters)
	}

/// Initialize the measurement from a position measured in decimeters.
///
/// One decimeter is 10 centimeters or 1⁄10 of a meter.
///
/// - Parameters:
///   - value: The position measured in decimeters.
///
	public init(decimeters value: Value) {
		self = Self(value, unit: .decimeters)
	}

/// Initialize the measurement from a position measured in fathoms.
///
/// One fathom is 6 feet or 1.8288 meters and is traditionally used to
/// measure water depth.
///
/// - Parameters:
///   - value: The position measured in fathoms.
///
	public init(fathoms value: Value) {
		self = Self(value, unit: .fathoms)
	}

/// Initialize the measurement from a position measured in feet.
///
/// One foot is 12 inches or 0.3048 meters.
///
/// - Parameters:
///   - value: The position measured in feet.
///
	public init(feet value: Value) {
		self = Self(value, unit: .feet)
	}

/// Initialize the measurement from a position measured in furlongs.
///
/// One furlong is 660 feet or 201.168 meters.
///
/// - Parameters:
///   - value: The position measured in furlongs.
///
	public init(furlongs value: Value) {
		self = Self(value, unit: .furlongs)
	}

/// Initialize the measurement from a position measured in hectometers.
///
/// One hectometer is 100 meters or 1⁄10 of a kilometer.
///
/// - Parameters:
///   - value: The position measured in hectometers.
///
	public init(hectometers value: Value) {
		self = Self(value, unit: .hectometers)
	}

/// Initialize the measurement from a position measured in inches.
///
/// One inch is 2.54 centimeters or 1⁄12 of a foot.
///
/// - Parameters:
///   - value: The position measured in inches.
///
	public init(inches value: Value) {
		self = Self(value, unit: .inches)
	}

/// Initialize the measurement from a position measured in kilometers.
///
/// One kilometer is 1,000 meters or about 0.621 miles.
///
/// - Parameters:
///   - value: The position measured in kilometers.
///
	public init(kilometers value: Value) {
		self = Self(value, unit: .kilometers)
	}

/// Initialize the measurement from a position measured in lightyears.
///
/// One lightyear is about 9.46 trillion kilometers or 63,241 astronomical
/// units.
///
/// - Parameters:
///   - value: The position measured in lightyears.
///
	public init(lightyears value: Value) {
		self = Self(value, unit: .lightyears)
	}

/// Initialize the measurement from a position measured in megameters.
///
/// One megameter is 1,000 kilometers or 1 million meters.
///
/// - Parameters:
///   - value: The position measured in megameters.
///
	public init(megameters value: Value) {
		self = Self(value, unit: .megameters)
	}

/// Initialize the measurement from a position measured in meters.
///
/// One meter is equal to 100 centimeters or about 3.28 feet.
///
/// - Parameters:
///   - value: The position measured in meters.
///
	public init(meters value: Value) {
		self = Self(value, unit: .meters)
	}

/// Initialize the measurement from a position measured in micrometers.
///
/// One micrometer is 1⁄1,000,000 of a meter or 1,000 nanometers.
///
/// - Parameters:
///   - value: The position measured in micrometers.
///
	public init(micrometers value: Value) {
		self = Self(value, unit: .micrometers)
	}

/// Initialize the measurement from a position measured in miles.
///
/// One mile is 5,280 feet or about 1.609 kilometers.
///
/// - Parameters:
///   - value: The position measured in miles.
///
	public init(miles value: Value) {
		self = Self(value, unit: .miles)
	}

/// Initialize the measurement from a position measured in millimeters.
///
/// One millimeter is 1⁄1,000 of a meter or 1⁄10 of a centimeter.
///
/// - Parameters:
///   - value: The position measured in millimeters.
///
	public init(millimeters value: Value) {
		self = Self(value, unit: .millimeters)
	}

/// Initialize the measurement from a position measured in nanometers.
///
/// One nanometer is 1⁄1,000,000,000 of a meter or 1⁄1,000 of a micrometer.
///
/// - Parameters:
///   - value: The position measured in nanometers.
///
	public init(nanometers value: Value) {
		self = Self(value, unit: .nanometers)
	}

/// Initialize the measurement from a position measured in nautical miles.
///
/// One nautical mile is 1,852 meters or about 1.151 miles and is used in
/// maritime and air navigation.
///
/// - Parameters:
///   - value: The position measured in nautical miles.
///
	public init(nauticalMiles value: Value) {
		self = Self(value, unit: .nauticalMiles)
	}

/// Initialize the measurement from a position measured in parsecs.
///
/// One parsec is about 3.26 lightyears or 206,265 astronomical units.
///
/// - Parameters:
///   - value: The position measured in parsecs.
///
	public init(parsecs value: Value) {
		self = Self(value, unit: .parsecs)
	}

/// Initialize the measurement from a position measured in picometers.
///
/// One picometer is 1⁄1,000,000,000,000 of a meter or 1⁄1,000 of a
/// nanometer.
///
/// - Parameters:
///   - value: The position measured in picometers.
///
	public init(picometers value: Value) {
		self = Self(value, unit: .picometers)
	}

/// Initialize the measurement from a position measured in scandinavian
/// miles.
///
/// One Scandinavian mile is exactly 10 kilometers and used mainly in Sweden
/// and Norway.
///
/// - Parameters:
///   - value: The position measured in scandinavian miles.
///
	public init(scandinavianMiles value: Value) {
		self = Self(value, unit: .scandinavianMiles)
	}

/// Initialize the measurement from a position measured in yards.
///
/// One yard is 3 feet or 0.9144 meters.
///
/// - Parameters:
///   - value: The position measured in yards.
///
	public init(yards value: Value) {
		self = Self(value, unit: .yards)
	}
}

extension Position: Codable where Value: Codable {

}

extension Position: Comparable where Value: Comparable {
	public static func < (lhs: Self, rhs: Self) -> Bool {
		lhs.value < rhs.value
	}
}

extension Position: Equatable {
	
}

extension Position: MeasurementVector {
	public typealias Scalar = Distance<Value.Scalar>

	public static var zero: Self {
		Self(.zero, unit: .base)
	}
	
	public init(_ value: Value, unit: MeasurementUnit) {
		var vector = Self.Value.zero
		for i in 0..<Self.Value.scalarCount {
			vector[i] = MeasurementUnit.convert(value: value[i], from: unit, to: .base)
		}
		self.value = vector
	}

	public subscript(_ index: Int) -> Scalar {
		get {
			Scalar(value[index], unit: .base)
		}
		set {
			self.value[index] = newValue.value
		}
	}

	public mutating func set(_ value: Value, unit: MeasurementUnit) {
		for i in 0..<Self.Value.scalarCount {
			self.value[i] = MeasurementUnit.convert(value: value[i], from: unit, to: .base)
		}
	}

	public func get(unit: MeasurementUnit) -> Value {
		var vector = Self.Value.zero
		for i in 0..<Self.Value.scalarCount {
			vector[i] = MeasurementUnit.convert(value: value[i], from: .base, to: unit)
		}
		return vector
	}
}

extension Position: Sendable where Value: Sendable {

}
