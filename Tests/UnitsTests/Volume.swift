//
//  Volume.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Volume")
struct VolumeTests {
/// Acre Feet unit tests.
///
	@Suite("Acre Feet")
	struct acreFeetTests {
	/// Tests initializing the type from a value in Acre Feet
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.acreFeet(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Acre Feet
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.acreFeet(8.110300081103001e-07)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Acre Feet
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.acreFeet(-8.110300081103001e-07)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Acre Feet
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.acreFeet(8.110300081103002e-08)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Acre Feet
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.acreFeet(4.0551500405515004e-05)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Acre Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.acreFeet = 0.0
			#expect(unit.acreFeet.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Acre Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.acreFeet = 8.110300081103001e-07
			#expect(unit.acreFeet.isApproximatelyEqual(to: 8.110300081103001e-07))
		}

	/// Tests setting the type from a value in Acre Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.acreFeet = -8.110300081103001e-07
			#expect(unit.acreFeet.isApproximatelyEqual(to: -8.110300081103001e-07))
		}

	/// Tests setting the type from a value in Acre Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.acreFeet = 8.110300081103002e-08
			#expect(unit.acreFeet.isApproximatelyEqual(to: 8.110300081103002e-08))
		}

	/// Tests setting the type from a value in Acre Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.acreFeet = 4.0551500405515004e-05
			#expect(unit.acreFeet.isApproximatelyEqual(to: 4.0551500405515004e-05))
		}

	/// Tests initializing the type from a value in Acre Feet
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(acreFeet: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Acre Feet
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(acreFeet: 8.110300081103001e-07)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Acre Feet
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(acreFeet: -8.110300081103001e-07)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Acre Feet
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(acreFeet: 2.0275750202757501e-07)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Acre Feet
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(acreFeet: 0.0008110300081103001)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Acre Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.acreFeet(0.0)
			#expect(unit.acreFeet.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Acre Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Volume.acreFeet(8.110300081103001e-07)
			#expect(unit.acreFeet.isApproximatelyEqual(to: 8.110300081103001e-07))
		}

	/// Tests initializing the type from a value in Acre Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Volume.acreFeet(-8.110300081103001e-07)
			#expect(unit.acreFeet.isApproximatelyEqual(to: -8.110300081103001e-07))
		}

	/// Tests initializing the type from a value in Acre Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.acreFeet(8.110300081103001e-10)
			#expect(unit.acreFeet.isApproximatelyEqual(to: 8.110300081103001e-10))
		}

	/// Tests initializing the type from a value in Acre Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.81)")
		func testRoundTrip_4() async throws {
			let unit = Volume.acreFeet(0.8110300081103001)
			#expect(unit.acreFeet.isApproximatelyEqual(to: 0.8110300081103001))
		}
	}
/// Bushels unit tests.
///
	@Suite("Bushels")
	struct bushelsTests {
	/// Tests initializing the type from a value in Bushels
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.bushels(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Bushels
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.bushels(0.02837756923417454)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Bushels
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.bushels(-0.02837756923417454)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Bushels
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.bushels(0.002837756923417454)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Bushels
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.bushels(1.418878461708727)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Bushels and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.bushels = 0.0
			#expect(unit.bushels.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Bushels and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.03)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.bushels = 0.02837756923417454
			#expect(unit.bushels.isApproximatelyEqual(to: 0.02837756923417454))
		}

	/// Tests setting the type from a value in Bushels and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.03)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.bushels = -0.02837756923417454
			#expect(unit.bushels.isApproximatelyEqual(to: -0.02837756923417454))
		}

	/// Tests setting the type from a value in Bushels and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.bushels = 0.002837756923417454
			#expect(unit.bushels.isApproximatelyEqual(to: 0.002837756923417454))
		}

	/// Tests setting the type from a value in Bushels and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.42)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.bushels = 1.418878461708727
			#expect(unit.bushels.isApproximatelyEqual(to: 1.418878461708727))
		}

	/// Tests initializing the type from a value in Bushels
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(bushels: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Bushels
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(bushels: 0.02837756923417454)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Bushels
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(bushels: -0.02837756923417454)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Bushels
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(bushels: 0.007094392308543635)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Bushels
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(bushels: 28.377569234174537)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Bushels and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.bushels(0.0)
			#expect(unit.bushels.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Bushels and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.03)")
		func testRoundTrip_1() async throws {
			let unit = Volume.bushels(0.02837756923417454)
			#expect(unit.bushels.isApproximatelyEqual(to: 0.02837756923417454))
		}

	/// Tests initializing the type from a value in Bushels and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.03)")
		func testRoundTrip_2() async throws {
			let unit = Volume.bushels(-0.02837756923417454)
			#expect(unit.bushels.isApproximatelyEqual(to: -0.02837756923417454))
		}

	/// Tests initializing the type from a value in Bushels and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.bushels(2.837756923417454e-05)
			#expect(unit.bushels.isApproximatelyEqual(to: 2.837756923417454e-05))
		}

	/// Tests initializing the type from a value in Bushels and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (28377.57)")
		func testRoundTrip_4() async throws {
			let unit = Volume.bushels(28377.569234174538)
			#expect(unit.bushels.isApproximatelyEqual(to: 28377.569234174538))
		}
	}
/// Centiliters unit tests.
///
	@Suite("Centiliters")
	struct centilitersTests {
	/// Tests initializing the type from a value in Centiliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.centiliters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Centiliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.centiliters(100.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Centiliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.centiliters(-100.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Centiliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.centiliters(10.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Centiliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.centiliters(5000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Centiliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.centiliters = 0.0
			#expect(unit.centiliters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Centiliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100.00)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.centiliters = 100.0
			#expect(unit.centiliters.isApproximatelyEqual(to: 100.0))
		}

	/// Tests setting the type from a value in Centiliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-100.00)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.centiliters = -100.0
			#expect(unit.centiliters.isApproximatelyEqual(to: -100.0))
		}

	/// Tests setting the type from a value in Centiliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (10.00)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.centiliters = 10.0
			#expect(unit.centiliters.isApproximatelyEqual(to: 10.0))
		}

	/// Tests setting the type from a value in Centiliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (5000.00)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.centiliters = 5000.0
			#expect(unit.centiliters.isApproximatelyEqual(to: 5000.0))
		}

	/// Tests initializing the type from a value in Centiliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(centiliters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Centiliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(centiliters: 100.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Centiliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(centiliters: -100.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Centiliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(centiliters: 25.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Centiliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(centiliters: 100000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Centiliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.centiliters(0.0)
			#expect(unit.centiliters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Centiliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (100.00)")
		func testRoundTrip_1() async throws {
			let unit = Volume.centiliters(100.0)
			#expect(unit.centiliters.isApproximatelyEqual(to: 100.0))
		}

	/// Tests initializing the type from a value in Centiliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-100.00)")
		func testRoundTrip_2() async throws {
			let unit = Volume.centiliters(-100.0)
			#expect(unit.centiliters.isApproximatelyEqual(to: -100.0))
		}

	/// Tests initializing the type from a value in Centiliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.10)")
		func testRoundTrip_3() async throws {
			let unit = Volume.centiliters(0.1)
			#expect(unit.centiliters.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Centiliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (100000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Volume.centiliters(100000000.0)
			#expect(unit.centiliters.isApproximatelyEqual(to: 100000000.0))
		}
	}
/// Cubic Centimeters unit tests.
///
	@Suite("Cubic Centimeters")
	struct cubicCentimetersTests {
	/// Tests initializing the type from a value in Cubic Centimeters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.cubicCentimeters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Centimeters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.cubicCentimeters(1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Centimeters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.cubicCentimeters(-1000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Centimeters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.cubicCentimeters(100.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Cubic Centimeters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.cubicCentimeters(50000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Cubic Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.cubicCentimeters = 0.0
			#expect(unit.cubicCentimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Cubic Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000.00)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.cubicCentimeters = 1000.0
			#expect(unit.cubicCentimeters.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests setting the type from a value in Cubic Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000.00)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.cubicCentimeters = -1000.0
			#expect(unit.cubicCentimeters.isApproximatelyEqual(to: -1000.0))
		}

	/// Tests setting the type from a value in Cubic Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100.00)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.cubicCentimeters = 100.0
			#expect(unit.cubicCentimeters.isApproximatelyEqual(to: 100.0))
		}

	/// Tests setting the type from a value in Cubic Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000.00)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.cubicCentimeters = 50000.0
			#expect(unit.cubicCentimeters.isApproximatelyEqual(to: 50000.0))
		}

	/// Tests initializing the type from a value in Cubic Centimeters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(cubicCentimeters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Centimeters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(cubicCentimeters: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Centimeters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(cubicCentimeters: -1000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Centimeters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(cubicCentimeters: 250.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Cubic Centimeters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(cubicCentimeters: 1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Cubic Centimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.cubicCentimeters(0.0)
			#expect(unit.cubicCentimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Centimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_1() async throws {
			let unit = Volume.cubicCentimeters(1000.0)
			#expect(unit.cubicCentimeters.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Cubic Centimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000.00)")
		func testRoundTrip_2() async throws {
			let unit = Volume.cubicCentimeters(-1000.0)
			#expect(unit.cubicCentimeters.isApproximatelyEqual(to: -1000.0))
		}

	/// Tests initializing the type from a value in Cubic Centimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.cubicCentimeters(1.0)
			#expect(unit.cubicCentimeters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Centimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Volume.cubicCentimeters(1000000000.0)
			#expect(unit.cubicCentimeters.isApproximatelyEqual(to: 1000000000.0))
		}
	}
