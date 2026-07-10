//
//  Power.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Power")
struct PowerTests {
/// Femtowatts unit tests.
///
	@Suite("Femtowatts")
	struct femtowattsTests {
	/// Tests initializing the type from a value in Femtowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Power.femtowatts(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Femtowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Power.femtowatts(999999999999999.9)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Femtowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Power.femtowatts(-999999999999999.9)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Femtowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Power.femtowatts(100000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Femtowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Power.femtowatts(5e+16)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Femtowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Power<Double>.zero
			unit.femtowatts = 0.0
			#expect(unit.femtowatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Femtowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (999999999999999.88)")
		func testGetAndSet_1() async throws {
			var unit = Power<Double>.zero
			unit.femtowatts = 999999999999999.9
			#expect(unit.femtowatts.isApproximatelyEqual(to: 999999999999999.9))
		}

	/// Tests setting the type from a value in Femtowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-999999999999999.88)")
		func testGetAndSet_2() async throws {
			var unit = Power<Double>.zero
			unit.femtowatts = -999999999999999.9
			#expect(unit.femtowatts.isApproximatelyEqual(to: -999999999999999.9))
		}

	/// Tests setting the type from a value in Femtowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000000000000.00)")
		func testGetAndSet_3() async throws {
			var unit = Power<Double>.zero
			unit.femtowatts = 100000000000000.0
			#expect(unit.femtowatts.isApproximatelyEqual(to: 100000000000000.0))
		}

	/// Tests setting the type from a value in Femtowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000000000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Power<Double>.zero
			unit.femtowatts = 5e+16
			#expect(unit.femtowatts.isApproximatelyEqual(to: 5e+16))
		}

	/// Tests initializing the type from a value in Femtowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Power(femtowatts: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Femtowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Power(femtowatts: 999999999999999.9)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Femtowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Power(femtowatts: -999999999999999.9)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Femtowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Power(femtowatts: 249999999999999.97)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Femtowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Power(femtowatts: 9.999999999999999e+17)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Femtowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Power.femtowatts(0.0)
			#expect(unit.femtowatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Femtowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (999999999999999.88)")
		func testRoundTrip_1() async throws {
			let unit = Power.femtowatts(999999999999999.9)
			#expect(unit.femtowatts.isApproximatelyEqual(to: 999999999999999.9))
		}

	/// Tests initializing the type from a value in Femtowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-999999999999999.88)")
		func testRoundTrip_2() async throws {
			let unit = Power.femtowatts(-999999999999999.9)
			#expect(unit.femtowatts.isApproximatelyEqual(to: -999999999999999.9))
		}

	/// Tests initializing the type from a value in Femtowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000.00)")
		func testRoundTrip_3() async throws {
			let unit = Power.femtowatts(1000000000000.0)
			#expect(unit.femtowatts.isApproximatelyEqual(to: 1000000000000.0))
		}

	/// Tests initializing the type from a value in Femtowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (999999999999999868928.00)")
		func testRoundTrip_4() async throws {
			let unit = Power.femtowatts(9.999999999999999e+20)
			#expect(unit.femtowatts.isApproximatelyEqual(to: 9.999999999999999e+20))
		}
	}
