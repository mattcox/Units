//
//  ElectricCurrent.swift
//  Units
//
//  Created by Matt Cox on 26/11/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Electric Current")
struct ElectricCurrentTests {
/// Unit conversion tests.
///
	@Suite("Conversions")
	struct conversionTests {
	/// Tests that an unlabelled value is in amperes, the base unit.
	///
		@Test("Base Unit")
		func testBaseUnit() async throws {
			#expect(ElectricCurrent(16.0) == ElectricCurrent(amperes: 16.0))
		}

	/// Tests one of each unit against its size in amperes.
	///
		@Test("Unit Sizes")
		func testUnitSizes() async throws {
			#expect(ElectricCurrent.amperes(1.0).amperes.isApproximatelyEqual(to: 1.0))
			#expect(ElectricCurrent.kiloamperes(1.0).amperes.isApproximatelyEqual(to: 1000.0))
			#expect(ElectricCurrent.microamperes(1.0).amperes.isApproximatelyEqual(to: 0.000_001))
			#expect(ElectricCurrent.milliamperes(1.0).amperes.isApproximatelyEqual(to: 0.001))
		}

	/// Tests that a value written in each unit reads back the same.
	///
		@Test("Round Trip")
		func testRoundTrip() async throws {
			for unit in ElectricCurrent<Double>.MeasurementUnit.allCases {
				var current = ElectricCurrent<Double>.zero
				current.set(12.5, unit: unit)
				#expect(current.get(unit: unit).isApproximatelyEqual(to: 12.5))
			}
		}
	}

/// String conversion tests.
///
	@Suite("String Conversion")
	struct stringTests {
	/// Tests that a current writes in amperes.
	///
		@Test("Description")
		func testDescription() async throws {
			#expect(ElectricCurrent<Double>(amperes: 6.0).description == "6.0 A")
		}

	/// Tests reading a current in a selection of units.
	///
		@Test("Parsing")
		func testParsing() async throws {
			#expect(ElectricCurrent<Double>("32 A") == ElectricCurrent(amperes: 32.0))
			#expect(ElectricCurrent<Double>("500mA") == ElectricCurrent(milliamperes: 500.0))
			#expect(ElectricCurrent<Double>("20 μA") == ElectricCurrent(microamperes: 20.0))
		}
	}
}
