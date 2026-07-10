//
//  Speed.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Speed")
struct SpeedTests {
/// Kilometers Per Hour unit tests.
///
	@Suite("Kilometers Per Hour")
	struct kilometersPerHourTests {
	/// Tests initializing the type from a value in Kilometers Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Speed.kilometersPerHour(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilometers Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Speed.kilometersPerHour(3.5999971200023038)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Kilometers Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Speed.kilometersPerHour(-3.5999971200023038)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Kilometers Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Speed.kilometersPerHour(0.3599997120002304)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Kilometers Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Speed.kilometersPerHour(179.9998560001152)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Kilometers Per Hour and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Speed<Double>.zero
			unit.kilometersPerHour = 0.0
			#expect(unit.kilometersPerHour.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Kilometers Per Hour and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (3.60)")
		func testGetAndSet_1() async throws {
			var unit = Speed<Double>.zero
			unit.kilometersPerHour = 3.5999971200023038
			#expect(unit.kilometersPerHour.isApproximatelyEqual(to: 3.5999971200023038))
		}

	/// Tests setting the type from a value in Kilometers Per Hour and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-3.60)")
		func testGetAndSet_2() async throws {
			var unit = Speed<Double>.zero
			unit.kilometersPerHour = -3.5999971200023038
			#expect(unit.kilometersPerHour.isApproximatelyEqual(to: -3.5999971200023038))
		}

	/// Tests setting the type from a value in Kilometers Per Hour and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.36)")
		func testGetAndSet_3() async throws {
			var unit = Speed<Double>.zero
			unit.kilometersPerHour = 0.3599997120002304
			#expect(unit.kilometersPerHour.isApproximatelyEqual(to: 0.3599997120002304))
		}

	/// Tests setting the type from a value in Kilometers Per Hour and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (180.00)")
		func testGetAndSet_4() async throws {
			var unit = Speed<Double>.zero
			unit.kilometersPerHour = 179.9998560001152
			#expect(unit.kilometersPerHour.isApproximatelyEqual(to: 179.9998560001152))
		}

	/// Tests initializing the type from a value in Kilometers Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Speed(kilometersPerHour: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilometers Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Speed(kilometersPerHour: 3.5999971200023038)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Kilometers Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Speed(kilometersPerHour: -3.5999971200023038)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Kilometers Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Speed(kilometersPerHour: 0.8999992800005759)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Kilometers Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Speed(kilometersPerHour: 3599.9971200023037)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Kilometers Per Hour and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Speed.kilometersPerHour(0.0)
			#expect(unit.kilometersPerHour.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilometers Per Hour and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (3.60)")
		func testRoundTrip_1() async throws {
			let unit = Speed.kilometersPerHour(3.5999971200023038)
			#expect(unit.kilometersPerHour.isApproximatelyEqual(to: 3.5999971200023038))
		}

	/// Tests initializing the type from a value in Kilometers Per Hour and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-3.60)")
		func testRoundTrip_2() async throws {
			let unit = Speed.kilometersPerHour(-3.5999971200023038)
			#expect(unit.kilometersPerHour.isApproximatelyEqual(to: -3.5999971200023038))
		}

	/// Tests initializing the type from a value in Kilometers Per Hour and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Speed.kilometersPerHour(0.003599997120002304)
			#expect(unit.kilometersPerHour.isApproximatelyEqual(to: 0.003599997120002304))
		}

	/// Tests initializing the type from a value in Kilometers Per Hour and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (3599997.12)")
		func testRoundTrip_4() async throws {
			let unit = Speed.kilometersPerHour(3599997.1200023037)
			#expect(unit.kilometersPerHour.isApproximatelyEqual(to: 3599997.1200023037))
		}
	}