/// Gigawatts unit tests.
///
	@Suite("Gigawatts")
	struct gigawattsTests {
	/// Tests initializing the type from a value in Gigawatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Power.gigawatts(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Gigawatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Power.gigawatts(1e-09)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Gigawatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Power.gigawatts(-1e-09)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Gigawatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Power.gigawatts(1e-10)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Gigawatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Power.gigawatts(5e-08)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Gigawatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Power<Double>.zero
			unit.gigawatts = 0.0
			#expect(unit.gigawatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Gigawatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Power<Double>.zero
			unit.gigawatts = 1e-09
			#expect(unit.gigawatts.isApproximatelyEqual(to: 1e-09))
		}

	/// Tests setting the type from a value in Gigawatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Power<Double>.zero
			unit.gigawatts = -1e-09
			#expect(unit.gigawatts.isApproximatelyEqual(to: -1e-09))
		}

	/// Tests setting the type from a value in Gigawatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Power<Double>.zero
			unit.gigawatts = 1e-10
			#expect(unit.gigawatts.isApproximatelyEqual(to: 1e-10))
		}

	/// Tests setting the type from a value in Gigawatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Power<Double>.zero
			unit.gigawatts = 5e-08
			#expect(unit.gigawatts.isApproximatelyEqual(to: 5e-08))
		}

	/// Tests initializing the type from a value in Gigawatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Power(gigawatts: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Gigawatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Power(gigawatts: 1e-09)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Gigawatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Power(gigawatts: -1e-09)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Gigawatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Power(gigawatts: 2.5e-10)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Gigawatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Power(gigawatts: 1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Gigawatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Power.gigawatts(0.0)
			#expect(unit.gigawatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Gigawatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Power.gigawatts(1e-09)
			#expect(unit.gigawatts.isApproximatelyEqual(to: 1e-09))
		}

	/// Tests initializing the type from a value in Gigawatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Power.gigawatts(-1e-09)
			#expect(unit.gigawatts.isApproximatelyEqual(to: -1e-09))
		}

	/// Tests initializing the type from a value in Gigawatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Power.gigawatts(1e-12)
			#expect(unit.gigawatts.isApproximatelyEqual(to: 1e-12))
		}

	/// Tests initializing the type from a value in Gigawatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_4() async throws {
			let unit = Power.gigawatts(0.001)
			#expect(unit.gigawatts.isApproximatelyEqual(to: 0.001))
		}
	}
/// Horsepower unit tests.
///
	@Suite("Horsepower")
	struct horsepowerTests {
	/// Tests initializing the type from a value in Horsepower
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Power.horsepower(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Horsepower
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Power.horsepower(0.001341021858656296)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Horsepower
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Power.horsepower(-0.001341021858656296)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Horsepower
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Power.horsepower(0.00013410218586562962)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Horsepower
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Power.horsepower(0.0670510929328148)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Horsepower and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Power<Double>.zero
			unit.horsepower = 0.0
			#expect(unit.horsepower.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Horsepower and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Power<Double>.zero
			unit.horsepower = 0.001341021858656296
			#expect(unit.horsepower.isApproximatelyEqual(to: 0.001341021858656296))
		}

	/// Tests setting the type from a value in Horsepower and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Power<Double>.zero
			unit.horsepower = -0.001341021858656296
			#expect(unit.horsepower.isApproximatelyEqual(to: -0.001341021858656296))
		}

	/// Tests setting the type from a value in Horsepower and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Power<Double>.zero
			unit.horsepower = 0.00013410218586562962
			#expect(unit.horsepower.isApproximatelyEqual(to: 0.00013410218586562962))
		}

	/// Tests setting the type from a value in Horsepower and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.07)")
		func testGetAndSet_4() async throws {
			var unit = Power<Double>.zero
			unit.horsepower = 0.0670510929328148
			#expect(unit.horsepower.isApproximatelyEqual(to: 0.0670510929328148))
		}

	/// Tests initializing the type from a value in Horsepower
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Power(horsepower: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Horsepower
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Power(horsepower: 0.001341021858656296)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Horsepower
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Power(horsepower: -0.001341021858656296)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Horsepower
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Power(horsepower: 0.000335255464664074)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Horsepower
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Power(horsepower: 1.341021858656296)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Horsepower and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Power.horsepower(0.0)
			#expect(unit.horsepower.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Horsepower and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Power.horsepower(0.001341021858656296)
			#expect(unit.horsepower.isApproximatelyEqual(to: 0.001341021858656296))
		}

	/// Tests initializing the type from a value in Horsepower and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Power.horsepower(-0.001341021858656296)
			#expect(unit.horsepower.isApproximatelyEqual(to: -0.001341021858656296))
		}

	/// Tests initializing the type from a value in Horsepower and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Power.horsepower(1.341021858656296e-06)
			#expect(unit.horsepower.isApproximatelyEqual(to: 1.341021858656296e-06))
		}

	/// Tests initializing the type from a value in Horsepower and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1341.02)")
		func testRoundTrip_4() async throws {
			let unit = Power.horsepower(1341.021858656296)
			#expect(unit.horsepower.isApproximatelyEqual(to: 1341.021858656296))
		}
	}
