//
//  Area.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Area")
struct AreaTests {
/// Acres unit tests.
///
	@Suite("Acres")
	struct acresTests {
	/// Tests initializing the type from a value in Acres
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Area.acres(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Acres
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Area.acres(0.0002471053814671653)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Acres
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Area.acres(-0.0002471053814671653)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Acres
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Area.acres(2.4710538146716536e-05)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Acres
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Area.acres(0.012355269073358266)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Acres and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Area<Double>.zero
			unit.acres = 0.0
			#expect(unit.acres.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Acres and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Area<Double>.zero
			unit.acres = 0.0002471053814671653
			#expect(unit.acres.isApproximatelyEqual(to: 0.0002471053814671653))
		}

	/// Tests setting the type from a value in Acres and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Area<Double>.zero
			unit.acres = -0.0002471053814671653
			#expect(unit.acres.isApproximatelyEqual(to: -0.0002471053814671653))
		}

	/// Tests setting the type from a value in Acres and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Area<Double>.zero
			unit.acres = 2.4710538146716536e-05
			#expect(unit.acres.isApproximatelyEqual(to: 2.4710538146716536e-05))
		}

	/// Tests setting the type from a value in Acres and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.01)")
		func testGetAndSet_4() async throws {
			var unit = Area<Double>.zero
			unit.acres = 0.012355269073358266
			#expect(unit.acres.isApproximatelyEqual(to: 0.012355269073358266))
		}

	/// Tests initializing the type from a value in Acres
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Area(acres: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Acres
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Area(acres: 0.0002471053814671653)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Acres
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Area(acres: -0.0002471053814671653)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Acres
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Area(acres: 6.177634536679133e-05)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Acres
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Area(acres: 0.24710538146716532)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Acres and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Area.acres(0.0)
			#expect(unit.acres.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Acres and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Area.acres(0.0002471053814671653)
			#expect(unit.acres.isApproximatelyEqual(to: 0.0002471053814671653))
		}

	/// Tests initializing the type from a value in Acres and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Area.acres(-0.0002471053814671653)
			#expect(unit.acres.isApproximatelyEqual(to: -0.0002471053814671653))
		}

	/// Tests initializing the type from a value in Acres and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Area.acres(2.471053814671653e-07)
			#expect(unit.acres.isApproximatelyEqual(to: 2.471053814671653e-07))
		}

	/// Tests initializing the type from a value in Acres and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (247.11)")
		func testRoundTrip_4() async throws {
			let unit = Area.acres(247.10538146716533)
			#expect(unit.acres.isApproximatelyEqual(to: 247.10538146716533))
		}
	}
/// Hectares unit tests.
///
	@Suite("Hectares")
	struct hectaresTests {
	/// Tests initializing the type from a value in Hectares
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Area.hectares(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Hectares
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Area.hectares(0.0001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Hectares
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Area.hectares(-0.0001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Hectares
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Area.hectares(1e-05)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Hectares
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Area.hectares(0.005)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Hectares and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Area<Double>.zero
			unit.hectares = 0.0
			#expect(unit.hectares.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Hectares and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Area<Double>.zero
			unit.hectares = 0.0001
			#expect(unit.hectares.isApproximatelyEqual(to: 0.0001))
		}

	/// Tests setting the type from a value in Hectares and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Area<Double>.zero
			unit.hectares = -0.0001
			#expect(unit.hectares.isApproximatelyEqual(to: -0.0001))
		}

	/// Tests setting the type from a value in Hectares and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Area<Double>.zero
			unit.hectares = 1e-05
			#expect(unit.hectares.isApproximatelyEqual(to: 1e-05))
		}

	/// Tests setting the type from a value in Hectares and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.01)")
		func testGetAndSet_4() async throws {
			var unit = Area<Double>.zero
			unit.hectares = 0.005
			#expect(unit.hectares.isApproximatelyEqual(to: 0.005))
		}

	/// Tests initializing the type from a value in Hectares
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Area(hectares: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Hectares
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Area(hectares: 0.0001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Hectares
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Area(hectares: -0.0001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Hectares
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Area(hectares: 2.5e-05)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Hectares
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Area(hectares: 0.1)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Hectares and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Area.hectares(0.0)
			#expect(unit.hectares.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Hectares and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Area.hectares(0.0001)
			#expect(unit.hectares.isApproximatelyEqual(to: 0.0001))
		}

	/// Tests initializing the type from a value in Hectares and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Area.hectares(-0.0001)
			#expect(unit.hectares.isApproximatelyEqual(to: -0.0001))
		}

	/// Tests initializing the type from a value in Hectares and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Area.hectares(1e-07)
			#expect(unit.hectares.isApproximatelyEqual(to: 1e-07))
		}

	/// Tests initializing the type from a value in Hectares and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (100.00)")
		func testRoundTrip_4() async throws {
			let unit = Area.hectares(100.0)
			#expect(unit.hectares.isApproximatelyEqual(to: 100.0))
		}
	}
