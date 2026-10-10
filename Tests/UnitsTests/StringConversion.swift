//
//  StringConversion.swift
//  Units
//
//  Created by Matt Cox on 10/10/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("String Conversion")
struct StringConversionTests {
/// Tests a value without a unit is assumed to be in the base unit.
///
	@Test("Value Only", arguments: ["1", "1.0", " 1.0 ", "1e0"])
	func testValueOnly(_ string: String) async throws {
		let unit = try #require(Distance<Double>(string))
		#expect(unit.value.isApproximatelyEqual(to: 1.0))
	}

/// Tests a value followed by a unit symbol, with and without whitespace.
///
	@Test("Distance", arguments: [
		("1m", 1.0),
		("0.27cm", 0.0027),
		("27 km", 27000.0),
		("-3 mm", -0.003),
		("2 Mm", 2000000.0),
		("1.5\tft", 0.4572),
		("4 µm", 0.000004),
		("4 μm", 0.000004),
		("1e3m", 1000.0),
		("1e-3km", 1.0),
		(".5 m", 0.5),
		("5. m", 5.0),
		("+1 m", 1.0),
		("0x10 m", 16.0),
		("1 m\n", 1.0),
		("1  m", 1.0),
	])
	func testDistance(_ string: String, _ expected: Double) async throws {
		let unit = try #require(Distance<Double>(string))
		#expect(unit.value.isApproximatelyEqual(to: expected))
	}

/// Tests units with symbols that vary with the value, and case insensitive
/// symbols.
///
	@Test("Duration", arguments: [
		("1", 1.0),
		("1 day", 86400.0),
		("1 days", 86400.0),
		("2 day", 172800.0),
		("2days", 172800.0),
		("1 DAY", 86400.0),
		("1 Days", 86400.0),
		("5 min", 300.0),
		("5 ms", 0.005),
	])
	func testDuration(_ string: String, _ expected: Double) async throws {
		let unit = try #require(Duration<Double>(string))
		#expect(unit.value.isApproximatelyEqual(to: expected))
	}

/// Tests the exact symbol is preferred over a case insensitive match.
///
	@Test("Case Sensitivity")
	func testCaseSensitivity() async throws {
		#expect(try #require(Frequency<Double>("1 mHz")).value.isApproximatelyEqual(to: 0.001))
		#expect(try #require(Frequency<Double>("1 MHz")).value.isApproximatelyEqual(to: 1000000.0))
		#expect(try #require(Distance<Double>("1 KM")).value.isApproximatelyEqual(to: 1000.0))
		#expect(Distance<Double>("1 MM") == nil)
		#expect(Distance<Double>("1 mM") == nil)
		#expect(Power<Double>("1 mw") == nil)
		#expect(try #require(Distance<Double>("1 Mm")).value.isApproximatelyEqual(to: 1000000.0))
		#expect(try #require(Pressure<Double>("1 MBAR")).get(unit: .millibars).isApproximatelyEqual(to: 1.0))
		#expect(try #require(Mass<Double>("1 OZ T")).get(unit: .ouncesTroy).isApproximatelyEqual(to: 1.0))
	}

/// Tests special floating point values.
///
	@Test("Special Values")
	func testSpecialValues() async throws {
		#expect(try #require(Distance<Double>("nan m")).value.isNaN)
		#expect(try #require(Distance<Double>("nan")).value.isNaN)
		#expect(try #require(Distance<Double>("inf")).value == .infinity)
		#expect(try #require(Distance<Double>("inf km")).value == .infinity)
		#expect(try #require(Distance<Double>("-inf m")).value == -.infinity)
		
		#expect(try #require(Distance<Double>(Distance<Double>(.nan).description)).value.isNaN)
		#expect(Distance<Double>(Distance<Double>.infinity.description) == .infinity)
		#expect(Distance<Double>((-Distance<Double>.infinity).description) == -.infinity)
	}

/// Tests the description is the value in the base unit followed by the base
/// unit symbol.
///
	@Test("Description")
	func testDescription() async throws {
		#expect(Distance<Double>.kilometers(1.5).description == "1500.0 m")
		#expect(Duration<Double>.days(1.0).description == "86400.0 s")
		#expect(Angle<Double>.radians(2.0).description == "2.0 rad")
		#expect(Area<Double>.squareMeters(1.0).description == "1.0 m²")
		#expect(Mass<Double>.grams(500.0).description == "0.5 kg")
		#expect(Temperature<Double>.kelvin(300.0).description == "300.0 K")
		#expect(Volume<Double>.milliliters(250.0).description == "0.25 L")
		#expect(Speed<Double>.kilometersPerHour(36.0).description == "10.0 m/s")
		#expect(Distance<Float>.meters(0.1).description == "0.1 m")
		#expect("\(Distance<Double>.meters(2.0))" == "2.0 m")
	}

/// Tests symbols containing spaces, superscripts and slashes.
///
	@Test("Compound Symbols")
	func testCompoundSymbols() async throws {
		#expect(try #require(Area<Double>("2 km²")).value.isApproximatelyEqual(to: 2000000.0))
		#expect(try #require(Speed<Double>("36 km/h")).value.isApproximatelyEqual(to: 10.0))
		#expect(try #require(Temperature<Double>("0 °C")).value.isApproximatelyEqual(to: 273.15))
		#expect(try #require(Mass<Double>("1 oz t")).get(unit: .ouncesTroy).isApproximatelyEqual(to: 1.0))
		#expect(try #require(Mass<Double>("1 t")).value.isApproximatelyEqual(to: 1000.0))
		#expect(try #require(Volume<Double>("1 metric cup")).get(unit: .metricCups).isApproximatelyEqual(to: 1.0))
	}

/// Tests invalid strings fail to initialize.
///
	@Test("Invalid", arguments: ["", " ", "m", "km", "1 furlongs", "one m", "1 m m", "1 xyz"])
	func testInvalid(_ string: String) async throws {
		#expect(Distance<Double>(string) == nil)
	}

/// Tests a symbol shared by more than one unit is read as the preferred unit.
///
	@Test("Shared Symbols", arguments: [
		("1 fl oz", Volume<Double>.MeasurementUnit.fluidOunces),
		("1 gal", .gallons),
		("1 pt", .pints),
		("1 qt", .quarts),
		("1 tbsp", .tablespoons),
		("1 TSP", .teaspoons),
	])
	func testSharedSymbols(_ string: String, _ unit: Volume<Double>.MeasurementUnit) async throws {
		let volume = try #require(Volume<Double>(string))
		#expect(volume.get(unit: unit).isApproximatelyEqual(to: 1.0))
	}

/// Tests every unit of every scalar measurement can be read from its own
/// symbol.
///
	@Test("All Units")
	func testAllUnits() async throws {
		try check(Angle<Double>.self)
		try check(Area<Double>.self)
		try check(Density<Double>.self)
		try check(Distance<Double>.self)
		try check(Duration<Double>.self)
		try check(ForceMagnitude<Double>.self)
		try check(Frequency<Double>.self)
		try check(Illuminance<Double>.self)
		try check(Luminance<Double>.self)
		try check(LuminousFlux<Double>.self)
		try check(LuminousIntensity<Double>.self)
		try check(Mass<Double>.self)
		try check(Power<Double>.self)
		try check(Pressure<Double>.self)
		try check(Speed<Double>.self)
		try check(Temperature<Double>.self)
		try check(Volume<Double>.self)
	}

/// Tests the description can be used to recreate the measurement.
///
	@Test("Lossless Round Trip")
	func testRoundTrip() async throws {
		let distance = Distance<Double>.kilometers(0.1 + 0.2)
		#expect(distance.description == "300.00000000000006 m")
		#expect(Distance<Double>(distance.description) == distance)

		let duration = Duration<Float>.days(1.0)
		#expect(Duration<Float>(duration.description) == duration)

		let temperature = Temperature<Double>.celsius(-40.0)
		#expect(Temperature<Double>(temperature.description) == temperature)
	}

#if !(os(macOS) && arch(x86_64))
/// Tests measurements using half precision values.
///
	@Test("Float16")
	func testFloat16() async throws {
		#expect(try #require(Distance<Float16>("1.5 km")).value == 1500.0)
		#expect(try #require(Duration<Float16>("1 min")).value == 60.0)
		#expect(Distance<Float16>("1 xyz") == nil)
		
		let distance = Distance<Float16>.centimeters(27.0)
		#expect(Distance<Float16>(distance.description) == distance)
	}
#endif

/// Tests the description of every unit of every scalar measurement can be
/// used to recreate the measurement, including values that aren't exactly
/// representable.
///
	@Test("Lossless Round Trip (All Types)", arguments: [0.0, -1.0, 0.1 + 0.2, 1e-300, 1.7976931348623157e308])
	func testRoundTripAllTypes(_ value: Double) async throws {
		try roundTrip(Angle(value))
		try roundTrip(Area(value))
		try roundTrip(Density(value))
		try roundTrip(Distance(value))
		try roundTrip(Duration(value))
		try roundTrip(ForceMagnitude(value))
		try roundTrip(Frequency(value))
		try roundTrip(Illuminance(value))
		try roundTrip(Luminance(value))
		try roundTrip(LuminousFlux(value))
		try roundTrip(LuminousIntensity(value))
		try roundTrip(Mass(value))
		try roundTrip(Power(value))
		try roundTrip(Pressure(value))
		try roundTrip(Speed(value))
		try roundTrip(Temperature(value))
		try roundTrip(Volume(value))
	}
	