/// Kilowatts unit tests.
///
	@Suite("Kilowatts")
	struct kilowattsTests {
	/// Tests initializing the type from a value in Kilowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Power.kilowatts(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Power.kilowatts(0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Kilowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Power.kilowatts(-0.001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Kilowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Power.kilowatts(0.0001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Kilowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Power.kilowatts(0.05)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Kilowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Power<Double>.zero
			unit.kilowatts = 0.0
			#expect(unit.kilowatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Kilowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Power<Double>.zero
			unit.kilowatts = 0.001
			#expect(unit.kilowatts.isApproximatelyEqual(to: 0.001))
		}

	/// Tests setting the type from a value in Kilowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Power<Double>.zero
			unit.kilowatts = -0.001
			#expect(unit.kilowatts.isApproximatelyEqual(to: -0.001))
		}

	/// Tests setting the type from a value in Kilowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Power<Double>.zero
			unit.kilowatts = 0.0001
			#expect(unit.kilowatts.isApproximatelyEqual(to: 0.0001))
		}

	/// Tests setting the type from a value in Kilowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.05)")
		func testGetAndSet_4() async throws {
			var unit = Power<Double>.zero
			unit.kilowatts = 0.05
			#expect(unit.kilowatts.isApproximatelyEqual(to: 0.05))
		}

	/// Tests initializing the type from a value in Kilowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Power(kilowatts: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Power(kilowatts: 0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Kilowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Power(kilowatts: -0.001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Kilowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Power(kilowatts: 0.00025)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Kilowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Power(kilowatts: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Kilowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Power.kilowatts(0.0)
			#expect(unit.kilowatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Power.kilowatts(0.001)
			#expect(unit.kilowatts.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Kilowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Power.kilowatts(-0.001)
			#expect(unit.kilowatts.isApproximatelyEqual(to: -0.001))
		}

	/// Tests initializing the type from a value in Kilowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Power.kilowatts(1e-06)
			#expect(unit.kilowatts.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests initializing the type from a value in Kilowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_4() async throws {
			let unit = Power.kilowatts(1000.0)
			#expect(unit.kilowatts.isApproximatelyEqual(to: 1000.0))
		}
	}
/// Megawatts unit tests.
///
	@Suite("Megawatts")
	struct megawattsTests {
	/// Tests initializing the type from a value in Megawatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Power.megawatts(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Megawatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Power.megawatts(1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Megawatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Power.megawatts(-1e-06)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Megawatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Power.megawatts(1.0000000000000001e-07)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Megawatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Power.megawatts(5e-05)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Megawatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Power<Double>.zero
			unit.megawatts = 0.0
			#expect(unit.megawatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Megawatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Power<Double>.zero
			unit.megawatts = 1e-06
			#expect(unit.megawatts.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests setting the type from a value in Megawatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Power<Double>.zero
			unit.megawatts = -1e-06
			#expect(unit.megawatts.isApproximatelyEqual(to: -1e-06))
		}

	/// Tests setting the type from a value in Megawatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Power<Double>.zero
			unit.megawatts = 1.0000000000000001e-07
			#expect(unit.megawatts.isApproximatelyEqual(to: 1.0000000000000001e-07))
		}

	/// Tests setting the type from a value in Megawatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Power<Double>.zero
			unit.megawatts = 5e-05
			#expect(unit.megawatts.isApproximatelyEqual(to: 5e-05))
		}

	/// Tests initializing the type from a value in Megawatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Power(megawatts: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Megawatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Power(megawatts: 1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Megawatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Power(megawatts: -1e-06)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Megawatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Power(megawatts: 2.5e-07)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Megawatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Power(megawatts: 0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Megawatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Power.megawatts(0.0)
			#expect(unit.megawatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Megawatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Power.megawatts(1e-06)
			#expect(unit.megawatts.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests initializing the type from a value in Megawatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Power.megawatts(-1e-06)
			#expect(unit.megawatts.isApproximatelyEqual(to: -1e-06))
		}

	/// Tests initializing the type from a value in Megawatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Power.megawatts(1e-09)
			#expect(unit.megawatts.isApproximatelyEqual(to: 1e-09))
		}

	/// Tests initializing the type from a value in Megawatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_4() async throws {
			let unit = Power.megawatts(1.0)
			#expect(unit.megawatts.isApproximatelyEqual(to: 1.0))
		}
	}
