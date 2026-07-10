//
//  Mass.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Mass")
struct MassTests {
/// Carats unit tests.
///
	@Suite("Carats")
	struct caratsTests {
	/// Tests initializing the type from a value in Carats
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.carats(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Carats
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.carats(5000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Carats
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.carats(-5000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Carats
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.carats(500.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Carats
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.carats(250000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Carats and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.carats = 0.0
			#expect(unit.carats.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Carats and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (5000.00)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.carats = 5000.0
			#expect(unit.carats.isApproximatelyEqual(to: 5000.0))
		}

	/// Tests setting the type from a value in Carats and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-5000.00)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.carats = -5000.0
			#expect(unit.carats.isApproximatelyEqual(to: -5000.0))
		}

	/// Tests setting the type from a value in Carats and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (500.00)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.carats = 500.0
			#expect(unit.carats.isApproximatelyEqual(to: 500.0))
		}

	/// Tests setting the type from a value in Carats and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (250000.00)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.carats = 250000.0
			#expect(unit.carats.isApproximatelyEqual(to: 250000.0))
		}

	/// Tests initializing the type from a value in Carats
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(carats: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Carats
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(carats: 5000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Carats
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(carats: -5000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Carats
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(carats: 1250.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Carats
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(carats: 5000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Carats and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.carats(0.0)
			#expect(unit.carats.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Carats and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (5000.00)")
		func testRoundTrip_1() async throws {
			let unit = Mass.carats(5000.0)
			#expect(unit.carats.isApproximatelyEqual(to: 5000.0))
		}

	/// Tests initializing the type from a value in Carats and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-5000.00)")
		func testRoundTrip_2() async throws {
			let unit = Mass.carats(-5000.0)
			#expect(unit.carats.isApproximatelyEqual(to: -5000.0))
		}

	/// Tests initializing the type from a value in Carats and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (5.00)")
		func testRoundTrip_3() async throws {
			let unit = Mass.carats(5.0)
			#expect(unit.carats.isApproximatelyEqual(to: 5.0))
		}

	/// Tests initializing the type from a value in Carats and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (5000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Mass.carats(5000000000.0)
			#expect(unit.carats.isApproximatelyEqual(to: 5000000000.0))
		}
	}
/// Centigrams unit tests.
///
	@Suite("Centigrams")
	struct centigramsTests {
	/// Tests initializing the type from a value in Centigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.centigrams(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Centigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.centigrams(99999.99999999999)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Centigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.centigrams(-99999.99999999999)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Centigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.centigrams(10000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Centigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.centigrams(5000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Centigrams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.centigrams = 0.0
			#expect(unit.centigrams.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Centigrams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000.00)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.centigrams = 99999.99999999999
			#expect(unit.centigrams.isApproximatelyEqual(to: 99999.99999999999))
		}

	/// Tests setting the type from a value in Centigrams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-100000.00)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.centigrams = -99999.99999999999
			#expect(unit.centigrams.isApproximatelyEqual(to: -99999.99999999999))
		}

	/// Tests setting the type from a value in Centigrams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (10000.00)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.centigrams = 10000.0
			#expect(unit.centigrams.isApproximatelyEqual(to: 10000.0))
		}

	/// Tests setting the type from a value in Centigrams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (5000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.centigrams = 5000000.0
			#expect(unit.centigrams.isApproximatelyEqual(to: 5000000.0))
		}

	/// Tests initializing the type from a value in Centigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(centigrams: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Centigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(centigrams: 99999.99999999999)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Centigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(centigrams: -99999.99999999999)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Centigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(centigrams: 24999.999999999996)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Centigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(centigrams: 99999999.99999999)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Centigrams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.centigrams(0.0)
			#expect(unit.centigrams.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Centigrams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (100000.00)")
		func testRoundTrip_1() async throws {
			let unit = Mass.centigrams(99999.99999999999)
			#expect(unit.centigrams.isApproximatelyEqual(to: 99999.99999999999))
		}

	/// Tests initializing the type from a value in Centigrams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-100000.00)")
		func testRoundTrip_2() async throws {
			let unit = Mass.centigrams(-99999.99999999999)
			#expect(unit.centigrams.isApproximatelyEqual(to: -99999.99999999999))
		}

	/// Tests initializing the type from a value in Centigrams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (100.00)")
		func testRoundTrip_3() async throws {
			let unit = Mass.centigrams(100.0)
			#expect(unit.centigrams.isApproximatelyEqual(to: 100.0))
		}

	/// Tests initializing the type from a value in Centigrams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (100000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Mass.centigrams(99999999999.99998)
			#expect(unit.centigrams.isApproximatelyEqual(to: 99999999999.99998))
		}
	}
/// Decigrams unit tests.
///
	@Suite("Decigrams")
	struct decigramsTests {
	/// Tests initializing the type from a value in Decigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.decigrams(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Decigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.decigrams(10000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Decigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.decigrams(-10000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Decigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.decigrams(1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Decigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.decigrams(500000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Decigrams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.decigrams = 0.0
			#expect(unit.decigrams.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Decigrams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (10000.00)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.decigrams = 10000.0
			#expect(unit.decigrams.isApproximatelyEqual(to: 10000.0))
		}

