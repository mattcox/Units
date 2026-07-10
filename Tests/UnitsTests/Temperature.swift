//
//  Temperature.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Temperature")
struct TemperatureTests {
/// Celsius unit tests.
///
	@Suite("Celsius")
	struct celsiusTests {
	/// Tests initializing the type from a value in Celsius and checking
	/// the stored value in Kelvin.
	///
		@Test("Static Initializer (freezing)")
		func testStaticInitializer_0() async throws {
			let unit = Temperature.celsius(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 273.15))
		}

	/// Tests initializing the type from a value in Celsius and checking
	/// the stored value in Kelvin.
	///
		@Test("Static Initializer (boiling)")
		func testStaticInitializer_1() async throws {
			let unit = Temperature.celsius(100.0)
			#expect(unit.value.isApproximatelyEqual(to: 373.15))
		}

	/// Tests initializing the type from a value in Celsius and checking
	/// the stored value in Kelvin.
	///
		@Test("Static Initializer (absolute zero)")
		func testStaticInitializer_2() async throws {
			let unit = Temperature.celsius(-273.15)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Celsius and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (37.00)")
		func testGetAndSet_0() async throws {
			var unit = Temperature<Double>.zero
			unit.celsius = 37.0
			#expect(unit.celsius.isApproximatelyEqual(to: 37.0))
		}

	/// Tests setting the type from a value in Celsius and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-40.00)")
		func testGetAndSet_1() async throws {
			var unit = Temperature<Double>.zero
			unit.celsius = -40.0
			#expect(unit.celsius.isApproximatelyEqual(to: -40.0))
		}

	/// Tests initializing the measurement from a value in Celsius and
	/// checking the stored value in Kelvin.
	///
		@Test("Initialize (25.00)")
		func testInitializer_0() async throws {
			let unit = Temperature(celsius: 25.0)
			#expect(unit.value.isApproximatelyEqual(to: 298.15))
		}

	/// Tests initializing the type from a value in Celsius and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (20.00)")
		func testRoundTrip_0() async throws {
			let unit = Temperature.celsius(20.0)
			#expect(unit.celsius.isApproximatelyEqual(to: 20.0))
		}
	}

/// Fahrenheit unit tests.
///
	@Suite("Fahrenheit")
	struct fahrenheitTests {
	/// Tests initializing the type from a value in Fahrenheit and checking
	/// the stored value in Kelvin.
	///
		@Test("Static Initializer (freezing)")
		func testStaticInitializer_0() async throws {
			let unit = Temperature.fahrenheit(32.0)
			#expect(unit.value.isApproximatelyEqual(to: 273.15))
		}

	/// Tests initializing the type from a value in Fahrenheit and checking
	/// the stored value in Kelvin.
	///
		@Test("Static Initializer (boiling)")
		func testStaticInitializer_1() async throws {
			let unit = Temperature.fahrenheit(212.0)
			#expect(unit.value.isApproximatelyEqual(to: 373.15))
		}

	/// Tests setting the type from a value in Fahrenheit and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (98.60)")
		func testGetAndSet_0() async throws {
			var unit = Temperature<Double>.zero
			unit.fahrenheit = 98.6
			#expect(unit.fahrenheit.isApproximatelyEqual(to: 98.6))
		}

	/// Tests setting the type from a value in Fahrenheit and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-40.00)")
		func testGetAndSet_1() async throws {
			var unit = Temperature<Double>.zero
			unit.fahrenheit = -40.0
			#expect(unit.fahrenheit.isApproximatelyEqual(to: -40.0))
		}

	/// Tests initializing the measurement from a value in Fahrenheit and
	/// checking the stored value in Kelvin.
	///
		@Test("Initialize (32.00)")
		func testInitializer_0() async throws {
			let unit = Temperature(fahrenheit: 32.0)
			#expect(unit.value.isApproximatelyEqual(to: 273.15))
		}

	/// Tests initializing the type from a value in Fahrenheit and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (72.00)")
		func testRoundTrip_0() async throws {
			let unit = Temperature.fahrenheit(72.0)
			#expect(unit.fahrenheit.isApproximatelyEqual(to: 72.0))
		}
	}

/// Kelvin unit tests.
///
	@Suite("Kelvin")
	struct kelvinTests {
	/// Tests initializing the type from a value in Kelvin and checking
	/// the stored value in Kelvin.
	///
		@Test("Static Initializer (freezing)")
		func testStaticInitializer_0() async throws {
			let unit = Temperature.kelvin(273.15)
			#expect(unit.value.isApproximatelyEqual(to: 273.15))
		}