/// Cubic Decimeters unit tests.
///
	@Suite("Cubic Decimeters")
	struct cubicDecimetersTests {
	/// Tests initializing the type from a value in Cubic Decimeters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.cubicDecimeters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Decimeters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.cubicDecimeters(1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Decimeters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.cubicDecimeters(-1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Decimeters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.cubicDecimeters(0.1)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Cubic Decimeters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.cubicDecimeters(50.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Cubic Decimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.cubicDecimeters = 0.0
			#expect(unit.cubicDecimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Cubic Decimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.00)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.cubicDecimeters = 1.0
			#expect(unit.cubicDecimeters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests setting the type from a value in Cubic Decimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.00)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.cubicDecimeters = -1.0
			#expect(unit.cubicDecimeters.isApproximatelyEqual(to: -1.0))
		}

	/// Tests setting the type from a value in Cubic Decimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.10)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.cubicDecimeters = 0.1
			#expect(unit.cubicDecimeters.isApproximatelyEqual(to: 0.1))
		}

	/// Tests setting the type from a value in Cubic Decimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50.00)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.cubicDecimeters = 50.0
			#expect(unit.cubicDecimeters.isApproximatelyEqual(to: 50.0))
		}

	/// Tests initializing the type from a value in Cubic Decimeters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(cubicDecimeters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Decimeters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(cubicDecimeters: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Decimeters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(cubicDecimeters: -1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Decimeters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(cubicDecimeters: 0.25)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Cubic Decimeters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(cubicDecimeters: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Cubic Decimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.cubicDecimeters(0.0)
			#expect(unit.cubicDecimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Decimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_1() async throws {
			let unit = Volume.cubicDecimeters(1.0)
			#expect(unit.cubicDecimeters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Decimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.00)")
		func testRoundTrip_2() async throws {
			let unit = Volume.cubicDecimeters(-1.0)
			#expect(unit.cubicDecimeters.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Decimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.cubicDecimeters(0.001)
			#expect(unit.cubicDecimeters.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Cubic Decimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Volume.cubicDecimeters(1000000.0)
			#expect(unit.cubicDecimeters.isApproximatelyEqual(to: 1000000.0))
		}
	}
/// Cubic Feet unit tests.
///
	@Suite("Cubic Feet")
	struct cubicFeetTests {
	/// Tests initializing the type from a value in Cubic Feet
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.cubicFeet(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Feet
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.cubicFeet(0.035314724827664144)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Feet
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.cubicFeet(-0.035314724827664144)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Feet
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.cubicFeet(0.0035314724827664144)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Cubic Feet
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.cubicFeet(1.7657362413832072)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Cubic Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.cubicFeet = 0.0
			#expect(unit.cubicFeet.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Cubic Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.04)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.cubicFeet = 0.035314724827664144
			#expect(unit.cubicFeet.isApproximatelyEqual(to: 0.035314724827664144))
		}

	/// Tests setting the type from a value in Cubic Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.04)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.cubicFeet = -0.035314724827664144
			#expect(unit.cubicFeet.isApproximatelyEqual(to: -0.035314724827664144))
		}

	/// Tests setting the type from a value in Cubic Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.cubicFeet = 0.0035314724827664144
			#expect(unit.cubicFeet.isApproximatelyEqual(to: 0.0035314724827664144))
		}

	/// Tests setting the type from a value in Cubic Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.77)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.cubicFeet = 1.7657362413832072
			#expect(unit.cubicFeet.isApproximatelyEqual(to: 1.7657362413832072))
		}

	/// Tests initializing the type from a value in Cubic Feet
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(cubicFeet: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Feet
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(cubicFeet: 0.035314724827664144)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Feet
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(cubicFeet: -0.035314724827664144)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Feet
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(cubicFeet: 0.008828681206916036)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Cubic Feet
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(cubicFeet: 35.31472482766414)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Cubic Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.cubicFeet(0.0)
			#expect(unit.cubicFeet.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.04)")
		func testRoundTrip_1() async throws {
			let unit = Volume.cubicFeet(0.035314724827664144)
			#expect(unit.cubicFeet.isApproximatelyEqual(to: 0.035314724827664144))
		}

	/// Tests initializing the type from a value in Cubic Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.04)")
		func testRoundTrip_2() async throws {
			let unit = Volume.cubicFeet(-0.035314724827664144)
			#expect(unit.cubicFeet.isApproximatelyEqual(to: -0.035314724827664144))
		}

	/// Tests initializing the type from a value in Cubic Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.cubicFeet(3.5314724827664145e-05)
			#expect(unit.cubicFeet.isApproximatelyEqual(to: 3.5314724827664145e-05))
		}

	/// Tests initializing the type from a value in Cubic Feet and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (35314.72)")
		func testRoundTrip_4() async throws {
			let unit = Volume.cubicFeet(35314.72482766414)
			#expect(unit.cubicFeet.isApproximatelyEqual(to: 35314.72482766414))
		}
	}
/// Cubic Inches unit tests.
///
	@Suite("Cubic Inches")
	struct cubicInchesTests {
	/// Tests initializing the type from a value in Cubic Inches
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.cubicInches(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Inches
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.cubicInches(61.02361003472243)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Inches
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.cubicInches(-61.02361003472243)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Inches
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.cubicInches(6.102361003472243)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Cubic Inches
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.cubicInches(3051.180501736121)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Cubic Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.cubicInches = 0.0
			#expect(unit.cubicInches.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Cubic Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (61.02)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.cubicInches = 61.02361003472243
			#expect(unit.cubicInches.isApproximatelyEqual(to: 61.02361003472243))
		}

	/// Tests setting the type from a value in Cubic Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-61.02)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.cubicInches = -61.02361003472243
			#expect(unit.cubicInches.isApproximatelyEqual(to: -61.02361003472243))
		}

	/// Tests setting the type from a value in Cubic Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (6.10)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.cubicInches = 6.102361003472243
			#expect(unit.cubicInches.isApproximatelyEqual(to: 6.102361003472243))
		}

	/// Tests setting the type from a value in Cubic Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (3051.18)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.cubicInches = 3051.180501736121
			#expect(unit.cubicInches.isApproximatelyEqual(to: 3051.180501736121))
		}

	/// Tests initializing the type from a value in Cubic Inches
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(cubicInches: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Inches
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(cubicInches: 61.02361003472243)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Inches
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(cubicInches: -61.02361003472243)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Inches
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(cubicInches: 15.255902508680608)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Cubic Inches
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(cubicInches: 61023.61003472243)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Cubic Inches and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.cubicInches(0.0)
			#expect(unit.cubicInches.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Inches and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (61.02)")
		func testRoundTrip_1() async throws {
			let unit = Volume.cubicInches(61.02361003472243)
			#expect(unit.cubicInches.isApproximatelyEqual(to: 61.02361003472243))
		}

	/// Tests initializing the type from a value in Cubic Inches and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-61.02)")
		func testRoundTrip_2() async throws {
			let unit = Volume.cubicInches(-61.02361003472243)
			#expect(unit.cubicInches.isApproximatelyEqual(to: -61.02361003472243))
		}

	/// Tests initializing the type from a value in Cubic Inches and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.06)")
		func testRoundTrip_3() async throws {
			let unit = Volume.cubicInches(0.06102361003472243)
			#expect(unit.cubicInches.isApproximatelyEqual(to: 0.06102361003472243))
		}

	/// Tests initializing the type from a value in Cubic Inches and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (61023610.03)")
		func testRoundTrip_4() async throws {
			let unit = Volume.cubicInches(61023610.034722425)
			#expect(unit.cubicInches.isApproximatelyEqual(to: 61023610.034722425))
		}
	}
/// Cubic Kilometers unit tests.
///
	@Suite("Cubic Kilometers")
	struct cubicKilometersTests {
	/// Tests initializing the type from a value in Cubic Kilometers
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.cubicKilometers(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Kilometers
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.cubicKilometers(1e-12)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Kilometers
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.cubicKilometers(-1e-12)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Kilometers
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.cubicKilometers(1e-13)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Cubic Kilometers
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.cubicKilometers(5e-11)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Cubic Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.cubicKilometers = 0.0
			#expect(unit.cubicKilometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Cubic Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.cubicKilometers = 1e-12
			#expect(unit.cubicKilometers.isApproximatelyEqual(to: 1e-12))
		}

	/// Tests setting the type from a value in Cubic Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.cubicKilometers = -1e-12
			#expect(unit.cubicKilometers.isApproximatelyEqual(to: -1e-12))
		}

	/// Tests setting the type from a value in Cubic Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.cubicKilometers = 1e-13
			#expect(unit.cubicKilometers.isApproximatelyEqual(to: 1e-13))
		}

	/// Tests setting the type from a value in Cubic Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.cubicKilometers = 5e-11
			#expect(unit.cubicKilometers.isApproximatelyEqual(to: 5e-11))
		}

	/// Tests initializing the type from a value in Cubic Kilometers
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(cubicKilometers: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Kilometers
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(cubicKilometers: 1e-12)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Kilometers
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(cubicKilometers: -1e-12)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Kilometers
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(cubicKilometers: 2.5e-13)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Cubic Kilometers
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(cubicKilometers: 1e-09)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Cubic Kilometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.cubicKilometers(0.0)
			#expect(unit.cubicKilometers.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Kilometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Volume.cubicKilometers(1e-12)
			#expect(unit.cubicKilometers.isApproximatelyEqual(to: 1e-12))
		}

	/// Tests initializing the type from a value in Cubic Kilometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Volume.cubicKilometers(-1e-12)
			#expect(unit.cubicKilometers.isApproximatelyEqual(to: -1e-12))
		}

	/// Tests initializing the type from a value in Cubic Kilometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.cubicKilometers(1e-15)
			#expect(unit.cubicKilometers.isApproximatelyEqual(to: 1e-15))
		}

	/// Tests initializing the type from a value in Cubic Kilometers and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_4() async throws {
			let unit = Volume.cubicKilometers(1e-06)
			#expect(unit.cubicKilometers.isApproximatelyEqual(to: 1e-06))
		}
	}