	/// Tests setting the type from a value in Decigrams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-10000.00)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.decigrams = -10000.0
			#expect(unit.decigrams.isApproximatelyEqual(to: -10000.0))
		}

	/// Tests setting the type from a value in Decigrams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000.00)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.decigrams = 1000.0
			#expect(unit.decigrams.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests setting the type from a value in Decigrams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (500000.00)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.decigrams = 500000.0
			#expect(unit.decigrams.isApproximatelyEqual(to: 500000.0))
		}

	/// Tests initializing the type from a value in Decigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(decigrams: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Decigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(decigrams: 10000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Decigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(decigrams: -10000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Decigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(decigrams: 2500.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Decigrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(decigrams: 10000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Decigrams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.decigrams(0.0)
			#expect(unit.decigrams.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Decigrams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10000.00)")
		func testRoundTrip_1() async throws {
			let unit = Mass.decigrams(10000.0)
			#expect(unit.decigrams.isApproximatelyEqual(to: 10000.0))
		}

	/// Tests initializing the type from a value in Decigrams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-10000.00)")
		func testRoundTrip_2() async throws {
			let unit = Mass.decigrams(-10000.0)
			#expect(unit.decigrams.isApproximatelyEqual(to: -10000.0))
		}

	/// Tests initializing the type from a value in Decigrams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10.00)")
		func testRoundTrip_3() async throws {
			let unit = Mass.decigrams(10.0)
			#expect(unit.decigrams.isApproximatelyEqual(to: 10.0))
		}

	/// Tests initializing the type from a value in Decigrams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (10000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Mass.decigrams(10000000000.0)
			#expect(unit.decigrams.isApproximatelyEqual(to: 10000000000.0))
		}
	}
/// Grams unit tests.
///
	@Suite("Grams")
	struct gramsTests {
	/// Tests initializing the type from a value in Grams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.grams(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Grams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.grams(1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Grams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.grams(-1000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Grams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.grams(100.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Grams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.grams(50000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Grams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.grams = 0.0
			#expect(unit.grams.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Grams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000.00)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.grams = 1000.0
			#expect(unit.grams.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests setting the type from a value in Grams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000.00)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.grams = -1000.0
			#expect(unit.grams.isApproximatelyEqual(to: -1000.0))
		}

	/// Tests setting the type from a value in Grams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100.00)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.grams = 100.0
			#expect(unit.grams.isApproximatelyEqual(to: 100.0))
		}

	/// Tests setting the type from a value in Grams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000.00)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.grams = 50000.0
			#expect(unit.grams.isApproximatelyEqual(to: 50000.0))
		}

	/// Tests initializing the type from a value in Grams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(grams: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Grams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(grams: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Grams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(grams: -1000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Grams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(grams: 250.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Grams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(grams: 1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Grams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.grams(0.0)
			#expect(unit.grams.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Grams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_1() async throws {
			let unit = Mass.grams(1000.0)
			#expect(unit.grams.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Grams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000.00)")
		func testRoundTrip_2() async throws {
			let unit = Mass.grams(-1000.0)
			#expect(unit.grams.isApproximatelyEqual(to: -1000.0))
		}

	/// Tests initializing the type from a value in Grams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_3() async throws {
			let unit = Mass.grams(1.0)
			#expect(unit.grams.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Grams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Mass.grams(1000000000.0)
			#expect(unit.grams.isApproximatelyEqual(to: 1000000000.0))
		}
	}
