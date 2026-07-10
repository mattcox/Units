//
//  MeasurementBinaryFloatingPoint.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Measurement Binary Floating Point")
struct MeasurementBinaryFloatingPointTests {
/// Arithmetic operator tests.
///
	@Suite("Arithmetic")
	struct arithmeticTests {
		let a = Distance(meters: 6.0)
		let b = Distance(meters: 2.0)

	/// Tests adding two measurements.
	///
		@Test("Add")
		func testAdd() async throws {
			#expect((a + b).meters.isApproximatelyEqual(to: 8.0))
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

	/// Tests multiplying measurements and scalars.
	///
		@Test("Multiply")
		func testMultiply() async throws {
			#expect((a * b).meters.isApproximatelyEqual(to: 12.0))
			#expect((a * 2.0).meters.isApproximatelyEqual(to: 12.0))
			#expect((2.0 * a).meters.isApproximatelyEqual(to: 12.0))
			var c = a
			c *= b
			#expect(c.meters.isApproximatelyEqual(to: 12.0))
			var d = a
			d *= 2.0
			#expect(d.meters.isApproximatelyEqual(to: 12.0))
		}

	/// Tests dividing measurements and scalars.
	///
		@Test("Divide")
		func testDivide() async throws {
			#expect((a / b).meters.isApproximatelyEqual(to: 3.0))
			#expect((a / 2.0).meters.isApproximatelyEqual(to: 3.0))
			var c = a
			c /= b
			#expect(c.meters.isApproximatelyEqual(to: 3.0))
			var d = a
			d /= 2.0
			#expect(d.meters.isApproximatelyEqual(to: 3.0))
		}

	/// Tests the fused multiply-add operation.
	///
		@Test("Add Product")
		func testAddProduct() async throws {
			var c = Distance(meters: 1.0)
			c.addProduct(a, b)
			#expect(c.meters.isApproximatelyEqual(to: 13.0))
		}
	}

/// Floating point operation tests.
///
	@Suite("Operations")
	struct operationTests {
	/// Tests the square root of a measurement.
	///
		@Test("Square Root")
		func testSquareRoot() async throws {
			var unit = Distance(meters: 9.0)
			unit.formSquareRoot()
			#expect(unit.meters.isApproximatelyEqual(to: 3.0))
		}

	/// Tests rounding a measurement.
	///
		@Test("Round")
		func testRound() async throws {
			var unit = Distance(meters: 2.7)
			unit.round(.toNearestOrAwayFromZero)
			#expect(unit.meters.isApproximatelyEqual(to: 3.0))
		}

