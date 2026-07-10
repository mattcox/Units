//
//  Pressure.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Pressure")
struct PressureTests {
/// Bars unit tests.
///
	@Suite("Bars")
	struct barsTests {
	/// Tests initializing the type from a value in Bars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Pressure.bars(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Bars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Pressure.bars(1e-05)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Bars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Pressure.bars(-1e-05)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Bars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Pressure.bars(1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Bars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Pressure.bars(0.0005)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Bars and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Pressure<Double>.zero
			unit.bars = 0.0
			#expect(unit.bars.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Bars and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Pressure<Double>.zero
			unit.bars = 1e-05
			#expect(unit.bars.isApproximatelyEqual(to: 1e-05))
		}

	/// Tests setting the type from a value in Bars and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Pressure<Double>.zero
			unit.bars = -1e-05
			#expect(unit.bars.isApproximatelyEqual(to: -1e-05))
		}

	/// Tests setting the type from a value in Bars and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Pressure<Double>.zero
			unit.bars = 1e-06
			#expect(unit.bars.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests setting the type from a value in Bars and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Pressure<Double>.zero
			unit.bars = 0.0005
			#expect(unit.bars.isApproximatelyEqual(to: 0.0005))
		}

	/// Tests initializing the type from a value in Bars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Pressure(bars: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Bars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Pressure(bars: 1e-05)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Bars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Pressure(bars: -1e-05)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Bars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Pressure(bars: 2.5e-06)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Bars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Pressure(bars: 0.01)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Bars and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Pressure.bars(0.0)
			#expect(unit.bars.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Bars and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Pressure.bars(1e-05)
			#expect(unit.bars.isApproximatelyEqual(to: 1e-05))
		}

	/// Tests initializing the type from a value in Bars and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Pressure.bars(-1e-05)
			#expect(unit.bars.isApproximatelyEqual(to: -1e-05))
		}

	/// Tests initializing the type from a value in Bars and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Pressure.bars(1e-08)
			#expect(unit.bars.isApproximatelyEqual(to: 1e-08))
		}

	/// Tests initializing the type from a value in Bars and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10.00)")
		func testRoundTrip_4() async throws {
			let unit = Pressure.bars(10.0)
			#expect(unit.bars.isApproximatelyEqual(to: 10.0))
		}
	}
/// Gigapascals unit tests.
///
	@Suite("Gigapascals")
	struct gigapascalsTests {
	/// Tests initializing the type from a value in Gigapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Pressure.gigapascals(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Gigapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Pressure.gigapascals(1e-09)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Gigapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Pressure.gigapascals(-1e-09)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Gigapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Pressure.gigapascals(1e-10)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Gigapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Pressure.gigapascals(5e-08)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Gigapascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Pressure<Double>.zero
			unit.gigapascals = 0.0
			#expect(unit.gigapascals.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Gigapascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Pressure<Double>.zero
			unit.gigapascals = 1e-09
			#expect(unit.gigapascals.isApproximatelyEqual(to: 1e-09))
		}

	/// Tests setting the type from a value in Gigapascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Pressure<Double>.zero
			unit.gigapascals = -1e-09
			#expect(unit.gigapascals.isApproximatelyEqual(to: -1e-09))
		}

	/// Tests setting the type from a value in Gigapascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Pressure<Double>.zero
			unit.gigapascals = 1e-10
			#expect(unit.gigapascals.isApproximatelyEqual(to: 1e-10))
		}

	/// Tests setting the type from a value in Gigapascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Pressure<Double>.zero
			unit.gigapascals = 5e-08
			#expect(unit.gigapascals.isApproximatelyEqual(to: 5e-08))
		}

	/// Tests initializing the type from a value in Gigapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Pressure(gigapascals: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Gigapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Pressure(gigapascals: 1e-09)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Gigapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Pressure(gigapascals: -1e-09)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Gigapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Pressure(gigapascals: 2.5e-10)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Gigapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Pressure(gigapascals: 1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Gigapascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Pressure.gigapascals(0.0)
			#expect(unit.gigapascals.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Gigapascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Pressure.gigapascals(1e-09)
			#expect(unit.gigapascals.isApproximatelyEqual(to: 1e-09))
		}

	/// Tests initializing the type from a value in Gigapascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Pressure.gigapascals(-1e-09)
			#expect(unit.gigapascals.isApproximatelyEqual(to: -1e-09))
		}

	/// Tests initializing the type from a value in Gigapascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Pressure.gigapascals(1e-12)
			#expect(unit.gigapascals.isApproximatelyEqual(to: 1e-12))
		}

	/// Tests initializing the type from a value in Gigapascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_4() async throws {
			let unit = Pressure.gigapascals(0.001)
			#expect(unit.gigapascals.isApproximatelyEqual(to: 0.001))
		}
	}