/// Microwatts unit tests.
///
	@Suite("Microwatts")
	struct microwattsTests {
	/// Tests initializing the type from a value in Microwatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Power.microwatts(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Microwatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Power.microwatts(1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Microwatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Power.microwatts(-1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Microwatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Power.microwatts(100000.00000000001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Microwatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Power.microwatts(50000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Microwatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Power<Double>.zero
			unit.microwatts = 0.0
			#expect(unit.microwatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Microwatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Power<Double>.zero
			unit.microwatts = 1000000.0
			#expect(unit.microwatts.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests setting the type from a value in Microwatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Power<Double>.zero
			unit.microwatts = -1000000.0
			#expect(unit.microwatts.isApproximatelyEqual(to: -1000000.0))
		}

	/// Tests setting the type from a value in Microwatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000.00)")
		func testGetAndSet_3() async throws {
			var unit = Power<Double>.zero
			unit.microwatts = 100000.00000000001
			#expect(unit.microwatts.isApproximatelyEqual(to: 100000.00000000001))
		}

	/// Tests setting the type from a value in Microwatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Power<Double>.zero
			unit.microwatts = 50000000.0
			#expect(unit.microwatts.isApproximatelyEqual(to: 50000000.0))
		}

	/// Tests initializing the type from a value in Microwatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Power(microwatts: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Microwatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Power(microwatts: 1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Microwatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Power(microwatts: -1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Microwatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Power(microwatts: 250000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Microwatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Power(microwatts: 1000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Microwatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Power.microwatts(0.0)
			#expect(unit.microwatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Microwatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Power.microwatts(1000000.0)
			#expect(unit.microwatts.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests initializing the type from a value in Microwatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Power.microwatts(-1000000.0)
			#expect(unit.microwatts.isApproximatelyEqual(to: -1000000.0))
		}

	/// Tests initializing the type from a value in Microwatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_3() async throws {
			let unit = Power.microwatts(1000.0000000000001)
			#expect(unit.microwatts.isApproximatelyEqual(to: 1000.0000000000001))
		}

	/// Tests initializing the type from a value in Microwatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Power.microwatts(1000000000000.0)
			#expect(unit.microwatts.isApproximatelyEqual(to: 1000000000000.0))
		}
	}
