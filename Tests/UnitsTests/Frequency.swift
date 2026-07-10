//
//  Frequency.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Frequency")
struct FrequencyTests {
/// Frames Per Second unit tests.
///
	@Suite("Frames Per Second")
	struct framesPerSecondTests {
	/// Tests initializing the type from a value in Frames Per Second
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Frequency.framesPerSecond(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Frames Per Second
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Frequency.framesPerSecond(1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Frames Per Second
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Frequency.framesPerSecond(-1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Frames Per Second
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Frequency.framesPerSecond(0.1)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Frames Per Second
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Frequency.framesPerSecond(50.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Frames Per Second and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Frequency<Double>.zero
			unit.framesPerSecond = 0.0
			#expect(unit.framesPerSecond.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Frames Per Second and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.00)")
		func testGetAndSet_1() async throws {
			var unit = Frequency<Double>.zero
			unit.framesPerSecond = 1.0
			#expect(unit.framesPerSecond.isApproximatelyEqual(to: 1.0))
		}

	/// Tests setting the type from a value in Frames Per Second and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.00)")
		func testGetAndSet_2() async throws {
			var unit = Frequency<Double>.zero
			unit.framesPerSecond = -1.0
			#expect(unit.framesPerSecond.isApproximatelyEqual(to: -1.0))
		}

	/// Tests setting the type from a value in Frames Per Second and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.10)")
		func testGetAndSet_3() async throws {
			var unit = Frequency<Double>.zero
			unit.framesPerSecond = 0.1
			#expect(unit.framesPerSecond.isApproximatelyEqual(to: 0.1))
		}

	/// Tests setting the type from a value in Frames Per Second and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50.00)")
		func testGetAndSet_4() async throws {
			var unit = Frequency<Double>.zero
			unit.framesPerSecond = 50.0
			#expect(unit.framesPerSecond.isApproximatelyEqual(to: 50.0))
		}

	/// Tests initializing the type from a value in Frames Per Second
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Frequency(framesPerSecond: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Frames Per Second
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Frequency(framesPerSecond: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Frames Per Second
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Frequency(framesPerSecond: -1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Frames Per Second
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Frequency(framesPerSecond: 0.25)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Frames Per Second
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Frequency(framesPerSecond: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Frames Per Second and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Frequency.framesPerSecond(0.0)
			#expect(unit.framesPerSecond.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Frames Per Second and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_1() async throws {
			let unit = Frequency.framesPerSecond(1.0)
			#expect(unit.framesPerSecond.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Frames Per Second and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.00)")
		func testRoundTrip_2() async throws {
			let unit = Frequency.framesPerSecond(-1.0)
			#expect(unit.framesPerSecond.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Frames Per Second and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Frequency.framesPerSecond(0.001)
			#expect(unit.framesPerSecond.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Frames Per Second and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Frequency.framesPerSecond(1000000.0)
			#expect(unit.framesPerSecond.isApproximatelyEqual(to: 1000000.0))
		}
	}
/// Gigahertz unit tests.
///
	@Suite("Gigahertz")
	struct gigahertzTests {
	/// Tests initializing the type from a value in Gigahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Frequency.gigahertz(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Gigahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Frequency.gigahertz(1e-09)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Gigahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Frequency.gigahertz(-1e-09)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Gigahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Frequency.gigahertz(1e-10)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Gigahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Frequency.gigahertz(5e-08)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Gigahertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Frequency<Double>.zero
			unit.gigahertz = 0.0
			#expect(unit.gigahertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Gigahertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Frequency<Double>.zero
			unit.gigahertz = 1e-09
			#expect(unit.gigahertz.isApproximatelyEqual(to: 1e-09))
		}

	/// Tests setting the type from a value in Gigahertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Frequency<Double>.zero
			unit.gigahertz = -1e-09
			#expect(unit.gigahertz.isApproximatelyEqual(to: -1e-09))
		}

	/// Tests setting the type from a value in Gigahertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Frequency<Double>.zero
			unit.gigahertz = 1e-10
			#expect(unit.gigahertz.isApproximatelyEqual(to: 1e-10))
		}

	/// Tests setting the type from a value in Gigahertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Frequency<Double>.zero
			unit.gigahertz = 5e-08
			#expect(unit.gigahertz.isApproximatelyEqual(to: 5e-08))
		}

	/// Tests initializing the type from a value in Gigahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Frequency(gigahertz: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Gigahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Frequency(gigahertz: 1e-09)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Gigahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Frequency(gigahertz: -1e-09)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Gigahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Frequency(gigahertz: 2.5e-10)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Gigahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Frequency(gigahertz: 1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Gigahertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Frequency.gigahertz(0.0)
			#expect(unit.gigahertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Gigahertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Frequency.gigahertz(1e-09)
			#expect(unit.gigahertz.isApproximatelyEqual(to: 1e-09))
		}

	/// Tests initializing the type from a value in Gigahertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Frequency.gigahertz(-1e-09)
			#expect(unit.gigahertz.isApproximatelyEqual(to: -1e-09))
		}

	/// Tests initializing the type from a value in Gigahertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Frequency.gigahertz(1e-12)
			#expect(unit.gigahertz.isApproximatelyEqual(to: 1e-12))
		}

	/// Tests initializing the type from a value in Gigahertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_4() async throws {
			let unit = Frequency.gigahertz(0.001)
			#expect(unit.gigahertz.isApproximatelyEqual(to: 0.001))
		}
	}
/// Hertz unit tests.
///
	@Suite("Hertz")
	struct hertzTests {
	/// Tests initializing the type from a value in Hertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Frequency.hertz(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Hertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Frequency.hertz(1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Hertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Frequency.hertz(-1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Hertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Frequency.hertz(0.1)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Hertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Frequency.hertz(50.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Hertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Frequency<Double>.zero
			unit.hertz = 0.0
			#expect(unit.hertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Hertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.00)")
		func testGetAndSet_1() async throws {
			var unit = Frequency<Double>.zero
			unit.hertz = 1.0
			#expect(unit.hertz.isApproximatelyEqual(to: 1.0))
		}