/// Square Centimeters unit tests.
///
	@Suite("Square Centimeters")
	struct squareCentimetersTests {
	/// Tests initializing the type from a value in Square Centimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Area.squareCentimeters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Centimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Area.squareCentimeters(10000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Centimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Area.squareCentimeters(-10000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Centimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Area.squareCentimeters(1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Square Centimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Area.squareCentimeters(500000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Square Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Area<Double>.zero
			unit.squareCentimeters = 0.0
			#expect(unit.squareCentimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Square Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (10000.00)")
		func testGetAndSet_1() async throws {
			var unit = Area<Double>.zero
			unit.squareCentimeters = 10000.0
			#expect(unit.squareCentimeters.isApproximatelyEqual(to: 10000.0))
		}

	/// Tests setting the type from a value in Square Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-10000.00)")
		func testGetAndSet_2() async throws {
			var unit = Area<Double>.zero
			unit.squareCentimeters = -10000.0
			#expect(unit.squareCentimeters.isApproximatelyEqual(to: -10000.0))
		}

	/// Tests setting the type from a value in Square Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000.00)")
		func testGetAndSet_3() async throws {
			var unit = Area<Double>.zero
			unit.squareCentimeters = 1000.0
			#expect(unit.squareCentimeters.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests setting the type from a value in Square Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (500000.00)")
		func testGetAndSet_4() async throws {
			var unit = Area<Double>.zero
			unit.squareCentimeters = 500000.0
			#expect(unit.squareCentimeters.isApproximatelyEqual(to: 500000.0))
		}

	/// Tests initializing the type from a value in Square Centimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Area(squareCentimeters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Centimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Area(squareCentimeters: 10000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Centimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Area(squareCentimeters: -10000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Centimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Area(squareCentimeters: 2500.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Square Centimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Area(squareCentimeters: 10000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Square Centimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Area.squareCentimeters(0.0)
			#expect(unit.squareCentimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Centimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10000.00)")
		func testRoundTrip_1() async throws {
			let unit = Area.squareCentimeters(10000.0)
			#expect(unit.squareCentimeters.isApproximatelyEqual(to: 10000.0))
		}

	/// Tests initializing the type from a value in Square Centimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-10000.00)")
		func testRoundTrip_2() async throws {
			let unit = Area.squareCentimeters(-10000.0)
			#expect(unit.squareCentimeters.isApproximatelyEqual(to: -10000.0))
		}

	/// Tests initializing the type from a value in Square Centimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10.00)")
		func testRoundTrip_3() async throws {
			let unit = Area.squareCentimeters(10.0)
			#expect(unit.squareCentimeters.isApproximatelyEqual(to: 10.0))
		}

	/// Tests initializing the type from a value in Square Centimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Area.squareCentimeters(10000000000.0)
			#expect(unit.squareCentimeters.isApproximatelyEqual(to: 10000000000.0))
		}
	}