/// Cubic Meters unit tests.
///
	@Suite("Cubic Meters")
	struct cubicMetersTests {
	/// Tests initializing the type from a value in Cubic Meters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.cubicMeters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Meters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.cubicMeters(0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Meters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.cubicMeters(-0.001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Meters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.cubicMeters(0.0001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Cubic Meters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.cubicMeters(0.05)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Cubic Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.cubicMeters = 0.0
			#expect(unit.cubicMeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Cubic Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.cubicMeters = 0.001
			#expect(unit.cubicMeters.isApproximatelyEqual(to: 0.001))
		}

	/// Tests setting the type from a value in Cubic Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.cubicMeters = -0.001
			#expect(unit.cubicMeters.isApproximatelyEqual(to: -0.001))
		}

	/// Tests setting the type from a value in Cubic Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.cubicMeters = 0.0001
			#expect(unit.cubicMeters.isApproximatelyEqual(to: 0.0001))
		}

	/// Tests setting the type from a value in Cubic Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.05)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.cubicMeters = 0.05
			#expect(unit.cubicMeters.isApproximatelyEqual(to: 0.05))
		}

	/// Tests initializing the type from a value in Cubic Meters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(cubicMeters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Meters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(cubicMeters: 0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Meters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(cubicMeters: -0.001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Meters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(cubicMeters: 0.00025)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Cubic Meters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(cubicMeters: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Cubic Meters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.cubicMeters(0.0)
			#expect(unit.cubicMeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Meters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Volume.cubicMeters(0.001)
			#expect(unit.cubicMeters.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Cubic Meters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Volume.cubicMeters(-0.001)
			#expect(unit.cubicMeters.isApproximatelyEqual(to: -0.001))
		}

	/// Tests initializing the type from a value in Cubic Meters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.cubicMeters(1e-06)
			#expect(unit.cubicMeters.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests initializing the type from a value in Cubic Meters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_4() async throws {
			let unit = Volume.cubicMeters(1000.0)
			#expect(unit.cubicMeters.isApproximatelyEqual(to: 1000.0))
		}
	}
/// Cubic Miles unit tests.
///
	@Suite("Cubic Miles")
	struct cubicMilesTests {
	/// Tests initializing the type from a value in Cubic Miles
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.cubicMiles(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Miles
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.cubicMiles(2.399232245681382e-13)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Miles
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.cubicMiles(-2.399232245681382e-13)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Miles
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.cubicMiles(2.399232245681382e-14)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Cubic Miles
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.cubicMiles(1.199616122840691e-11)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Cubic Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.cubicMiles = 0.0
			#expect(unit.cubicMiles.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Cubic Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.cubicMiles = 2.399232245681382e-13
			#expect(unit.cubicMiles.isApproximatelyEqual(to: 2.399232245681382e-13))
		}

	/// Tests setting the type from a value in Cubic Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.cubicMiles = -2.399232245681382e-13
			#expect(unit.cubicMiles.isApproximatelyEqual(to: -2.399232245681382e-13))
		}

	/// Tests setting the type from a value in Cubic Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.cubicMiles = 2.399232245681382e-14
			#expect(unit.cubicMiles.isApproximatelyEqual(to: 2.399232245681382e-14))
		}

	/// Tests setting the type from a value in Cubic Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.cubicMiles = 1.199616122840691e-11
			#expect(unit.cubicMiles.isApproximatelyEqual(to: 1.199616122840691e-11))
		}

	/// Tests initializing the type from a value in Cubic Miles
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(cubicMiles: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Miles
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(cubicMiles: 2.399232245681382e-13)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Miles
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(cubicMiles: -2.399232245681382e-13)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Miles
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(cubicMiles: 5.998080614203455e-14)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Cubic Miles
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(cubicMiles: 2.399232245681382e-10)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Cubic Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.cubicMiles(0.0)
			#expect(unit.cubicMiles.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Volume.cubicMiles(2.399232245681382e-13)
			#expect(unit.cubicMiles.isApproximatelyEqual(to: 2.399232245681382e-13))
		}

	/// Tests initializing the type from a value in Cubic Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Volume.cubicMiles(-2.399232245681382e-13)
			#expect(unit.cubicMiles.isApproximatelyEqual(to: -2.399232245681382e-13))
		}

	/// Tests initializing the type from a value in Cubic Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.cubicMiles(2.399232245681382e-16)
			#expect(unit.cubicMiles.isApproximatelyEqual(to: 2.399232245681382e-16))
		}

	/// Tests initializing the type from a value in Cubic Miles and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_4() async throws {
			let unit = Volume.cubicMiles(2.399232245681382e-07)
			#expect(unit.cubicMiles.isApproximatelyEqual(to: 2.399232245681382e-07))
		}
	}
/// Cubic Millimeters unit tests.
///
	@Suite("Cubic Millimeters")
	struct cubicMillimetersTests {
	/// Tests initializing the type from a value in Cubic Millimeters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.cubicMillimeters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Millimeters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.cubicMillimeters(1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Millimeters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.cubicMillimeters(-1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Millimeters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.cubicMillimeters(100000.00000000001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Cubic Millimeters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.cubicMillimeters(50000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Cubic Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.cubicMillimeters = 0.0
			#expect(unit.cubicMillimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Cubic Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.cubicMillimeters = 1000000.0
			#expect(unit.cubicMillimeters.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests setting the type from a value in Cubic Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.cubicMillimeters = -1000000.0
			#expect(unit.cubicMillimeters.isApproximatelyEqual(to: -1000000.0))
		}

	/// Tests setting the type from a value in Cubic Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000.00)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.cubicMillimeters = 100000.00000000001
			#expect(unit.cubicMillimeters.isApproximatelyEqual(to: 100000.00000000001))
		}

	/// Tests setting the type from a value in Cubic Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.cubicMillimeters = 50000000.0
			#expect(unit.cubicMillimeters.isApproximatelyEqual(to: 50000000.0))
		}

	/// Tests initializing the type from a value in Cubic Millimeters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(cubicMillimeters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Millimeters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(cubicMillimeters: 1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Millimeters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(cubicMillimeters: -1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Millimeters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(cubicMillimeters: 250000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Cubic Millimeters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(cubicMillimeters: 1000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Cubic Millimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.cubicMillimeters(0.0)
			#expect(unit.cubicMillimeters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Millimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Volume.cubicMillimeters(1000000.0)
			#expect(unit.cubicMillimeters.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests initializing the type from a value in Cubic Millimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Volume.cubicMillimeters(-1000000.0)
			#expect(unit.cubicMillimeters.isApproximatelyEqual(to: -1000000.0))
		}

	/// Tests initializing the type from a value in Cubic Millimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.cubicMillimeters(1000.0000000000001)
			#expect(unit.cubicMillimeters.isApproximatelyEqual(to: 1000.0000000000001))
		}

	/// Tests initializing the type from a value in Cubic Millimeters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Volume.cubicMillimeters(1000000000000.0)
			#expect(unit.cubicMillimeters.isApproximatelyEqual(to: 1000000000000.0))
		}
	}
/// Cubic Yards unit tests.
///
	@Suite("Cubic Yards")
	struct cubicYardsTests {
	/// Tests initializing the type from a value in Cubic Yards
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.cubicYards(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Yards
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.cubicYards(0.001307950376362721)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Yards
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.cubicYards(-0.001307950376362721)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Yards
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.cubicYards(0.0001307950376362721)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Cubic Yards
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.cubicYards(0.06539751881813605)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Cubic Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.cubicYards = 0.0
			#expect(unit.cubicYards.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Cubic Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.cubicYards = 0.001307950376362721
			#expect(unit.cubicYards.isApproximatelyEqual(to: 0.001307950376362721))
		}

	/// Tests setting the type from a value in Cubic Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.cubicYards = -0.001307950376362721
			#expect(unit.cubicYards.isApproximatelyEqual(to: -0.001307950376362721))
		}

	/// Tests setting the type from a value in Cubic Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.cubicYards = 0.0001307950376362721
			#expect(unit.cubicYards.isApproximatelyEqual(to: 0.0001307950376362721))
		}

	/// Tests setting the type from a value in Cubic Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.07)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.cubicYards = 0.06539751881813605
			#expect(unit.cubicYards.isApproximatelyEqual(to: 0.06539751881813605))
		}

	/// Tests initializing the type from a value in Cubic Yards
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(cubicYards: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Yards
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(cubicYards: 0.001307950376362721)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cubic Yards
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(cubicYards: -0.001307950376362721)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cubic Yards
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(cubicYards: 0.00032698759409068023)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Cubic Yards
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(cubicYards: 1.307950376362721)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Cubic Yards and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.cubicYards(0.0)
			#expect(unit.cubicYards.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cubic Yards and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Volume.cubicYards(0.001307950376362721)
			#expect(unit.cubicYards.isApproximatelyEqual(to: 0.001307950376362721))
		}

	/// Tests initializing the type from a value in Cubic Yards and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Volume.cubicYards(-0.001307950376362721)
			#expect(unit.cubicYards.isApproximatelyEqual(to: -0.001307950376362721))
		}

	/// Tests initializing the type from a value in Cubic Yards and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.cubicYards(1.3079503763627209e-06)
			#expect(unit.cubicYards.isApproximatelyEqual(to: 1.3079503763627209e-06))
		}

	/// Tests initializing the type from a value in Cubic Yards and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1307.95)")
		func testRoundTrip_4() async throws {
			let unit = Volume.cubicYards(1307.9503763627208)
			#expect(unit.cubicYards.isApproximatelyEqual(to: 1307.9503763627208))
		}
	}