/// Hectopascals unit tests.
///
	@Suite("Hectopascals")
	struct hectopascalsTests {
	/// Tests initializing the type from a value in Hectopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Pressure.hectopascals(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Hectopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Pressure.hectopascals(0.01)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Hectopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Pressure.hectopascals(-0.01)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Hectopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Pressure.hectopascals(0.001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Hectopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Pressure.hectopascals(0.5)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Hectopascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Pressure<Double>.zero
			unit.hectopascals = 0.0
			#expect(unit.hectopascals.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Hectopascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.01)")
		func testGetAndSet_1() async throws {
			var unit = Pressure<Double>.zero
			unit.hectopascals = 0.01
			#expect(unit.hectopascals.isApproximatelyEqual(to: 0.01))
		}

	/// Tests setting the type from a value in Hectopascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.01)")
		func testGetAndSet_2() async throws {
			var unit = Pressure<Double>.zero
			unit.hectopascals = -0.01
			#expect(unit.hectopascals.isApproximatelyEqual(to: -0.01))
		}

	/// Tests setting the type from a value in Hectopascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Pressure<Double>.zero
			unit.hectopascals = 0.001
			#expect(unit.hectopascals.isApproximatelyEqual(to: 0.001))
		}

	/// Tests setting the type from a value in Hectopascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.50)")
		func testGetAndSet_4() async throws {
			var unit = Pressure<Double>.zero
			unit.hectopascals = 0.5
			#expect(unit.hectopascals.isApproximatelyEqual(to: 0.5))
		}

	/// Tests initializing the type from a value in Hectopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Pressure(hectopascals: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Hectopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Pressure(hectopascals: 0.01)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Hectopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Pressure(hectopascals: -0.01)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Hectopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Pressure(hectopascals: 0.0025)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Hectopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Pressure(hectopascals: 10.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Hectopascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Pressure.hectopascals(0.0)
			#expect(unit.hectopascals.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Hectopascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.01)")
		func testRoundTrip_1() async throws {
			let unit = Pressure.hectopascals(0.01)
			#expect(unit.hectopascals.isApproximatelyEqual(to: 0.01))
		}

	/// Tests initializing the type from a value in Hectopascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.01)")
		func testRoundTrip_2() async throws {
			let unit = Pressure.hectopascals(-0.01)
			#expect(unit.hectopascals.isApproximatelyEqual(to: -0.01))
		}

	/// Tests initializing the type from a value in Hectopascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Pressure.hectopascals(1e-05)
			#expect(unit.hectopascals.isApproximatelyEqual(to: 1e-05))
		}

	/// Tests initializing the type from a value in Hectopascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10000.00)")
		func testRoundTrip_4() async throws {
			let unit = Pressure.hectopascals(10000.0)
			#expect(unit.hectopascals.isApproximatelyEqual(to: 10000.0))
		}
	}