/// Square Feet unit tests.
///
	@Suite("Square Feet")
	struct squareFeetTests {
	/// Tests initializing the type from a value in Square Feet
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Area.squareFeet(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Feet
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Area.squareFeet(10.763910416709722)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Feet
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Area.squareFeet(-10.763910416709722)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Feet
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Area.squareFeet(1.0763910416709723)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Square Feet
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Area.squareFeet(538.195520835486)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Square Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Area<Double>.zero
			unit.squareFeet = 0.0
			#expect(unit.squareFeet.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Square Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (10.76)")
		func testGetAndSet_1() async throws {
			var unit = Area<Double>.zero
			unit.squareFeet = 10.763910416709722
			#expect(unit.squareFeet.isApproximatelyEqual(to: 10.763910416709722))
		}

	/// Tests setting the type from a value in Square Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-10.76)")
		func testGetAndSet_2() async throws {
			var unit = Area<Double>.zero
			unit.squareFeet = -10.763910416709722
			#expect(unit.squareFeet.isApproximatelyEqual(to: -10.763910416709722))
		}

	/// Tests setting the type from a value in Square Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.08)")
		func testGetAndSet_3() async throws {
			var unit = Area<Double>.zero
			unit.squareFeet = 1.0763910416709723
			#expect(unit.squareFeet.isApproximatelyEqual(to: 1.0763910416709723))
		}

	/// Tests setting the type from a value in Square Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (538.20)")
		func testGetAndSet_4() async throws {
			var unit = Area<Double>.zero
			unit.squareFeet = 538.195520835486
			#expect(unit.squareFeet.isApproximatelyEqual(to: 538.195520835486))
		}

	/// Tests initializing the type from a value in Square Feet
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Area(squareFeet: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Feet
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Area(squareFeet: 10.763910416709722)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Feet
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Area(squareFeet: -10.763910416709722)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Feet
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Area(squareFeet: 2.6909776041774305)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Square Feet
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Area(squareFeet: 10763.910416709721)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Square Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Area.squareFeet(0.0)
			#expect(unit.squareFeet.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10.76)")
		func testRoundTrip_1() async throws {
			let unit = Area.squareFeet(10.763910416709722)
			#expect(unit.squareFeet.isApproximatelyEqual(to: 10.763910416709722))
		}

	/// Tests initializing the type from a value in Square Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-10.76)")
		func testRoundTrip_2() async throws {
			let unit = Area.squareFeet(-10.763910416709722)
			#expect(unit.squareFeet.isApproximatelyEqual(to: -10.763910416709722))
		}

	/// Tests initializing the type from a value in Square Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.01)")
		func testRoundTrip_3() async throws {
			let unit = Area.squareFeet(0.010763910416709722)
			#expect(unit.squareFeet.isApproximatelyEqual(to: 0.010763910416709722))
		}

	/// Tests initializing the type from a value in Square Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10763910.42)")
		func testRoundTrip_4() async throws {
			let unit = Area.squareFeet(10763910.416709721)
			#expect(unit.squareFeet.isApproximatelyEqual(to: 10763910.416709721))
		}
	}
/// Square Inches unit tests.
///
	@Suite("Square Inches")
	struct squareInchesTests {
	/// Tests initializing the type from a value in Square Inches
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Area.squareInches(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Inches
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Area.squareInches(1550.0031000062002)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Inches
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Area.squareInches(-1550.0031000062002)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Inches
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Area.squareInches(155.00031000062)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Square Inches
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Area.squareInches(77500.15500031)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Square Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Area<Double>.zero
			unit.squareInches = 0.0
			#expect(unit.squareInches.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Square Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1550.00)")
		func testGetAndSet_1() async throws {
			var unit = Area<Double>.zero
			unit.squareInches = 1550.0031000062002
			#expect(unit.squareInches.isApproximatelyEqual(to: 1550.0031000062002))
		}

	/// Tests setting the type from a value in Square Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1550.00)")
		func testGetAndSet_2() async throws {
			var unit = Area<Double>.zero
			unit.squareInches = -1550.0031000062002
			#expect(unit.squareInches.isApproximatelyEqual(to: -1550.0031000062002))
		}

	/// Tests setting the type from a value in Square Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (155.00)")
		func testGetAndSet_3() async throws {
			var unit = Area<Double>.zero
			unit.squareInches = 155.00031000062
			#expect(unit.squareInches.isApproximatelyEqual(to: 155.00031000062))
		}

	/// Tests setting the type from a value in Square Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (77500.16)")
		func testGetAndSet_4() async throws {
			var unit = Area<Double>.zero
			unit.squareInches = 77500.15500031
			#expect(unit.squareInches.isApproximatelyEqual(to: 77500.15500031))
		}

	/// Tests initializing the type from a value in Square Inches
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Area(squareInches: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Inches
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Area(squareInches: 1550.0031000062002)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Inches
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Area(squareInches: -1550.0031000062002)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Inches
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Area(squareInches: 387.50077500155004)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Square Inches
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Area(squareInches: 1550003.1000062001)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Square Inches and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Area.squareInches(0.0)
			#expect(unit.squareInches.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Inches and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1550.00)")
		func testRoundTrip_1() async throws {
			let unit = Area.squareInches(1550.0031000062002)
			#expect(unit.squareInches.isApproximatelyEqual(to: 1550.0031000062002))
		}

	/// Tests initializing the type from a value in Square Inches and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1550.00)")
		func testRoundTrip_2() async throws {
			let unit = Area.squareInches(-1550.0031000062002)
			#expect(unit.squareInches.isApproximatelyEqual(to: -1550.0031000062002))
		}

	/// Tests initializing the type from a value in Square Inches and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.55)")
		func testRoundTrip_3() async throws {
			let unit = Area.squareInches(1.5500031000062)
			#expect(unit.squareInches.isApproximatelyEqual(to: 1.5500031000062))
		}

	/// Tests initializing the type from a value in Square Inches and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1550003100.01)")
		func testRoundTrip_4() async throws {
			let unit = Area.squareInches(1550003100.0062)
			#expect(unit.squareInches.isApproximatelyEqual(to: 1550003100.0062))
		}
	}
/// Square Kilometers unit tests.
///
	@Suite("Square Kilometers")
	struct squareKilometersTests {
	/// Tests initializing the type from a value in Square Kilometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Area.squareKilometers(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Kilometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Area.squareKilometers(1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Kilometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Area.squareKilometers(-1e-06)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Kilometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Area.squareKilometers(1.0000000000000001e-07)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Square Kilometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Area.squareKilometers(5e-05)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Square Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Area<Double>.zero
			unit.squareKilometers = 0.0
			#expect(unit.squareKilometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Square Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Area<Double>.zero
			unit.squareKilometers = 1e-06
			#expect(unit.squareKilometers.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests setting the type from a value in Square Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Area<Double>.zero
			unit.squareKilometers = -1e-06
			#expect(unit.squareKilometers.isApproximatelyEqual(to: -1e-06))
		}

	/// Tests setting the type from a value in Square Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Area<Double>.zero
			unit.squareKilometers = 1.0000000000000001e-07
			#expect(unit.squareKilometers.isApproximatelyEqual(to: 1.0000000000000001e-07))
		}

	/// Tests setting the type from a value in Square Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Area<Double>.zero
			unit.squareKilometers = 5e-05
			#expect(unit.squareKilometers.isApproximatelyEqual(to: 5e-05))
		}

	/// Tests initializing the type from a value in Square Kilometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Area(squareKilometers: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Kilometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Area(squareKilometers: 1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Kilometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Area(squareKilometers: -1e-06)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Kilometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Area(squareKilometers: 2.5e-07)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Square Kilometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Area(squareKilometers: 0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Square Kilometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Area.squareKilometers(0.0)
			#expect(unit.squareKilometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Kilometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Area.squareKilometers(1e-06)
			#expect(unit.squareKilometers.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests initializing the type from a value in Square Kilometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Area.squareKilometers(-1e-06)
			#expect(unit.squareKilometers.isApproximatelyEqual(to: -1e-06))
		}

	/// Tests initializing the type from a value in Square Kilometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Area.squareKilometers(1e-09)
			#expect(unit.squareKilometers.isApproximatelyEqual(to: 1e-09))
		}

	/// Tests initializing the type from a value in Square Kilometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_4() async throws {
			let unit = Area.squareKilometers(1.0)
			#expect(unit.squareKilometers.isApproximatelyEqual(to: 1.0))
		}
	}