/// Cups unit tests.
///
	@Suite("Cups")
	struct cupsTests {
	/// Tests initializing the type from a value in Cups
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.cups(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cups
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.cups(4.166666666666667)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cups
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.cups(-4.166666666666667)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cups
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.cups(0.4166666666666667)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Cups
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.cups(208.33333333333334)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Cups and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.cups = 0.0
			#expect(unit.cups.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Cups and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (4.17)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.cups = 4.166666666666667
			#expect(unit.cups.isApproximatelyEqual(to: 4.166666666666667))
		}

	/// Tests setting the type from a value in Cups and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-4.17)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.cups = -4.166666666666667
			#expect(unit.cups.isApproximatelyEqual(to: -4.166666666666667))
		}

	/// Tests setting the type from a value in Cups and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.42)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.cups = 0.4166666666666667
			#expect(unit.cups.isApproximatelyEqual(to: 0.4166666666666667))
		}

	/// Tests setting the type from a value in Cups and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (208.33)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.cups = 208.33333333333334
			#expect(unit.cups.isApproximatelyEqual(to: 208.33333333333334))
		}

	/// Tests initializing the type from a value in Cups
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(cups: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cups
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(cups: 4.166666666666667)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Cups
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(cups: -4.166666666666667)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Cups
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(cups: 1.0416666666666667)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Cups
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(cups: 4166.666666666667)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Cups and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.cups(0.0)
			#expect(unit.cups.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Cups and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (4.17)")
		func testRoundTrip_1() async throws {
			let unit = Volume.cups(4.166666666666667)
			#expect(unit.cups.isApproximatelyEqual(to: 4.166666666666667))
		}

	/// Tests initializing the type from a value in Cups and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-4.17)")
		func testRoundTrip_2() async throws {
			let unit = Volume.cups(-4.166666666666667)
			#expect(unit.cups.isApproximatelyEqual(to: -4.166666666666667))
		}

	/// Tests initializing the type from a value in Cups and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.cups(0.004166666666666667)
			#expect(unit.cups.isApproximatelyEqual(to: 0.004166666666666667))
		}

	/// Tests initializing the type from a value in Cups and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (4166666.67)")
		func testRoundTrip_4() async throws {
			let unit = Volume.cups(4166666.666666667)
			#expect(unit.cups.isApproximatelyEqual(to: 4166666.666666667))
		}
	}
/// Deciliters unit tests.
///
	@Suite("Deciliters")
	struct decilitersTests {
	/// Tests initializing the type from a value in Deciliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.deciliters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Deciliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.deciliters(10.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Deciliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.deciliters(-10.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Deciliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.deciliters(1.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Deciliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.deciliters(500.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Deciliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.deciliters = 0.0
			#expect(unit.deciliters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Deciliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (10.00)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.deciliters = 10.0
			#expect(unit.deciliters.isApproximatelyEqual(to: 10.0))
		}

	/// Tests setting the type from a value in Deciliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-10.00)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.deciliters = -10.0
			#expect(unit.deciliters.isApproximatelyEqual(to: -10.0))
		}

	/// Tests setting the type from a value in Deciliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.00)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.deciliters = 1.0
			#expect(unit.deciliters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests setting the type from a value in Deciliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (500.00)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.deciliters = 500.0
			#expect(unit.deciliters.isApproximatelyEqual(to: 500.0))
		}

	/// Tests initializing the type from a value in Deciliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(deciliters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Deciliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(deciliters: 10.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Deciliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(deciliters: -10.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Deciliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(deciliters: 2.5)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Deciliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(deciliters: 10000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Deciliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.deciliters(0.0)
			#expect(unit.deciliters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Deciliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10.00)")
		func testRoundTrip_1() async throws {
			let unit = Volume.deciliters(10.0)
			#expect(unit.deciliters.isApproximatelyEqual(to: 10.0))
		}

	/// Tests initializing the type from a value in Deciliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-10.00)")
		func testRoundTrip_2() async throws {
			let unit = Volume.deciliters(-10.0)
			#expect(unit.deciliters.isApproximatelyEqual(to: -10.0))
		}

	/// Tests initializing the type from a value in Deciliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.01)")
		func testRoundTrip_3() async throws {
			let unit = Volume.deciliters(0.01)
			#expect(unit.deciliters.isApproximatelyEqual(to: 0.01))
		}

	/// Tests initializing the type from a value in Deciliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Volume.deciliters(10000000.0)
			#expect(unit.deciliters.isApproximatelyEqual(to: 10000000.0))
		}
	}
/// Fluid Ounces unit tests.
///
	@Suite("Fluid Ounces")
	struct fluidOuncesTests {
	/// Tests initializing the type from a value in Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.fluidOunces(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.fluidOunces(33.81405650328842)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.fluidOunces(-33.81405650328842)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.fluidOunces(3.381405650328842)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.fluidOunces(1690.7028251644208)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Fluid Ounces and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.fluidOunces = 0.0
			#expect(unit.fluidOunces.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Fluid Ounces and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (33.81)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.fluidOunces = 33.81405650328842
			#expect(unit.fluidOunces.isApproximatelyEqual(to: 33.81405650328842))
		}

	/// Tests setting the type from a value in Fluid Ounces and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-33.81)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.fluidOunces = -33.81405650328842
			#expect(unit.fluidOunces.isApproximatelyEqual(to: -33.81405650328842))
		}

	/// Tests setting the type from a value in Fluid Ounces and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (3.38)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.fluidOunces = 3.381405650328842
			#expect(unit.fluidOunces.isApproximatelyEqual(to: 3.381405650328842))
		}

	/// Tests setting the type from a value in Fluid Ounces and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1690.70)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.fluidOunces = 1690.7028251644208
			#expect(unit.fluidOunces.isApproximatelyEqual(to: 1690.7028251644208))
		}

	/// Tests initializing the type from a value in Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(fluidOunces: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(fluidOunces: 33.81405650328842)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(fluidOunces: -33.81405650328842)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(fluidOunces: 8.453514125822105)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(fluidOunces: 33814.05650328842)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Fluid Ounces and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.fluidOunces(0.0)
			#expect(unit.fluidOunces.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Fluid Ounces and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (33.81)")
		func testRoundTrip_1() async throws {
			let unit = Volume.fluidOunces(33.81405650328842)
			#expect(unit.fluidOunces.isApproximatelyEqual(to: 33.81405650328842))
		}

	/// Tests initializing the type from a value in Fluid Ounces and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-33.81)")
		func testRoundTrip_2() async throws {
			let unit = Volume.fluidOunces(-33.81405650328842)
			#expect(unit.fluidOunces.isApproximatelyEqual(to: -33.81405650328842))
		}

	/// Tests initializing the type from a value in Fluid Ounces and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.03)")
		func testRoundTrip_3() async throws {
			let unit = Volume.fluidOunces(0.03381405650328842)
			#expect(unit.fluidOunces.isApproximatelyEqual(to: 0.03381405650328842))
		}

	/// Tests initializing the type from a value in Fluid Ounces and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (33814056.50)")
		func testRoundTrip_4() async throws {
			let unit = Volume.fluidOunces(33814056.50328842)
			#expect(unit.fluidOunces.isApproximatelyEqual(to: 33814056.50328842))
		}
	}
/// Gallons unit tests.
///
	@Suite("Gallons")
	struct gallonsTests {
	/// Tests initializing the type from a value in Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.gallons(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.gallons(0.26417217685798894)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.gallons(-0.26417217685798894)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.gallons(0.026417217685798897)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.gallons(13.208608842899448)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Gallons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.gallons = 0.0
			#expect(unit.gallons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Gallons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.26)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.gallons = 0.26417217685798894
			#expect(unit.gallons.isApproximatelyEqual(to: 0.26417217685798894))
		}

	/// Tests setting the type from a value in Gallons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.26)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.gallons = -0.26417217685798894
			#expect(unit.gallons.isApproximatelyEqual(to: -0.26417217685798894))
		}

	/// Tests setting the type from a value in Gallons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.03)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.gallons = 0.026417217685798897
			#expect(unit.gallons.isApproximatelyEqual(to: 0.026417217685798897))
		}

	/// Tests setting the type from a value in Gallons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (13.21)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.gallons = 13.208608842899448
			#expect(unit.gallons.isApproximatelyEqual(to: 13.208608842899448))
		}

	/// Tests initializing the type from a value in Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(gallons: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(gallons: 0.26417217685798894)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(gallons: -0.26417217685798894)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(gallons: 0.06604304421449723)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(gallons: 264.172176857989)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Gallons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.gallons(0.0)
			#expect(unit.gallons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Gallons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.26)")
		func testRoundTrip_1() async throws {
			let unit = Volume.gallons(0.26417217685798894)
			#expect(unit.gallons.isApproximatelyEqual(to: 0.26417217685798894))
		}

	/// Tests initializing the type from a value in Gallons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.26)")
		func testRoundTrip_2() async throws {
			let unit = Volume.gallons(-0.26417217685798894)
			#expect(unit.gallons.isApproximatelyEqual(to: -0.26417217685798894))
		}

	/// Tests initializing the type from a value in Gallons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.gallons(0.00026417217685798894)
			#expect(unit.gallons.isApproximatelyEqual(to: 0.00026417217685798894))
		}

	/// Tests initializing the type from a value in Gallons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (264172.18)")
		func testRoundTrip_4() async throws {
			let unit = Volume.gallons(264172.17685798893)
			#expect(unit.gallons.isApproximatelyEqual(to: 264172.17685798893))
		}
	}