/// Milliwatts unit tests.
///
	@Suite("Milliwatts")
	struct milliwattsTests {
	/// Tests initializing the type from a value in Milliwatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Power.milliwatts(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Milliwatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Power.milliwatts(1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Milliwatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Power.milliwatts(-1000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Milliwatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Power.milliwatts(100.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Milliwatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Power.milliwatts(50000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Milliwatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Power<Double>.zero
			unit.milliwatts = 0.0
			#expect(unit.milliwatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Milliwatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000.00)")
		func testGetAndSet_1() async throws {
			var unit = Power<Double>.zero
			unit.milliwatts = 1000.0
			#expect(unit.milliwatts.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests setting the type from a value in Milliwatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000.00)")
		func testGetAndSet_2() async throws {
			var unit = Power<Double>.zero
			unit.milliwatts = -1000.0
			#expect(unit.milliwatts.isApproximatelyEqual(to: -1000.0))
		}

	/// Tests setting the type from a value in Milliwatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100.00)")
		func testGetAndSet_3() async throws {
			var unit = Power<Double>.zero
			unit.milliwatts = 100.0
			#expect(unit.milliwatts.isApproximatelyEqual(to: 100.0))
		}

	/// Tests setting the type from a value in Milliwatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000.00)")
		func testGetAndSet_4() async throws {
			var unit = Power<Double>.zero
			unit.milliwatts = 50000.0
			#expect(unit.milliwatts.isApproximatelyEqual(to: 50000.0))
		}

	/// Tests initializing the type from a value in Milliwatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Power(milliwatts: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Milliwatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Power(milliwatts: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Milliwatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Power(milliwatts: -1000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Milliwatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Power(milliwatts: 250.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Milliwatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Power(milliwatts: 1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Milliwatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Power.milliwatts(0.0)
			#expect(unit.milliwatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Milliwatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_1() async throws {
			let unit = Power.milliwatts(1000.0)
			#expect(unit.milliwatts.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Milliwatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000.00)")
		func testRoundTrip_2() async throws {
			let unit = Power.milliwatts(-1000.0)
			#expect(unit.milliwatts.isApproximatelyEqual(to: -1000.0))
		}

	/// Tests initializing the type from a value in Milliwatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_3() async throws {
			let unit = Power.milliwatts(1.0)
			#expect(unit.milliwatts.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Milliwatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Power.milliwatts(1000000000.0)
			#expect(unit.milliwatts.isApproximatelyEqual(to: 1000000000.0))
		}
	}
/// Nanowatts unit tests.
///
	@Suite("Nanowatts")
	struct nanowattsTests {
	/// Tests initializing the type from a value in Nanowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Power.nanowatts(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nanowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Power.nanowatts(999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Nanowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Power.nanowatts(-999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Nanowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Power.nanowatts(100000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Nanowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Power.nanowatts(50000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Nanowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Power<Double>.zero
			unit.nanowatts = 0.0
			#expect(unit.nanowatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Nanowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Power<Double>.zero
			unit.nanowatts = 999999999.9999999
			#expect(unit.nanowatts.isApproximatelyEqual(to: 999999999.9999999))
		}

	/// Tests setting the type from a value in Nanowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Power<Double>.zero
			unit.nanowatts = -999999999.9999999
			#expect(unit.nanowatts.isApproximatelyEqual(to: -999999999.9999999))
		}

	/// Tests setting the type from a value in Nanowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000000.00)")
		func testGetAndSet_3() async throws {
			var unit = Power<Double>.zero
			unit.nanowatts = 100000000.0
			#expect(unit.nanowatts.isApproximatelyEqual(to: 100000000.0))
		}

	/// Tests setting the type from a value in Nanowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Power<Double>.zero
			unit.nanowatts = 50000000000.0
			#expect(unit.nanowatts.isApproximatelyEqual(to: 50000000000.0))
		}

	/// Tests initializing the type from a value in Nanowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Power(nanowatts: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nanowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Power(nanowatts: 999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Nanowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Power(nanowatts: -999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Nanowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Power(nanowatts: 249999999.99999997)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Nanowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Power(nanowatts: 999999999999.9999)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Nanowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Power.nanowatts(0.0)
			#expect(unit.nanowatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nanowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Power.nanowatts(999999999.9999999)
			#expect(unit.nanowatts.isApproximatelyEqual(to: 999999999.9999999))
		}

	/// Tests initializing the type from a value in Nanowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Power.nanowatts(-999999999.9999999)
			#expect(unit.nanowatts.isApproximatelyEqual(to: -999999999.9999999))
		}

	/// Tests initializing the type from a value in Nanowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_3() async throws {
			let unit = Power.nanowatts(1000000.0)
			#expect(unit.nanowatts.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests initializing the type from a value in Nanowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Power.nanowatts(1000000000000000.0)
			#expect(unit.nanowatts.isApproximatelyEqual(to: 1000000000000000.0))
		}
	}