	/// Tests setting the type from a value in Hertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.00)")
		func testGetAndSet_2() async throws {
			var unit = Frequency<Double>.zero
			unit.hertz = -1.0
			#expect(unit.hertz.isApproximatelyEqual(to: -1.0))
		}

	/// Tests setting the type from a value in Hertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.10)")
		func testGetAndSet_3() async throws {
			var unit = Frequency<Double>.zero
			unit.hertz = 0.1
			#expect(unit.hertz.isApproximatelyEqual(to: 0.1))
		}

	/// Tests setting the type from a value in Hertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50.00)")
		func testGetAndSet_4() async throws {
			var unit = Frequency<Double>.zero
			unit.hertz = 50.0
			#expect(unit.hertz.isApproximatelyEqual(to: 50.0))
		}

	/// Tests initializing the type from a value in Hertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Frequency(hertz: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Hertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Frequency(hertz: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Hertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Frequency(hertz: -1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Hertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Frequency(hertz: 0.25)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Hertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Frequency(hertz: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Hertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Frequency.hertz(0.0)
			#expect(unit.hertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Hertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_1() async throws {
			let unit = Frequency.hertz(1.0)
			#expect(unit.hertz.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Hertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.00)")
		func testRoundTrip_2() async throws {
			let unit = Frequency.hertz(-1.0)
			#expect(unit.hertz.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Hertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Frequency.hertz(0.001)
			#expect(unit.hertz.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Hertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Frequency.hertz(1000000.0)
			#expect(unit.hertz.isApproximatelyEqual(to: 1000000.0))
		}
	}
/// Kilohertz unit tests.
///
	@Suite("Kilohertz")
	struct kilohertzTests {
	/// Tests initializing the type from a value in Kilohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Frequency.kilohertz(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Frequency.kilohertz(0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Kilohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Frequency.kilohertz(-0.001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Kilohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Frequency.kilohertz(0.0001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Kilohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Frequency.kilohertz(0.05)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Kilohertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Frequency<Double>.zero
			unit.kilohertz = 0.0
			#expect(unit.kilohertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Kilohertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Frequency<Double>.zero
			unit.kilohertz = 0.001
			#expect(unit.kilohertz.isApproximatelyEqual(to: 0.001))
		}