/// Imperial Fluid Ounces unit tests.
///
	@Suite("Imperial Fluid Ounces")
	struct imperialFluidOuncesTests {
	/// Tests initializing the type from a value in Imperial Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.imperialFluidOunces(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.imperialFluidOunces(35.19503327690396)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Imperial Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.imperialFluidOunces(-35.19503327690396)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Imperial Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.imperialFluidOunces(3.5195033276903964)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Imperial Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.imperialFluidOunces(1759.7516638451982)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Imperial Fluid Ounces and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.imperialFluidOunces = 0.0
			#expect(unit.imperialFluidOunces.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Imperial Fluid Ounces and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (35.20)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.imperialFluidOunces = 35.19503327690396
			#expect(unit.imperialFluidOunces.isApproximatelyEqual(to: 35.19503327690396))
		}

	/// Tests setting the type from a value in Imperial Fluid Ounces and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-35.20)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.imperialFluidOunces = -35.19503327690396
			#expect(unit.imperialFluidOunces.isApproximatelyEqual(to: -35.19503327690396))
		}

	/// Tests setting the type from a value in Imperial Fluid Ounces and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (3.52)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.imperialFluidOunces = 3.5195033276903964
			#expect(unit.imperialFluidOunces.isApproximatelyEqual(to: 3.5195033276903964))
		}

	/// Tests setting the type from a value in Imperial Fluid Ounces and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1759.75)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.imperialFluidOunces = 1759.7516638451982
			#expect(unit.imperialFluidOunces.isApproximatelyEqual(to: 1759.7516638451982))
		}

	/// Tests initializing the type from a value in Imperial Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(imperialFluidOunces: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(imperialFluidOunces: 35.19503327690396)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Imperial Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(imperialFluidOunces: -35.19503327690396)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Imperial Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(imperialFluidOunces: 8.79875831922599)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Imperial Fluid Ounces
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(imperialFluidOunces: 35195.03327690396)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Imperial Fluid Ounces and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.imperialFluidOunces(0.0)
			#expect(unit.imperialFluidOunces.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Fluid Ounces and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (35.20)")
		func testRoundTrip_1() async throws {
			let unit = Volume.imperialFluidOunces(35.19503327690396)
			#expect(unit.imperialFluidOunces.isApproximatelyEqual(to: 35.19503327690396))
		}

	/// Tests initializing the type from a value in Imperial Fluid Ounces and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-35.20)")
		func testRoundTrip_2() async throws {
			let unit = Volume.imperialFluidOunces(-35.19503327690396)
			#expect(unit.imperialFluidOunces.isApproximatelyEqual(to: -35.19503327690396))
		}

	/// Tests initializing the type from a value in Imperial Fluid Ounces and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.04)")
		func testRoundTrip_3() async throws {
			let unit = Volume.imperialFluidOunces(0.035195033276903966)
			#expect(unit.imperialFluidOunces.isApproximatelyEqual(to: 0.035195033276903966))
		}

	/// Tests initializing the type from a value in Imperial Fluid Ounces and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (35195033.28)")
		func testRoundTrip_4() async throws {
			let unit = Volume.imperialFluidOunces(35195033.276903965)
			#expect(unit.imperialFluidOunces.isApproximatelyEqual(to: 35195033.276903965))
		}
	}
/// Imperial Gallons unit tests.
///
	@Suite("Imperial Gallons")
	struct imperialGallonsTests {
	/// Tests initializing the type from a value in Imperial Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.imperialGallons(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.imperialGallons(0.21996924829908776)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Imperial Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.imperialGallons(-0.21996924829908776)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Imperial Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.imperialGallons(0.021996924829908778)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Imperial Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.imperialGallons(10.998462414954389)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Imperial Gallons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.imperialGallons = 0.0
			#expect(unit.imperialGallons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Imperial Gallons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.22)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.imperialGallons = 0.21996924829908776
			#expect(unit.imperialGallons.isApproximatelyEqual(to: 0.21996924829908776))
		}

	/// Tests setting the type from a value in Imperial Gallons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.22)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.imperialGallons = -0.21996924829908776
			#expect(unit.imperialGallons.isApproximatelyEqual(to: -0.21996924829908776))
		}

	/// Tests setting the type from a value in Imperial Gallons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.02)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.imperialGallons = 0.021996924829908778
			#expect(unit.imperialGallons.isApproximatelyEqual(to: 0.021996924829908778))
		}

	/// Tests setting the type from a value in Imperial Gallons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (11.00)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.imperialGallons = 10.998462414954389
			#expect(unit.imperialGallons.isApproximatelyEqual(to: 10.998462414954389))
		}

	/// Tests initializing the type from a value in Imperial Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(imperialGallons: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(imperialGallons: 0.21996924829908776)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Imperial Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(imperialGallons: -0.21996924829908776)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Imperial Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(imperialGallons: 0.05499231207477194)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Imperial Gallons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(imperialGallons: 219.96924829908778)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Imperial Gallons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.imperialGallons(0.0)
			#expect(unit.imperialGallons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Gallons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.22)")
		func testRoundTrip_1() async throws {
			let unit = Volume.imperialGallons(0.21996924829908776)
			#expect(unit.imperialGallons.isApproximatelyEqual(to: 0.21996924829908776))
		}

	/// Tests initializing the type from a value in Imperial Gallons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.22)")
		func testRoundTrip_2() async throws {
			let unit = Volume.imperialGallons(-0.21996924829908776)
			#expect(unit.imperialGallons.isApproximatelyEqual(to: -0.21996924829908776))
		}

	/// Tests initializing the type from a value in Imperial Gallons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.imperialGallons(0.00021996924829908776)
			#expect(unit.imperialGallons.isApproximatelyEqual(to: 0.00021996924829908776))
		}

	/// Tests initializing the type from a value in Imperial Gallons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (219969.25)")
		func testRoundTrip_4() async throws {
			let unit = Volume.imperialGallons(219969.24829908778)
			#expect(unit.imperialGallons.isApproximatelyEqual(to: 219969.24829908778))
		}
	}
/// Imperial Pints unit tests.
///
	@Suite("Imperial Pints")
	struct imperialPintsTests {
	/// Tests initializing the type from a value in Imperial Pints
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.imperialPints(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Pints
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.imperialPints(1.759754760576566)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Imperial Pints
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.imperialPints(-1.759754760576566)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Imperial Pints
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.imperialPints(0.17597547605765662)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Imperial Pints
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.imperialPints(87.9877380288283)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Imperial Pints and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.imperialPints = 0.0
			#expect(unit.imperialPints.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Imperial Pints and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.76)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.imperialPints = 1.759754760576566
			#expect(unit.imperialPints.isApproximatelyEqual(to: 1.759754760576566))
		}

	/// Tests setting the type from a value in Imperial Pints and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.76)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.imperialPints = -1.759754760576566
			#expect(unit.imperialPints.isApproximatelyEqual(to: -1.759754760576566))
		}

	/// Tests setting the type from a value in Imperial Pints and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.18)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.imperialPints = 0.17597547605765662
			#expect(unit.imperialPints.isApproximatelyEqual(to: 0.17597547605765662))
		}

	/// Tests setting the type from a value in Imperial Pints and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (87.99)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.imperialPints = 87.9877380288283
			#expect(unit.imperialPints.isApproximatelyEqual(to: 87.9877380288283))
		}

	/// Tests initializing the type from a value in Imperial Pints
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(imperialPints: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Pints
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(imperialPints: 1.759754760576566)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Imperial Pints
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(imperialPints: -1.759754760576566)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Imperial Pints
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(imperialPints: 0.4399386901441415)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Imperial Pints
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(imperialPints: 1759.754760576566)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Imperial Pints and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.imperialPints(0.0)
			#expect(unit.imperialPints.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Pints and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.76)")
		func testRoundTrip_1() async throws {
			let unit = Volume.imperialPints(1.759754760576566)
			#expect(unit.imperialPints.isApproximatelyEqual(to: 1.759754760576566))
		}

	/// Tests initializing the type from a value in Imperial Pints and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.76)")
		func testRoundTrip_2() async throws {
			let unit = Volume.imperialPints(-1.759754760576566)
			#expect(unit.imperialPints.isApproximatelyEqual(to: -1.759754760576566))
		}

	/// Tests initializing the type from a value in Imperial Pints and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.imperialPints(0.001759754760576566)
			#expect(unit.imperialPints.isApproximatelyEqual(to: 0.001759754760576566))
		}

	/// Tests initializing the type from a value in Imperial Pints and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1759754.76)")
		func testRoundTrip_4() async throws {
			let unit = Volume.imperialPints(1759754.760576566)
			#expect(unit.imperialPints.isApproximatelyEqual(to: 1759754.760576566))
		}
	}