	private func roundTrip<T: LosslessStringConvertible & Equatable>(_ measurement: T) throws {
		let parsed = try #require(T(measurement.description), "\(T.self) failed to parse \"\(measurement.description)\"")
		#expect(parsed == measurement, "\(T.self) failed to round trip \"\(measurement.description)\"")
	}

	private func check<T: Measurement & LosslessStringConvertible & Equatable>(_ type: T.Type) throws where T.Value == Double, T.MeasurementUnit.Value == Double {
		let shared = Dictionary(grouping: T.MeasurementUnit.allCases, by: { $0.symbol(for: 2.0) }).filter { $0.value.count > 1 }

		for unit in T.MeasurementUnit.allCases {
			let symbol = unit.symbol(for: 2.0)

			// A shared symbol must have exactly one preferred unit.
			//
			if let units = shared[symbol] {
				#expect(units.filter(\.isPreferredForSharedSymbol).count == 1, "\(T.self) has no single preferred unit for \"\(symbol)\"")
				guard unit.isPreferredForSharedSymbol else {
					continue
				}
			}

			let measurement = try #require(T("2.0 \(symbol)"), "\(T.self) failed to parse \"2.0 \(symbol)\"")
			#expect(measurement.get(unit: unit).isApproximatelyEqual(to: 2.0), "\(T.self) parsed \"2.0 \(symbol)\" incorrectly")
			#expect(T(measurement.description) == measurement, "\(T.self) failed to round trip \"\(measurement.description)\"")
		}
	}
}