	/// Tests the truncating remainder of a measurement.
	///
		@Test("Truncating Remainder")
		func testTruncatingRemainder() async throws {
			var unit = Distance(meters: 7.0)
			unit.formTruncatingRemainder(dividingBy: Distance(meters: 3.0))
			#expect(unit.meters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests the remainder of a measurement.
	///
		@Test("Remainder")
		func testRemainder() async throws {
			var unit = Distance(meters: 7.0)
			unit.formRemainder(dividingBy: Distance(meters: 3.0))
			#expect(unit.meters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests the magnitude of a negative measurement.
	///
		@Test("Magnitude")
		func testMagnitude() async throws {
			#expect(Distance(meters: -5.0).magnitude.meters.isApproximatelyEqual(to: 5.0))
		}

	/// Tests advancing and measuring the distance between values.
	///
		@Test("Strideable")
		func testStrideable() async throws {
			let unit = Distance(meters: 2.0)
			#expect(unit.advanced(by: 3.0).meters.isApproximatelyEqual(to: 5.0))
			#expect(unit.distance(to: Distance(meters: 5.0)).isApproximatelyEqual(to: 3.0))
		}
	}

/// Floating point property tests.
///
	@Suite("Properties")
	struct propertyTests {
	/// Tests the sign and zero properties.
	///
		@Test("Sign and Zero")
		func testSignAndZero() async throws {
			#expect(Distance(meters: 0.0).isZero)
			#expect(Distance(meters: -1.0).sign == .minus)
			#expect(Distance(meters: 1.0).sign == .plus)
		}

	/// Tests the finite and NaN properties.
	///
		@Test("Finite and NaN")
		func testFiniteAndNaN() async throws {
			#expect(Distance(meters: 1.0).isFinite)
			#expect(Distance<Double>.nan.isNaN)
			#expect(Distance<Double>.infinity.isInfinite)
		}
	}

/// Static value and literal tests.
///
	@Suite("Values")
	struct valueTests {
	/// Tests the pi constant.
	///
		@Test("Pi")
		func testPi() async throws {
			#expect(Distance<Double>.pi.meters.isApproximatelyEqual(to: Double.pi))
		}

	/// Tests initializing from an integer literal.
	///
		@Test("Integer Literal")
		func testIntegerLiteral() async throws {
			let unit: Distance<Double> = 5
			#expect(unit.meters.isApproximatelyEqual(to: 5.0))
		}

	/// Tests initializing from a float literal.
	///
		@Test("Float Literal")
		func testFloatLiteral() async throws {
			let unit: Distance<Double> = 5.5
			#expect(unit.meters.isApproximatelyEqual(to: 5.5))
		}

	/// Tests initializing from a binary integer, exactly and inexactly.
	///
		@Test("Binary Integer")
		func testBinaryInteger() async throws {
			let value: Int = 7
			#expect(Distance<Double>(value).meters.isApproximatelyEqual(to: 7.0))
			#expect(Distance<Double>(exactly: 3)?.meters.isApproximatelyEqual(to: 3.0) == true)
			#expect(Distance<Float>(exactly: Int.max) == nil)
		}
	}

/// Comparison tests.
///
	@Suite("Comparison")
	struct comparisonTests {
	/// Tests equality and ordering of measurements.
	///
		@Test("Equatable and Comparable")
		func testComparison() async throws {
			#expect(Distance(meters: 1.0) == Distance(meters: 1.0))
			#expect(Distance(meters: 1.0) < Distance(meters: 2.0))
			#expect(Distance(meters: 2.0) > Distance(meters: 1.0))
		}

	/// Tests the floating point comparison predicates.
	///
		@Test("Predicates")
		func testPredicates() async throws {
			let a = Distance(meters: 1.0)
			let b = Distance(meters: 2.0)
			#expect(a.isEqual(to: a))
			#expect(a.isLess(than: b))
			#expect(a.isLessThanOrEqualTo(b))
			#expect(a.isTotallyOrdered(belowOrEqualTo: b))
		}
	}

/// Floating point interface tests.
///
	@Suite("Interface")
	struct interfaceTests {
	/// Tests the adjacent representable values.
	///
		@Test("Adjacent Values")
		func testAdjacent() async throws {
			let unit = Distance(meters: 1.0)
			#expect(unit.nextUp > unit)
			#expect(unit.nextDown < unit)
			#expect(unit.ulp.meters > 0.0)
		}

	/// Tests decomposing a value into binade, significand and exponent.
	///
		@Test("Decomposition")
		func testDecomposition() async throws {
			let unit = Distance(meters: 6.0)
			#expect(unit.binade.meters.isApproximatelyEqual(to: 4.0))
			#expect(unit.significand.meters.isApproximatelyEqual(to: 1.5))
			#expect(unit.exponent == 2)
		}

	/// Tests the classification properties of a normal value.
	///
		@Test("Classification")
		func testClassification() async throws {
			let unit = Distance(meters: 1.0)
			#expect(unit.isNormal)
			#expect(unit.isCanonical)
			#expect(!unit.isSubnormal)
			#expect(!unit.isSignalingNaN)
		}

	/// Tests the static floating point constants.
	///
		@Test("Constants")
		func testConstants() async throws {
			#expect(Distance<Double>.radix == 2)
			#expect(Distance<Double>.exponentBitCount == Double.exponentBitCount)
			#expect(Distance<Double>.significandBitCount == Double.significandBitCount)
			#expect(Distance<Double>.greatestFiniteMagnitude.isFinite)
			#expect(Distance<Double>.leastNonzeroMagnitude.meters > 0.0)
			#expect(Distance<Double>.leastNormalMagnitude.meters > 0.0)
			#expect(Distance<Double>.signalingNaN.isNaN)
		}

	/// Tests constructing a value from its floating point components.
	///
		@Test("Component Initializers")
		func testComponentInitializers() async throws {
			let fromParts = Distance<Double>(sign: .plus, exponent: 2, significand: Distance(meters: 1.5))
			#expect(fromParts.meters.isApproximatelyEqual(to: 6.0))

			let signed = Distance<Double>(signOf: Distance(meters: -1.0), magnitudeOf: Distance(meters: 5.0))
			#expect(signed.meters.isApproximatelyEqual(to: -5.0))

			let pattern = Distance<Double>(sign: .plus, exponentBitPattern: (1.0).exponentBitPattern, significandBitPattern: (1.0).significandBitPattern)
			#expect(pattern.meters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests the significand bit-level accessors.
	///
		@Test("Significand Bits")
		func testSignificandBits() async throws {
			let unit = Distance(meters: 1.0)
			#expect(unit.exponentBitPattern == (1.0).exponentBitPattern)
			#expect(unit.significandBitPattern == (1.0).significandBitPattern)
			#expect(unit.significandWidth == (1.0).significandWidth)
		}
	}
}
