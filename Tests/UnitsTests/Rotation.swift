//
//  Rotation.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Rotation")
struct RotationTests {
/// Arc Minutes unit tests.
///
	@Suite("Arc Minutes")
	struct arcMinutesTests {
	/// Tests initializing the type from a vector in Arc Minutes and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Rotation.arcMinutes(value)
			#expect(unit.arcMinutes.x.isApproximatelyEqual(to: value.x))
			#expect(unit.arcMinutes.y.isApproximatelyEqual(to: value.y))
			#expect(unit.arcMinutes.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Arc Minutes
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Rotation(arcMinutes: value)
			#expect(unit.arcMinutes.x.isApproximatelyEqual(to: value.x))
			#expect(unit.arcMinutes.y.isApproximatelyEqual(to: value.y))
			#expect(unit.arcMinutes.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Arc Minutes and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Rotation<SIMD3<Double>>.zero
			unit.arcMinutes = value
			#expect(unit.arcMinutes.x.isApproximatelyEqual(to: value.x))
			#expect(unit.arcMinutes.y.isApproximatelyEqual(to: value.y))
			#expect(unit.arcMinutes.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Arc Seconds unit tests.
///
	@Suite("Arc Seconds")
	struct arcSecondsTests {
	/// Tests initializing the type from a vector in Arc Seconds and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Rotation.arcSeconds(value)
			#expect(unit.arcSeconds.x.isApproximatelyEqual(to: value.x))
			#expect(unit.arcSeconds.y.isApproximatelyEqual(to: value.y))
			#expect(unit.arcSeconds.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Arc Seconds
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Rotation(arcSeconds: value)
			#expect(unit.arcSeconds.x.isApproximatelyEqual(to: value.x))
			#expect(unit.arcSeconds.y.isApproximatelyEqual(to: value.y))
			#expect(unit.arcSeconds.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Arc Seconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Rotation<SIMD3<Double>>.zero
			unit.arcSeconds = value
			#expect(unit.arcSeconds.x.isApproximatelyEqual(to: value.x))
			#expect(unit.arcSeconds.y.isApproximatelyEqual(to: value.y))
			#expect(unit.arcSeconds.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Degrees unit tests.
///
	@Suite("Degrees")
	struct degreesTests {
	/// Tests initializing the type from a vector in Degrees and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Rotation.degrees(value)
			#expect(unit.degrees.x.isApproximatelyEqual(to: value.x))
			#expect(unit.degrees.y.isApproximatelyEqual(to: value.y))
			#expect(unit.degrees.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Degrees
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Rotation(degrees: value)
			#expect(unit.degrees.x.isApproximatelyEqual(to: value.x))
			#expect(unit.degrees.y.isApproximatelyEqual(to: value.y))
			#expect(unit.degrees.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Degrees and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Rotation<SIMD3<Double>>.zero
			unit.degrees = value
			#expect(unit.degrees.x.isApproximatelyEqual(to: value.x))
			#expect(unit.degrees.y.isApproximatelyEqual(to: value.y))
			#expect(unit.degrees.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Gradians unit tests.
///
	@Suite("Gradians")
	struct gradiansTests {
	/// Tests initializing the type from a vector in Gradians and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Rotation.gradians(value)
			#expect(unit.gradians.x.isApproximatelyEqual(to: value.x))
			#expect(unit.gradians.y.isApproximatelyEqual(to: value.y))
			#expect(unit.gradians.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Gradians
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Rotation(gradians: value)
			#expect(unit.gradians.x.isApproximatelyEqual(to: value.x))
			#expect(unit.gradians.y.isApproximatelyEqual(to: value.y))
			#expect(unit.gradians.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Gradians and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Rotation<SIMD3<Double>>.zero
			unit.gradians = value
			#expect(unit.gradians.x.isApproximatelyEqual(to: value.x))
			#expect(unit.gradians.y.isApproximatelyEqual(to: value.y))
			#expect(unit.gradians.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Radians unit tests.
///
	@Suite("Radians")
	struct radiansTests {
	/// Tests initializing the type from a vector in Radians and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Rotation.radians(value)
			#expect(unit.radians.x.isApproximatelyEqual(to: value.x))
			#expect(unit.radians.y.isApproximatelyEqual(to: value.y))
			#expect(unit.radians.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Radians
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Rotation(radians: value)
			#expect(unit.radians.x.isApproximatelyEqual(to: value.x))
			#expect(unit.radians.y.isApproximatelyEqual(to: value.y))
			#expect(unit.radians.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Radians and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Rotation<SIMD3<Double>>.zero
			unit.radians = value
			#expect(unit.radians.x.isApproximatelyEqual(to: value.x))
			#expect(unit.radians.y.isApproximatelyEqual(to: value.y))
			#expect(unit.radians.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Revolutions unit tests.
///
	@Suite("Revolutions")
	struct revolutionsTests {
	/// Tests initializing the type from a vector in Revolutions and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Rotation.revolutions(value)
			#expect(unit.revolutions.x.isApproximatelyEqual(to: value.x))
			#expect(unit.revolutions.y.isApproximatelyEqual(to: value.y))
			#expect(unit.revolutions.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Revolutions
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Rotation(revolutions: value)
			#expect(unit.revolutions.x.isApproximatelyEqual(to: value.x))
			#expect(unit.revolutions.y.isApproximatelyEqual(to: value.y))
			#expect(unit.revolutions.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Revolutions and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Rotation<SIMD3<Double>>.zero
			unit.revolutions = value
			#expect(unit.revolutions.x.isApproximatelyEqual(to: value.x))
			#expect(unit.revolutions.y.isApproximatelyEqual(to: value.y))
			#expect(unit.revolutions.z.isApproximatelyEqual(to: value.z))
		}
	}

/// Vector accessor tests.
///
	@Suite("Vector")
	struct vectorTests {
	/// Tests that the zero vector has all components equal to zero.
	///
		@Test("Zero")
		func testZero() async throws {
			let unit = Rotation<SIMD3<Double>>.zero
			#expect(unit.value == SIMD3<Double>(0.0, 0.0, 0.0))
		}