	/// Tests setting the type from a value in Kilohertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Frequency<Double>.zero
			unit.kilohertz = -0.001
			#expect(unit.kilohertz.isApproximatelyEqual(to: -0.001))
		}

	/// Tests setting the type from a value in Kilohertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Frequency<Double>.zero
			unit.kilohertz = 0.0001
			#expect(unit.kilohertz.isApproximatelyEqual(to: 0.0001))
		}

	/// Tests setting the type from a value in Kilohertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.05)")
		func testGetAndSet_4() async throws {
			var unit = Frequency<Double>.zero
			unit.kilohertz = 0.05
			#expect(unit.kilohertz.isApproximatelyEqual(to: 0.05))
		}

	/// Tests initializing the type from a value in Kilohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Frequency(kilohertz: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Frequency(kilohertz: 0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Kilohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Frequency(kilohertz: -0.001)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Kilohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Frequency(kilohertz: 0.00025)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Kilohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Frequency(kilohertz: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Kilohertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Frequency.kilohertz(0.0)
			#expect(unit.kilohertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Kilohertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Frequency.kilohertz(0.001)
			#expect(unit.kilohertz.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Kilohertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Frequency.kilohertz(-0.001)
			#expect(unit.kilohertz.isApproximatelyEqual(to: -0.001))
		}

	/// Tests initializing the type from a value in Kilohertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Frequency.kilohertz(1e-06)
			#expect(unit.kilohertz.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests initializing the type from a value in Kilohertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_4() async throws {
			let unit = Frequency.kilohertz(1000.0)
			#expect(unit.kilohertz.isApproximatelyEqual(to: 1000.0))
		}
	}
/// Megahertz unit tests.
///
	@Suite("Megahertz")
	struct megahertzTests {
	/// Tests initializing the type from a value in Megahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Frequency.megahertz(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Megahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Frequency.megahertz(1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Megahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Frequency.megahertz(-1e-06)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Megahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Frequency.megahertz(1.0000000000000001e-07)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Megahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Frequency.megahertz(5e-05)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Megahertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Frequency<Double>.zero
			unit.megahertz = 0.0
			#expect(unit.megahertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Megahertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Frequency<Double>.zero
			unit.megahertz = 1e-06
			#expect(unit.megahertz.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests setting the type from a value in Megahertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Frequency<Double>.zero
			unit.megahertz = -1e-06
			#expect(unit.megahertz.isApproximatelyEqual(to: -1e-06))
		}

	/// Tests setting the type from a value in Megahertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Frequency<Double>.zero
			unit.megahertz = 1.0000000000000001e-07
			#expect(unit.megahertz.isApproximatelyEqual(to: 1.0000000000000001e-07))
		}

	/// Tests setting the type from a value in Megahertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Frequency<Double>.zero
			unit.megahertz = 5e-05
			#expect(unit.megahertz.isApproximatelyEqual(to: 5e-05))
		}

	/// Tests initializing the type from a value in Megahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Frequency(megahertz: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Megahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Frequency(megahertz: 1e-06)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Megahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Frequency(megahertz: -1e-06)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Megahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Frequency(megahertz: 2.5e-07)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Megahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Frequency(megahertz: 0.001)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Megahertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Frequency.megahertz(0.0)
			#expect(unit.megahertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Megahertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Frequency.megahertz(1e-06)
			#expect(unit.megahertz.isApproximatelyEqual(to: 1e-06))
		}

	/// Tests initializing the type from a value in Megahertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Frequency.megahertz(-1e-06)
			#expect(unit.megahertz.isApproximatelyEqual(to: -1e-06))
		}

	/// Tests initializing the type from a value in Megahertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Frequency.megahertz(1e-09)
			#expect(unit.megahertz.isApproximatelyEqual(to: 1e-09))
		}

	/// Tests initializing the type from a value in Megahertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_4() async throws {
			let unit = Frequency.megahertz(1.0)
			#expect(unit.megahertz.isApproximatelyEqual(to: 1.0))
		}
	}