/// Imperial Quarts unit tests.
///
	@Suite("Imperial Quarts")
	struct imperialQuartsTests {
	/// Tests initializing the type from a value in Imperial Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.imperialQuarts(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.imperialQuarts(0.8798789286594165)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Imperial Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.imperialQuarts(-0.8798789286594165)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Imperial Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.imperialQuarts(0.08798789286594165)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Imperial Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.imperialQuarts(43.99394643297082)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Imperial Quarts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.imperialQuarts = 0.0
			#expect(unit.imperialQuarts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Imperial Quarts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.88)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.imperialQuarts = 0.8798789286594165
			#expect(unit.imperialQuarts.isApproximatelyEqual(to: 0.8798789286594165))
		}

	/// Tests setting the type from a value in Imperial Quarts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.88)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.imperialQuarts = -0.8798789286594165
			#expect(unit.imperialQuarts.isApproximatelyEqual(to: -0.8798789286594165))
		}

	/// Tests setting the type from a value in Imperial Quarts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.09)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.imperialQuarts = 0.08798789286594165
			#expect(unit.imperialQuarts.isApproximatelyEqual(to: 0.08798789286594165))
		}

	/// Tests setting the type from a value in Imperial Quarts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (43.99)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.imperialQuarts = 43.99394643297082
			#expect(unit.imperialQuarts.isApproximatelyEqual(to: 43.99394643297082))
		}

	/// Tests initializing the type from a value in Imperial Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(imperialQuarts: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(imperialQuarts: 0.8798789286594165)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Imperial Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(imperialQuarts: -0.8798789286594165)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Imperial Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(imperialQuarts: 0.21996973216485413)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Imperial Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(imperialQuarts: 879.8789286594165)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Imperial Quarts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.imperialQuarts(0.0)
			#expect(unit.imperialQuarts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Quarts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.88)")
		func testRoundTrip_1() async throws {
			let unit = Volume.imperialQuarts(0.8798789286594165)
			#expect(unit.imperialQuarts.isApproximatelyEqual(to: 0.8798789286594165))
		}

	/// Tests initializing the type from a value in Imperial Quarts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.88)")
		func testRoundTrip_2() async throws {
			let unit = Volume.imperialQuarts(-0.8798789286594165)
			#expect(unit.imperialQuarts.isApproximatelyEqual(to: -0.8798789286594165))
		}

	/// Tests initializing the type from a value in Imperial Quarts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.imperialQuarts(0.0008798789286594165)
			#expect(unit.imperialQuarts.isApproximatelyEqual(to: 0.0008798789286594165))
		}

	/// Tests initializing the type from a value in Imperial Quarts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (879878.93)")
		func testRoundTrip_4() async throws {
			let unit = Volume.imperialQuarts(879878.9286594165)
			#expect(unit.imperialQuarts.isApproximatelyEqual(to: 879878.9286594165))
		}
	}
/// Imperial Tablespoons unit tests.
///
	@Suite("Imperial Tablespoons")
	struct imperialTablespoonsTests {
	/// Tests initializing the type from a value in Imperial Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.imperialTablespoons(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.imperialTablespoons(56.31201360498249)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Imperial Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.imperialTablespoons(-56.31201360498249)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Imperial Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.imperialTablespoons(5.63120136049825)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Imperial Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.imperialTablespoons(2815.6006802491247)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Imperial Tablespoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.imperialTablespoons = 0.0
			#expect(unit.imperialTablespoons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Imperial Tablespoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (56.31)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.imperialTablespoons = 56.31201360498249
			#expect(unit.imperialTablespoons.isApproximatelyEqual(to: 56.31201360498249))
		}

	/// Tests setting the type from a value in Imperial Tablespoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-56.31)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.imperialTablespoons = -56.31201360498249
			#expect(unit.imperialTablespoons.isApproximatelyEqual(to: -56.31201360498249))
		}

	/// Tests setting the type from a value in Imperial Tablespoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (5.63)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.imperialTablespoons = 5.63120136049825
			#expect(unit.imperialTablespoons.isApproximatelyEqual(to: 5.63120136049825))
		}

	/// Tests setting the type from a value in Imperial Tablespoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (2815.60)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.imperialTablespoons = 2815.6006802491247
			#expect(unit.imperialTablespoons.isApproximatelyEqual(to: 2815.6006802491247))
		}

	/// Tests initializing the type from a value in Imperial Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(imperialTablespoons: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(imperialTablespoons: 56.31201360498249)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Imperial Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(imperialTablespoons: -56.31201360498249)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Imperial Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(imperialTablespoons: 14.078003401245622)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Imperial Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(imperialTablespoons: 56312.013604982494)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Imperial Tablespoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.imperialTablespoons(0.0)
			#expect(unit.imperialTablespoons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Tablespoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (56.31)")
		func testRoundTrip_1() async throws {
			let unit = Volume.imperialTablespoons(56.31201360498249)
			#expect(unit.imperialTablespoons.isApproximatelyEqual(to: 56.31201360498249))
		}

	/// Tests initializing the type from a value in Imperial Tablespoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-56.31)")
		func testRoundTrip_2() async throws {
			let unit = Volume.imperialTablespoons(-56.31201360498249)
			#expect(unit.imperialTablespoons.isApproximatelyEqual(to: -56.31201360498249))
		}

	/// Tests initializing the type from a value in Imperial Tablespoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.06)")
		func testRoundTrip_3() async throws {
			let unit = Volume.imperialTablespoons(0.056312013604982496)
			#expect(unit.imperialTablespoons.isApproximatelyEqual(to: 0.056312013604982496))
		}

	/// Tests initializing the type from a value in Imperial Tablespoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (56312013.60)")
		func testRoundTrip_4() async throws {
			let unit = Volume.imperialTablespoons(56312013.604982495)
			#expect(unit.imperialTablespoons.isApproximatelyEqual(to: 56312013.604982495))
		}
	}
/// Imperial Teaspoons unit tests.
///
	@Suite("Imperial Teaspoons")
	struct imperialTeaspoonsTests {
	/// Tests initializing the type from a value in Imperial Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.imperialTeaspoons(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.imperialTeaspoons(168.93632620928847)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Imperial Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.imperialTeaspoons(-168.93632620928847)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Imperial Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.imperialTeaspoons(16.893632620928848)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Imperial Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.imperialTeaspoons(8446.816310464423)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Imperial Teaspoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.imperialTeaspoons = 0.0
			#expect(unit.imperialTeaspoons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Imperial Teaspoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (168.94)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.imperialTeaspoons = 168.93632620928847
			#expect(unit.imperialTeaspoons.isApproximatelyEqual(to: 168.93632620928847))
		}

	/// Tests setting the type from a value in Imperial Teaspoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-168.94)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.imperialTeaspoons = -168.93632620928847
			#expect(unit.imperialTeaspoons.isApproximatelyEqual(to: -168.93632620928847))
		}

	/// Tests setting the type from a value in Imperial Teaspoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (16.89)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.imperialTeaspoons = 16.893632620928848
			#expect(unit.imperialTeaspoons.isApproximatelyEqual(to: 16.893632620928848))
		}

	/// Tests setting the type from a value in Imperial Teaspoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (8446.82)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.imperialTeaspoons = 8446.816310464423
			#expect(unit.imperialTeaspoons.isApproximatelyEqual(to: 8446.816310464423))
		}

	/// Tests initializing the type from a value in Imperial Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(imperialTeaspoons: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(imperialTeaspoons: 168.93632620928847)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Imperial Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(imperialTeaspoons: -168.93632620928847)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Imperial Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(imperialTeaspoons: 42.23408155232212)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Imperial Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(imperialTeaspoons: 168936.32620928847)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Imperial Teaspoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.imperialTeaspoons(0.0)
			#expect(unit.imperialTeaspoons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Imperial Teaspoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (168.94)")
		func testRoundTrip_1() async throws {
			let unit = Volume.imperialTeaspoons(168.93632620928847)
			#expect(unit.imperialTeaspoons.isApproximatelyEqual(to: 168.93632620928847))
		}

	/// Tests initializing the type from a value in Imperial Teaspoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-168.94)")
		func testRoundTrip_2() async throws {
			let unit = Volume.imperialTeaspoons(-168.93632620928847)
			#expect(unit.imperialTeaspoons.isApproximatelyEqual(to: -168.93632620928847))
		}

	/// Tests initializing the type from a value in Imperial Teaspoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.17)")
		func testRoundTrip_3() async throws {
			let unit = Volume.imperialTeaspoons(0.16893632620928845)
			#expect(unit.imperialTeaspoons.isApproximatelyEqual(to: 0.16893632620928845))
		}

	/// Tests initializing the type from a value in Imperial Teaspoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (168936326.21)")
		func testRoundTrip_4() async throws {
			let unit = Volume.imperialTeaspoons(168936326.20928845)
			#expect(unit.imperialTeaspoons.isApproximatelyEqual(to: 168936326.20928845))
		}
	}
/// Kiloliters unit tests.
///
	@Suite("Kiloliters")
	struct kilolitersTests {
	/// Tests initializing the type from a value in Kiloliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.kiloliters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kiloliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.kiloliters(0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Kiloliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.kiloliters(-0.001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Kiloliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.kiloliters(0.0001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Kiloliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.kiloliters(0.05)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Kiloliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.kiloliters = 0.0
			#expect(unit.kiloliters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Kiloliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.kiloliters = 0.001
			#expect(unit.kiloliters.isApproximatelyEqual(to: 0.001))
		}

	/// Tests setting the type from a value in Kiloliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.kiloliters = -0.001
			#expect(unit.kiloliters.isApproximatelyEqual(to: -0.001))
		}

	/// Tests setting the type from a value in Kiloliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.kiloliters = 0.0001
			#expect(unit.kiloliters.isApproximatelyEqual(to: 0.0001))
		}

	/// Tests setting the type from a value in Kiloliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.05)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.kiloliters = 0.05
			#expect(unit.kiloliters.isApproximatelyEqual(to: 0.05))
		}

	/// Tests initializing the type from a value in Kiloliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(kiloliters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kiloliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(kiloliters: 0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Kiloliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(kiloliters: -0.001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Kiloliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(kiloliters: 0.00025)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Kiloliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(kiloliters: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Kiloliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.kiloliters(0.0)
			#expect(unit.kiloliters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kiloliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Volume.kiloliters(0.001)
			#expect(unit.kiloliters.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Kiloliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Volume.kiloliters(-0.001)
			#expect(unit.kiloliters.isApproximatelyEqual(to: -0.001))
		}

	/// Tests initializing the type from a value in Kiloliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.kiloliters(1e-06)
			#expect(unit.kiloliters.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests initializing the type from a value in Kiloliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_4() async throws {
			let unit = Volume.kiloliters(1000.0)
			#expect(unit.kiloliters.isApproximatelyEqual(to: 1000.0))
		}
	}