/// Square Megameters unit tests.
///
	@Suite("Square Megameters")
	struct squareMegametersTests {
	/// Tests initializing the type from a value in Square Megameters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Area.squareMegameters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Megameters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Area.squareMegameters(1e-12)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Megameters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Area.squareMegameters(-1e-12)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Megameters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Area.squareMegameters(1e-13)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Square Megameters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Area.squareMegameters(5e-11)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Square Megameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Area<Double>.zero
			unit.squareMegameters = 0.0
			#expect(unit.squareMegameters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Square Megameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Area<Double>.zero
			unit.squareMegameters = 1e-12
			#expect(unit.squareMegameters.isApproximatelyEqual(to: 1e-12))
		}

	/// Tests setting the type from a value in Square Megameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Area<Double>.zero
			unit.squareMegameters = -1e-12
			#expect(unit.squareMegameters.isApproximatelyEqual(to: -1e-12))
		}

	/// Tests setting the type from a value in Square Megameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Area<Double>.zero
			unit.squareMegameters = 1e-13
			#expect(unit.squareMegameters.isApproximatelyEqual(to: 1e-13))
		}

	/// Tests setting the type from a value in Square Megameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Area<Double>.zero
			unit.squareMegameters = 5e-11
			#expect(unit.squareMegameters.isApproximatelyEqual(to: 5e-11))
		}

	/// Tests initializing the type from a value in Square Megameters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Area(squareMegameters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Megameters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Area(squareMegameters: 1e-12)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Megameters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Area(squareMegameters: -1e-12)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Megameters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Area(squareMegameters: 2.5e-13)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Square Megameters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Area(squareMegameters: 1e-09)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Square Megameters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Area.squareMegameters(0.0)
			#expect(unit.squareMegameters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Megameters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Area.squareMegameters(1e-12)
			#expect(unit.squareMegameters.isApproximatelyEqual(to: 1e-12))
		}

	/// Tests initializing the type from a value in Square Megameters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Area.squareMegameters(-1e-12)
			#expect(unit.squareMegameters.isApproximatelyEqual(to: -1e-12))
		}

	/// Tests initializing the type from a value in Square Megameters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Area.squareMegameters(1e-15)
			#expect(unit.squareMegameters.isApproximatelyEqual(to: 1e-15))
		}

	/// Tests initializing the type from a value in Square Megameters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_4() async throws {
			let unit = Area.squareMegameters(1e-06)
			#expect(unit.squareMegameters.isApproximatelyEqual(to: 1e-06))
		}
	}
