//
//  LuminousIntensity.swift
//  Units
//
//  Created by Matt Cox on 18/08/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("LuminousIntensity")
struct LuminousIntensityTests {
/// Candela unit tests.
///
	@Suite("Candela")
	struct candelaTests {
	/// Tests initializing the type from a value in Candela
	/// and checking the stored value in Candela.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = LuminousIntensity.candela(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Candela
	/// and checking the stored value in Candela.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = LuminousIntensity.candela(1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Candela
	/// and checking the stored value in Candela.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = LuminousIntensity.candela(-1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Candela
	/// and checking the stored value in Candela.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = LuminousIntensity.candela(0.1)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Candela
	/// and checking the stored value in Candela.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = LuminousIntensity.candela(50.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Candela and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = LuminousIntensity<Double>.zero
			unit.candela = 0.0
			#expect(unit.candela.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Candela and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.00)")
		func testGetAndSet_1() async throws {
			var unit = LuminousIntensity<Double>.zero
			unit.candela = 1.0
			#expect(unit.candela.isApproximatelyEqual(to: 1.0))
		}

	/// Tests setting the type from a value in Candela and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.00)")
		func testGetAndSet_2() async throws {
			var unit = LuminousIntensity<Double>.zero
			unit.candela = -1.0
			#expect(unit.candela.isApproximatelyEqual(to: -1.0))
		}

	/// Tests setting the type from a value in Candela and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.10)")
		func testGetAndSet_3() async throws {
			var unit = LuminousIntensity<Double>.zero
			unit.candela = 0.1
			#expect(unit.candela.isApproximatelyEqual(to: 0.1))
		}

	/// Tests setting the type from a value in Candela and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50.00)")
		func testGetAndSet_4() async throws {
			var unit = LuminousIntensity<Double>.zero
			unit.candela = 50.0
			#expect(unit.candela.isApproximatelyEqual(to: 50.0))
		}

	/// Tests initializing the type from a value in Candela
	/// and checking the stored value in Candela.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = LuminousIntensity(candela: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Candela
	/// and checking the stored value in Candela.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = LuminousIntensity(candela: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Candela
	/// and checking the stored value in Candela.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = LuminousIntensity(candela: -1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Candela
	/// and checking the stored value in Candela.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = LuminousIntensity(candela: 0.25)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Candela
	/// and checking the stored value in Candela.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = LuminousIntensity(candela: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Candela and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = LuminousIntensity.candela(0.0)
			#expect(unit.candela.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Candela and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_1() async throws {
			let unit = LuminousIntensity.candela(1.0)
			#expect(unit.candela.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Candela and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.00)")
		func testRoundTrip_2() async throws {
			let unit = LuminousIntensity.candela(-1.0)
			#expect(unit.candela.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Candela and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = LuminousIntensity.candela(0.001)
			#expect(unit.candela.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Candela and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_4() async throws {
			let unit = LuminousIntensity.candela(1000000.0)
			#expect(unit.candela.isApproximatelyEqual(to: 1000000.0))
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
			for unit in LuminousIntensity<Double>.MeasurementUnit.allCases {
				#expect(!unit.symbol(for: 1.0).isEmpty)
				#expect(!unit.symbol(for: 2.0).isEmpty)
			}
		}
	}
}
