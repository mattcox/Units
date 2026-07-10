//
//  Distance.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Distance")
struct DistanceTests {
/// Astronomical Units unit tests.
///
	@Suite("Astronomical Units")
	struct astronomicalUnitsTests {
	/// Tests initializing the type from a value in Astronomical Units
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.astronomicalUnits(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Astronomical Units
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.astronomicalUnits(6.684587122268445e-12)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Astronomical Units
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.astronomicalUnits(-6.684587122268445e-12)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Astronomical Units
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.astronomicalUnits(6.684587122268446e-13)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Astronomical Units
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.astronomicalUnits(3.342293561134223e-10)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Astronomical Units and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.astronomicalUnits = 0.0
			#expect(unit.astronomicalUnits.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Astronomical Units and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.astronomicalUnits = 6.684587122268445e-12
			#expect(unit.astronomicalUnits.isApproximatelyEqual(to: 6.684587122268445e-12))
		}

	/// Tests setting the type from a value in Astronomical Units and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.astronomicalUnits = -6.684587122268445e-12
			#expect(unit.astronomicalUnits.isApproximatelyEqual(to: -6.684587122268445e-12))
		}

	/// Tests setting the type from a value in Astronomical Units and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.astronomicalUnits = 6.684587122268446e-13
			#expect(unit.astronomicalUnits.isApproximatelyEqual(to: 6.684587122268446e-13))
		}

	/// Tests setting the type from a value in Astronomical Units and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.astronomicalUnits = 3.342293561134223e-10
			#expect(unit.astronomicalUnits.isApproximatelyEqual(to: 3.342293561134223e-10))
		}

	/// Tests initializing the type from a value in Astronomical Units
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(astronomicalUnits: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Astronomical Units
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(astronomicalUnits: 6.684587122268445e-12)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Astronomical Units
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(astronomicalUnits: -6.684587122268445e-12)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Astronomical Units
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(astronomicalUnits: 1.6711467805671113e-12)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Astronomical Units
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(astronomicalUnits: 6.684587122268446e-09)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Astronomical Units and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.astronomicalUnits(0.0)
			#expect(unit.astronomicalUnits.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Astronomical Units and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.astronomicalUnits(6.684587122268445e-12)
			#expect(unit.astronomicalUnits.isApproximatelyEqual(to: 6.684587122268445e-12))
		}

	/// Tests initializing the type from a value in Astronomical Units and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.astronomicalUnits(-6.684587122268445e-12)
			#expect(unit.astronomicalUnits.isApproximatelyEqual(to: -6.684587122268445e-12))
		}

	/// Tests initializing the type from a value in Astronomical Units and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.astronomicalUnits(6.684587122268446e-15)
			#expect(unit.astronomicalUnits.isApproximatelyEqual(to: 6.684587122268446e-15))
		}

	/// Tests initializing the type from a value in Astronomical Units and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_4() async throws {
			let unit = Distance.astronomicalUnits(6.684587122268446e-06)
			#expect(unit.astronomicalUnits.isApproximatelyEqual(to: 6.684587122268446e-06))
		}
	}
/// Centimeters unit tests.
///
	@Suite("Centimeters")
	struct centimetersTests {
	/// Tests initializing the type from a value in Centimeters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.centimeters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Centimeters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.centimeters(100.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Centimeters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.centimeters(-100.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Centimeters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.centimeters(10.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Centimeters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.centimeters(5000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.centimeters = 0.0
			#expect(unit.centimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.centimeters = 100.0
			#expect(unit.centimeters.isApproximatelyEqual(to: 100.0))
		}

	/// Tests setting the type from a value in Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-100.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.centimeters = -100.0
			#expect(unit.centimeters.isApproximatelyEqual(to: -100.0))
		}

	/// Tests setting the type from a value in Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (10.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.centimeters = 10.0
			#expect(unit.centimeters.isApproximatelyEqual(to: 10.0))
		}

	/// Tests setting the type from a value in Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (5000.00)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.centimeters = 5000.0
			#expect(unit.centimeters.isApproximatelyEqual(to: 5000.0))
		}

	/// Tests initializing the type from a value in Centimeters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(centimeters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Centimeters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(centimeters: 100.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Centimeters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(centimeters: -100.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Centimeters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(centimeters: 25.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Centimeters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(centimeters: 100000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Centimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.centimeters(0.0)
			#expect(unit.centimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Centimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (100.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.centimeters(100.0)
			#expect(unit.centimeters.isApproximatelyEqual(to: 100.0))
		}

	/// Tests initializing the type from a value in Centimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-100.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.centimeters(-100.0)
			#expect(unit.centimeters.isApproximatelyEqual(to: -100.0))
		}

	/// Tests initializing the type from a value in Centimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.10)")
		func testRoundTrip_3() async throws {
			let unit = Distance.centimeters(0.1)
			#expect(unit.centimeters.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Centimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (100000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Distance.centimeters(100000000.0)
			#expect(unit.centimeters.isApproximatelyEqual(to: 100000000.0))
		}
	}
/// Decameters unit tests.
///
	@Suite("Decameters")
	struct decametersTests {
	/// Tests initializing the type from a value in Decameters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.decameters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Decameters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.decameters(0.1)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Decameters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.decameters(-0.1)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Decameters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.decameters(0.01)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Decameters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.decameters(5.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Decameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.decameters = 0.0
			#expect(unit.decameters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Decameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.10)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.decameters = 0.1
			#expect(unit.decameters.isApproximatelyEqual(to: 0.1))
		}

	/// Tests setting the type from a value in Decameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.10)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.decameters = -0.1
			#expect(unit.decameters.isApproximatelyEqual(to: -0.1))
		}

	/// Tests setting the type from a value in Decameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.01)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.decameters = 0.01
			#expect(unit.decameters.isApproximatelyEqual(to: 0.01))
		}

	/// Tests setting the type from a value in Decameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (5.00)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.decameters = 5.0
			#expect(unit.decameters.isApproximatelyEqual(to: 5.0))
		}

	/// Tests initializing the type from a value in Decameters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(decameters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Decameters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(decameters: 0.1)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Decameters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(decameters: -0.1)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Decameters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(decameters: 0.025)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Decameters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(decameters: 100.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Decameters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.decameters(0.0)
			#expect(unit.decameters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Decameters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.10)")
		func testRoundTrip_1() async throws {
			let unit = Distance.decameters(0.1)
			#expect(unit.decameters.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Decameters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.10)")
		func testRoundTrip_2() async throws {
			let unit = Distance.decameters(-0.1)
			#expect(unit.decameters.isApproximatelyEqual(to: -0.1))
		}

	/// Tests initializing the type from a value in Decameters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.decameters(0.0001)
			#expect(unit.decameters.isApproximatelyEqual(to: 0.0001))
		}

	/// Tests initializing the type from a value in Decameters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (100000.00)")
		func testRoundTrip_4() async throws {
			let unit = Distance.decameters(100000.0)
			#expect(unit.decameters.isApproximatelyEqual(to: 100000.0))
		}
	}
