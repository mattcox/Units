//
//  Voltage.swift
//  Units
//
//  Created by Matt Cox on 26/11/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Voltage")
struct VoltageTests {
/// Unit conversion tests.
///
	@Suite("Conversions")
	struct conversionTests {
	/// Tests that an unlabelled value is in volts, the base unit.
	///
		@Test("Base Unit")
		func testBaseUnit() async throws {
			#expect(Voltage(230.0) == Voltage(volts: 230.0))
		}

	/// Tests one of each unit against its size in volts.
	///
		@Test("Unit Sizes")
		func testUnitSizes() async throws {
			#expect(Voltage.kilovolts(1.0).volts.isApproximatelyEqual(to: 1000.0))
			#expect(Voltage.megavolts(1.0).volts.isApproximatelyEqual(to: 1_000_000.0))
			#expect(Voltage.microvolts(1.0).volts.isApproximatelyEqual(to: 0.000_001))
			#expect(Voltage.millivolts(1.0).volts.isApproximatelyEqual(to: 0.001))
			#expect(Voltage.volts(1.0).volts.isApproximatelyEqual(to: 1.0))
		}

	/// Tests that a value written in each unit reads back the same.
	///
		@Test("Round Trip")
		func testRoundTrip() async throws {
			for unit in Voltage<Double>.MeasurementUnit.allCases {
				var voltage = Voltage<Double>.zero
				voltage.set(12.5, unit: unit)
				#expect(voltage.get(unit: unit).isApproximatelyEqual(to: 12.5))
			}
		}
	}

/// String conversion tests.
///
	@Suite("String Conversion")
	struct stringTests {
	/// Tests that a voltage writes in volts.
	///
		@Test("Description")
		func testDescription() async throws {
			#expect(Voltage<Double>(volts: 12.0).description == "12.0 V")
		}

	/// Tests reading a voltage in a selection of units.
	///
		@Test("Parsing")
		func testParsing() async throws {
			#expect(Voltage<Double>("230 V") == Voltage(volts: 230.0))
			#expect(Voltage<Double>("11kV") == Voltage(kilovolts: 11.0))
			#expect(Voltage<Double>("3.3 mV") == Voltage(millivolts: 3.3))
		}
	}
}
