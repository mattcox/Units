//
//  Velocity.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Velocity")
struct VelocityTests {
/// Kilometers Per Hour unit tests.
///
	@Suite("Kilometers Per Hour")
	struct kilometersPerHourTests {
	/// Tests initializing the type from a vector in Kilometers Per Hour and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Velocity.kilometersPerHour(value)
			#expect(unit.kilometersPerHour.x.isApproximatelyEqual(to: value.x))
			#expect(unit.kilometersPerHour.y.isApproximatelyEqual(to: value.y))
			#expect(unit.kilometersPerHour.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Kilometers Per Hour
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Velocity(kilometersPerHour: value)
			#expect(unit.kilometersPerHour.x.isApproximatelyEqual(to: value.x))
			#expect(unit.kilometersPerHour.y.isApproximatelyEqual(to: value.y))
			#expect(unit.kilometersPerHour.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Kilometers Per Hour and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Velocity<SIMD3<Double>>.zero
			unit.kilometersPerHour = value
			#expect(unit.kilometersPerHour.x.isApproximatelyEqual(to: value.x))
			#expect(unit.kilometersPerHour.y.isApproximatelyEqual(to: value.y))
			#expect(unit.kilometersPerHour.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Knots unit tests.
///
	@Suite("Knots")
	struct knotsTests {
	/// Tests initializing the type from a vector in Knots and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Velocity.knots(value)
			#expect(unit.knots.x.isApproximatelyEqual(to: value.x))
			#expect(unit.knots.y.isApproximatelyEqual(to: value.y))
			#expect(unit.knots.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Knots
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Velocity(knots: value)
			#expect(unit.knots.x.isApproximatelyEqual(to: value.x))
			#expect(unit.knots.y.isApproximatelyEqual(to: value.y))
			#expect(unit.knots.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Knots and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Velocity<SIMD3<Double>>.zero
			unit.knots = value
			#expect(unit.knots.x.isApproximatelyEqual(to: value.x))
			#expect(unit.knots.y.isApproximatelyEqual(to: value.y))
			#expect(unit.knots.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Meters Per Second unit tests.
///
	@Suite("Meters Per Second")
	struct metersPerSecondTests {
	/// Tests initializing the type from a vector in Meters Per Second and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Velocity.metersPerSecond(value)
			#expect(unit.metersPerSecond.x.isApproximatelyEqual(to: value.x))
			#expect(unit.metersPerSecond.y.isApproximatelyEqual(to: value.y))
			#expect(unit.metersPerSecond.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Meters Per Second
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Velocity(metersPerSecond: value)
			#expect(unit.metersPerSecond.x.isApproximatelyEqual(to: value.x))
			#expect(unit.metersPerSecond.y.isApproximatelyEqual(to: value.y))
			#expect(unit.metersPerSecond.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Meters Per Second and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Velocity<SIMD3<Double>>.zero
			unit.metersPerSecond = value
			#expect(unit.metersPerSecond.x.isApproximatelyEqual(to: value.x))
			#expect(unit.metersPerSecond.y.isApproximatelyEqual(to: value.y))
			#expect(unit.metersPerSecond.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Miles Per Hour unit tests.
///
	@Suite("Miles Per Hour")
	struct milesPerHourTests {
	/// Tests initializing the type from a vector in Miles Per Hour and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Velocity.milesPerHour(value)
			#expect(unit.milesPerHour.x.isApproximatelyEqual(to: value.x))
			#expect(unit.milesPerHour.y.isApproximatelyEqual(to: value.y))
			#expect(unit.milesPerHour.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Miles Per Hour
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Velocity(milesPerHour: value)
			#expect(unit.milesPerHour.x.isApproximatelyEqual(to: value.x))
			#expect(unit.milesPerHour.y.isApproximatelyEqual(to: value.y))
			#expect(unit.milesPerHour.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Miles Per Hour and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Velocity<SIMD3<Double>>.zero
			unit.milesPerHour = value
			#expect(unit.milesPerHour.x.isApproximatelyEqual(to: value.x))
			#expect(unit.milesPerHour.y.isApproximatelyEqual(to: value.y))
			#expect(unit.milesPerHour.z.isApproximatelyEqual(to: value.z))
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
			let unit = Velocity<SIMD3<Double>>.zero
			#expect(unit.value == SIMD3<Double>(0.0, 0.0, 0.0))
		}

	/// Tests reading a component of the vector by subscript.
	///
		@Test("Subscript Get")
		func testSubscriptGet() async throws {
			let unit = Velocity.metersPerSecond(SIMD3<Double>(1.0, 2.0, 3.0))
			#expect(unit[0].metersPerSecond.isApproximatelyEqual(to: 1.0))
			#expect(unit[2].metersPerSecond.isApproximatelyEqual(to: 3.0))
		}

	/// Tests writing a component of the vector by subscript.
	///
		@Test("Subscript Set")
		func testSubscriptSet() async throws {
			var unit = Velocity<SIMD3<Double>>.zero
			unit[1] = Speed(metersPerSecond: 4.0)
			#expect(unit[1].metersPerSecond.isApproximatelyEqual(to: 4.0))
		}
	}
}