/// Picowatts unit tests.
///
	@Suite("Picowatts")
	struct picowattsTests {
	/// Tests initializing the type from a value in Picowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Power.picowatts(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Picowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Power.picowatts(1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Picowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Power.picowatts(-1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Picowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Power.picowatts(100000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Picowatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Power.picowatts(50000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Picowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Power<Double>.zero
			unit.picowatts = 0.0
			#expect(unit.picowatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Picowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Power<Double>.zero
			unit.picowatts = 1000000000000.0
			#expect(unit.picowatts.isApproximatelyEqual(to: 1000000000000.0))
		}

	/// Tests setting the type from a value in Picowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Power<Double>.zero
			unit.picowatts = -1000000000000.0
			#expect(unit.picowatts.isApproximatelyEqual(to: -1000000000000.0))
		}

	/// Tests setting the type from a value in Picowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000000000.00)")
		func testGetAndSet_3() async throws {
			var unit = Power<Double>.zero
			unit.picowatts = 100000000000.0
			#expect(unit.picowatts.isApproximatelyEqual(to: 100000000000.0))
		}

	/// Tests setting the type from a value in Picowatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Power<Double>.zero
			unit.picowatts = 50000000000000.0
			#expect(unit.picowatts.isApproximatelyEqual(to: 50000000000000.0))
		}

	/// Tests initializing the type from a value in Picowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Power(picowatts: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Picowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Power(picowatts: 1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Picowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Power(picowatts: -1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Picowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Power(picowatts: 250000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Picowatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Power(picowatts: 1000000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Picowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Power.picowatts(0.0)
			#expect(unit.picowatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Picowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Power.picowatts(1000000000000.0)
			#expect(unit.picowatts.isApproximatelyEqual(to: 1000000000000.0))
		}

	/// Tests initializing the type from a value in Picowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Power.picowatts(-1000000000000.0)
			#expect(unit.picowatts.isApproximatelyEqual(to: -1000000000000.0))
		}

	/// Tests initializing the type from a value in Picowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_3() async throws {
			let unit = Power.picowatts(1000000000.0)
			#expect(unit.picowatts.isApproximatelyEqual(to: 1000000000.0))
		}

	/// Tests initializing the type from a value in Picowatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Power.picowatts(1e+18)
			#expect(unit.picowatts.isApproximatelyEqual(to: 1e+18))
		}
	}