/// Square Meters unit tests.
///
	@Suite("Square Meters")
	struct squareMetersTests {
	/// Tests initializing the type from a value in Square Meters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Area.squareMeters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Meters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Area.squareMeters(1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Meters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Area.squareMeters(-1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Meters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Area.squareMeters(0.1)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Square Meters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Area.squareMeters(50.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Square Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Area<Double>.zero
			unit.squareMeters = 0.0
			#expect(unit.squareMeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Square Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.00)")
		func testGetAndSet_1() async throws {
			var unit = Area<Double>.zero
			unit.squareMeters = 1.0
			#expect(unit.squareMeters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests setting the type from a value in Square Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.00)")
		func testGetAndSet_2() async throws {
			var unit = Area<Double>.zero
			unit.squareMeters = -1.0
			#expect(unit.squareMeters.isApproximatelyEqual(to: -1.0))
		}

	/// Tests setting the type from a value in Square Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.10)")
		func testGetAndSet_3() async throws {
			var unit = Area<Double>.zero
			unit.squareMeters = 0.1
			#expect(unit.squareMeters.isApproximatelyEqual(to: 0.1))
		}

	/// Tests setting the type from a value in Square Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50.00)")
		func testGetAndSet_4() async throws {
			var unit = Area<Double>.zero
			unit.squareMeters = 50.0
			#expect(unit.squareMeters.isApproximatelyEqual(to: 50.0))
		}

	/// Tests initializing the type from a value in Square Meters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Area(squareMeters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Meters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Area(squareMeters: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Meters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Area(squareMeters: -1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Meters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Area(squareMeters: 0.25)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Square Meters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Area(squareMeters: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Square Meters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Area.squareMeters(0.0)
			#expect(unit.squareMeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Meters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_1() async throws {
			let unit = Area.squareMeters(1.0)
			#expect(unit.squareMeters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Meters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.00)")
		func testRoundTrip_2() async throws {
			let unit = Area.squareMeters(-1.0)
			#expect(unit.squareMeters.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Meters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Area.squareMeters(0.001)
			#expect(unit.squareMeters.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Square Meters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Area.squareMeters(1000000.0)
			#expect(unit.squareMeters.isApproximatelyEqual(to: 1000000.0))
		}
	}
/// Square Micrometers unit tests.
///
	@Suite("Square Micrometers")
	struct squareMicrometersTests {
	/// Tests initializing the type from a value in Square Micrometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Area.squareMicrometers(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Micrometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Area.squareMicrometers(1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Micrometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Area.squareMicrometers(-1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Micrometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Area.squareMicrometers(100000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Square Micrometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Area.squareMicrometers(50000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Square Micrometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Area<Double>.zero
			unit.squareMicrometers = 0.0
			#expect(unit.squareMicrometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Square Micrometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Area<Double>.zero
			unit.squareMicrometers = 1000000000000.0
			#expect(unit.squareMicrometers.isApproximatelyEqual(to: 1000000000000.0))
		}

	/// Tests setting the type from a value in Square Micrometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Area<Double>.zero
			unit.squareMicrometers = -1000000000000.0
			#expect(unit.squareMicrometers.isApproximatelyEqual(to: -1000000000000.0))
		}

	/// Tests setting the type from a value in Square Micrometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000000000.00)")
		func testGetAndSet_3() async throws {
			var unit = Area<Double>.zero
			unit.squareMicrometers = 100000000000.0
			#expect(unit.squareMicrometers.isApproximatelyEqual(to: 100000000000.0))
		}

	/// Tests setting the type from a value in Square Micrometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Area<Double>.zero
			unit.squareMicrometers = 50000000000000.0
			#expect(unit.squareMicrometers.isApproximatelyEqual(to: 50000000000000.0))
		}

	/// Tests initializing the type from a value in Square Micrometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Area(squareMicrometers: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Micrometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Area(squareMicrometers: 1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Micrometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Area(squareMicrometers: -1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Micrometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Area(squareMicrometers: 250000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Square Micrometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Area(squareMicrometers: 1000000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Square Micrometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Area.squareMicrometers(0.0)
			#expect(unit.squareMicrometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Micrometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Area.squareMicrometers(1000000000000.0)
			#expect(unit.squareMicrometers.isApproximatelyEqual(to: 1000000000000.0))
		}

	/// Tests initializing the type from a value in Square Micrometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Area.squareMicrometers(-1000000000000.0)
			#expect(unit.squareMicrometers.isApproximatelyEqual(to: -1000000000000.0))
		}

	/// Tests initializing the type from a value in Square Micrometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_3() async throws {
			let unit = Area.squareMicrometers(1000000000.0)
			#expect(unit.squareMicrometers.isApproximatelyEqual(to: 1000000000.0))
		}

	/// Tests initializing the type from a value in Square Micrometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Area.squareMicrometers(1e+18)
			#expect(unit.squareMicrometers.isApproximatelyEqual(to: 1e+18))
		}
	}