/// Kilograms unit tests.
///
	@Suite("Kilograms")
	struct kilogramsTests {
	/// Tests initializing the type from a value in Kilograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.kilograms(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.kilograms(1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Kilograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.kilograms(-1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Kilograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.kilograms(0.1)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Kilograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.kilograms(50.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Kilograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.kilograms = 0.0
			#expect(unit.kilograms.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Kilograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.00)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.kilograms = 1.0
			#expect(unit.kilograms.isApproximatelyEqual(to: 1.0))
		}

	/// Tests setting the type from a value in Kilograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.00)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.kilograms = -1.0
			#expect(unit.kilograms.isApproximatelyEqual(to: -1.0))
		}

	/// Tests setting the type from a value in Kilograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.10)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.kilograms = 0.1
			#expect(unit.kilograms.isApproximatelyEqual(to: 0.1))
		}

	/// Tests setting the type from a value in Kilograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50.00)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.kilograms = 50.0
			#expect(unit.kilograms.isApproximatelyEqual(to: 50.0))
		}

	/// Tests initializing the type from a value in Kilograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(kilograms: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(kilograms: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Kilograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(kilograms: -1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Kilograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(kilograms: 0.25)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Kilograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(kilograms: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Kilograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.kilograms(0.0)
			#expect(unit.kilograms.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_1() async throws {
			let unit = Mass.kilograms(1.0)
			#expect(unit.kilograms.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Kilograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.00)")
		func testRoundTrip_2() async throws {
			let unit = Mass.kilograms(-1.0)
			#expect(unit.kilograms.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Kilograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Mass.kilograms(0.001)
			#expect(unit.kilograms.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Kilograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Mass.kilograms(1000000.0)
			#expect(unit.kilograms.isApproximatelyEqual(to: 1000000.0))
		}
	}
/// Metric Tons unit tests.
///
	@Suite("Metric Tons")
	struct metricTonsTests {
	/// Tests initializing the type from a value in Metric Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.metricTons(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Metric Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.metricTons(0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Metric Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.metricTons(-0.001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Metric Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.metricTons(0.0001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Metric Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.metricTons(0.05)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Metric Tons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.metricTons = 0.0
			#expect(unit.metricTons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Metric Tons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.metricTons = 0.001
			#expect(unit.metricTons.isApproximatelyEqual(to: 0.001))
		}

	/// Tests setting the type from a value in Metric Tons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.metricTons = -0.001
			#expect(unit.metricTons.isApproximatelyEqual(to: -0.001))
		}

	/// Tests setting the type from a value in Metric Tons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.metricTons = 0.0001
			#expect(unit.metricTons.isApproximatelyEqual(to: 0.0001))
		}

	/// Tests setting the type from a value in Metric Tons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.05)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.metricTons = 0.05
			#expect(unit.metricTons.isApproximatelyEqual(to: 0.05))
		}

	/// Tests initializing the type from a value in Metric Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(metricTons: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Metric Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(metricTons: 0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Metric Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(metricTons: -0.001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Metric Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(metricTons: 0.00025)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Metric Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(metricTons: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Metric Tons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.metricTons(0.0)
			#expect(unit.metricTons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Metric Tons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Mass.metricTons(0.001)
			#expect(unit.metricTons.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Metric Tons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Mass.metricTons(-0.001)
			#expect(unit.metricTons.isApproximatelyEqual(to: -0.001))
		}

	/// Tests initializing the type from a value in Metric Tons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Mass.metricTons(1e-06)
			#expect(unit.metricTons.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests initializing the type from a value in Metric Tons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_4() async throws {
			let unit = Mass.metricTons(1000.0)
			#expect(unit.metricTons.isApproximatelyEqual(to: 1000.0))
		}
	}
/// Micrograms unit tests.
///
	@Suite("Micrograms")
	struct microgramsTests {
	/// Tests initializing the type from a value in Micrograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.micrograms(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Micrograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.micrograms(999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Micrograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.micrograms(-999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Micrograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.micrograms(100000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Micrograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.micrograms(50000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Micrograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.micrograms = 0.0
			#expect(unit.micrograms.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Micrograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.micrograms = 999999999.9999999
			#expect(unit.micrograms.isApproximatelyEqual(to: 999999999.9999999))
		}

	/// Tests setting the type from a value in Micrograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.micrograms = -999999999.9999999
			#expect(unit.micrograms.isApproximatelyEqual(to: -999999999.9999999))
		}

	/// Tests setting the type from a value in Micrograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000000.00)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.micrograms = 100000000.0
			#expect(unit.micrograms.isApproximatelyEqual(to: 100000000.0))
		}

	/// Tests setting the type from a value in Micrograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.micrograms = 50000000000.0
			#expect(unit.micrograms.isApproximatelyEqual(to: 50000000000.0))
		}

	/// Tests initializing the type from a value in Micrograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(micrograms: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Micrograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(micrograms: 999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Micrograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(micrograms: -999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Micrograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(micrograms: 249999999.99999997)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Micrograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(micrograms: 999999999999.9999)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Micrograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.micrograms(0.0)
			#expect(unit.micrograms.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Micrograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Mass.micrograms(999999999.9999999)
			#expect(unit.micrograms.isApproximatelyEqual(to: 999999999.9999999))
		}

	/// Tests initializing the type from a value in Micrograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Mass.micrograms(-999999999.9999999)
			#expect(unit.micrograms.isApproximatelyEqual(to: -999999999.9999999))
		}

	/// Tests initializing the type from a value in Micrograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_3() async throws {
			let unit = Mass.micrograms(1000000.0)
			#expect(unit.micrograms.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests initializing the type from a value in Micrograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Mass.micrograms(1000000000000000.0)
			#expect(unit.micrograms.isApproximatelyEqual(to: 1000000000000000.0))
		}
	}