/// Microhertz unit tests.
///
	@Suite("Microhertz")
	struct microhertzTests {
	/// Tests initializing the type from a value in Microhertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Frequency.microhertz(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Microhertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Frequency.microhertz(1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Microhertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Frequency.microhertz(-1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Microhertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Frequency.microhertz(100000.00000000001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Microhertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Frequency.microhertz(50000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Microhertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Frequency<Double>.zero
			unit.microhertz = 0.0
			#expect(unit.microhertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Microhertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Frequency<Double>.zero
			unit.microhertz = 1000000.0
			#expect(unit.microhertz.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests setting the type from a value in Microhertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Frequency<Double>.zero
			unit.microhertz = -1000000.0
			#expect(unit.microhertz.isApproximatelyEqual(to: -1000000.0))
		}

	/// Tests setting the type from a value in Microhertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000.00)")
		func testGetAndSet_3() async throws {
			var unit = Frequency<Double>.zero
			unit.microhertz = 100000.00000000001
			#expect(unit.microhertz.isApproximatelyEqual(to: 100000.00000000001))
		}

	/// Tests setting the type from a value in Microhertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Frequency<Double>.zero
			unit.microhertz = 50000000.0
			#expect(unit.microhertz.isApproximatelyEqual(to: 50000000.0))
		}

	/// Tests initializing the type from a value in Microhertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Frequency(microhertz: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Microhertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Frequency(microhertz: 1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Microhertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Frequency(microhertz: -1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Microhertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Frequency(microhertz: 250000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Microhertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Frequency(microhertz: 1000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Microhertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Frequency.microhertz(0.0)
			#expect(unit.microhertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Microhertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Frequency.microhertz(1000000.0)
			#expect(unit.microhertz.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests initializing the type from a value in Microhertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Frequency.microhertz(-1000000.0)
			#expect(unit.microhertz.isApproximatelyEqual(to: -1000000.0))
		}

	/// Tests initializing the type from a value in Microhertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_3() async throws {
			let unit = Frequency.microhertz(1000.0000000000001)
			#expect(unit.microhertz.isApproximatelyEqual(to: 1000.0000000000001))
		}

	/// Tests initializing the type from a value in Microhertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Frequency.microhertz(1000000000000.0)
			#expect(unit.microhertz.isApproximatelyEqual(to: 1000000000000.0))
		}
	}
/// Millihertz unit tests.
///
	@Suite("Millihertz")
	struct millihertzTests {
	/// Tests initializing the type from a value in Millihertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Frequency.millihertz(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Millihertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Frequency.millihertz(1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Millihertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Frequency.millihertz(-1000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Millihertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Frequency.millihertz(100.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Millihertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Frequency.millihertz(50000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Millihertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Frequency<Double>.zero
			unit.millihertz = 0.0
			#expect(unit.millihertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Millihertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000.00)")
		func testGetAndSet_1() async throws {
			var unit = Frequency<Double>.zero
			unit.millihertz = 1000.0
			#expect(unit.millihertz.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests setting the type from a value in Millihertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000.00)")
		func testGetAndSet_2() async throws {
			var unit = Frequency<Double>.zero
			unit.millihertz = -1000.0
			#expect(unit.millihertz.isApproximatelyEqual(to: -1000.0))
		}

	/// Tests setting the type from a value in Millihertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100.00)")
		func testGetAndSet_3() async throws {
			var unit = Frequency<Double>.zero
			unit.millihertz = 100.0
			#expect(unit.millihertz.isApproximatelyEqual(to: 100.0))
		}

	/// Tests setting the type from a value in Millihertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000.00)")
		func testGetAndSet_4() async throws {
			var unit = Frequency<Double>.zero
			unit.millihertz = 50000.0
			#expect(unit.millihertz.isApproximatelyEqual(to: 50000.0))
		}

	/// Tests initializing the type from a value in Millihertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Frequency(millihertz: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Millihertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Frequency(millihertz: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Millihertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Frequency(millihertz: -1000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Millihertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Frequency(millihertz: 250.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Millihertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Frequency(millihertz: 1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Millihertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Frequency.millihertz(0.0)
			#expect(unit.millihertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Millihertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_1() async throws {
			let unit = Frequency.millihertz(1000.0)
			#expect(unit.millihertz.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Millihertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000.00)")
		func testRoundTrip_2() async throws {
			let unit = Frequency.millihertz(-1000.0)
			#expect(unit.millihertz.isApproximatelyEqual(to: -1000.0))
		}

	/// Tests initializing the type from a value in Millihertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_3() async throws {
			let unit = Frequency.millihertz(1.0)
			#expect(unit.millihertz.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Millihertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Frequency.millihertz(1000000000.0)
			#expect(unit.millihertz.isApproximatelyEqual(to: 1000000000.0))
		}
	}