/// Decimeters unit tests.
///
	@Suite("Decimeters")
	struct decimetersTests {
	/// Tests initializing the type from a value in Decimeters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.decimeters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Decimeters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.decimeters(10.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Decimeters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.decimeters(-10.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Decimeters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.decimeters(1.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Decimeters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.decimeters(500.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Decimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.decimeters = 0.0
			#expect(unit.decimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Decimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (10.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.decimeters = 10.0
			#expect(unit.decimeters.isApproximatelyEqual(to: 10.0))
		}

	/// Tests setting the type from a value in Decimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-10.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.decimeters = -10.0
			#expect(unit.decimeters.isApproximatelyEqual(to: -10.0))
		}

	/// Tests setting the type from a value in Decimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.decimeters = 1.0
			#expect(unit.decimeters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests setting the type from a value in Decimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (500.00)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.decimeters = 500.0
			#expect(unit.decimeters.isApproximatelyEqual(to: 500.0))
		}

	/// Tests initializing the type from a value in Decimeters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(decimeters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Decimeters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(decimeters: 10.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Decimeters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(decimeters: -10.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Decimeters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(decimeters: 2.5)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Decimeters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(decimeters: 10000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Decimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.decimeters(0.0)
			#expect(unit.decimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Decimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.decimeters(10.0)
			#expect(unit.decimeters.isApproximatelyEqual(to: 10.0))
		}

	/// Tests initializing the type from a value in Decimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-10.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.decimeters(-10.0)
			#expect(unit.decimeters.isApproximatelyEqual(to: -10.0))
		}

	/// Tests initializing the type from a value in Decimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.01)")
		func testRoundTrip_3() async throws {
			let unit = Distance.decimeters(0.01)
			#expect(unit.decimeters.isApproximatelyEqual(to: 0.01))
		}

	/// Tests initializing the type from a value in Decimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Distance.decimeters(10000000.0)
			#expect(unit.decimeters.isApproximatelyEqual(to: 10000000.0))
		}
	}
/// Fathoms unit tests.
///
	@Suite("Fathoms")
	struct fathomsTests {
	/// Tests initializing the type from a value in Fathoms
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.fathoms(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Fathoms
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.fathoms(0.5468066491688539)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Fathoms
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.fathoms(-0.5468066491688539)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Fathoms
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.fathoms(0.05468066491688539)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Fathoms
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.fathoms(27.340332458442695)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Fathoms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.fathoms = 0.0
			#expect(unit.fathoms.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Fathoms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.55)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.fathoms = 0.5468066491688539
			#expect(unit.fathoms.isApproximatelyEqual(to: 0.5468066491688539))
		}

	/// Tests setting the type from a value in Fathoms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.55)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.fathoms = -0.5468066491688539
			#expect(unit.fathoms.isApproximatelyEqual(to: -0.5468066491688539))
		}

	/// Tests setting the type from a value in Fathoms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.05)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.fathoms = 0.05468066491688539
			#expect(unit.fathoms.isApproximatelyEqual(to: 0.05468066491688539))
		}

	/// Tests setting the type from a value in Fathoms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (27.34)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.fathoms = 27.340332458442695
			#expect(unit.fathoms.isApproximatelyEqual(to: 27.340332458442695))
		}

	/// Tests initializing the type from a value in Fathoms
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(fathoms: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Fathoms
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(fathoms: 0.5468066491688539)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Fathoms
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(fathoms: -0.5468066491688539)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Fathoms
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(fathoms: 0.13670166229221348)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Fathoms
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(fathoms: 546.8066491688539)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Fathoms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.fathoms(0.0)
			#expect(unit.fathoms.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Fathoms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.55)")
		func testRoundTrip_1() async throws {
			let unit = Distance.fathoms(0.5468066491688539)
			#expect(unit.fathoms.isApproximatelyEqual(to: 0.5468066491688539))
		}

	/// Tests initializing the type from a value in Fathoms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.55)")
		func testRoundTrip_2() async throws {
			let unit = Distance.fathoms(-0.5468066491688539)
			#expect(unit.fathoms.isApproximatelyEqual(to: -0.5468066491688539))
		}

	/// Tests initializing the type from a value in Fathoms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.fathoms(0.0005468066491688539)
			#expect(unit.fathoms.isApproximatelyEqual(to: 0.0005468066491688539))
		}

	/// Tests initializing the type from a value in Fathoms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (546806.65)")
		func testRoundTrip_4() async throws {
			let unit = Distance.fathoms(546806.6491688539)
			#expect(unit.fathoms.isApproximatelyEqual(to: 546806.6491688539))
		}
	}