/// Milligrams unit tests.
///
	@Suite("Milligrams")
	struct milligramsTests {
	/// Tests initializing the type from a value in Milligrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.milligrams(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Milligrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.milligrams(1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Milligrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.milligrams(-1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Milligrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.milligrams(100000.00000000001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Milligrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.milligrams(50000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Milligrams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.milligrams = 0.0
			#expect(unit.milligrams.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Milligrams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.milligrams = 1000000.0
			#expect(unit.milligrams.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests setting the type from a value in Milligrams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.milligrams = -1000000.0
			#expect(unit.milligrams.isApproximatelyEqual(to: -1000000.0))
		}

	/// Tests setting the type from a value in Milligrams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000.00)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.milligrams = 100000.00000000001
			#expect(unit.milligrams.isApproximatelyEqual(to: 100000.00000000001))
		}

	/// Tests setting the type from a value in Milligrams and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.milligrams = 50000000.0
			#expect(unit.milligrams.isApproximatelyEqual(to: 50000000.0))
		}

	/// Tests initializing the type from a value in Milligrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(milligrams: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Milligrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(milligrams: 1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Milligrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(milligrams: -1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Milligrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(milligrams: 250000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Milligrams
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(milligrams: 1000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Milligrams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.milligrams(0.0)
			#expect(unit.milligrams.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Milligrams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Mass.milligrams(1000000.0)
			#expect(unit.milligrams.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests initializing the type from a value in Milligrams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Mass.milligrams(-1000000.0)
			#expect(unit.milligrams.isApproximatelyEqual(to: -1000000.0))
		}

	/// Tests initializing the type from a value in Milligrams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_3() async throws {
			let unit = Mass.milligrams(1000.0000000000001)
			#expect(unit.milligrams.isApproximatelyEqual(to: 1000.0000000000001))
		}

	/// Tests initializing the type from a value in Milligrams and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Mass.milligrams(1000000000000.0)
			#expect(unit.milligrams.isApproximatelyEqual(to: 1000000000000.0))
		}
	}
/// Nanograms unit tests.
///
	@Suite("Nanograms")
	struct nanogramsTests {
	/// Tests initializing the type from a value in Nanograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.nanograms(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nanograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.nanograms(1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Nanograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.nanograms(-1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Nanograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.nanograms(100000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Nanograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.nanograms(50000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Nanograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.nanograms = 0.0
			#expect(unit.nanograms.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Nanograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.nanograms = 1000000000000.0
			#expect(unit.nanograms.isApproximatelyEqual(to: 1000000000000.0))
		}

	/// Tests setting the type from a value in Nanograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.nanograms = -1000000000000.0
			#expect(unit.nanograms.isApproximatelyEqual(to: -1000000000000.0))
		}

	/// Tests setting the type from a value in Nanograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000000000.00)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.nanograms = 100000000000.0
			#expect(unit.nanograms.isApproximatelyEqual(to: 100000000000.0))
		}

	/// Tests setting the type from a value in Nanograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.nanograms = 50000000000000.0
			#expect(unit.nanograms.isApproximatelyEqual(to: 50000000000000.0))
		}

	/// Tests initializing the type from a value in Nanograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(nanograms: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nanograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(nanograms: 1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Nanograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(nanograms: -1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Nanograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(nanograms: 250000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Nanograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(nanograms: 1000000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Nanograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.nanograms(0.0)
			#expect(unit.nanograms.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nanograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Mass.nanograms(1000000000000.0)
			#expect(unit.nanograms.isApproximatelyEqual(to: 1000000000000.0))
		}

	/// Tests initializing the type from a value in Nanograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Mass.nanograms(-1000000000000.0)
			#expect(unit.nanograms.isApproximatelyEqual(to: -1000000000000.0))
		}

	/// Tests initializing the type from a value in Nanograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_3() async throws {
			let unit = Mass.nanograms(1000000000.0)
			#expect(unit.nanograms.isApproximatelyEqual(to: 1000000000.0))
		}

	/// Tests initializing the type from a value in Nanograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Mass.nanograms(1e+18)
			#expect(unit.nanograms.isApproximatelyEqual(to: 1e+18))
		}
	}