/// Liters unit tests.
///
	@Suite("Liters")
	struct litersTests {
	/// Tests initializing the type from a value in Liters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.liters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Liters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.liters(1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Liters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.liters(-1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Liters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.liters(0.1)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Liters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.liters(50.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Liters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.liters = 0.0
			#expect(unit.liters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Liters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.00)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.liters = 1.0
			#expect(unit.liters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests setting the type from a value in Liters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.00)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.liters = -1.0
			#expect(unit.liters.isApproximatelyEqual(to: -1.0))
		}

	/// Tests setting the type from a value in Liters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.10)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.liters = 0.1
			#expect(unit.liters.isApproximatelyEqual(to: 0.1))
		}

	/// Tests setting the type from a value in Liters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50.00)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.liters = 50.0
			#expect(unit.liters.isApproximatelyEqual(to: 50.0))
		}

	/// Tests initializing the type from a value in Liters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(liters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Liters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(liters: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Liters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(liters: -1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Liters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(liters: 0.25)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Liters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(liters: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Liters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.liters(0.0)
			#expect(unit.liters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Liters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_1() async throws {
			let unit = Volume.liters(1.0)
			#expect(unit.liters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Liters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.00)")
		func testRoundTrip_2() async throws {
			let unit = Volume.liters(-1.0)
			#expect(unit.liters.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Liters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.liters(0.001)
			#expect(unit.liters.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Liters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Volume.liters(1000000.0)
			#expect(unit.liters.isApproximatelyEqual(to: 1000000.0))
		}
	}
/// Megaliters unit tests.
///
	@Suite("Megaliters")
	struct megalitersTests {
	/// Tests initializing the type from a value in Megaliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.megaliters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Megaliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.megaliters(1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Megaliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.megaliters(-1e-06)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Megaliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.megaliters(1.0000000000000001e-07)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Megaliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.megaliters(5e-05)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Megaliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.megaliters = 0.0
			#expect(unit.megaliters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Megaliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.megaliters = 1e-06
			#expect(unit.megaliters.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests setting the type from a value in Megaliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.megaliters = -1e-06
			#expect(unit.megaliters.isApproximatelyEqual(to: -1e-06))
		}

	/// Tests setting the type from a value in Megaliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.megaliters = 1.0000000000000001e-07
			#expect(unit.megaliters.isApproximatelyEqual(to: 1.0000000000000001e-07))
		}

	/// Tests setting the type from a value in Megaliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.megaliters = 5e-05
			#expect(unit.megaliters.isApproximatelyEqual(to: 5e-05))
		}

	/// Tests initializing the type from a value in Megaliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(megaliters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Megaliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(megaliters: 1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Megaliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(megaliters: -1e-06)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Megaliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(megaliters: 2.5e-07)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Megaliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(megaliters: 0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Megaliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.megaliters(0.0)
			#expect(unit.megaliters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Megaliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Volume.megaliters(1e-06)
			#expect(unit.megaliters.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests initializing the type from a value in Megaliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Volume.megaliters(-1e-06)
			#expect(unit.megaliters.isApproximatelyEqual(to: -1e-06))
		}

	/// Tests initializing the type from a value in Megaliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.megaliters(1e-09)
			#expect(unit.megaliters.isApproximatelyEqual(to: 1e-09))
		}

	/// Tests initializing the type from a value in Megaliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_4() async throws {
			let unit = Volume.megaliters(1.0)
			#expect(unit.megaliters.isApproximatelyEqual(to: 1.0))
		}
	}
/// Metric Cups unit tests.
///
	@Suite("Metric Cups")
	struct metricCupsTests {
	/// Tests initializing the type from a value in Metric Cups
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.metricCups(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Metric Cups
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.metricCups(4.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Metric Cups
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.metricCups(-4.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Metric Cups
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.metricCups(0.4)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Metric Cups
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.metricCups(200.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Metric Cups and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.metricCups = 0.0
			#expect(unit.metricCups.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Metric Cups and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (4.00)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.metricCups = 4.0
			#expect(unit.metricCups.isApproximatelyEqual(to: 4.0))
		}

	/// Tests setting the type from a value in Metric Cups and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-4.00)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.metricCups = -4.0
			#expect(unit.metricCups.isApproximatelyEqual(to: -4.0))
		}

	/// Tests setting the type from a value in Metric Cups and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.40)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.metricCups = 0.4
			#expect(unit.metricCups.isApproximatelyEqual(to: 0.4))
		}

	/// Tests setting the type from a value in Metric Cups and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (200.00)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.metricCups = 200.0
			#expect(unit.metricCups.isApproximatelyEqual(to: 200.0))
		}

	/// Tests initializing the type from a value in Metric Cups
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(metricCups: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Metric Cups
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(metricCups: 4.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Metric Cups
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(metricCups: -4.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Metric Cups
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(metricCups: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Metric Cups
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(metricCups: 4000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Metric Cups and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.metricCups(0.0)
			#expect(unit.metricCups.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Metric Cups and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (4.00)")
		func testRoundTrip_1() async throws {
			let unit = Volume.metricCups(4.0)
			#expect(unit.metricCups.isApproximatelyEqual(to: 4.0))
		}

	/// Tests initializing the type from a value in Metric Cups and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-4.00)")
		func testRoundTrip_2() async throws {
			let unit = Volume.metricCups(-4.0)
			#expect(unit.metricCups.isApproximatelyEqual(to: -4.0))
		}

	/// Tests initializing the type from a value in Metric Cups and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.metricCups(0.004)
			#expect(unit.metricCups.isApproximatelyEqual(to: 0.004))
		}

	/// Tests initializing the type from a value in Metric Cups and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (4000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Volume.metricCups(4000000.0)
			#expect(unit.metricCups.isApproximatelyEqual(to: 4000000.0))
		}
	}
/// Milliliters unit tests.
///
	@Suite("Milliliters")
	struct millilitersTests {
	/// Tests initializing the type from a value in Milliliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.milliliters(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Milliliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.milliliters(1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Milliliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.milliliters(-1000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Milliliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.milliliters(100.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Milliliters
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.milliliters(50000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Milliliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.milliliters = 0.0
			#expect(unit.milliliters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Milliliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000.00)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.milliliters = 1000.0
			#expect(unit.milliliters.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests setting the type from a value in Milliliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000.00)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.milliliters = -1000.0
			#expect(unit.milliliters.isApproximatelyEqual(to: -1000.0))
		}

	/// Tests setting the type from a value in Milliliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100.00)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.milliliters = 100.0
			#expect(unit.milliliters.isApproximatelyEqual(to: 100.0))
		}

	/// Tests setting the type from a value in Milliliters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000.00)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.milliliters = 50000.0
			#expect(unit.milliliters.isApproximatelyEqual(to: 50000.0))
		}

	/// Tests initializing the type from a value in Milliliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(milliliters: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Milliliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(milliliters: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Milliliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(milliliters: -1000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Milliliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(milliliters: 250.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Milliliters
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(milliliters: 1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Milliliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.milliliters(0.0)
			#expect(unit.milliliters.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Milliliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_1() async throws {
			let unit = Volume.milliliters(1000.0)
			#expect(unit.milliliters.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Milliliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000.00)")
		func testRoundTrip_2() async throws {
			let unit = Volume.milliliters(-1000.0)
			#expect(unit.milliliters.isApproximatelyEqual(to: -1000.0))
		}

	/// Tests initializing the type from a value in Milliliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.milliliters(1.0)
			#expect(unit.milliliters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Milliliters and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Volume.milliliters(1000000000.0)
			#expect(unit.milliliters.isApproximatelyEqual(to: 1000000000.0))
		}
	}
/// Pints unit tests.
///
	@Suite("Pints")
	struct pintsTests {
	/// Tests initializing the type from a value in Pints
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.pints(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Pints
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.pints(2.1133785314555262)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Pints
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.pints(-2.1133785314555262)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Pints
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.pints(0.21133785314555262)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Pints
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.pints(105.6689265727763)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Pints and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.pints = 0.0
			#expect(unit.pints.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Pints and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (2.11)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.pints = 2.1133785314555262
			#expect(unit.pints.isApproximatelyEqual(to: 2.1133785314555262))
		}

	/// Tests setting the type from a value in Pints and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-2.11)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.pints = -2.1133785314555262
			#expect(unit.pints.isApproximatelyEqual(to: -2.1133785314555262))
		}

	/// Tests setting the type from a value in Pints and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.21)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.pints = 0.21133785314555262
			#expect(unit.pints.isApproximatelyEqual(to: 0.21133785314555262))
		}

	/// Tests setting the type from a value in Pints and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (105.67)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.pints = 105.6689265727763
			#expect(unit.pints.isApproximatelyEqual(to: 105.6689265727763))
		}

	/// Tests initializing the type from a value in Pints
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(pints: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Pints
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(pints: 2.1133785314555262)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Pints
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(pints: -2.1133785314555262)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Pints
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(pints: 0.5283446328638816)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Pints
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(pints: 2113.378531455526)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Pints and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.pints(0.0)
			#expect(unit.pints.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Pints and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (2.11)")
		func testRoundTrip_1() async throws {
			let unit = Volume.pints(2.1133785314555262)
			#expect(unit.pints.isApproximatelyEqual(to: 2.1133785314555262))
		}

	/// Tests initializing the type from a value in Pints and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-2.11)")
		func testRoundTrip_2() async throws {
			let unit = Volume.pints(-2.1133785314555262)
			#expect(unit.pints.isApproximatelyEqual(to: -2.1133785314555262))
		}

	/// Tests initializing the type from a value in Pints and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.pints(0.0021133785314555262)
			#expect(unit.pints.isApproximatelyEqual(to: 0.0021133785314555262))
		}

	/// Tests initializing the type from a value in Pints and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (2113378.53)")
		func testRoundTrip_4() async throws {
			let unit = Volume.pints(2113378.531455526)
			#expect(unit.pints.isApproximatelyEqual(to: 2113378.531455526))
		}
	}
