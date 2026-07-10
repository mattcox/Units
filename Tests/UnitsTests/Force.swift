//
//  Force.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Force")
struct ForceTests {
/// Newtons unit tests.
///
	@Suite("Newtons")
	struct newtonsTests {
	/// Tests initializing the type from a vector in Newtons and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Force.newtons(value)
			#expect(unit.newtons.x.isApproximatelyEqual(to: value.x))
			#expect(unit.newtons.y.isApproximatelyEqual(to: value.y))
			#expect(unit.newtons.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Newtons
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Force(newtons: value)
			#expect(unit.newtons.x.isApproximatelyEqual(to: value.x))
			#expect(unit.newtons.y.isApproximatelyEqual(to: value.y))
			#expect(unit.newtons.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Newtons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Force<SIMD3<Double>>.zero
			unit.newtons = value
			#expect(unit.newtons.x.isApproximatelyEqual(to: value.x))
			#expect(unit.newtons.y.isApproximatelyEqual(to: value.y))
			#expect(unit.newtons.z.isApproximatelyEqual(to: value.z))
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
			let unit = Force<SIMD3<Double>>.zero
			#expect(unit.value == SIMD3<Double>(0.0, 0.0, 0.0))
		}

	/// Tests reading a component of the vector by subscript.
	///
		@Test("Subscript Get")
		func testSubscriptGet() async throws {
			let unit = Force.newtons(SIMD3<Double>(1.0, 2.0, 3.0))
			#expect(unit[0].newtons.isApproximatelyEqual(to: 1.0))
			#expect(unit[2].newtons.isApproximatelyEqual(to: 3.0))
		}

	/// Tests writing a component of the vector by subscript.
	///
		@Test("Subscript Set")
		func testSubscriptSet() async throws {
			var unit = Force<SIMD3<Double>>.zero
			unit[1] = ForceMagnitude(newtons: 4.0)
			#expect(unit[1].newtons.isApproximatelyEqual(to: 4.0))
		}
	}
}