/// Ounces unit tests.
///
	@Suite("Ounces")
	struct ouncesTests {
	/// Tests initializing the type from a value in Ounces
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.ounces(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Ounces
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.ounces(35.27399072294044)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Ounces
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.ounces(-35.27399072294044)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Ounces
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.ounces(3.527399072294044)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Ounces
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.ounces(1763.699536147022)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Ounces and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.ounces = 0.0
			#expect(unit.ounces.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Ounces and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (35.27)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.ounces = 35.27399072294044
			#expect(unit.ounces.isApproximatelyEqual(to: 35.27399072294044))
		}

	/// Tests setting the type from a value in Ounces and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-35.27)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.ounces = -35.27399072294044
			#expect(unit.ounces.isApproximatelyEqual(to: -35.27399072294044))
		}

	/// Tests setting the type from a value in Ounces and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (3.53)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.ounces = 3.527399072294044
			#expect(unit.ounces.isApproximatelyEqual(to: 3.527399072294044))
		}

	/// Tests setting the type from a value in Ounces and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1763.70)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.ounces = 1763.699536147022
			#expect(unit.ounces.isApproximatelyEqual(to: 1763.699536147022))
		}

	/// Tests initializing the type from a value in Ounces
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(ounces: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Ounces
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(ounces: 35.27399072294044)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Ounces
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(ounces: -35.27399072294044)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Ounces
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(ounces: 8.81849768073511)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Ounces
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(ounces: 35273.99072294044)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Ounces and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.ounces(0.0)
			#expect(unit.ounces.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Ounces and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (35.27)")
		func testRoundTrip_1() async throws {
			let unit = Mass.ounces(35.27399072294044)
			#expect(unit.ounces.isApproximatelyEqual(to: 35.27399072294044))
		}

	/// Tests initializing the type from a value in Ounces and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-35.27)")
		func testRoundTrip_2() async throws {
			let unit = Mass.ounces(-35.27399072294044)
			#expect(unit.ounces.isApproximatelyEqual(to: -35.27399072294044))
		}

	/// Tests initializing the type from a value in Ounces and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.04)")
		func testRoundTrip_3() async throws {
			let unit = Mass.ounces(0.03527399072294044)
			#expect(unit.ounces.isApproximatelyEqual(to: 0.03527399072294044))
		}

	/// Tests initializing the type from a value in Ounces and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (35273990.72)")
		func testRoundTrip_4() async throws {
			let unit = Mass.ounces(35273990.72294044)
			#expect(unit.ounces.isApproximatelyEqual(to: 35273990.72294044))
		}
	}
/// Ounces Troy unit tests.
///
	@Suite("Ounces Troy")
	struct ouncesTroyTests {
	/// Tests initializing the type from a value in Ounces Troy
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.ouncesTroy(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Ounces Troy
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.ouncesTroy(32.150743260882706)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Ounces Troy
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.ouncesTroy(-32.150743260882706)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Ounces Troy
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.ouncesTroy(3.2150743260882706)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Ounces Troy
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.ouncesTroy(1607.5371630441352)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Ounces Troy and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.ouncesTroy = 0.0
			#expect(unit.ouncesTroy.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Ounces Troy and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (32.15)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.ouncesTroy = 32.150743260882706
			#expect(unit.ouncesTroy.isApproximatelyEqual(to: 32.150743260882706))
		}

	/// Tests setting the type from a value in Ounces Troy and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-32.15)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.ouncesTroy = -32.150743260882706
			#expect(unit.ouncesTroy.isApproximatelyEqual(to: -32.150743260882706))
		}

	/// Tests setting the type from a value in Ounces Troy and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (3.22)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.ouncesTroy = 3.2150743260882706
			#expect(unit.ouncesTroy.isApproximatelyEqual(to: 3.2150743260882706))
		}

	/// Tests setting the type from a value in Ounces Troy and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1607.54)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.ouncesTroy = 1607.5371630441352
			#expect(unit.ouncesTroy.isApproximatelyEqual(to: 1607.5371630441352))
		}

	/// Tests initializing the type from a value in Ounces Troy
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(ouncesTroy: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Ounces Troy
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(ouncesTroy: 32.150743260882706)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Ounces Troy
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(ouncesTroy: -32.150743260882706)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Ounces Troy
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(ouncesTroy: 8.037685815220676)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Ounces Troy
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(ouncesTroy: 32150.743260882708)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Ounces Troy and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.ouncesTroy(0.0)
			#expect(unit.ouncesTroy.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Ounces Troy and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (32.15)")
		func testRoundTrip_1() async throws {
			let unit = Mass.ouncesTroy(32.150743260882706)
			#expect(unit.ouncesTroy.isApproximatelyEqual(to: 32.150743260882706))
		}

	/// Tests initializing the type from a value in Ounces Troy and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-32.15)")
		func testRoundTrip_2() async throws {
			let unit = Mass.ouncesTroy(-32.150743260882706)
			#expect(unit.ouncesTroy.isApproximatelyEqual(to: -32.150743260882706))
		}

	/// Tests initializing the type from a value in Ounces Troy and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.03)")
		func testRoundTrip_3() async throws {
			let unit = Mass.ouncesTroy(0.03215074326088271)
			#expect(unit.ouncesTroy.isApproximatelyEqual(to: 0.03215074326088271))
		}

	/// Tests initializing the type from a value in Ounces Troy and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (32150743.26)")
		func testRoundTrip_4() async throws {
			let unit = Mass.ouncesTroy(32150743.260882705)
			#expect(unit.ouncesTroy.isApproximatelyEqual(to: 32150743.260882705))
		}
	}