/// Feet unit tests.
///
	@Suite("Feet")
	struct feetTests {
	/// Tests initializing the type from a value in Feet
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.feet(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Feet
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.feet(3.280839895013123)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Feet
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.feet(-3.280839895013123)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Feet
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.feet(0.32808398950131235)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Feet
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.feet(164.04199475065616)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.feet = 0.0
			#expect(unit.feet.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (3.28)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.feet = 3.280839895013123
			#expect(unit.feet.isApproximatelyEqual(to: 3.280839895013123))
		}

	/// Tests setting the type from a value in Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-3.28)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.feet = -3.280839895013123
			#expect(unit.feet.isApproximatelyEqual(to: -3.280839895013123))
		}

	/// Tests setting the type from a value in Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.33)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.feet = 0.32808398950131235
			#expect(unit.feet.isApproximatelyEqual(to: 0.32808398950131235))
		}

	/// Tests setting the type from a value in Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (164.04)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.feet = 164.04199475065616
			#expect(unit.feet.isApproximatelyEqual(to: 164.04199475065616))
		}

	/// Tests initializing the type from a value in Feet
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(feet: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Feet
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(feet: 3.280839895013123)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Feet
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(feet: -3.280839895013123)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Feet
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(feet: 0.8202099737532808)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Feet
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(feet: 3280.839895013123)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.feet(0.0)
			#expect(unit.feet.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (3.28)")
		func testRoundTrip_1() async throws {
			let unit = Distance.feet(3.280839895013123)
			#expect(unit.feet.isApproximatelyEqual(to: 3.280839895013123))
		}

	/// Tests initializing the type from a value in Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-3.28)")
		func testRoundTrip_2() async throws {
			let unit = Distance.feet(-3.280839895013123)
			#expect(unit.feet.isApproximatelyEqual(to: -3.280839895013123))
		}

	/// Tests initializing the type from a value in Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.feet(0.0032808398950131233)
			#expect(unit.feet.isApproximatelyEqual(to: 0.0032808398950131233))
		}

	/// Tests initializing the type from a value in Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (3280839.90)")
		func testRoundTrip_4() async throws {
			let unit = Distance.feet(3280839.8950131233)
			#expect(unit.feet.isApproximatelyEqual(to: 3280839.8950131233))
		}
	}
/// Furlongs unit tests.
///
	@Suite("Furlongs")
	struct furlongsTests {
	/// Tests initializing the type from a value in Furlongs
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.furlongs(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Furlongs
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.furlongs(0.004970969537898671)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Furlongs
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.furlongs(-0.004970969537898671)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Furlongs
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.furlongs(0.0004970969537898672)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Furlongs
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.furlongs(0.2485484768949336)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Furlongs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.furlongs = 0.0
			#expect(unit.furlongs.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Furlongs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.furlongs = 0.004970969537898671
			#expect(unit.furlongs.isApproximatelyEqual(to: 0.004970969537898671))
		}

	/// Tests setting the type from a value in Furlongs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.furlongs = -0.004970969537898671
			#expect(unit.furlongs.isApproximatelyEqual(to: -0.004970969537898671))
		}

	/// Tests setting the type from a value in Furlongs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.furlongs = 0.0004970969537898672
			#expect(unit.furlongs.isApproximatelyEqual(to: 0.0004970969537898672))
		}

	/// Tests setting the type from a value in Furlongs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.25)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.furlongs = 0.2485484768949336
			#expect(unit.furlongs.isApproximatelyEqual(to: 0.2485484768949336))
		}

	/// Tests initializing the type from a value in Furlongs
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(furlongs: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Furlongs
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(furlongs: 0.004970969537898671)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Furlongs
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(furlongs: -0.004970969537898671)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Furlongs
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(furlongs: 0.0012427423844746678)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Furlongs
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(furlongs: 4.970969537898672)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Furlongs and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.furlongs(0.0)
			#expect(unit.furlongs.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Furlongs and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.furlongs(0.004970969537898671)
			#expect(unit.furlongs.isApproximatelyEqual(to: 0.004970969537898671))
		}

	/// Tests initializing the type from a value in Furlongs and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.furlongs(-0.004970969537898671)
			#expect(unit.furlongs.isApproximatelyEqual(to: -0.004970969537898671))
		}

	/// Tests initializing the type from a value in Furlongs and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.furlongs(4.970969537898672e-06)
			#expect(unit.furlongs.isApproximatelyEqual(to: 4.970969537898672e-06))
		}

	/// Tests initializing the type from a value in Furlongs and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (4970.97)")
		func testRoundTrip_4() async throws {
			let unit = Distance.furlongs(4970.969537898672)
			#expect(unit.furlongs.isApproximatelyEqual(to: 4970.969537898672))
		}
	}
/// Hectometers unit tests.
///
	@Suite("Hectometers")
	struct hectometersTests {
	/// Tests initializing the type from a value in Hectometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.hectometers(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Hectometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.hectometers(0.01)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Hectometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.hectometers(-0.01)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Hectometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.hectometers(0.001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Hectometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.hectometers(0.5)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Hectometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.hectometers = 0.0
			#expect(unit.hectometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Hectometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.01)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.hectometers = 0.01
			#expect(unit.hectometers.isApproximatelyEqual(to: 0.01))
		}

	/// Tests setting the type from a value in Hectometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.01)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.hectometers = -0.01
			#expect(unit.hectometers.isApproximatelyEqual(to: -0.01))
		}

	/// Tests setting the type from a value in Hectometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.hectometers = 0.001
			#expect(unit.hectometers.isApproximatelyEqual(to: 0.001))
		}

	/// Tests setting the type from a value in Hectometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.50)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.hectometers = 0.5
			#expect(unit.hectometers.isApproximatelyEqual(to: 0.5))
		}

	/// Tests initializing the type from a value in Hectometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(hectometers: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Hectometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(hectometers: 0.01)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Hectometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(hectometers: -0.01)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Hectometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(hectometers: 0.0025)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Hectometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(hectometers: 10.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Hectometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.hectometers(0.0)
			#expect(unit.hectometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Hectometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.01)")
		func testRoundTrip_1() async throws {
			let unit = Distance.hectometers(0.01)
			#expect(unit.hectometers.isApproximatelyEqual(to: 0.01))
		}

	/// Tests initializing the type from a value in Hectometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.01)")
		func testRoundTrip_2() async throws {
			let unit = Distance.hectometers(-0.01)
			#expect(unit.hectometers.isApproximatelyEqual(to: -0.01))
		}

	/// Tests initializing the type from a value in Hectometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.hectometers(1e-05)
			#expect(unit.hectometers.isApproximatelyEqual(to: 1e-05))
		}

	/// Tests initializing the type from a value in Hectometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10000.00)")
		func testRoundTrip_4() async throws {
			let unit = Distance.hectometers(10000.0)
			#expect(unit.hectometers.isApproximatelyEqual(to: 10000.0))
		}
	}