/// Knots unit tests.
///
	@Suite("Knots")
	struct knotsTests {
	/// Tests initializing the type from a value in Knots
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Speed.knots(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Knots
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Speed.knots(1.9438461717893492)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Knots
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Speed.knots(-1.9438461717893492)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Knots
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Speed.knots(0.19438461717893493)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Knots
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Speed.knots(97.19230858946746)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Knots and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Speed<Double>.zero
			unit.knots = 0.0
			#expect(unit.knots.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Knots and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.94)")
		func testGetAndSet_1() async throws {
			var unit = Speed<Double>.zero
			unit.knots = 1.9438461717893492
			#expect(unit.knots.isApproximatelyEqual(to: 1.9438461717893492))
		}

	/// Tests setting the type from a value in Knots and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.94)")
		func testGetAndSet_2() async throws {
			var unit = Speed<Double>.zero
			unit.knots = -1.9438461717893492
			#expect(unit.knots.isApproximatelyEqual(to: -1.9438461717893492))
		}

	/// Tests setting the type from a value in Knots and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.19)")
		func testGetAndSet_3() async throws {
			var unit = Speed<Double>.zero
			unit.knots = 0.19438461717893493
			#expect(unit.knots.isApproximatelyEqual(to: 0.19438461717893493))
		}

	/// Tests setting the type from a value in Knots and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (97.19)")
		func testGetAndSet_4() async throws {
			var unit = Speed<Double>.zero
			unit.knots = 97.19230858946746
			#expect(unit.knots.isApproximatelyEqual(to: 97.19230858946746))
		}

	/// Tests initializing the type from a value in Knots
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Speed(knots: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Knots
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Speed(knots: 1.9438461717893492)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Knots
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Speed(knots: -1.9438461717893492)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Knots
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Speed(knots: 0.4859615429473373)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Knots
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Speed(knots: 1943.8461717893492)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Knots and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Speed.knots(0.0)
			#expect(unit.knots.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Knots and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.94)")
		func testRoundTrip_1() async throws {
			let unit = Speed.knots(1.9438461717893492)
			#expect(unit.knots.isApproximatelyEqual(to: 1.9438461717893492))
		}

	/// Tests initializing the type from a value in Knots and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.94)")
		func testRoundTrip_2() async throws {
			let unit = Speed.knots(-1.9438461717893492)
			#expect(unit.knots.isApproximatelyEqual(to: -1.9438461717893492))
		}

	/// Tests initializing the type from a value in Knots and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Speed.knots(0.0019438461717893492)
			#expect(unit.knots.isApproximatelyEqual(to: 0.0019438461717893492))
		}

	/// Tests initializing the type from a value in Knots and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1943846.17)")
		func testRoundTrip_4() async throws {
			let unit = Speed.knots(1943846.1717893493)
			#expect(unit.knots.isApproximatelyEqual(to: 1943846.1717893493))
		}
	}
/// Meters Per Second unit tests.
///
	@Suite("Meters Per Second")
	struct metersPerSecondTests {
	/// Tests initializing the type from a value in Meters Per Second
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Speed.metersPerSecond(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Meters Per Second
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Speed.metersPerSecond(1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Meters Per Second
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Speed.metersPerSecond(-1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Meters Per Second
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Speed.metersPerSecond(0.1)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Meters Per Second
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Speed.metersPerSecond(50.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Meters Per Second and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Speed<Double>.zero
			unit.metersPerSecond = 0.0
			#expect(unit.metersPerSecond.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Meters Per Second and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.00)")
		func testGetAndSet_1() async throws {
			var unit = Speed<Double>.zero
			unit.metersPerSecond = 1.0
			#expect(unit.metersPerSecond.isApproximatelyEqual(to: 1.0))
		}

	/// Tests setting the type from a value in Meters Per Second and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.00)")
		func testGetAndSet_2() async throws {
			var unit = Speed<Double>.zero
			unit.metersPerSecond = -1.0
			#expect(unit.metersPerSecond.isApproximatelyEqual(to: -1.0))
		}

	/// Tests setting the type from a value in Meters Per Second and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.10)")
		func testGetAndSet_3() async throws {
			var unit = Speed<Double>.zero
			unit.metersPerSecond = 0.1
			#expect(unit.metersPerSecond.isApproximatelyEqual(to: 0.1))
		}

	/// Tests setting the type from a value in Meters Per Second and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50.00)")
		func testGetAndSet_4() async throws {
			var unit = Speed<Double>.zero
			unit.metersPerSecond = 50.0
			#expect(unit.metersPerSecond.isApproximatelyEqual(to: 50.0))
		}

	/// Tests initializing the type from a value in Meters Per Second
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Speed(metersPerSecond: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Meters Per Second
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Speed(metersPerSecond: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Meters Per Second
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Speed(metersPerSecond: -1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Meters Per Second
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Speed(metersPerSecond: 0.25)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Meters Per Second
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Speed(metersPerSecond: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Meters Per Second and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Speed.metersPerSecond(0.0)
			#expect(unit.metersPerSecond.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Meters Per Second and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_1() async throws {
			let unit = Speed.metersPerSecond(1.0)
			#expect(unit.metersPerSecond.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Meters Per Second and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.00)")
		func testRoundTrip_2() async throws {
			let unit = Speed.metersPerSecond(-1.0)
			#expect(unit.metersPerSecond.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Meters Per Second and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Speed.metersPerSecond(0.001)
			#expect(unit.metersPerSecond.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Meters Per Second and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Speed.metersPerSecond(1000000.0)
			#expect(unit.metersPerSecond.isApproximatelyEqual(to: 1000000.0))
		}
	}
/// Miles Per Hour unit tests.
///
	@Suite("Miles Per Hour")
	struct milesPerHourTests {
	/// Tests initializing the type from a value in Miles Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Speed.milesPerHour(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Miles Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Speed.milesPerHour(2.2369362920544025)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Miles Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Speed.milesPerHour(-2.2369362920544025)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Miles Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Speed.milesPerHour(0.22369362920544025)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Miles Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Speed.milesPerHour(111.84681460272012)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Miles Per Hour and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Speed<Double>.zero
			unit.milesPerHour = 0.0
			#expect(unit.milesPerHour.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Miles Per Hour and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (2.24)")
		func testGetAndSet_1() async throws {
			var unit = Speed<Double>.zero
			unit.milesPerHour = 2.2369362920544025
			#expect(unit.milesPerHour.isApproximatelyEqual(to: 2.2369362920544025))
		}

	/// Tests setting the type from a value in Miles Per Hour and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-2.24)")
		func testGetAndSet_2() async throws {
			var unit = Speed<Double>.zero
			unit.milesPerHour = -2.2369362920544025
			#expect(unit.milesPerHour.isApproximatelyEqual(to: -2.2369362920544025))
		}

	/// Tests setting the type from a value in Miles Per Hour and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.22)")
		func testGetAndSet_3() async throws {
			var unit = Speed<Double>.zero
			unit.milesPerHour = 0.22369362920544025
			#expect(unit.milesPerHour.isApproximatelyEqual(to: 0.22369362920544025))
		}

	/// Tests setting the type from a value in Miles Per Hour and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (111.85)")
		func testGetAndSet_4() async throws {
			var unit = Speed<Double>.zero
			unit.milesPerHour = 111.84681460272012
			#expect(unit.milesPerHour.isApproximatelyEqual(to: 111.84681460272012))
		}

	/// Tests initializing the type from a value in Miles Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Speed(milesPerHour: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Miles Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Speed(milesPerHour: 2.2369362920544025)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Miles Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Speed(milesPerHour: -2.2369362920544025)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Miles Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Speed(milesPerHour: 0.5592340730136006)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Miles Per Hour
	/// and checking the stored value in Meters Per Second.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Speed(milesPerHour: 2236.936292054402)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Miles Per Hour and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Speed.milesPerHour(0.0)
			#expect(unit.milesPerHour.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Miles Per Hour and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (2.24)")
		func testRoundTrip_1() async throws {
			let unit = Speed.milesPerHour(2.2369362920544025)
			#expect(unit.milesPerHour.isApproximatelyEqual(to: 2.2369362920544025))
		}

	/// Tests initializing the type from a value in Miles Per Hour and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-2.24)")
		func testRoundTrip_2() async throws {
			let unit = Speed.milesPerHour(-2.2369362920544025)
			#expect(unit.milesPerHour.isApproximatelyEqual(to: -2.2369362920544025))
		}

	/// Tests initializing the type from a value in Miles Per Hour and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Speed.milesPerHour(0.0022369362920544025)
			#expect(unit.milesPerHour.isApproximatelyEqual(to: 0.0022369362920544025))
		}

	/// Tests initializing the type from a value in Miles Per Hour and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (2236936.29)")
		func testRoundTrip_4() async throws {
			let unit = Speed.milesPerHour(2236936.292054402)
			#expect(unit.milesPerHour.isApproximatelyEqual(to: 2236936.292054402))
		}
	}
/// Symbol tests.
///
	@Suite("Symbols")
	struct symbolTests {
	/// Tests that every unit provides a non-empty symbol.
	///
		@Test("All Symbols")
		func testSymbols() async throws {
			for unit in Speed<Double>.MeasurementUnit.allCases {
				#expect(!unit.symbol(for: 1.0).isEmpty)
				#expect(!unit.symbol(for: 2.0).isEmpty)
			}
		}
	}
}