/// Square Miles unit tests.
///
	@Suite("Square Miles")
	struct squareMilesTests {
	/// Tests initializing the type from a value in Square Miles
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Area.squareMiles(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Miles
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Area.squareMiles(3.861021585424458e-07)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Miles
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Area.squareMiles(-3.861021585424458e-07)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Miles
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Area.squareMiles(3.8610215854244584e-08)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Square Miles
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Area.squareMiles(1.9305107927122293e-05)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Square Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Area<Double>.zero
			unit.squareMiles = 0.0
			#expect(unit.squareMiles.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Square Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Area<Double>.zero
			unit.squareMiles = 3.861021585424458e-07
			#expect(unit.squareMiles.isApproximatelyEqual(to: 3.861021585424458e-07))
		}

	/// Tests setting the type from a value in Square Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Area<Double>.zero
			unit.squareMiles = -3.861021585424458e-07
			#expect(unit.squareMiles.isApproximatelyEqual(to: -3.861021585424458e-07))
		}

	/// Tests setting the type from a value in Square Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Area<Double>.zero
			unit.squareMiles = 3.8610215854244584e-08
			#expect(unit.squareMiles.isApproximatelyEqual(to: 3.8610215854244584e-08))
		}

	/// Tests setting the type from a value in Square Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Area<Double>.zero
			unit.squareMiles = 1.9305107927122293e-05
			#expect(unit.squareMiles.isApproximatelyEqual(to: 1.9305107927122293e-05))
		}

	/// Tests initializing the type from a value in Square Miles
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Area(squareMiles: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Miles
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Area(squareMiles: 3.861021585424458e-07)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Miles
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Area(squareMiles: -3.861021585424458e-07)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Miles
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Area(squareMiles: 9.652553963561145e-08)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Square Miles
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Area(squareMiles: 0.0003861021585424458)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Square Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Area.squareMiles(0.0)
			#expect(unit.squareMiles.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Area.squareMiles(3.861021585424458e-07)
			#expect(unit.squareMiles.isApproximatelyEqual(to: 3.861021585424458e-07))
		}

	/// Tests initializing the type from a value in Square Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Area.squareMiles(-3.861021585424458e-07)
			#expect(unit.squareMiles.isApproximatelyEqual(to: -3.861021585424458e-07))
		}

	/// Tests initializing the type from a value in Square Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Area.squareMiles(3.861021585424458e-10)
			#expect(unit.squareMiles.isApproximatelyEqual(to: 3.861021585424458e-10))
		}

	/// Tests initializing the type from a value in Square Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.39)")
		func testRoundTrip_4() async throws {
			let unit = Area.squareMiles(0.38610215854244584)
			#expect(unit.squareMiles.isApproximatelyEqual(to: 0.38610215854244584))
		}
	}