/// Inches unit tests.
///
	@Suite("Inches")
	struct inchesTests {
	/// Tests initializing the type from a value in Inches
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.inches(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Inches
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.inches(39.37007874015748)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Inches
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.inches(-39.37007874015748)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Inches
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.inches(3.9370078740157486)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Inches
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.inches(1968.5039370078741)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.inches = 0.0
			#expect(unit.inches.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (39.37)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.inches = 39.37007874015748
			#expect(unit.inches.isApproximatelyEqual(to: 39.37007874015748))
		}

	/// Tests setting the type from a value in Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-39.37)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.inches = -39.37007874015748
			#expect(unit.inches.isApproximatelyEqual(to: -39.37007874015748))
		}

	/// Tests setting the type from a value in Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (3.94)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.inches = 3.9370078740157486
			#expect(unit.inches.isApproximatelyEqual(to: 3.9370078740157486))
		}

	/// Tests setting the type from a value in Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1968.50)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.inches = 1968.5039370078741
			#expect(unit.inches.isApproximatelyEqual(to: 1968.5039370078741))
		}

	/// Tests initializing the type from a value in Inches
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(inches: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Inches
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(inches: 39.37007874015748)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Inches
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(inches: -39.37007874015748)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Inches
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(inches: 9.84251968503937)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Inches
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(inches: 39370.078740157485)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Inches and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.inches(0.0)
			#expect(unit.inches.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Inches and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (39.37)")
		func testRoundTrip_1() async throws {
			let unit = Distance.inches(39.37007874015748)
			#expect(unit.inches.isApproximatelyEqual(to: 39.37007874015748))
		}

	/// Tests initializing the type from a value in Inches and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-39.37)")
		func testRoundTrip_2() async throws {
			let unit = Distance.inches(-39.37007874015748)
			#expect(unit.inches.isApproximatelyEqual(to: -39.37007874015748))
		}

	/// Tests initializing the type from a value in Inches and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.04)")
		func testRoundTrip_3() async throws {
			let unit = Distance.inches(0.03937007874015748)
			#expect(unit.inches.isApproximatelyEqual(to: 0.03937007874015748))
		}

	/// Tests initializing the type from a value in Inches and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (39370078.74)")
		func testRoundTrip_4() async throws {
			let unit = Distance.inches(39370078.740157485)
			#expect(unit.inches.isApproximatelyEqual(to: 39370078.740157485))
		}
	}
/// Kilometers unit tests.
///
	@Suite("Kilometers")
	struct kilometersTests {
	/// Tests initializing the type from a value in Kilometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.kilometers(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.kilometers(0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Kilometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.kilometers(-0.001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Kilometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.kilometers(0.0001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Kilometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.kilometers(0.05)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.kilometers = 0.0
			#expect(unit.kilometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.kilometers = 0.001
			#expect(unit.kilometers.isApproximatelyEqual(to: 0.001))
		}

	/// Tests setting the type from a value in Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.kilometers = -0.001
			#expect(unit.kilometers.isApproximatelyEqual(to: -0.001))
		}

	/// Tests setting the type from a value in Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.kilometers = 0.0001
			#expect(unit.kilometers.isApproximatelyEqual(to: 0.0001))
		}

	/// Tests setting the type from a value in Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.05)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.kilometers = 0.05
			#expect(unit.kilometers.isApproximatelyEqual(to: 0.05))
		}

	/// Tests initializing the type from a value in Kilometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(kilometers: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(kilometers: 0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Kilometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(kilometers: -0.001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Kilometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(kilometers: 0.00025)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Kilometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(kilometers: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Kilometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.kilometers(0.0)
			#expect(unit.kilometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.kilometers(0.001)
			#expect(unit.kilometers.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Kilometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.kilometers(-0.001)
			#expect(unit.kilometers.isApproximatelyEqual(to: -0.001))
		}

	/// Tests initializing the type from a value in Kilometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.kilometers(1e-06)
			#expect(unit.kilometers.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests initializing the type from a value in Kilometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_4() async throws {
			let unit = Distance.kilometers(1000.0)
			#expect(unit.kilometers.isApproximatelyEqual(to: 1000.0))
		}
	}
/// Lightyears unit tests.
///
	@Suite("Lightyears")
	struct lightyearsTests {
	/// Tests initializing the type from a value in Lightyears
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.lightyears(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Lightyears
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.lightyears(1.0570008340246154e-16)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Lightyears
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.lightyears(-1.0570008340246154e-16)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Lightyears
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.lightyears(1.0570008340246155e-17)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Lightyears
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.lightyears(5.285004170123077e-15)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Lightyears and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.lightyears = 0.0
			#expect(unit.lightyears.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Lightyears and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.lightyears = 1.0570008340246154e-16
			#expect(unit.lightyears.isApproximatelyEqual(to: 1.0570008340246154e-16))
		}

	/// Tests setting the type from a value in Lightyears and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.lightyears = -1.0570008340246154e-16
			#expect(unit.lightyears.isApproximatelyEqual(to: -1.0570008340246154e-16))
		}

	/// Tests setting the type from a value in Lightyears and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.lightyears = 1.0570008340246155e-17
			#expect(unit.lightyears.isApproximatelyEqual(to: 1.0570008340246155e-17))
		}

	/// Tests setting the type from a value in Lightyears and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.lightyears = 5.285004170123077e-15
			#expect(unit.lightyears.isApproximatelyEqual(to: 5.285004170123077e-15))
		}

	/// Tests initializing the type from a value in Lightyears
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(lightyears: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Lightyears
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(lightyears: 1.0570008340246154e-16)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Lightyears
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(lightyears: -1.0570008340246154e-16)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Lightyears
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(lightyears: 2.6425020850615385e-17)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Lightyears
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(lightyears: 1.0570008340246155e-13)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Lightyears and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.lightyears(0.0)
			#expect(unit.lightyears.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Lightyears and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.lightyears(1.0570008340246154e-16)
			#expect(unit.lightyears.isApproximatelyEqual(to: 1.0570008340246154e-16))
		}

	/// Tests initializing the type from a value in Lightyears and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.lightyears(-1.0570008340246154e-16)
			#expect(unit.lightyears.isApproximatelyEqual(to: -1.0570008340246154e-16))
		}

	/// Tests initializing the type from a value in Lightyears and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.lightyears(1.0570008340246155e-19)
			#expect(unit.lightyears.isApproximatelyEqual(to: 1.0570008340246155e-19))
		}

	/// Tests initializing the type from a value in Lightyears and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_4() async throws {
			let unit = Distance.lightyears(1.0570008340246154e-10)
			#expect(unit.lightyears.isApproximatelyEqual(to: 1.0570008340246154e-10))
		}
	}
