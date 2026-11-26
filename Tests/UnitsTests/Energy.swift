//
//  Energy.swift
//  Units
//
//  Created by Matt Cox on 26/11/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Energy")
struct EnergyTests {
/// Unit conversion tests.
///
	@Suite("Conversions")
	struct conversionTests {
	/// Tests that an unlabelled value is in joules, the base unit.
	///
		@Test("Base Unit")
		func testBaseUnit() async throws {
			#expect(Energy(250.0) == Energy(joules: 250.0))
		}

	/// Tests one of each unit against its size in joules.
	///
		@Test("Unit Sizes")
		func testUnitSizes() async throws {
			#expect(Energy.britishThermalUnits(1.0).joules.isApproximatelyEqual(to: 1055.05585262))
			#expect(Energy.calories(1.0).joules.isApproximatelyEqual(to: 4.184))
			#expect(Energy.gigajoules(1.0).joules.isApproximatelyEqual(to: 1_000_000_000.0))
			#expect(Energy.gigawattHours(1.0).joules.isApproximatelyEqual(to: 3_600_000_000_000.0))
			#expect(Energy.joules(1.0).joules.isApproximatelyEqual(to: 1.0))
			#expect(Energy.kilocalories(1.0).joules.isApproximatelyEqual(to: 4184.0))
			#expect(Energy.kilojoules(1.0).joules.isApproximatelyEqual(to: 1000.0))
			#expect(Energy.kilowattHours(1.0).joules.isApproximatelyEqual(to: 3_600_000.0))
			#expect(Energy.megajoules(1.0).joules.isApproximatelyEqual(to: 1_000_000.0))
			#expect(Energy.megawattHours(1.0).joules.isApproximatelyEqual(to: 3_600_000_000.0))
			#expect(Energy.wattHours(1.0).joules.isApproximatelyEqual(to: 3600.0))
		}

	/// Tests converting between units other than the base.
	///
		@Test("Between Units")
		func testBetweenUnits() async throws {
			#expect(Energy(kilowattHours: 1.0).megajoules.isApproximatelyEqual(to: 3.6))
			#expect(Energy(wattHours: 1500.0).kilowattHours.isApproximatelyEqual(to: 1.5))
		}

	/// Tests that a value written in each unit reads back the same.
	///
		@Test("Round Trip")
		func testRoundTrip() async throws {
			for unit in Energy<Double>.MeasurementUnit.allCases {
				var energy = Energy<Double>.zero
				energy.set(12.5, unit: unit)
				#expect(energy.get(unit: unit).isApproximatelyEqual(to: 12.5))
			}
		}
	}

/// String conversion tests.
///
	@Suite("String Conversion")
	struct stringTests {
	/// Tests that energy writes in joules.
	///
		@Test("Description")
		func testDescription() async throws {
			#expect(Energy<Double>(joules: 1.5).description == "1.5 J")
		}

	/// Tests reading energy in a selection of units.
	///
		@Test("Parsing")
		func testParsing() async throws {
			#expect(Energy<Double>("3 kWh") == Energy(kilowattHours: 3.0))
			#expect(Energy<Double>("250kcal") == Energy(kilocalories: 250.0))
			#expect(Energy<Double>("12 Wh") == Energy(wattHours: 12.0))
			#expect(Energy<Double>("banana") == nil)
		}
	}
}