/// Inches Of Mercury unit tests.
///
	@Suite("Inches Of Mercury")
	struct inchesOfMercuryTests {
	/// Tests initializing the type from a value in Inches Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Pressure.inchesOfMercury(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Inches Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Pressure.inchesOfMercury(0.00029529971444517615)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Inches Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Pressure.inchesOfMercury(-0.00029529971444517615)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Inches Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Pressure.inchesOfMercury(2.9529971444517616e-05)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Inches Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Pressure.inchesOfMercury(0.014764985722258808)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Inches Of Mercury and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Pressure<Double>.zero
			unit.inchesOfMercury = 0.0
			#expect(unit.inchesOfMercury.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Inches Of Mercury and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Pressure<Double>.zero
			unit.inchesOfMercury = 0.00029529971444517615
			#expect(unit.inchesOfMercury.isApproximatelyEqual(to: 0.00029529971444517615))
		}

	/// Tests setting the type from a value in Inches Of Mercury and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Pressure<Double>.zero
			unit.inchesOfMercury = -0.00029529971444517615
			#expect(unit.inchesOfMercury.isApproximatelyEqual(to: -0.00029529971444517615))
		}

	/// Tests setting the type from a value in Inches Of Mercury and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Pressure<Double>.zero
			unit.inchesOfMercury = 2.9529971444517616e-05
			#expect(unit.inchesOfMercury.isApproximatelyEqual(to: 2.9529971444517616e-05))
		}

	/// Tests setting the type from a value in Inches Of Mercury and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.01)")
		func testGetAndSet_4() async throws {
			var unit = Pressure<Double>.zero
			unit.inchesOfMercury = 0.014764985722258808
			#expect(unit.inchesOfMercury.isApproximatelyEqual(to: 0.014764985722258808))
		}

	/// Tests initializing the type from a value in Inches Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Pressure(inchesOfMercury: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Inches Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Pressure(inchesOfMercury: 0.00029529971444517615)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Inches Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Pressure(inchesOfMercury: -0.00029529971444517615)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Inches Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Pressure(inchesOfMercury: 7.382492861129404e-05)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Inches Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Pressure(inchesOfMercury: 0.29529971444517616)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Inches Of Mercury and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Pressure.inchesOfMercury(0.0)
			#expect(unit.inchesOfMercury.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Inches Of Mercury and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Pressure.inchesOfMercury(0.00029529971444517615)
			#expect(unit.inchesOfMercury.isApproximatelyEqual(to: 0.00029529971444517615))
		}

	/// Tests initializing the type from a value in Inches Of Mercury and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Pressure.inchesOfMercury(-0.00029529971444517615)
			#expect(unit.inchesOfMercury.isApproximatelyEqual(to: -0.00029529971444517615))
		}

	/// Tests initializing the type from a value in Inches Of Mercury and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Pressure.inchesOfMercury(2.9529971444517614e-07)
			#expect(unit.inchesOfMercury.isApproximatelyEqual(to: 2.9529971444517614e-07))
		}

	/// Tests initializing the type from a value in Inches Of Mercury and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (295.30)")
		func testRoundTrip_4() async throws {
			let unit = Pressure.inchesOfMercury(295.29971444517616)
			#expect(unit.inchesOfMercury.isApproximatelyEqual(to: 295.29971444517616))
		}
	}
/// Kilopascals unit tests.
///
	@Suite("Kilopascals")
	struct kilopascalsTests {
	/// Tests initializing the type from a value in Kilopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Pressure.kilopascals(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Pressure.kilopascals(0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Kilopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Pressure.kilopascals(-0.001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Kilopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Pressure.kilopascals(0.0001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Kilopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Pressure.kilopascals(0.05)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Kilopascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Pressure<Double>.zero
			unit.kilopascals = 0.0
			#expect(unit.kilopascals.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Kilopascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Pressure<Double>.zero
			unit.kilopascals = 0.001
			#expect(unit.kilopascals.isApproximatelyEqual(to: 0.001))
		}

	/// Tests setting the type from a value in Kilopascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Pressure<Double>.zero
			unit.kilopascals = -0.001
			#expect(unit.kilopascals.isApproximatelyEqual(to: -0.001))
		}

	/// Tests setting the type from a value in Kilopascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Pressure<Double>.zero
			unit.kilopascals = 0.0001
			#expect(unit.kilopascals.isApproximatelyEqual(to: 0.0001))
		}

	/// Tests setting the type from a value in Kilopascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.05)")
		func testGetAndSet_4() async throws {
			var unit = Pressure<Double>.zero
			unit.kilopascals = 0.05
			#expect(unit.kilopascals.isApproximatelyEqual(to: 0.05))
		}

	/// Tests initializing the type from a value in Kilopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Pressure(kilopascals: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Pressure(kilopascals: 0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Kilopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Pressure(kilopascals: -0.001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Kilopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Pressure(kilopascals: 0.00025)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Kilopascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Pressure(kilopascals: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Kilopascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Pressure.kilopascals(0.0)
			#expect(unit.kilopascals.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilopascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Pressure.kilopascals(0.001)
			#expect(unit.kilopascals.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Kilopascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Pressure.kilopascals(-0.001)
			#expect(unit.kilopascals.isApproximatelyEqual(to: -0.001))
		}

	/// Tests initializing the type from a value in Kilopascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Pressure.kilopascals(1e-06)
			#expect(unit.kilopascals.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests initializing the type from a value in Kilopascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_4() async throws {
			let unit = Pressure.kilopascals(1000.0)
			#expect(unit.kilopascals.isApproximatelyEqual(to: 1000.0))
		}
	}