/// Megameters unit tests.
///
	@Suite("Megameters")
	struct megametersTests {
	/// Tests initializing the type from a value in Megameters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.megameters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Megameters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.megameters(1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Megameters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.megameters(-1e-06)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Megameters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.megameters(1.0000000000000001e-07)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Megameters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.megameters(5e-05)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Megameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.megameters = 0.0
			#expect(unit.megameters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Megameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.megameters = 1e-06
			#expect(unit.megameters.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests setting the type from a value in Megameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.megameters = -1e-06
			#expect(unit.megameters.isApproximatelyEqual(to: -1e-06))
		}

	/// Tests setting the type from a value in Megameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.megameters = 1.0000000000000001e-07
			#expect(unit.megameters.isApproximatelyEqual(to: 1.0000000000000001e-07))
		}

	/// Tests setting the type from a value in Megameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.megameters = 5e-05
			#expect(unit.megameters.isApproximatelyEqual(to: 5e-05))
		}

	/// Tests initializing the type from a value in Megameters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(megameters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Megameters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(megameters: 1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Megameters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(megameters: -1e-06)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Megameters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(megameters: 2.5e-07)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Megameters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(megameters: 0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Megameters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.megameters(0.0)
			#expect(unit.megameters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Megameters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.megameters(1e-06)
			#expect(unit.megameters.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests initializing the type from a value in Megameters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.megameters(-1e-06)
			#expect(unit.megameters.isApproximatelyEqual(to: -1e-06))
		}

	/// Tests initializing the type from a value in Megameters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.megameters(1e-09)
			#expect(unit.megameters.isApproximatelyEqual(to: 1e-09))
		}

	/// Tests initializing the type from a value in Megameters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_4() async throws {
			let unit = Distance.megameters(1.0)
			#expect(unit.megameters.isApproximatelyEqual(to: 1.0))
		}
	}
/// Meters unit tests.
///
	@Suite("Meters")
	struct metersTests {
	/// Tests initializing the type from a value in Meters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.meters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Meters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.meters(1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Meters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.meters(-1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Meters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.meters(0.1)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Meters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.meters(50.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.meters = 0.0
			#expect(unit.meters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.meters = 1.0
			#expect(unit.meters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests setting the type from a value in Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.meters = -1.0
			#expect(unit.meters.isApproximatelyEqual(to: -1.0))
		}

	/// Tests setting the type from a value in Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.10)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.meters = 0.1
			#expect(unit.meters.isApproximatelyEqual(to: 0.1))
		}

	/// Tests setting the type from a value in Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50.00)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.meters = 50.0
			#expect(unit.meters.isApproximatelyEqual(to: 50.0))
		}

	/// Tests initializing the type from a value in Meters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(meters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Meters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(meters: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Meters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(meters: -1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Meters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(meters: 0.25)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Meters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(meters: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Meters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.meters(0.0)
			#expect(unit.meters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Meters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.meters(1.0)
			#expect(unit.meters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Meters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.meters(-1.0)
			#expect(unit.meters.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Meters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.meters(0.001)
			#expect(unit.meters.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Meters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Distance.meters(1000000.0)
			#expect(unit.meters.isApproximatelyEqual(to: 1000000.0))
		}
	}
/// Micrometers unit tests.
///
	@Suite("Micrometers")
	struct micrometersTests {
	/// Tests initializing the type from a value in Micrometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.micrometers(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Micrometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.micrometers(1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Micrometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.micrometers(-1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Micrometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.micrometers(100000.00000000001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Micrometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.micrometers(50000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Micrometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.micrometers = 0.0
			#expect(unit.micrometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Micrometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.micrometers = 1000000.0
			#expect(unit.micrometers.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests setting the type from a value in Micrometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.micrometers = -1000000.0
			#expect(unit.micrometers.isApproximatelyEqual(to: -1000000.0))
		}

	/// Tests setting the type from a value in Micrometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.micrometers = 100000.00000000001
			#expect(unit.micrometers.isApproximatelyEqual(to: 100000.00000000001))
		}

	/// Tests setting the type from a value in Micrometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.micrometers = 50000000.0
			#expect(unit.micrometers.isApproximatelyEqual(to: 50000000.0))
		}

	/// Tests initializing the type from a value in Micrometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(micrometers: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Micrometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(micrometers: 1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Micrometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(micrometers: -1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Micrometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(micrometers: 250000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Micrometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(micrometers: 1000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Micrometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.micrometers(0.0)
			#expect(unit.micrometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Micrometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.micrometers(1000000.0)
			#expect(unit.micrometers.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests initializing the type from a value in Micrometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.micrometers(-1000000.0)
			#expect(unit.micrometers.isApproximatelyEqual(to: -1000000.0))
		}

	/// Tests initializing the type from a value in Micrometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.micrometers(1000.0000000000001)
			#expect(unit.micrometers.isApproximatelyEqual(to: 1000.0000000000001))
		}

	/// Tests initializing the type from a value in Micrometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Distance.micrometers(1000000000000.0)
			#expect(unit.micrometers.isApproximatelyEqual(to: 1000000000000.0))
		}
	}
