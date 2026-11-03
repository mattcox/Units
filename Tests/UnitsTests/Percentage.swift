//
//  Percentage.swift
//  Units
//
//  Created by Matt Cox on 03/11/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Percentage")
struct PercentageTests {
/// Factor unit tests.
///
	@Suite("Factor")
	struct factorTests {
	/// Tests initializing the type from a factor and checking the stored
	/// value.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			#expect(Percentage.factor(0.5).value.isApproximatelyEqual(to: 0.5))
			#expect(Percentage.factor(2.0).value.isApproximatelyEqual(to: 2.0))
		}

	/// Tests that an unlabelled value is a factor, the base unit.
	///
		@Test("Base Unit")
		func testBaseUnit() async throws {
			#expect(Percentage(0.25) == Percentage(factor: 0.25))
		}
	}

/// Percent unit tests.
///
	@Suite("Percent")
	struct percentTests {
	/// Tests initializing the type from parts per hundred and checking the
	/// stored factor.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			#expect(Percentage.percent(50.0).value.isApproximatelyEqual(to: 0.5))
			#expect(Percentage.percent(250.0).value.isApproximatelyEqual(to: 2.5))
		}

	/// Tests reading and writing the value in parts per hundred.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			var unit = Percentage(factor: 0.75)
			#expect(unit.percent.isApproximatelyEqual(to: 75.0))

			unit.percent = 10.0
			#expect(unit.factor.isApproximatelyEqual(to: 0.1))
		}
	}

/// String conversion tests.
///
	@Suite("String Conversion")
	struct stringTests {
	/// Tests that a percentage writes as its factor, with the factor's symbol.
	///
		@Test("Description")
		func testDescription() async throws {
			#expect(Percentage<Double>(factor: 0.5).description == "0.5 ×")
		}

	/// Tests reading a percentage in either unit, or a bare factor.
	///
		@Test("Parsing")
		func testParsing() async throws {
			#expect(Percentage<Double>("50%") == Percentage(percent: 50.0))
			#expect(Percentage<Double>("1.5×") == Percentage(factor: 1.5))
			#expect(Percentage<Double>("0.25") == Percentage(factor: 0.25))
			#expect(Percentage<Double>("banana") == nil)
		}

	/// Tests that what a percentage writes reads back to it.
	///
		@Test("Round Trip")
		func testRoundTrip() async throws {
			let unit = Percentage<Double>(percent: 37.5)
			#expect(Percentage<Double>(unit.description) == unit)
		}
	}
}