/// Megapascals unit tests.
///
	@Suite("Megapascals")
	struct megapascalsTests {
	/// Tests initializing the type from a value in Megapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Pressure.megapascals(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Megapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Pressure.megapascals(1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Megapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Pressure.megapascals(-1e-06)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Megapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Pressure.megapascals(1.0000000000000001e-07)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Megapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Pressure.megapascals(5e-05)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Megapascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Pressure<Double>.zero
			unit.megapascals = 0.0
			#expect(unit.megapascals.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Megapascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Pressure<Double>.zero
			unit.megapascals = 1e-06
			#expect(unit.megapascals.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests setting the type from a value in Megapascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Pressure<Double>.zero
			unit.megapascals = -1e-06
			#expect(unit.megapascals.isApproximatelyEqual(to: -1e-06))
		}

	/// Tests setting the type from a value in Megapascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Pressure<Double>.zero
			unit.megapascals = 1.0000000000000001e-07
			#expect(unit.megapascals.isApproximatelyEqual(to: 1.0000000000000001e-07))
		}

	/// Tests setting the type from a value in Megapascals and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Pressure<Double>.zero
			unit.megapascals = 5e-05
			#expect(unit.megapascals.isApproximatelyEqual(to: 5e-05))
		}

	/// Tests initializing the type from a value in Megapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Pressure(megapascals: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Megapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Pressure(megapascals: 1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Megapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Pressure(megapascals: -1e-06)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Megapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Pressure(megapascals: 2.5e-07)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Megapascals
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Pressure(megapascals: 0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Megapascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Pressure.megapascals(0.0)
			#expect(unit.megapascals.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Megapascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Pressure.megapascals(1e-06)
			#expect(unit.megapascals.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests initializing the type from a value in Megapascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Pressure.megapascals(-1e-06)
			#expect(unit.megapascals.isApproximatelyEqual(to: -1e-06))
		}

	/// Tests initializing the type from a value in Megapascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Pressure.megapascals(1e-09)
			#expect(unit.megapascals.isApproximatelyEqual(to: 1e-09))
		}

	/// Tests initializing the type from a value in Megapascals and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_4() async throws {
			let unit = Pressure.megapascals(1.0)
			#expect(unit.megapascals.isApproximatelyEqual(to: 1.0))
		}
	}
/// Millibars unit tests.
///
	@Suite("Millibars")
	struct millibarsTests {
	/// Tests initializing the type from a value in Millibars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Pressure.millibars(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Millibars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Pressure.millibars(0.01)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Millibars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Pressure.millibars(-0.01)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Millibars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Pressure.millibars(0.001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Millibars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Pressure.millibars(0.5)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Millibars and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Pressure<Double>.zero
			unit.millibars = 0.0
			#expect(unit.millibars.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Millibars and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.01)")
		func testGetAndSet_1() async throws {
			var unit = Pressure<Double>.zero
			unit.millibars = 0.01
			#expect(unit.millibars.isApproximatelyEqual(to: 0.01))
		}

	/// Tests setting the type from a value in Millibars and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.01)")
		func testGetAndSet_2() async throws {
			var unit = Pressure<Double>.zero
			unit.millibars = -0.01
			#expect(unit.millibars.isApproximatelyEqual(to: -0.01))
		}

	/// Tests setting the type from a value in Millibars and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Pressure<Double>.zero
			unit.millibars = 0.001
			#expect(unit.millibars.isApproximatelyEqual(to: 0.001))
		}

	/// Tests setting the type from a value in Millibars and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.50)")
		func testGetAndSet_4() async throws {
			var unit = Pressure<Double>.zero
			unit.millibars = 0.5
			#expect(unit.millibars.isApproximatelyEqual(to: 0.5))
		}

	/// Tests initializing the type from a value in Millibars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Pressure(millibars: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Millibars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Pressure(millibars: 0.01)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Millibars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Pressure(millibars: -0.01)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Millibars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Pressure(millibars: 0.0025)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Millibars
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Pressure(millibars: 10.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Millibars and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Pressure.millibars(0.0)
			#expect(unit.millibars.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Millibars and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.01)")
		func testRoundTrip_1() async throws {
			let unit = Pressure.millibars(0.01)
			#expect(unit.millibars.isApproximatelyEqual(to: 0.01))
		}

	/// Tests initializing the type from a value in Millibars and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.01)")
		func testRoundTrip_2() async throws {
			let unit = Pressure.millibars(-0.01)
			#expect(unit.millibars.isApproximatelyEqual(to: -0.01))
		}

	/// Tests initializing the type from a value in Millibars and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Pressure.millibars(1e-05)
			#expect(unit.millibars.isApproximatelyEqual(to: 1e-05))
		}

	/// Tests initializing the type from a value in Millibars and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10000.00)")
		func testRoundTrip_4() async throws {
			let unit = Pressure.millibars(10000.0)
			#expect(unit.millibars.isApproximatelyEqual(to: 10000.0))
		}
	}
