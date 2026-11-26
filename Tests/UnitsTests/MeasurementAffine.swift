//
//  MeasurementAffine.swift
//  Units
//
//  Created by Matt Cox on 26/11/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Measurement Affine")
struct MeasurementAffineTests {
/// Arithmetic operator tests.
///
	@Suite("Arithmetic")
	struct arithmeticTests {
	/// Tests that subtracting two temperatures gives a difference, measured
	/// without the offset a temperature has.
	///
		@Test("Difference")
		func testDifference() async throws {
			let rise = Temperature(celsius: 21.0) - Temperature(celsius: 18.0)
			#expect(rise.kelvin.isApproximatelyEqual(to: 3.0))
			#expect(rise.celsius.isApproximatelyEqual(to: 3.0))
			#expect(rise.fahrenheit.isApproximatelyEqual(to: 5.4))
		}

	/// Tests moving a temperature by a difference, from either side.
	///
	/// This is the case treating temperature as linear gets wrong: in kelvin,
	/// 21 °C plus 2 °C would be about 296 °C.
	///
		@Test("Add Difference")
		func testAddDifference() async throws {
			let temperature = Temperature(celsius: 21.0)
			let difference = TemperatureDifference(celsius: 2.0)

			#expect((temperature + difference).celsius.isApproximatelyEqual(to: 23.0))
			#expect((difference + temperature).celsius.isApproximatelyEqual(to: 23.0))

			var moved = temperature
			moved += difference
			#expect(moved.celsius.isApproximatelyEqual(to: 23.0))
		}

	/// Tests moving a temperature back by a difference.
	///
		@Test("Subtract Difference")
		func testSubtractDifference() async throws {
			let temperature = Temperature(celsius: 21.0)
			let difference = TemperatureDifference(celsius: 0.5)

			#expect((temperature - difference).celsius.isApproximatelyEqual(to: 20.5))

			var moved = temperature
			moved -= difference
			#expect(moved.celsius.isApproximatelyEqual(to: 20.5))
		}

	/// Tests that a difference in fahrenheit moves a temperature by its
	/// size, not by its offset.
	///
		@Test("Difference in Fahrenheit")
		func testDifferenceInFahrenheit() async throws {
			let moved = Temperature(celsius: 20.0) + TemperatureDifference(fahrenheit: 9.0)
			#expect(moved.celsius.isApproximatelyEqual(to: 25.0))
		}
	}

/// Property tests.
///
	@Suite("Properties")
	struct propertyTests {
	/// Tests that the zero of a temperature is absolute zero.
	///
		@Test("Zero")
		func testZero() async throws {
			#expect(Temperature<Double>.zero.kelvin == 0.0)
			#expect(Temperature<Double>.zero.celsius.isApproximatelyEqual(to: -273.15))
		}

	/// Tests comparing temperatures made in different units.
	///
		@Test("Comparison")
		func testComparison() async throws {
			#expect(Temperature(celsius: 20.0) < Temperature(fahrenheit: 70.0))
			#expect(Temperature(celsius: 100.0) == Temperature.boilingPoint)
		}

	/// Tests classifying non-finite temperatures.
	///
		@Test("Finiteness")
		func testFiniteness() async throws {
			#expect(Temperature<Double>(celsius: 20.0).isFinite)
			#expect(Temperature<Double>(.nan).isNaN)
		}
	}
}