/// Terawatts unit tests.
///
	@Suite("Terawatts")
	struct terawattsTests {
	/// Tests initializing the type from a value in Terawatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Power.terawatts(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Terawatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Power.terawatts(1e-12)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Terawatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Power.terawatts(-1e-12)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Terawatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Power.terawatts(1e-13)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Terawatts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Power.terawatts(5e-11)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Terawatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Power<Double>.zero
			unit.terawatts = 0.0
			#expect(unit.terawatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Terawatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Power<Double>.zero
			unit.terawatts = 1e-12
			#expect(unit.terawatts.isApproximatelyEqual(to: 1e-12))
		}

	/// Tests setting the type from a value in Terawatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Power<Double>.zero
			unit.terawatts = -1e-12
			#expect(unit.terawatts.isApproximatelyEqual(to: -1e-12))
		}

	/// Tests setting the type from a value in Terawatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Power<Double>.zero
			unit.terawatts = 1e-13
			#expect(unit.terawatts.isApproximatelyEqual(to: 1e-13))
		}

	/// Tests setting the type from a value in Terawatts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Power<Double>.zero
			unit.terawatts = 5e-11
			#expect(unit.terawatts.isApproximatelyEqual(to: 5e-11))
		}

	/// Tests initializing the type from a value in Terawatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Power(terawatts: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Terawatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Power(terawatts: 1e-12)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Terawatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Power(terawatts: -1e-12)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Terawatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Power(terawatts: 2.5e-13)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Terawatts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Power(terawatts: 1e-09)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Terawatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Power.terawatts(0.0)
			#expect(unit.terawatts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Terawatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Power.terawatts(1e-12)
			#expect(unit.terawatts.isApproximatelyEqual(to: 1e-12))
		}

	/// Tests initializing the type from a value in Terawatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Power.terawatts(-1e-12)
			#expect(unit.terawatts.isApproximatelyEqual(to: -1e-12))
		}

	/// Tests initializing the type from a value in Terawatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Power.terawatts(1e-15)
			#expect(unit.terawatts.isApproximatelyEqual(to: 1e-15))
		}

	/// Tests initializing the type from a value in Terawatts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_4() async throws {
			let unit = Power.terawatts(1e-06)
			#expect(unit.terawatts.isApproximatelyEqual(to: 1e-06))
		}
	}
/// Watts unit tests.
///
	@Suite("Watts")
	struct wattsTests {
	/// Tests initializing the type from a value in Watts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Power.watts(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Watts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Power.watts(1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Watts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Power.watts(-1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Watts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Power.watts(0.1)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Watts
	/// and checking the stored value in Watts.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Power.watts(50.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Watts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Power<Double>.zero
			unit.watts = 0.0
			#expect(unit.watts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Watts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.00)")
		func testGetAndSet_1() async throws {
			var unit = Power<Double>.zero
			unit.watts = 1.0
			#expect(unit.watts.isApproximatelyEqual(to: 1.0))
		}

	/// Tests setting the type from a value in Watts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.00)")
		func testGetAndSet_2() async throws {
			var unit = Power<Double>.zero
			unit.watts = -1.0
			#expect(unit.watts.isApproximatelyEqual(to: -1.0))
		}

	/// Tests setting the type from a value in Watts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.10)")
		func testGetAndSet_3() async throws {
			var unit = Power<Double>.zero
			unit.watts = 0.1
			#expect(unit.watts.isApproximatelyEqual(to: 0.1))
		}

	/// Tests setting the type from a value in Watts and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50.00)")
		func testGetAndSet_4() async throws {
			var unit = Power<Double>.zero
			unit.watts = 50.0
			#expect(unit.watts.isApproximatelyEqual(to: 50.0))
		}

	/// Tests initializing the type from a value in Watts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Power(watts: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Watts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Power(watts: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Watts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Power(watts: -1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Watts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Power(watts: 0.25)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Watts
	/// and checking the stored value in Watts.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Power(watts: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Watts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Power.watts(0.0)
			#expect(unit.watts.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Watts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_1() async throws {
			let unit = Power.watts(1.0)
			#expect(unit.watts.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Watts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.00)")
		func testRoundTrip_2() async throws {
			let unit = Power.watts(-1.0)
			#expect(unit.watts.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Watts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Power.watts(0.001)
			#expect(unit.watts.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Watts and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Power.watts(1000000.0)
			#expect(unit.watts.isApproximatelyEqual(to: 1000000.0))
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
			for unit in Power<Double>.MeasurementUnit.allCases {
				#expect(!unit.symbol(for: 1.0).isEmpty)
				#expect(!unit.symbol(for: 2.0).isEmpty)
			}
		}
	}

/// Power constant tests.
///
	@Suite("Constants")
	struct constantTests {
	/// Tests the great scott constant equals 1.21 gigawatts.
	///
		@Test("Great Scott")
		func testGreatScott() async throws {
			#expect(Power<Double>.greatScott.gigawatts.isApproximatelyEqual(to: 1.21))
		}
	}
}