/// Millimeters Of Mercury unit tests.
///
	@Suite("Millimeters Of Mercury")
	struct millimetersOfMercuryTests {
	/// Tests initializing the type from a value in Millimeters Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Pressure.millimetersOfMercury(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Millimeters Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Pressure.millimetersOfMercury(0.007500637554192106)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Millimeters Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Pressure.millimetersOfMercury(-0.007500637554192106)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Millimeters Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Pressure.millimetersOfMercury(0.0007500637554192106)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Millimeters Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Pressure.millimetersOfMercury(0.37503187770960533)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Millimeters Of Mercury and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Pressure<Double>.zero
			unit.millimetersOfMercury = 0.0
			#expect(unit.millimetersOfMercury.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Millimeters Of Mercury and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.01)")
		func testGetAndSet_1() async throws {
			var unit = Pressure<Double>.zero
			unit.millimetersOfMercury = 0.007500637554192106
			#expect(unit.millimetersOfMercury.isApproximatelyEqual(to: 0.007500637554192106))
		}

	/// Tests setting the type from a value in Millimeters Of Mercury and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.01)")
		func testGetAndSet_2() async throws {
			var unit = Pressure<Double>.zero
			unit.millimetersOfMercury = -0.007500637554192106
			#expect(unit.millimetersOfMercury.isApproximatelyEqual(to: -0.007500637554192106))
		}

	/// Tests setting the type from a value in Millimeters Of Mercury and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Pressure<Double>.zero
			unit.millimetersOfMercury = 0.0007500637554192106
			#expect(unit.millimetersOfMercury.isApproximatelyEqual(to: 0.0007500637554192106))
		}

	/// Tests setting the type from a value in Millimeters Of Mercury and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.38)")
		func testGetAndSet_4() async throws {
			var unit = Pressure<Double>.zero
			unit.millimetersOfMercury = 0.37503187770960533
			#expect(unit.millimetersOfMercury.isApproximatelyEqual(to: 0.37503187770960533))
		}

	/// Tests initializing the type from a value in Millimeters Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Pressure(millimetersOfMercury: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Millimeters Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Pressure(millimetersOfMercury: 0.007500637554192106)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Millimeters Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Pressure(millimetersOfMercury: -0.007500637554192106)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Millimeters Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Pressure(millimetersOfMercury: 0.0018751593885480266)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Millimeters Of Mercury
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Pressure(millimetersOfMercury: 7.500637554192106)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Millimeters Of Mercury and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Pressure.millimetersOfMercury(0.0)
			#expect(unit.millimetersOfMercury.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Millimeters Of Mercury and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.01)")
		func testRoundTrip_1() async throws {
			let unit = Pressure.millimetersOfMercury(0.007500637554192106)
			#expect(unit.millimetersOfMercury.isApproximatelyEqual(to: 0.007500637554192106))
		}

	/// Tests initializing the type from a value in Millimeters Of Mercury and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.01)")
		func testRoundTrip_2() async throws {
			let unit = Pressure.millimetersOfMercury(-0.007500637554192106)
			#expect(unit.millimetersOfMercury.isApproximatelyEqual(to: -0.007500637554192106))
		}

	/// Tests initializing the type from a value in Millimeters Of Mercury and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Pressure.millimetersOfMercury(7.5006375541921065e-06)
			#expect(unit.millimetersOfMercury.isApproximatelyEqual(to: 7.5006375541921065e-06))
		}

	/// Tests initializing the type from a value in Millimeters Of Mercury and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (7500.64)")
		func testRoundTrip_4() async throws {
			let unit = Pressure.millimetersOfMercury(7500.637554192106)
			#expect(unit.millimetersOfMercury.isApproximatelyEqual(to: 7500.637554192106))
		}
	}