/// Square Millimeters unit tests.
///
	@Suite("Square Millimeters")
	struct squareMillimetersTests {
	/// Tests initializing the type from a value in Square Millimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Area.squareMillimeters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Millimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Area.squareMillimeters(1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Millimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Area.squareMillimeters(-1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Millimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Area.squareMillimeters(100000.00000000001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Square Millimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Area.squareMillimeters(50000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Square Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Area<Double>.zero
			unit.squareMillimeters = 0.0
			#expect(unit.squareMillimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Square Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Area<Double>.zero
			unit.squareMillimeters = 1000000.0
			#expect(unit.squareMillimeters.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests setting the type from a value in Square Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Area<Double>.zero
			unit.squareMillimeters = -1000000.0
			#expect(unit.squareMillimeters.isApproximatelyEqual(to: -1000000.0))
		}

	/// Tests setting the type from a value in Square Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000.00)")
		func testGetAndSet_3() async throws {
			var unit = Area<Double>.zero
			unit.squareMillimeters = 100000.00000000001
			#expect(unit.squareMillimeters.isApproximatelyEqual(to: 100000.00000000001))
		}

	/// Tests setting the type from a value in Square Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Area<Double>.zero
			unit.squareMillimeters = 50000000.0
			#expect(unit.squareMillimeters.isApproximatelyEqual(to: 50000000.0))
		}

	/// Tests initializing the type from a value in Square Millimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Area(squareMillimeters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Millimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Area(squareMillimeters: 1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Millimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Area(squareMillimeters: -1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Millimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Area(squareMillimeters: 250000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Square Millimeters
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Area(squareMillimeters: 1000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Square Millimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Area.squareMillimeters(0.0)
			#expect(unit.squareMillimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Millimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Area.squareMillimeters(1000000.0)
			#expect(unit.squareMillimeters.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests initializing the type from a value in Square Millimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Area.squareMillimeters(-1000000.0)
			#expect(unit.squareMillimeters.isApproximatelyEqual(to: -1000000.0))
		}

	/// Tests initializing the type from a value in Square Millimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_3() async throws {
			let unit = Area.squareMillimeters(1000.0000000000001)
			#expect(unit.squareMillimeters.isApproximatelyEqual(to: 1000.0000000000001))
		}

	/// Tests initializing the type from a value in Square Millimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Area.squareMillimeters(1000000000000.0)
			#expect(unit.squareMillimeters.isApproximatelyEqual(to: 1000000000000.0))
		}
	}
/// Square Nanometers unit tests.
///
	@Suite("Square Nanometers")
	struct squareNanometersTests {
	/// Tests initializing the type from a value in Square Nanometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Area.squareNanometers(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Nanometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Area.squareNanometers(9.999999999999999e+17)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Nanometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Area.squareNanometers(-9.999999999999999e+17)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Nanometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Area.squareNanometers(1e+17)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Square Nanometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Area.squareNanometers(5e+19)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Square Nanometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Area<Double>.zero
			unit.squareNanometers = 0.0
			#expect(unit.squareNanometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Square Nanometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (999999999999999872.00)")
		func testGetAndSet_1() async throws {
			var unit = Area<Double>.zero
			unit.squareNanometers = 9.999999999999999e+17
			#expect(unit.squareNanometers.isApproximatelyEqual(to: 9.999999999999999e+17))
		}

	/// Tests setting the type from a value in Square Nanometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-999999999999999872.00)")
		func testGetAndSet_2() async throws {
			var unit = Area<Double>.zero
			unit.squareNanometers = -9.999999999999999e+17
			#expect(unit.squareNanometers.isApproximatelyEqual(to: -9.999999999999999e+17))
		}

	/// Tests setting the type from a value in Square Nanometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000000000000000.00)")
		func testGetAndSet_3() async throws {
			var unit = Area<Double>.zero
			unit.squareNanometers = 1e+17
			#expect(unit.squareNanometers.isApproximatelyEqual(to: 1e+17))
		}

	/// Tests setting the type from a value in Square Nanometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000000000000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Area<Double>.zero
			unit.squareNanometers = 5e+19
			#expect(unit.squareNanometers.isApproximatelyEqual(to: 5e+19))
		}

	/// Tests initializing the type from a value in Square Nanometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Area(squareNanometers: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Nanometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Area(squareNanometers: 9.999999999999999e+17)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Nanometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Area(squareNanometers: -9.999999999999999e+17)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Nanometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Area(squareNanometers: 2.4999999999999997e+17)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Square Nanometers
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Area(squareNanometers: 9.999999999999999e+20)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Square Nanometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Area.squareNanometers(0.0)
			#expect(unit.squareNanometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Nanometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (999999999999999872.00)")
		func testRoundTrip_1() async throws {
			let unit = Area.squareNanometers(9.999999999999999e+17)
			#expect(unit.squareNanometers.isApproximatelyEqual(to: 9.999999999999999e+17))
		}

	/// Tests initializing the type from a value in Square Nanometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-999999999999999872.00)")
		func testRoundTrip_2() async throws {
			let unit = Area.squareNanometers(-9.999999999999999e+17)
			#expect(unit.squareNanometers.isApproximatelyEqual(to: -9.999999999999999e+17))
		}

	/// Tests initializing the type from a value in Square Nanometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000000.00)")
		func testRoundTrip_3() async throws {
			let unit = Area.squareNanometers(1000000000000000.0)
			#expect(unit.squareNanometers.isApproximatelyEqual(to: 1000000000000000.0))
		}

	/// Tests initializing the type from a value in Square Nanometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (999999999999999983222784.00)")
		func testRoundTrip_4() async throws {
			let unit = Area.squareNanometers(1e+24)
			#expect(unit.squareNanometers.isApproximatelyEqual(to: 1e+24))
		}
	}