/// Picograms unit tests.
///
	@Suite("Picograms")
	struct picogramsTests {
	/// Tests initializing the type from a value in Picograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.picograms(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Picograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.picograms(999999999999999.9)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Picograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.picograms(-999999999999999.9)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Picograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.picograms(100000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Picograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.picograms(5e+16)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Picograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.picograms = 0.0
			#expect(unit.picograms.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Picograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (999999999999999.88)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.picograms = 999999999999999.9
			#expect(unit.picograms.isApproximatelyEqual(to: 999999999999999.9))
		}

	/// Tests setting the type from a value in Picograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-999999999999999.88)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.picograms = -999999999999999.9
			#expect(unit.picograms.isApproximatelyEqual(to: -999999999999999.9))
		}

	/// Tests setting the type from a value in Picograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000000000000.00)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.picograms = 100000000000000.0
			#expect(unit.picograms.isApproximatelyEqual(to: 100000000000000.0))
		}

	/// Tests setting the type from a value in Picograms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000000000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.picograms = 5e+16
			#expect(unit.picograms.isApproximatelyEqual(to: 5e+16))
		}

	/// Tests initializing the type from a value in Picograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(picograms: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Picograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(picograms: 999999999999999.9)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Picograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(picograms: -999999999999999.9)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Picograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(picograms: 249999999999999.97)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Picograms
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(picograms: 9.999999999999999e+17)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Picograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.picograms(0.0)
			#expect(unit.picograms.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Picograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (999999999999999.88)")
		func testRoundTrip_1() async throws {
			let unit = Mass.picograms(999999999999999.9)
			#expect(unit.picograms.isApproximatelyEqual(to: 999999999999999.9))
		}

	/// Tests initializing the type from a value in Picograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-999999999999999.88)")
		func testRoundTrip_2() async throws {
			let unit = Mass.picograms(-999999999999999.9)
			#expect(unit.picograms.isApproximatelyEqual(to: -999999999999999.9))
		}

	/// Tests initializing the type from a value in Picograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000.00)")
		func testRoundTrip_3() async throws {
			let unit = Mass.picograms(1000000000000.0)
			#expect(unit.picograms.isApproximatelyEqual(to: 1000000000000.0))
		}

	/// Tests initializing the type from a value in Picograms and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (999999999999999868928.00)")
		func testRoundTrip_4() async throws {
			let unit = Mass.picograms(9.999999999999999e+20)
			#expect(unit.picograms.isApproximatelyEqual(to: 9.999999999999999e+20))
		}
	}
/// Pounds unit tests.
///
	@Suite("Pounds")
	struct poundsTests {
	/// Tests initializing the type from a value in Pounds
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.pounds(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Pounds
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.pounds(2.2046244201837775)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Pounds
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.pounds(-2.2046244201837775)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Pounds
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.pounds(0.22046244201837775)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Pounds
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.pounds(110.23122100918887)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Pounds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.pounds = 0.0
			#expect(unit.pounds.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Pounds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (2.20)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.pounds = 2.2046244201837775
			#expect(unit.pounds.isApproximatelyEqual(to: 2.2046244201837775))
		}

	/// Tests setting the type from a value in Pounds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-2.20)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.pounds = -2.2046244201837775
			#expect(unit.pounds.isApproximatelyEqual(to: -2.2046244201837775))
		}

	/// Tests setting the type from a value in Pounds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.22)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.pounds = 0.22046244201837775
			#expect(unit.pounds.isApproximatelyEqual(to: 0.22046244201837775))
		}

	/// Tests setting the type from a value in Pounds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (110.23)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.pounds = 110.23122100918887
			#expect(unit.pounds.isApproximatelyEqual(to: 110.23122100918887))
		}

	/// Tests initializing the type from a value in Pounds
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(pounds: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Pounds
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(pounds: 2.2046244201837775)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Pounds
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(pounds: -2.2046244201837775)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Pounds
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(pounds: 0.5511561050459444)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Pounds
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(pounds: 2204.6244201837776)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Pounds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.pounds(0.0)
			#expect(unit.pounds.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Pounds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (2.20)")
		func testRoundTrip_1() async throws {
			let unit = Mass.pounds(2.2046244201837775)
			#expect(unit.pounds.isApproximatelyEqual(to: 2.2046244201837775))
		}

	/// Tests initializing the type from a value in Pounds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-2.20)")
		func testRoundTrip_2() async throws {
			let unit = Mass.pounds(-2.2046244201837775)
			#expect(unit.pounds.isApproximatelyEqual(to: -2.2046244201837775))
		}

	/// Tests initializing the type from a value in Pounds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Mass.pounds(0.0022046244201837776)
			#expect(unit.pounds.isApproximatelyEqual(to: 0.0022046244201837776))
		}

	/// Tests initializing the type from a value in Pounds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (2204624.42)")
		func testRoundTrip_4() async throws {
			let unit = Mass.pounds(2204624.4201837773)
			#expect(unit.pounds.isApproximatelyEqual(to: 2204624.4201837773))
		}
	}
