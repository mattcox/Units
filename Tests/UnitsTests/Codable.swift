//
//  Codable.swift
//  Units
//
//  Created by Matt Cox on 26/11/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

import Foundation
import Testing
import Units

@Suite("Codable")
struct CodableTests {
/// Encoding format tests.
///
/// The format is part of the public interface. Anything that stored a
/// measurement depends on it reading back the same, so these tests pin it
/// exactly rather than only checking that encoding round trips.
///
	@Suite("Format")
	struct formatTests {
	/// Tests that a measurement encodes as its value in the base unit, under
	/// the key `value`.
	///
		@Test("Base Unit Value")
		func testBaseUnitValue() async throws {
			let encoder = JSONEncoder()
			encoder.outputFormatting = .sortedKeys

			let data = try encoder.encode(Distance<Double>(kilometers: 1.5))
			#expect(String(decoding: data, as: UTF8.self) == #"{"value":1500}"#)
		}

	/// Tests that a temperature encodes in kelvin, its base unit, whatever
	/// unit it was made in.
	///
		@Test("Temperature")
		func testTemperature() async throws {
			let data = try JSONEncoder().encode(Temperature<Double>(celsius: 0.0))
			#expect(String(decoding: data, as: UTF8.self) == #"{"value":273.15}"#)
		}

	/// Tests decoding the format that was written before.
	///
		@Test("Decoding")
		func testDecoding() async throws {
			let data = Data(#"{"value":3600000}"#.utf8)
			#expect(try JSONDecoder().decode(Energy<Double>.self, from: data) == Energy(kilowattHours: 1.0))
		}
	}

/// Round trip tests.
///
	@Suite("Round Trip")
	struct roundTripTests {
	/// Tests that each new kind of measurement reads back what it wrote.
	///
		@Test("New Measurements")
		func testNewMeasurements() async throws {
			let encoder = JSONEncoder()
			let decoder = JSONDecoder()

			let difference = TemperatureDifference<Double>(fahrenheit: 9.0)
			#expect(try decoder.decode(TemperatureDifference<Double>.self, from: encoder.encode(difference)) == difference)

			let current = ElectricCurrent<Double>(milliamperes: 250.0)
			#expect(try decoder.decode(ElectricCurrent<Double>.self, from: encoder.encode(current)) == current)

			let voltage = Voltage<Double>(kilovolts: 11.0)
			#expect(try decoder.decode(Voltage<Double>.self, from: encoder.encode(voltage)) == voltage)
		}
	}
}