/// Miles unit tests.
///
	@Suite("Miles")
	struct milesTests {
	/// Tests initializing the type from a value in Miles
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.miles(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Miles
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.miles(0.0006213711922373339)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Miles
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.miles(-0.0006213711922373339)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Miles
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.miles(6.21371192237334e-05)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Miles
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.miles(0.0310685596118667)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.miles = 0.0
			#expect(unit.miles.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.miles = 0.0006213711922373339
			#expect(unit.miles.isApproximatelyEqual(to: 0.0006213711922373339))
		}

	/// Tests setting the type from a value in Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.miles = -0.0006213711922373339
			#expect(unit.miles.isApproximatelyEqual(to: -0.0006213711922373339))
		}

	/// Tests setting the type from a value in Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.miles = 6.21371192237334e-05
			#expect(unit.miles.isApproximatelyEqual(to: 6.21371192237334e-05))
		}

	/// Tests setting the type from a value in Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.03)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.miles = 0.0310685596118667
			#expect(unit.miles.isApproximatelyEqual(to: 0.0310685596118667))
		}

	/// Tests initializing the type from a value in Miles
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(miles: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Miles
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(miles: 0.0006213711922373339)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Miles
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(miles: -0.0006213711922373339)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Miles
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(miles: 0.00015534279805933348)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Miles
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(miles: 0.621371192237334)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.miles(0.0)
			#expect(unit.miles.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.miles(0.0006213711922373339)
			#expect(unit.miles.isApproximatelyEqual(to: 0.0006213711922373339))
		}

	/// Tests initializing the type from a value in Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.miles(-0.0006213711922373339)
			#expect(unit.miles.isApproximatelyEqual(to: -0.0006213711922373339))
		}

	/// Tests initializing the type from a value in Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.miles(6.21371192237334e-07)
			#expect(unit.miles.isApproximatelyEqual(to: 6.21371192237334e-07))
		}

	/// Tests initializing the type from a value in Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (621.37)")
		func testRoundTrip_4() async throws {
			let unit = Distance.miles(621.371192237334)
			#expect(unit.miles.isApproximatelyEqual(to: 621.371192237334))
		}
	}
/// Millimeters unit tests.
///
	@Suite("Millimeters")
	struct millimetersTests {
	/// Tests initializing the type from a value in Millimeters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.millimeters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Millimeters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.millimeters(1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Millimeters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.millimeters(-1000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Millimeters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.millimeters(100.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Millimeters
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.millimeters(50000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.millimeters = 0.0
			#expect(unit.millimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.millimeters = 1000.0
			#expect(unit.millimeters.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests setting the type from a value in Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.millimeters = -1000.0
			#expect(unit.millimeters.isApproximatelyEqual(to: -1000.0))
		}

	/// Tests setting the type from a value in Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.millimeters = 100.0
			#expect(unit.millimeters.isApproximatelyEqual(to: 100.0))
		}

	/// Tests setting the type from a value in Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000.00)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.millimeters = 50000.0
			#expect(unit.millimeters.isApproximatelyEqual(to: 50000.0))
		}

	/// Tests initializing the type from a value in Millimeters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(millimeters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Millimeters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(millimeters: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Millimeters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(millimeters: -1000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Millimeters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(millimeters: 250.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Millimeters
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(millimeters: 1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Millimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.millimeters(0.0)
			#expect(unit.millimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Millimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.millimeters(1000.0)
			#expect(unit.millimeters.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Millimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.millimeters(-1000.0)
			#expect(unit.millimeters.isApproximatelyEqual(to: -1000.0))
		}

	/// Tests initializing the type from a value in Millimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.millimeters(1.0)
			#expect(unit.millimeters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Millimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Distance.millimeters(1000000000.0)
			#expect(unit.millimeters.isApproximatelyEqual(to: 1000000000.0))
		}
	}
/// Nanometers unit tests.
///
	@Suite("Nanometers")
	struct nanometersTests {
	/// Tests initializing the type from a value in Nanometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.nanometers(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nanometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.nanometers(999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Nanometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.nanometers(-999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Nanometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.nanometers(100000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Nanometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.nanometers(50000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Nanometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.nanometers = 0.0
			#expect(unit.nanometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Nanometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.nanometers = 999999999.9999999
			#expect(unit.nanometers.isApproximatelyEqual(to: 999999999.9999999))
		}

	/// Tests setting the type from a value in Nanometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.nanometers = -999999999.9999999
			#expect(unit.nanometers.isApproximatelyEqual(to: -999999999.9999999))
		}

	/// Tests setting the type from a value in Nanometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000000.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.nanometers = 100000000.0
			#expect(unit.nanometers.isApproximatelyEqual(to: 100000000.0))
		}

	/// Tests setting the type from a value in Nanometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.nanometers = 50000000000.0
			#expect(unit.nanometers.isApproximatelyEqual(to: 50000000000.0))
		}

	/// Tests initializing the type from a value in Nanometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(nanometers: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nanometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(nanometers: 999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Nanometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(nanometers: -999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Nanometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(nanometers: 249999999.99999997)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Nanometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(nanometers: 999999999999.9999)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Nanometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.nanometers(0.0)
			#expect(unit.nanometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nanometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.nanometers(999999999.9999999)
			#expect(unit.nanometers.isApproximatelyEqual(to: 999999999.9999999))
		}

	/// Tests initializing the type from a value in Nanometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.nanometers(-999999999.9999999)
			#expect(unit.nanometers.isApproximatelyEqual(to: -999999999.9999999))
		}

	/// Tests initializing the type from a value in Nanometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.nanometers(1000000.0)
			#expect(unit.nanometers.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests initializing the type from a value in Nanometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Distance.nanometers(1000000000000000.0)
			#expect(unit.nanometers.isApproximatelyEqual(to: 1000000000000000.0))
		}
	}