/// Nanohertz unit tests.
///
	@Suite("Nanohertz")
	struct nanohertzTests {
	/// Tests initializing the type from a value in Nanohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Frequency.nanohertz(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nanohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Frequency.nanohertz(999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Nanohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Frequency.nanohertz(-999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Nanohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Frequency.nanohertz(100000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Nanohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Frequency.nanohertz(50000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Nanohertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Frequency<Double>.zero
			unit.nanohertz = 0.0
			#expect(unit.nanohertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Nanohertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Frequency<Double>.zero
			unit.nanohertz = 999999999.9999999
			#expect(unit.nanohertz.isApproximatelyEqual(to: 999999999.9999999))
		}

	/// Tests setting the type from a value in Nanohertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Frequency<Double>.zero
			unit.nanohertz = -999999999.9999999
			#expect(unit.nanohertz.isApproximatelyEqual(to: -999999999.9999999))
		}

	/// Tests setting the type from a value in Nanohertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000000.00)")
		func testGetAndSet_3() async throws {
			var unit = Frequency<Double>.zero
			unit.nanohertz = 100000000.0
			#expect(unit.nanohertz.isApproximatelyEqual(to: 100000000.0))
		}

	/// Tests setting the type from a value in Nanohertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Frequency<Double>.zero
			unit.nanohertz = 50000000000.0
			#expect(unit.nanohertz.isApproximatelyEqual(to: 50000000000.0))
		}

	/// Tests initializing the type from a value in Nanohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Frequency(nanohertz: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nanohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Frequency(nanohertz: 999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Nanohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Frequency(nanohertz: -999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Nanohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Frequency(nanohertz: 249999999.99999997)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Nanohertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Frequency(nanohertz: 999999999999.9999)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Nanohertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Frequency.nanohertz(0.0)
			#expect(unit.nanohertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nanohertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Frequency.nanohertz(999999999.9999999)
			#expect(unit.nanohertz.isApproximatelyEqual(to: 999999999.9999999))
		}

	/// Tests initializing the type from a value in Nanohertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Frequency.nanohertz(-999999999.9999999)
			#expect(unit.nanohertz.isApproximatelyEqual(to: -999999999.9999999))
		}

	/// Tests initializing the type from a value in Nanohertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_3() async throws {
			let unit = Frequency.nanohertz(1000000.0)
			#expect(unit.nanohertz.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests initializing the type from a value in Nanohertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Frequency.nanohertz(1000000000000000.0)
			#expect(unit.nanohertz.isApproximatelyEqual(to: 1000000000000000.0))
		}
	}
/// Terahertz unit tests.
///
	@Suite("Terahertz")
	struct terahertzTests {
	/// Tests initializing the type from a value in Terahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Frequency.terahertz(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Terahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Frequency.terahertz(1e-12)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Terahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Frequency.terahertz(-1e-12)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Terahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Frequency.terahertz(1e-13)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Terahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Frequency.terahertz(5e-11)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Terahertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Frequency<Double>.zero
			unit.terahertz = 0.0
			#expect(unit.terahertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Terahertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Frequency<Double>.zero
			unit.terahertz = 1e-12
			#expect(unit.terahertz.isApproximatelyEqual(to: 1e-12))
		}

	/// Tests setting the type from a value in Terahertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Frequency<Double>.zero
			unit.terahertz = -1e-12
			#expect(unit.terahertz.isApproximatelyEqual(to: -1e-12))
		}

	/// Tests setting the type from a value in Terahertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Frequency<Double>.zero
			unit.terahertz = 1e-13
			#expect(unit.terahertz.isApproximatelyEqual(to: 1e-13))
		}

	/// Tests setting the type from a value in Terahertz and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Frequency<Double>.zero
			unit.terahertz = 5e-11
			#expect(unit.terahertz.isApproximatelyEqual(to: 5e-11))
		}

	/// Tests initializing the type from a value in Terahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Frequency(terahertz: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Terahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Frequency(terahertz: 1e-12)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Terahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Frequency(terahertz: -1e-12)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Terahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Frequency(terahertz: 2.5e-13)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Terahertz
	/// and checking the stored value in Hertz.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Frequency(terahertz: 1e-09)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Terahertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Frequency.terahertz(0.0)
			#expect(unit.terahertz.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Terahertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Frequency.terahertz(1e-12)
			#expect(unit.terahertz.isApproximatelyEqual(to: 1e-12))
		}

	/// Tests initializing the type from a value in Terahertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Frequency.terahertz(-1e-12)
			#expect(unit.terahertz.isApproximatelyEqual(to: -1e-12))
		}

	/// Tests initializing the type from a value in Terahertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Frequency.terahertz(1e-15)
			#expect(unit.terahertz.isApproximatelyEqual(to: 1e-15))
		}

	/// Tests initializing the type from a value in Terahertz and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_4() async throws {
			let unit = Frequency.terahertz(1e-06)
			#expect(unit.terahertz.isApproximatelyEqual(to: 1e-06))
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
			for unit in Frequency<Double>.MeasurementUnit.allCases {
				#expect(!unit.symbol(for: 1.0).isEmpty)
				#expect(!unit.symbol(for: 2.0).isEmpty)
			}
		}
	}
}