/// Quarts unit tests.
///
	@Suite("Quarts")
	struct quartsTests {
	/// Tests initializing the type from a value in Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.quarts(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.quarts(1.0566881491367386)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.quarts(-1.0566881491367386)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.quarts(0.10566881491367387)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.quarts(52.83440745683693)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Quarts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.quarts = 0.0
			#expect(unit.quarts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Quarts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.06)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.quarts = 1.0566881491367386
			#expect(unit.quarts.isApproximatelyEqual(to: 1.0566881491367386))
		}

	/// Tests setting the type from a value in Quarts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.06)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.quarts = -1.0566881491367386
			#expect(unit.quarts.isApproximatelyEqual(to: -1.0566881491367386))
		}

	/// Tests setting the type from a value in Quarts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.11)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.quarts = 0.10566881491367387
			#expect(unit.quarts.isApproximatelyEqual(to: 0.10566881491367387))
		}

	/// Tests setting the type from a value in Quarts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (52.83)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.quarts = 52.83440745683693
			#expect(unit.quarts.isApproximatelyEqual(to: 52.83440745683693))
		}

	/// Tests initializing the type from a value in Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(quarts: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(quarts: 1.0566881491367386)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(quarts: -1.0566881491367386)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(quarts: 0.26417203728418465)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Quarts
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(quarts: 1056.6881491367387)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Quarts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.quarts(0.0)
			#expect(unit.quarts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Quarts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.06)")
		func testRoundTrip_1() async throws {
			let unit = Volume.quarts(1.0566881491367386)
			#expect(unit.quarts.isApproximatelyEqual(to: 1.0566881491367386))
		}

	/// Tests initializing the type from a value in Quarts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.06)")
		func testRoundTrip_2() async throws {
			let unit = Volume.quarts(-1.0566881491367386)
			#expect(unit.quarts.isApproximatelyEqual(to: -1.0566881491367386))
		}

	/// Tests initializing the type from a value in Quarts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Volume.quarts(0.0010566881491367386)
			#expect(unit.quarts.isApproximatelyEqual(to: 0.0010566881491367386))
		}

	/// Tests initializing the type from a value in Quarts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1056688.15)")
		func testRoundTrip_4() async throws {
			let unit = Volume.quarts(1056688.1491367386)
			#expect(unit.quarts.isApproximatelyEqual(to: 1056688.1491367386))
		}
	}
/// Tablespoons unit tests.
///
	@Suite("Tablespoons")
	struct tablespoonsTests {
	/// Tests initializing the type from a value in Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.tablespoons(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.tablespoons(67.62788432926665)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.tablespoons(-67.62788432926665)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.tablespoons(6.762788432926665)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.tablespoons(3381.394216463332)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Tablespoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.tablespoons = 0.0
			#expect(unit.tablespoons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Tablespoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (67.63)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.tablespoons = 67.62788432926665
			#expect(unit.tablespoons.isApproximatelyEqual(to: 67.62788432926665))
		}

	/// Tests setting the type from a value in Tablespoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-67.63)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.tablespoons = -67.62788432926665
			#expect(unit.tablespoons.isApproximatelyEqual(to: -67.62788432926665))
		}

	/// Tests setting the type from a value in Tablespoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (6.76)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.tablespoons = 6.762788432926665
			#expect(unit.tablespoons.isApproximatelyEqual(to: 6.762788432926665))
		}

	/// Tests setting the type from a value in Tablespoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (3381.39)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.tablespoons = 3381.394216463332
			#expect(unit.tablespoons.isApproximatelyEqual(to: 3381.394216463332))
		}

	/// Tests initializing the type from a value in Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(tablespoons: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(tablespoons: 67.62788432926665)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(tablespoons: -67.62788432926665)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(tablespoons: 16.906971082316662)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Tablespoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(tablespoons: 67627.88432926664)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Tablespoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.tablespoons(0.0)
			#expect(unit.tablespoons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Tablespoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (67.63)")
		func testRoundTrip_1() async throws {
			let unit = Volume.tablespoons(67.62788432926665)
			#expect(unit.tablespoons.isApproximatelyEqual(to: 67.62788432926665))
		}

	/// Tests initializing the type from a value in Tablespoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-67.63)")
		func testRoundTrip_2() async throws {
			let unit = Volume.tablespoons(-67.62788432926665)
			#expect(unit.tablespoons.isApproximatelyEqual(to: -67.62788432926665))
		}

	/// Tests initializing the type from a value in Tablespoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.07)")
		func testRoundTrip_3() async throws {
			let unit = Volume.tablespoons(0.06762788432926665)
			#expect(unit.tablespoons.isApproximatelyEqual(to: 0.06762788432926665))
		}

	/// Tests initializing the type from a value in Tablespoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (67627884.33)")
		func testRoundTrip_4() async throws {
			let unit = Volume.tablespoons(67627884.32926665)
			#expect(unit.tablespoons.isApproximatelyEqual(to: 67627884.32926665))
		}
	}
/// Teaspoons unit tests.
///
	@Suite("Teaspoons")
	struct teaspoonsTests {
	/// Tests initializing the type from a value in Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Volume.teaspoons(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Volume.teaspoons(202.88420181297323)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Volume.teaspoons(-202.88420181297323)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Volume.teaspoons(20.288420181297326)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Volume.teaspoons(10144.210090648661)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Teaspoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Volume<Double>.zero
			unit.teaspoons = 0.0
			#expect(unit.teaspoons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Teaspoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (202.88)")
		func testGetAndSet_1() async throws {
			var unit = Volume<Double>.zero
			unit.teaspoons = 202.88420181297323
			#expect(unit.teaspoons.isApproximatelyEqual(to: 202.88420181297323))
		}

	/// Tests setting the type from a value in Teaspoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-202.88)")
		func testGetAndSet_2() async throws {
			var unit = Volume<Double>.zero
			unit.teaspoons = -202.88420181297323
			#expect(unit.teaspoons.isApproximatelyEqual(to: -202.88420181297323))
		}

	/// Tests setting the type from a value in Teaspoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (20.29)")
		func testGetAndSet_3() async throws {
			var unit = Volume<Double>.zero
			unit.teaspoons = 20.288420181297326
			#expect(unit.teaspoons.isApproximatelyEqual(to: 20.288420181297326))
		}

	/// Tests setting the type from a value in Teaspoons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (10144.21)")
		func testGetAndSet_4() async throws {
			var unit = Volume<Double>.zero
			unit.teaspoons = 10144.210090648661
			#expect(unit.teaspoons.isApproximatelyEqual(to: 10144.210090648661))
		}

	/// Tests initializing the type from a value in Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Volume(teaspoons: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Volume(teaspoons: 202.88420181297323)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Volume(teaspoons: -202.88420181297323)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Volume(teaspoons: 50.72105045324331)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Teaspoons
	/// and checking the stored value in Liters.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Volume(teaspoons: 202884.20181297325)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Teaspoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Volume.teaspoons(0.0)
			#expect(unit.teaspoons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Teaspoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (202.88)")
		func testRoundTrip_1() async throws {
			let unit = Volume.teaspoons(202.88420181297323)
			#expect(unit.teaspoons.isApproximatelyEqual(to: 202.88420181297323))
		}

	/// Tests initializing the type from a value in Teaspoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-202.88)")
		func testRoundTrip_2() async throws {
			let unit = Volume.teaspoons(-202.88420181297323)
			#expect(unit.teaspoons.isApproximatelyEqual(to: -202.88420181297323))
		}

	/// Tests initializing the type from a value in Teaspoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.20)")
		func testRoundTrip_3() async throws {
			let unit = Volume.teaspoons(0.20288420181297323)
			#expect(unit.teaspoons.isApproximatelyEqual(to: 0.20288420181297323))
		}

	/// Tests initializing the type from a value in Teaspoons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (202884201.81)")
		func testRoundTrip_4() async throws {
			let unit = Volume.teaspoons(202884201.81297323)
			#expect(unit.teaspoons.isApproximatelyEqual(to: 202884201.81297323))
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
			for unit in Volume<Double>.MeasurementUnit.allCases {
				#expect(!unit.symbol(for: 1.0).isEmpty)
				#expect(!unit.symbol(for: 2.0).isEmpty)
			}
		}
	}
}