/// Nautical Miles unit tests.
///
	@Suite("Nautical Miles")
	struct nauticalMilesTests {
	/// Tests initializing the type from a value in Nautical Miles
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.nauticalMiles(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nautical Miles
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.nauticalMiles(0.0005399568034557236)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Nautical Miles
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.nauticalMiles(-0.0005399568034557236)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Nautical Miles
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.nauticalMiles(5.399568034557236e-05)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Nautical Miles
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.nauticalMiles(0.026997840172786176)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Nautical Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.nauticalMiles = 0.0
			#expect(unit.nauticalMiles.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Nautical Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.nauticalMiles = 0.0005399568034557236
			#expect(unit.nauticalMiles.isApproximatelyEqual(to: 0.0005399568034557236))
		}

	/// Tests setting the type from a value in Nautical Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.nauticalMiles = -0.0005399568034557236
			#expect(unit.nauticalMiles.isApproximatelyEqual(to: -0.0005399568034557236))
		}

	/// Tests setting the type from a value in Nautical Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.nauticalMiles = 5.399568034557236e-05
			#expect(unit.nauticalMiles.isApproximatelyEqual(to: 5.399568034557236e-05))
		}

	/// Tests setting the type from a value in Nautical Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.03)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.nauticalMiles = 0.026997840172786176
			#expect(unit.nauticalMiles.isApproximatelyEqual(to: 0.026997840172786176))
		}

	/// Tests initializing the type from a value in Nautical Miles
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(nauticalMiles: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nautical Miles
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(nauticalMiles: 0.0005399568034557236)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Nautical Miles
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(nauticalMiles: -0.0005399568034557236)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Nautical Miles
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(nauticalMiles: 0.0001349892008639309)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Nautical Miles
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(nauticalMiles: 0.5399568034557235)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Nautical Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.nauticalMiles(0.0)
			#expect(unit.nauticalMiles.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nautical Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.nauticalMiles(0.0005399568034557236)
			#expect(unit.nauticalMiles.isApproximatelyEqual(to: 0.0005399568034557236))
		}

	/// Tests initializing the type from a value in Nautical Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.nauticalMiles(-0.0005399568034557236)
			#expect(unit.nauticalMiles.isApproximatelyEqual(to: -0.0005399568034557236))
		}

	/// Tests initializing the type from a value in Nautical Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.nauticalMiles(5.399568034557235e-07)
			#expect(unit.nauticalMiles.isApproximatelyEqual(to: 5.399568034557235e-07))
		}

	/// Tests initializing the type from a value in Nautical Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (539.96)")
		func testRoundTrip_4() async throws {
			let unit = Distance.nauticalMiles(539.9568034557235)
			#expect(unit.nauticalMiles.isApproximatelyEqual(to: 539.9568034557235))
		}
	}
/// Parsecs unit tests.
///
	@Suite("Parsecs")
	struct parsecsTests {
	/// Tests initializing the type from a value in Parsecs
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.parsecs(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Parsecs
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.parsecs(3.240779289444365e-17)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Parsecs
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.parsecs(-3.240779289444365e-17)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Parsecs
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.parsecs(3.240779289444365e-18)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Parsecs
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.parsecs(1.6203896447221825e-15)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Parsecs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.parsecs = 0.0
			#expect(unit.parsecs.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Parsecs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.parsecs = 3.240779289444365e-17
			#expect(unit.parsecs.isApproximatelyEqual(to: 3.240779289444365e-17))
		}

	/// Tests setting the type from a value in Parsecs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.parsecs = -3.240779289444365e-17
			#expect(unit.parsecs.isApproximatelyEqual(to: -3.240779289444365e-17))
		}

	/// Tests setting the type from a value in Parsecs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.parsecs = 3.240779289444365e-18
			#expect(unit.parsecs.isApproximatelyEqual(to: 3.240779289444365e-18))
		}

	/// Tests setting the type from a value in Parsecs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.parsecs = 1.6203896447221825e-15
			#expect(unit.parsecs.isApproximatelyEqual(to: 1.6203896447221825e-15))
		}

	/// Tests initializing the type from a value in Parsecs
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(parsecs: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Parsecs
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(parsecs: 3.240779289444365e-17)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Parsecs
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(parsecs: -3.240779289444365e-17)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Parsecs
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(parsecs: 8.101948223610912e-18)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Parsecs
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(parsecs: 3.240779289444365e-14)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Parsecs and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.parsecs(0.0)
			#expect(unit.parsecs.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Parsecs and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.parsecs(3.240779289444365e-17)
			#expect(unit.parsecs.isApproximatelyEqual(to: 3.240779289444365e-17))
		}

	/// Tests initializing the type from a value in Parsecs and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.parsecs(-3.240779289444365e-17)
			#expect(unit.parsecs.isApproximatelyEqual(to: -3.240779289444365e-17))
		}

	/// Tests initializing the type from a value in Parsecs and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.parsecs(3.2407792894443654e-20)
			#expect(unit.parsecs.isApproximatelyEqual(to: 3.2407792894443654e-20))
		}

	/// Tests initializing the type from a value in Parsecs and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_4() async throws {
			let unit = Distance.parsecs(3.240779289444365e-11)
			#expect(unit.parsecs.isApproximatelyEqual(to: 3.240779289444365e-11))
		}
	}
/// Picometers unit tests.
///
	@Suite("Picometers")
	struct picometersTests {
	/// Tests initializing the type from a value in Picometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.picometers(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Picometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.picometers(1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Picometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.picometers(-1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Picometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.picometers(100000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Picometers
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.picometers(50000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Picometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.picometers = 0.0
			#expect(unit.picometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Picometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.picometers = 1000000000000.0
			#expect(unit.picometers.isApproximatelyEqual(to: 1000000000000.0))
		}

	/// Tests setting the type from a value in Picometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.picometers = -1000000000000.0
			#expect(unit.picometers.isApproximatelyEqual(to: -1000000000000.0))
		}

	/// Tests setting the type from a value in Picometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000000000.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.picometers = 100000000000.0
			#expect(unit.picometers.isApproximatelyEqual(to: 100000000000.0))
		}

	/// Tests setting the type from a value in Picometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.picometers = 50000000000000.0
			#expect(unit.picometers.isApproximatelyEqual(to: 50000000000000.0))
		}

	/// Tests initializing the type from a value in Picometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(picometers: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Picometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(picometers: 1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Picometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(picometers: -1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Picometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(picometers: 250000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Picometers
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(picometers: 1000000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Picometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.picometers(0.0)
			#expect(unit.picometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Picometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.picometers(1000000000000.0)
			#expect(unit.picometers.isApproximatelyEqual(to: 1000000000000.0))
		}

	/// Tests initializing the type from a value in Picometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.picometers(-1000000000000.0)
			#expect(unit.picometers.isApproximatelyEqual(to: -1000000000000.0))
		}

	/// Tests initializing the type from a value in Picometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.picometers(1000000000.0)
			#expect(unit.picometers.isApproximatelyEqual(to: 1000000000.0))
		}

	/// Tests initializing the type from a value in Picometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Distance.picometers(1e+18)
			#expect(unit.picometers.isApproximatelyEqual(to: 1e+18))
		}
	}