/// Short Tons unit tests.
///
	@Suite("Short Tons")
	struct shortTonsTests {
	/// Tests initializing the type from a value in Short Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.shortTons(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Short Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.shortTons(0.0011023109950010197)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Short Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.shortTons(-0.0011023109950010197)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Short Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.shortTons(0.00011023109950010197)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Short Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.shortTons(0.055115549750050986)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Short Tons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.shortTons = 0.0
			#expect(unit.shortTons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Short Tons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.shortTons = 0.0011023109950010197
			#expect(unit.shortTons.isApproximatelyEqual(to: 0.0011023109950010197))
		}

	/// Tests setting the type from a value in Short Tons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.shortTons = -0.0011023109950010197
			#expect(unit.shortTons.isApproximatelyEqual(to: -0.0011023109950010197))
		}

	/// Tests setting the type from a value in Short Tons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.shortTons = 0.00011023109950010197
			#expect(unit.shortTons.isApproximatelyEqual(to: 0.00011023109950010197))
		}

	/// Tests setting the type from a value in Short Tons and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.06)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.shortTons = 0.055115549750050986
			#expect(unit.shortTons.isApproximatelyEqual(to: 0.055115549750050986))
		}

	/// Tests initializing the type from a value in Short Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(shortTons: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Short Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(shortTons: 0.0011023109950010197)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Short Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(shortTons: -0.0011023109950010197)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Short Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(shortTons: 0.00027557774875025493)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Short Tons
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(shortTons: 1.1023109950010197)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Short Tons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.shortTons(0.0)
			#expect(unit.shortTons.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Short Tons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Mass.shortTons(0.0011023109950010197)
			#expect(unit.shortTons.isApproximatelyEqual(to: 0.0011023109950010197))
		}

	/// Tests initializing the type from a value in Short Tons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Mass.shortTons(-0.0011023109950010197)
			#expect(unit.shortTons.isApproximatelyEqual(to: -0.0011023109950010197))
		}

	/// Tests initializing the type from a value in Short Tons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Mass.shortTons(1.1023109950010198e-06)
			#expect(unit.shortTons.isApproximatelyEqual(to: 1.1023109950010198e-06))
		}

	/// Tests initializing the type from a value in Short Tons and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1102.31)")
		func testRoundTrip_4() async throws {
			let unit = Mass.shortTons(1102.3109950010196)
			#expect(unit.shortTons.isApproximatelyEqual(to: 1102.3109950010196))
		}
	}