	/// Tests reading a component of the vector by subscript.
	///
		@Test("Subscript Get")
		func testSubscriptGet() async throws {
			let unit = Rotation.radians(SIMD3<Double>(0.5, 1.0, 1.5))
			#expect(unit[0].radians.isApproximatelyEqual(to: 0.5))
			#expect(unit[2].radians.isApproximatelyEqual(to: 1.5))
		}

	/// Tests writing a component of the vector by subscript.
	///
		@Test("Subscript Set")
		func testSubscriptSet() async throws {
			var unit = Rotation<SIMD3<Double>>.zero
			unit[1] = Angle(radians: 1.25)
			#expect(unit[1].radians.isApproximatelyEqual(to: 1.25))
		}
	}

/// Rotation normalization tests.
///
	@Suite("Normalization")
	struct normalizationTests {
	/// Tests normalizing a rotation into the range 0 to 2π by mutation.
	///
		@Test("Normalize")
		func testNormalize() async throws {
			var unit = Rotation.radians(SIMD3<Double>(2.0 * Double.pi + 1.0, -1.0, 0.5))
			unit.normalize()
			#expect(unit.radians.x.isApproximatelyEqual(to: 1.0))
			#expect(unit.radians.y.isApproximatelyEqual(to: 2.0 * Double.pi - 1.0))
			#expect(unit.radians.z.isApproximatelyEqual(to: 0.5))
		}

	/// Tests reading a normalized rotation in the range 0 to 2π.
	///
		@Test("Normalized")
		func testNormalized() async throws {
			let unit = Rotation.radians(SIMD3<Double>(2.0 * Double.pi + 1.0, -1.0, 0.5))
			let normalized = unit.normalized
			#expect(normalized.radians.x.isApproximatelyEqual(to: 1.0))
			#expect(normalized.radians.y.isApproximatelyEqual(to: 2.0 * Double.pi - 1.0))
			#expect(normalized.radians.z.isApproximatelyEqual(to: 0.5))
		}
	}
}