	/// Tests initializing the type from a value in Kelvin and checking
	/// the stored value in Kelvin.
	///
		@Test("Static Initializer (absolute zero)")
		func testStaticInitializer_1() async throws {
			let unit = Temperature.kelvin(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Kelvin and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (310.15)")
		func testGetAndSet_0() async throws {
			var unit = Temperature<Double>.zero
			unit.kelvin = 310.15
			#expect(unit.kelvin.isApproximatelyEqual(to: 310.15))
		}

	/// Tests initializing the measurement from a value in Kelvin and
	/// checking the stored value in Kelvin.
	///
		@Test("Initialize (500.00)")
		func testInitializer_0() async throws {
			let unit = Temperature(kelvin: 500.0)
			#expect(unit.value.isApproximatelyEqual(to: 500.0))
		}

	/// Tests initializing the type from a value in Kelvin and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (450.00)")
		func testRoundTrip_0() async throws {
			let unit = Temperature.kelvin(450.0)
			#expect(unit.kelvin.isApproximatelyEqual(to: 450.0))
		}
	}

/// Cross unit conversion tests.
///
	@Suite("Conversions")
	struct conversionTests {
	/// Tests converting boiling point from Celsius to Fahrenheit.
	///
		@Test("Celsius to Fahrenheit (boiling)")
		func testCelsiusToFahrenheit() async throws {
			let unit = Temperature(celsius: 100.0)
			#expect(unit.fahrenheit.isApproximatelyEqual(to: 212.0))
		}

	/// Tests converting boiling point from Celsius to Kelvin.
	///
		@Test("Celsius to Kelvin (boiling)")
		func testCelsiusToKelvin() async throws {
			let unit = Temperature(celsius: 100.0)
			#expect(unit.kelvin.isApproximatelyEqual(to: 373.15))
		}

	/// Tests converting freezing point from Fahrenheit to Celsius.
	///
		@Test("Fahrenheit to Celsius (freezing)")
		func testFahrenheitToCelsius() async throws {
			let unit = Temperature(fahrenheit: 32.0)
			#expect(unit.celsius.isApproximatelyEqual(to: 0.0))
		}

	/// Tests converting freezing point from Fahrenheit to Kelvin.
	///
		@Test("Fahrenheit to Kelvin (freezing)")
		func testFahrenheitToKelvin() async throws {
			let unit = Temperature(fahrenheit: 32.0)
			#expect(unit.kelvin.isApproximatelyEqual(to: 273.15))
		}

	/// Tests converting body temperature from Kelvin to Celsius.
	///
		@Test("Kelvin to Celsius (body)")
		func testKelvinToCelsius() async throws {
			let unit = Temperature(kelvin: 310.15)
			#expect(unit.celsius.isApproximatelyEqual(to: 37.0))
		}

	/// Tests converting body temperature from Kelvin to Fahrenheit.
	///
		@Test("Kelvin to Fahrenheit (body)")
		func testKelvinToFahrenheit() async throws {
			let unit = Temperature(kelvin: 310.15)
			#expect(unit.fahrenheit.isApproximatelyEqual(to: 98.6))
		}

	/// Tests that -40 is equal in both Celsius and Fahrenheit.
	///
		@Test("Celsius equals Fahrenheit (-40)")
		func testMinusForty() async throws {
			let unit = Temperature(celsius: -40.0)
			#expect(unit.fahrenheit.isApproximatelyEqual(to: -40.0))
		}
	}

/// Symbol tests.
///
	@Suite("Symbols")
	struct symbolTests {
	/// Tests that every unit provides a non-empty symbol.
	///
		@Test("All Symbols")
		func testSymbols() async throws {
			for unit in Temperature<Double>.MeasurementUnit.allCases {
				#expect(!unit.symbol(for: 1.0).isEmpty)
				#expect(!unit.symbol(for: 2.0).isEmpty)
			}
		}
	}

/// Reference point tests.
///
	@Suite("Reference Points")
	struct referencePointTests {
	/// Tests the freezing point of water at sea level.
	///
		@Test("Freezing Point")
		func testFreezingPoint() async throws {
			let unit = Temperature<Double>.freezingPoint
			#expect(unit.celsius.isApproximatelyEqual(to: 0.0))
			#expect(unit.value.isApproximatelyEqual(to: 273.15))
		}

	/// Tests the boiling point of water at sea level.
	///
		@Test("Boiling Point")
		func testBoilingPoint() async throws {
			let unit = Temperature<Double>.boilingPoint
			#expect(unit.celsius.isApproximatelyEqual(to: 100.0))
			#expect(unit.value.isApproximatelyEqual(to: 373.15))
		}
	}
}
