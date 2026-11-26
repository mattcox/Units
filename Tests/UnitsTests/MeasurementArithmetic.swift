//
//  MeasurementArithmetic.swift
//  Units
//
//  Created by Matt Cox on 26/11/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Measurement Arithmetic")
struct MeasurementArithmeticTests {
/// Arithmetic operator tests.
///
	@Suite("Arithmetic")
	struct arithmeticTests {
		let a = Distance(meters: 6.0)
		let b = Distance(meters: 2.0)

	/// Tests adding two measurements, including in different units.
	///
		@Test("Add")
		func testAdd() async throws {
			#expect((a + b).meters.isApproximatelyEqual(to: 8.0))
			#expect((Distance(kilometers: 2.0) + Distance(meters: 500.0)).kilometers.isApproximatelyEqual(to: 2.5))

			var c = a
			c += b
			#expect(c.meters.isApproximatelyEqual(to: 8.0))
		}

	/// Tests subtracting two measurements.
	///
		@Test("Subtract")
		func testSubtract() async throws {
			#expect((a - b).meters.isApproximatelyEqual(to: 4.0))

			var c = a
			c -= b
			#expect(c.meters.isApproximatelyEqual(to: 4.0))
		}

	/// Tests negating a measurement.
	///
		@Test("Negate")
		func testNegate() async throws {
			#expect((-a).meters.isApproximatelyEqual(to: -6.0))
		}

	/// Tests multiplying a measurement by a number, on either side.
	///
		@Test("Multiply")
		func testMultiply() async throws {
			#expect((a * 2.0).meters.isApproximatelyEqual(to: 12.0))
			#expect((2.0 * a).meters.isApproximatelyEqual(to: 12.0))

			var c = a
			c *= 2.0
			#expect(c.meters.isApproximatelyEqual(to: 12.0))
		}

	/// Tests dividing a measurement by a number.
	///
		@Test("Divide")
		func testDivide() async throws {
			#expect((a / 2.0).meters.isApproximatelyEqual(to: 3.0))

			var c = a
			c /= 2.0
			#expect(c.meters.isApproximatelyEqual(to: 3.0))
		}

	/// Tests that dividing two measurements of the same kind gives a plain
	/// number, whatever units they were made in.
	///
		@Test("Ratio")
		func testRatio() async throws {
			let laps: Double = Distance(kilometers: 5.0) / Distance(meters: 400.0)
			#expect(laps.isApproximatelyEqual(to: 12.5))
		}

	/// Tests scaling a measurement by a percentage, and a percentage by
	/// another.
	///
		@Test("Percentage")
		func testPercentage() async throws {
			#expect((Power(kilowatts: 3.0) * .percent(50.0)).kilowatts.isApproximatelyEqual(to: 1.5))
			#expect((Percentage(percent: 50.0) * Percentage(percent: 50.0)).percent.isApproximatelyEqual(to: 25.0))

			var power = Power<Double>(kilowatts: 2.0)
			power *= .percent(25.0)
			#expect(power.kilowatts.isApproximatelyEqual(to: 0.5))
		}

	/// Tests that measurements sum as any other additive type.
	///
		@Test("Sum")
		func testSum() async throws {
			let total = [a, b, Distance(meters: 1.0)].reduce(.zero, +)
			#expect(total.meters.isApproximatelyEqual(to: 9.0))
		}
	}

/// Property tests.
///
	@Suite("Properties")
	struct propertyTests {
	/// Tests that zero is zero in every unit.
	///
		@Test("Zero")
		func testZero() async throws {
			#expect(Distance<Double>.zero.meters == 0.0)
			#expect(Distance<Double>.zero.isZero)
		}

	/// Tests the magnitude and sign of a negative measurement.
	///
		@Test("Magnitude and Sign")
		func testMagnitudeAndSign() async throws {
			let distance = Distance(meters: -3.0)
			#expect(distance.magnitude == Distance(meters: 3.0))
			#expect(distance.sign == .minus)
		}

	/// Tests classifying non-finite measurements.
	///
		@Test("Finiteness")
		func testFiniteness() async throws {
			#expect(Distance<Double>(meters: 1.0).isFinite)
			#expect(Distance<Double>(.infinity).isInfinite)
			#expect(Distance<Double>(.nan).isNaN)
		}

	/// Tests that rounding happens in the unit it is asked for.
	///
		@Test("Rounding")
		func testRounding() async throws {
			let distance = Distance(meters: 1499.0)
			#expect(distance.rounded(in: .kilometers) == Distance(kilometers: 1.0))
			#expect(distance.rounded(.up, in: .kilometers) == Distance(kilometers: 2.0))
			#expect(Distance(meters: 2.5).rounded() == Distance(meters: 3.0))
		}

	/// Tests comparing measurements made in different units.
	///
		@Test("Comparison")
		func testComparison() async throws {
			#expect(Distance(meters: 999.0) < Distance(kilometers: 1.0))
			#expect(Distance(kilometers: 1.0) == Distance(meters: 1000.0))
			#expect(max(Distance(meters: 2.0), Distance(centimeters: 300.0)) == Distance(meters: 3.0))
		}
	}
}