/// Slugs unit tests.
///
	@Suite("Slugs")
	struct slugsTests {
	/// Tests initializing the type from a value in Slugs
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.slugs(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Slugs
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.slugs(0.06852177964766101)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Slugs
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.slugs(-0.06852177964766101)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Slugs
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.slugs(0.006852177964766101)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Slugs
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.slugs(3.4260889823830505)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Slugs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.slugs = 0.0
			#expect(unit.slugs.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Slugs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.07)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.slugs = 0.06852177964766101
			#expect(unit.slugs.isApproximatelyEqual(to: 0.06852177964766101))
		}

	/// Tests setting the type from a value in Slugs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.07)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.slugs = -0.06852177964766101
			#expect(unit.slugs.isApproximatelyEqual(to: -0.06852177964766101))
		}

	/// Tests setting the type from a value in Slugs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.01)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.slugs = 0.006852177964766101
			#expect(unit.slugs.isApproximatelyEqual(to: 0.006852177964766101))
		}

	/// Tests setting the type from a value in Slugs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (3.43)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.slugs = 3.4260889823830505
			#expect(unit.slugs.isApproximatelyEqual(to: 3.4260889823830505))
		}

	/// Tests initializing the type from a value in Slugs
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(slugs: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Slugs
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(slugs: 0.06852177964766101)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Slugs
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(slugs: -0.06852177964766101)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Slugs
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(slugs: 0.017130444911915253)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Slugs
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(slugs: 68.521779647661)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Slugs and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.slugs(0.0)
			#expect(unit.slugs.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Slugs and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.07)")
		func testRoundTrip_1() async throws {
			let unit = Mass.slugs(0.06852177964766101)
			#expect(unit.slugs.isApproximatelyEqual(to: 0.06852177964766101))
		}

	/// Tests initializing the type from a value in Slugs and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.07)")
		func testRoundTrip_2() async throws {
			let unit = Mass.slugs(-0.06852177964766101)
			#expect(unit.slugs.isApproximatelyEqual(to: -0.06852177964766101))
		}

	/// Tests initializing the type from a value in Slugs and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Mass.slugs(6.852177964766101e-05)
			#expect(unit.slugs.isApproximatelyEqual(to: 6.852177964766101e-05))
		}

	/// Tests initializing the type from a value in Slugs and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (68521.78)")
		func testRoundTrip_4() async throws {
			let unit = Mass.slugs(68521.77964766101)
			#expect(unit.slugs.isApproximatelyEqual(to: 68521.77964766101))
		}
	}
/// Stones unit tests.
///
	@Suite("Stones")
	struct stonesTests {
	/// Tests initializing the type from a value in Stones
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Mass.stones(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Stones
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Mass.stones(0.1574731232746851)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Stones
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Mass.stones(-0.1574731232746851)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Stones
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Mass.stones(0.01574731232746851)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Stones
	/// and checking the stored value in Kilograms.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Mass.stones(7.873656163734254)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Stones and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Mass<Double>.zero
			unit.stones = 0.0
			#expect(unit.stones.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Stones and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.16)")
		func testGetAndSet_1() async throws {
			var unit = Mass<Double>.zero
			unit.stones = 0.1574731232746851
			#expect(unit.stones.isApproximatelyEqual(to: 0.1574731232746851))
		}

	/// Tests setting the type from a value in Stones and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.16)")
		func testGetAndSet_2() async throws {
			var unit = Mass<Double>.zero
			unit.stones = -0.1574731232746851
			#expect(unit.stones.isApproximatelyEqual(to: -0.1574731232746851))
		}

	/// Tests setting the type from a value in Stones and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.02)")
		func testGetAndSet_3() async throws {
			var unit = Mass<Double>.zero
			unit.stones = 0.01574731232746851
			#expect(unit.stones.isApproximatelyEqual(to: 0.01574731232746851))
		}

	/// Tests setting the type from a value in Stones and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (7.87)")
		func testGetAndSet_4() async throws {
			var unit = Mass<Double>.zero
			unit.stones = 7.873656163734254
			#expect(unit.stones.isApproximatelyEqual(to: 7.873656163734254))
		}

	/// Tests initializing the type from a value in Stones
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Mass(stones: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Stones
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Mass(stones: 0.1574731232746851)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Stones
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Mass(stones: -0.1574731232746851)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Stones
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Mass(stones: 0.039368280818671275)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Stones
	/// and checking the stored value in Kilograms.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Mass(stones: 157.4731232746851)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Stones and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Mass.stones(0.0)
			#expect(unit.stones.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Stones and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.16)")
		func testRoundTrip_1() async throws {
			let unit = Mass.stones(0.1574731232746851)
			#expect(unit.stones.isApproximatelyEqual(to: 0.1574731232746851))
		}

	/// Tests initializing the type from a value in Stones and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.16)")
		func testRoundTrip_2() async throws {
			let unit = Mass.stones(-0.1574731232746851)
			#expect(unit.stones.isApproximatelyEqual(to: -0.1574731232746851))
		}

	/// Tests initializing the type from a value in Stones and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Mass.stones(0.0001574731232746851)
			#expect(unit.stones.isApproximatelyEqual(to: 0.0001574731232746851))
		}

	/// Tests initializing the type from a value in Stones and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (157473.12)")
		func testRoundTrip_4() async throws {
			let unit = Mass.stones(157473.1232746851)
			#expect(unit.stones.isApproximatelyEqual(to: 157473.1232746851))
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
			for unit in Mass<Double>.MeasurementUnit.allCases {
				#expect(!unit.symbol(for: 1.0).isEmpty)
				#expect(!unit.symbol(for: 2.0).isEmpty)
			}
		}
	}
}
