//
//  TemperatureDifference.swift
//  Units
//
//  Created by Matt Cox on 26/11/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Temperature Difference")
struct TemperatureDifferenceTests {
/// Unit conversion tests.
///
	@Suite("Conversions")
	struct conversionTests {
	/// Tests that an unlabelled value is in kelvin, the base unit.
	///
		@Test("Base Unit")
		func testBaseUnit() async throws {
			#expect(TemperatureDifference(2.5) == TemperatureDifference(kelvin: 2.5))
		}

	/// Tests that a difference converts without the offset a temperature
	/// has, so a difference of 10 °C is 10 K and 18 °F.
	///
		@Test("No Offset")
		func testNoOffset() async throws {
			let difference = TemperatureDifference.celsius(10.0)
			#expect(difference.kelvin.isApproximatelyEqual(to: 10.0))
			#expect(difference.fahrenheit.isApproximatelyEqual(to: 18.0))
			#expect(TemperatureDifference<Double>.zero.fahrenheit.isApproximatelyEqual(to: 0.0))
		}

	/// Tests that a value written in each unit reads back the same.
	///
		@Test("Round Trip")
		func testRoundTrip() async throws {
			for unit in TemperatureDifference<Double>.MeasurementUnit.allCases {
				var difference = TemperatureDifference<Double>.zero
				difference.set(12.5, unit: unit)
				#expect(difference.get(unit: unit).isApproximatelyEqual(to: 12.5))
			}
		}
	}

/// String conversion tests.
///
	@Suite("String Conversion")
	struct stringTests {
	/// Tests that a difference writes in kelvin.
	///
		@Test("Description")
		func testDescription() async throws {
			#expect(TemperatureDifference<Double>(kelvin: 1.5).description == "1.5 K")
		}

	/// Tests reading a difference in each unit.
	///
		@Test("Parsing")
		func testParsing() async throws {
			#expect(TemperatureDifference<Double>("2 °C") == TemperatureDifference(celsius: 2.0))
			#expect(TemperatureDifference<Double>("9°F") == TemperatureDifference(fahrenheit: 9.0))
			#expect(TemperatureDifference<Double>("0.5 K") == TemperatureDifference(kelvin: 0.5))
		}
	}
}