/// Scandinavian Miles unit tests.
///
	@Suite("Scandinavian Miles")
	struct scandinavianMilesTests {
	/// Tests initializing the type from a value in Scandinavian Miles
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.scandinavianMiles(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Scandinavian Miles
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.scandinavianMiles(0.0001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Scandinavian Miles
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.scandinavianMiles(-0.0001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Scandinavian Miles
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.scandinavianMiles(1e-05)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Scandinavian Miles
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.scandinavianMiles(0.005)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Scandinavian Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.scandinavianMiles = 0.0
			#expect(unit.scandinavianMiles.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Scandinavian Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.scandinavianMiles = 0.0001
			#expect(unit.scandinavianMiles.isApproximatelyEqual(to: 0.0001))
		}

	/// Tests setting the type from a value in Scandinavian Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.scandinavianMiles = -0.0001
			#expect(unit.scandinavianMiles.isApproximatelyEqual(to: -0.0001))
		}

	/// Tests setting the type from a value in Scandinavian Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.scandinavianMiles = 1e-05
			#expect(unit.scandinavianMiles.isApproximatelyEqual(to: 1e-05))
		}

	/// Tests setting the type from a value in Scandinavian Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.01)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.scandinavianMiles = 0.005
			#expect(unit.scandinavianMiles.isApproximatelyEqual(to: 0.005))
		}

	/// Tests initializing the type from a value in Scandinavian Miles
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(scandinavianMiles: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Scandinavian Miles
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(scandinavianMiles: 0.0001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Scandinavian Miles
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(scandinavianMiles: -0.0001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Scandinavian Miles
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(scandinavianMiles: 2.5e-05)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Scandinavian Miles
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(scandinavianMiles: 0.1)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Scandinavian Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.scandinavianMiles(0.0)
			#expect(unit.scandinavianMiles.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Scandinavian Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Distance.scandinavianMiles(0.0001)
			#expect(unit.scandinavianMiles.isApproximatelyEqual(to: 0.0001))
		}

	/// Tests initializing the type from a value in Scandinavian Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Distance.scandinavianMiles(-0.0001)
			#expect(unit.scandinavianMiles.isApproximatelyEqual(to: -0.0001))
		}

	/// Tests initializing the type from a value in Scandinavian Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.scandinavianMiles(1e-07)
			#expect(unit.scandinavianMiles.isApproximatelyEqual(to: 1e-07))
		}

	/// Tests initializing the type from a value in Scandinavian Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (100.00)")
		func testRoundTrip_4() async throws {
			let unit = Distance.scandinavianMiles(100.0)
			#expect(unit.scandinavianMiles.isApproximatelyEqual(to: 100.0))
		}
	}
/// Yards unit tests.
///
	@Suite("Yards")
	struct yardsTests {
	/// Tests initializing the type from a value in Yards
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Distance.yards(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Yards
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Distance.yards(1.0936132983377078)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Yards
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Distance.yards(-1.0936132983377078)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Yards
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Distance.yards(0.10936132983377078)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Yards
	/// and checking the stored value in Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Distance.yards(54.68066491688539)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Distance<Double>.zero
			unit.yards = 0.0
			#expect(unit.yards.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.09)")
		func testGetAndSet_1() async throws {
			var unit = Distance<Double>.zero
			unit.yards = 1.0936132983377078
			#expect(unit.yards.isApproximatelyEqual(to: 1.0936132983377078))
		}

	/// Tests setting the type from a value in Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.09)")
		func testGetAndSet_2() async throws {
			var unit = Distance<Double>.zero
			unit.yards = -1.0936132983377078
			#expect(unit.yards.isApproximatelyEqual(to: -1.0936132983377078))
		}

	/// Tests setting the type from a value in Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.11)")
		func testGetAndSet_3() async throws {
			var unit = Distance<Double>.zero
			unit.yards = 0.10936132983377078
			#expect(unit.yards.isApproximatelyEqual(to: 0.10936132983377078))
		}

	/// Tests setting the type from a value in Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (54.68)")
		func testGetAndSet_4() async throws {
			var unit = Distance<Double>.zero
			unit.yards = 54.68066491688539
			#expect(unit.yards.isApproximatelyEqual(to: 54.68066491688539))
		}

	/// Tests initializing the type from a value in Yards
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Distance(yards: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Yards
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Distance(yards: 1.0936132983377078)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Yards
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Distance(yards: -1.0936132983377078)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Yards
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Distance(yards: 0.27340332458442695)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Yards
	/// and checking the stored value in Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Distance(yards: 1093.6132983377079)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Yards and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Distance.yards(0.0)
			#expect(unit.yards.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Yards and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.09)")
		func testRoundTrip_1() async throws {
			let unit = Distance.yards(1.0936132983377078)
			#expect(unit.yards.isApproximatelyEqual(to: 1.0936132983377078))
		}

	/// Tests initializing the type from a value in Yards and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.09)")
		func testRoundTrip_2() async throws {
			let unit = Distance.yards(-1.0936132983377078)
			#expect(unit.yards.isApproximatelyEqual(to: -1.0936132983377078))
		}

	/// Tests initializing the type from a value in Yards and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Distance.yards(0.0010936132983377078)
			#expect(unit.yards.isApproximatelyEqual(to: 0.0010936132983377078))
		}

	/// Tests initializing the type from a value in Yards and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1093613.30)")
		func testRoundTrip_4() async throws {
			let unit = Distance.yards(1093613.2983377078)
			#expect(unit.yards.isApproximatelyEqual(to: 1093613.2983377078))
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
			for unit in Distance<Double>.MeasurementUnit.allCases {
				#expect(!unit.symbol(for: 1.0).isEmpty)
				#expect(!unit.symbol(for: 2.0).isEmpty)
			}
		}
	}
}