/// Square Yards unit tests.
///
	@Suite("Square Yards")
	struct squareYardsTests {
	/// Tests initializing the type from a value in Square Yards
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Area.squareYards(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Yards
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Area.squareYards(1.1959900463010802)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Yards
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Area.squareYards(-1.1959900463010802)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Yards
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Area.squareYards(0.11959900463010803)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Square Yards
	/// and checking the stored value in Square Meters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Area.squareYards(59.79950231505401)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Square Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Area<Double>.zero
			unit.squareYards = 0.0
			#expect(unit.squareYards.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Square Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.20)")
		func testGetAndSet_1() async throws {
			var unit = Area<Double>.zero
			unit.squareYards = 1.1959900463010802
			#expect(unit.squareYards.isApproximatelyEqual(to: 1.1959900463010802))
		}

	/// Tests setting the type from a value in Square Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.20)")
		func testGetAndSet_2() async throws {
			var unit = Area<Double>.zero
			unit.squareYards = -1.1959900463010802
			#expect(unit.squareYards.isApproximatelyEqual(to: -1.1959900463010802))
		}

	/// Tests setting the type from a value in Square Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.12)")
		func testGetAndSet_3() async throws {
			var unit = Area<Double>.zero
			unit.squareYards = 0.11959900463010803
			#expect(unit.squareYards.isApproximatelyEqual(to: 0.11959900463010803))
		}

	/// Tests setting the type from a value in Square Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (59.80)")
		func testGetAndSet_4() async throws {
			var unit = Area<Double>.zero
			unit.squareYards = 59.79950231505401
			#expect(unit.squareYards.isApproximatelyEqual(to: 59.79950231505401))
		}

	/// Tests initializing the type from a value in Square Yards
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Area(squareYards: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Yards
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Area(squareYards: 1.1959900463010802)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Square Yards
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Area(squareYards: -1.1959900463010802)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Square Yards
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Area(squareYards: 0.29899751157527005)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Square Yards
	/// and checking the stored value in Square Meters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Area(squareYards: 1195.9900463010804)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Square Yards and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Area.squareYards(0.0)
			#expect(unit.squareYards.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Square Yards and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.20)")
		func testRoundTrip_1() async throws {
			let unit = Area.squareYards(1.1959900463010802)
			#expect(unit.squareYards.isApproximatelyEqual(to: 1.1959900463010802))
		}

	/// Tests initializing the type from a value in Square Yards and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.20)")
		func testRoundTrip_2() async throws {
			let unit = Area.squareYards(-1.1959900463010802)
			#expect(unit.squareYards.isApproximatelyEqual(to: -1.1959900463010802))
		}

	/// Tests initializing the type from a value in Square Yards and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Area.squareYards(0.0011959900463010802)
			#expect(unit.squareYards.isApproximatelyEqual(to: 0.0011959900463010802))
		}

	/// Tests initializing the type from a value in Square Yards and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1195990.05)")
		func testRoundTrip_4() async throws {
			let unit = Area.squareYards(1195990.0463010804)
			#expect(unit.squareYards.isApproximatelyEqual(to: 1195990.0463010804))
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
			for unit in Area<Double>.MeasurementUnit.allCases {
				#expect(!unit.symbol(for: 1.0).isEmpty)
				#expect(!unit.symbol(for: 2.0).isEmpty)
			}
		}
	}
}