/// Newtons Per Meters Squared unit tests.
///
	@Suite("Newtons Per Meters Squared")
	struct newtonsPerMetersSquaredTests {
	/// Tests initializing the type from a value in Newtons Per Meters Squared
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Pressure.newtonsPerMetersSquared(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Newtons Per Meters Squared
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Pressure.newtonsPerMetersSquared(1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Newtons Per Meters Squared
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Pressure.newtonsPerMetersSquared(-1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Newtons Per Meters Squared
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Pressure.newtonsPerMetersSquared(0.1)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Newtons Per Meters Squared
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Pressure.newtonsPerMetersSquared(50.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Newtons Per Meters Squared and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Pressure<Double>.zero
			unit.newtonsPerMetersSquared = 0.0
			#expect(unit.newtonsPerMetersSquared.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Newtons Per Meters Squared and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.00)")
		func testGetAndSet_1() async throws {
			var unit = Pressure<Double>.zero
			unit.newtonsPerMetersSquared = 1.0
			#expect(unit.newtonsPerMetersSquared.isApproximatelyEqual(to: 1.0))
		}

	/// Tests setting the type from a value in Newtons Per Meters Squared and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.00)")
		func testGetAndSet_2() async throws {
			var unit = Pressure<Double>.zero
			unit.newtonsPerMetersSquared = -1.0
			#expect(unit.newtonsPerMetersSquared.isApproximatelyEqual(to: -1.0))
		}

	/// Tests setting the type from a value in Newtons Per Meters Squared and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.10)")
		func testGetAndSet_3() async throws {
			var unit = Pressure<Double>.zero
			unit.newtonsPerMetersSquared = 0.1
			#expect(unit.newtonsPerMetersSquared.isApproximatelyEqual(to: 0.1))
		}

	/// Tests setting the type from a value in Newtons Per Meters Squared and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50.00)")
		func testGetAndSet_4() async throws {
			var unit = Pressure<Double>.zero
			unit.newtonsPerMetersSquared = 50.0
			#expect(unit.newtonsPerMetersSquared.isApproximatelyEqual(to: 50.0))
		}

	/// Tests initializing the type from a value in Newtons Per Meters Squared
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Pressure(newtonsPerMetersSquared: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Newtons Per Meters Squared
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Pressure(newtonsPerMetersSquared: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Newtons Per Meters Squared
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Pressure(newtonsPerMetersSquared: -1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Newtons Per Meters Squared
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Pressure(newtonsPerMetersSquared: 0.25)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Newtons Per Meters Squared
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Pressure(newtonsPerMetersSquared: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Newtons Per Meters Squared and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Pressure.newtonsPerMetersSquared(0.0)
			#expect(unit.newtonsPerMetersSquared.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Newtons Per Meters Squared and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_1() async throws {
			let unit = Pressure.newtonsPerMetersSquared(1.0)
			#expect(unit.newtonsPerMetersSquared.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Newtons Per Meters Squared and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.00)")
		func testRoundTrip_2() async throws {
			let unit = Pressure.newtonsPerMetersSquared(-1.0)
			#expect(unit.newtonsPerMetersSquared.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Newtons Per Meters Squared and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Pressure.newtonsPerMetersSquared(0.001)
			#expect(unit.newtonsPerMetersSquared.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Newtons Per Meters Squared and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Pressure.newtonsPerMetersSquared(1000000.0)
			#expect(unit.newtonsPerMetersSquared.isApproximatelyEqual(to: 1000000.0))
		}
	}
/// Pounds Force Per Square Inch unit tests.
///
	@Suite("Pounds Force Per Square Inch")
	struct poundsForcePerSquareInchTests {
	/// Tests initializing the type from a value in Pounds Force Per Square Inch
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Pressure.poundsForcePerSquareInch(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Pounds Force Per Square Inch
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Pressure.poundsForcePerSquareInch(0.0001450376807894691)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Pounds Force Per Square Inch
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Pressure.poundsForcePerSquareInch(-0.0001450376807894691)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Pounds Force Per Square Inch
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Pressure.poundsForcePerSquareInch(1.450376807894691e-05)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Pounds Force Per Square Inch
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Pressure.poundsForcePerSquareInch(0.007251884039473455)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Pounds Force Per Square Inch and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Pressure<Double>.zero
			unit.poundsForcePerSquareInch = 0.0
			#expect(unit.poundsForcePerSquareInch.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Pounds Force Per Square Inch and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Pressure<Double>.zero
			unit.poundsForcePerSquareInch = 0.0001450376807894691
			#expect(unit.poundsForcePerSquareInch.isApproximatelyEqual(to: 0.0001450376807894691))
		}

	/// Tests setting the type from a value in Pounds Force Per Square Inch and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Pressure<Double>.zero
			unit.poundsForcePerSquareInch = -0.0001450376807894691
			#expect(unit.poundsForcePerSquareInch.isApproximatelyEqual(to: -0.0001450376807894691))
		}

	/// Tests setting the type from a value in Pounds Force Per Square Inch and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Pressure<Double>.zero
			unit.poundsForcePerSquareInch = 1.450376807894691e-05
			#expect(unit.poundsForcePerSquareInch.isApproximatelyEqual(to: 1.450376807894691e-05))
		}

	/// Tests setting the type from a value in Pounds Force Per Square Inch and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.01)")
		func testGetAndSet_4() async throws {
			var unit = Pressure<Double>.zero
			unit.poundsForcePerSquareInch = 0.007251884039473455
			#expect(unit.poundsForcePerSquareInch.isApproximatelyEqual(to: 0.007251884039473455))
		}

	/// Tests initializing the type from a value in Pounds Force Per Square Inch
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Pressure(poundsForcePerSquareInch: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Pounds Force Per Square Inch
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Pressure(poundsForcePerSquareInch: 0.0001450376807894691)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Pounds Force Per Square Inch
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Pressure(poundsForcePerSquareInch: -0.0001450376807894691)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Pounds Force Per Square Inch
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Pressure(poundsForcePerSquareInch: 3.625942019736728e-05)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Pounds Force Per Square Inch
	/// and checking the stored value in Newtons Per Meters Squared.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Pressure(poundsForcePerSquareInch: 0.1450376807894691)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Pounds Force Per Square Inch and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Pressure.poundsForcePerSquareInch(0.0)
			#expect(unit.poundsForcePerSquareInch.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Pounds Force Per Square Inch and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Pressure.poundsForcePerSquareInch(0.0001450376807894691)
			#expect(unit.poundsForcePerSquareInch.isApproximatelyEqual(to: 0.0001450376807894691))
		}

	/// Tests initializing the type from a value in Pounds Force Per Square Inch and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Pressure.poundsForcePerSquareInch(-0.0001450376807894691)
			#expect(unit.poundsForcePerSquareInch.isApproximatelyEqual(to: -0.0001450376807894691))
		}

	/// Tests initializing the type from a value in Pounds Force Per Square Inch and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Pressure.poundsForcePerSquareInch(1.450376807894691e-07)
			#expect(unit.poundsForcePerSquareInch.isApproximatelyEqual(to: 1.450376807894691e-07))
		}

	/// Tests initializing the type from a value in Pounds Force Per Square Inch and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (145.04)")
		func testRoundTrip_4() async throws {
			let unit = Pressure.poundsForcePerSquareInch(145.0376807894691)
			#expect(unit.poundsForcePerSquareInch.isApproximatelyEqual(to: 145.0376807894691))
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
			for unit in Pressure<Double>.MeasurementUnit.allCases {
				#expect(!unit.symbol(for: 1.0).isEmpty)
				#expect(!unit.symbol(for: 2.0).isEmpty)
			}
		}
	}
}
