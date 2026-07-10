//
//  Duration.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Duration")
struct DurationTests {
/// Days unit tests.
///
	@Suite("Days")
	struct daysTests {
	/// Tests initializing the type from a value in Days
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Duration.days(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Days
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Duration.days(1.1574074074074073e-05)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Days
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Duration.days(-1.1574074074074073e-05)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Days
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Duration.days(1.1574074074074074e-06)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Days
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Duration.days(0.0005787037037037037)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Days and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Duration<Double>.zero
			unit.days = 0.0
			#expect(unit.days.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Days and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Duration<Double>.zero
			unit.days = 1.1574074074074073e-05
			#expect(unit.days.isApproximatelyEqual(to: 1.1574074074074073e-05))
		}

	/// Tests setting the type from a value in Days and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Duration<Double>.zero
			unit.days = -1.1574074074074073e-05
			#expect(unit.days.isApproximatelyEqual(to: -1.1574074074074073e-05))
		}

	/// Tests setting the type from a value in Days and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Duration<Double>.zero
			unit.days = 1.1574074074074074e-06
			#expect(unit.days.isApproximatelyEqual(to: 1.1574074074074074e-06))
		}

	/// Tests setting the type from a value in Days and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_4() async throws {
			var unit = Duration<Double>.zero
			unit.days = 0.0005787037037037037
			#expect(unit.days.isApproximatelyEqual(to: 0.0005787037037037037))
		}

	/// Tests initializing the type from a value in Days
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Duration(days: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Days
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Duration(days: 1.1574074074074073e-05)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Days
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Duration(days: -1.1574074074074073e-05)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Days
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Duration(days: 2.8935185185185184e-06)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Days
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Duration(days: 0.011574074074074073)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Days and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Duration.days(0.0)
			#expect(unit.days.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Days and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Duration.days(1.1574074074074073e-05)
			#expect(unit.days.isApproximatelyEqual(to: 1.1574074074074073e-05))
		}

	/// Tests initializing the type from a value in Days and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Duration.days(-1.1574074074074073e-05)
			#expect(unit.days.isApproximatelyEqual(to: -1.1574074074074073e-05))
		}

	/// Tests initializing the type from a value in Days and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Duration.days(1.1574074074074074e-08)
			#expect(unit.days.isApproximatelyEqual(to: 1.1574074074074074e-08))
		}

	/// Tests initializing the type from a value in Days and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (11.57)")
		func testRoundTrip_4() async throws {
			let unit = Duration.days(11.574074074074074)
			#expect(unit.days.isApproximatelyEqual(to: 11.574074074074074))
		}
	}
/// Hours unit tests.
///
	@Suite("Hours")
	struct hoursTests {
	/// Tests initializing the type from a value in Hours
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Duration.hours(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Hours
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Duration.hours(0.0002777777777777778)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Hours
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Duration.hours(-0.0002777777777777778)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Hours
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Duration.hours(2.777777777777778e-05)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Hours
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Duration.hours(0.013888888888888888)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Hours and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Duration<Double>.zero
			unit.hours = 0.0
			#expect(unit.hours.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Hours and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_1() async throws {
			var unit = Duration<Double>.zero
			unit.hours = 0.0002777777777777778
			#expect(unit.hours.isApproximatelyEqual(to: 0.0002777777777777778))
		}

	/// Tests setting the type from a value in Hours and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.00)")
		func testGetAndSet_2() async throws {
			var unit = Duration<Double>.zero
			unit.hours = -0.0002777777777777778
			#expect(unit.hours.isApproximatelyEqual(to: -0.0002777777777777778))
		}

	/// Tests setting the type from a value in Hours and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Duration<Double>.zero
			unit.hours = 2.777777777777778e-05
			#expect(unit.hours.isApproximatelyEqual(to: 2.777777777777778e-05))
		}

	/// Tests setting the type from a value in Hours and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.01)")
		func testGetAndSet_4() async throws {
			var unit = Duration<Double>.zero
			unit.hours = 0.013888888888888888
			#expect(unit.hours.isApproximatelyEqual(to: 0.013888888888888888))
		}

	/// Tests initializing the type from a value in Hours
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Duration(hours: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Hours
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Duration(hours: 0.0002777777777777778)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Hours
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Duration(hours: -0.0002777777777777778)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Hours
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Duration(hours: 6.944444444444444e-05)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Hours
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Duration(hours: 0.2777777777777778)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Hours and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Duration.hours(0.0)
			#expect(unit.hours.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Hours and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_1() async throws {
			let unit = Duration.hours(0.0002777777777777778)
			#expect(unit.hours.isApproximatelyEqual(to: 0.0002777777777777778))
		}

	/// Tests initializing the type from a value in Hours and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.00)")
		func testRoundTrip_2() async throws {
			let unit = Duration.hours(-0.0002777777777777778)
			#expect(unit.hours.isApproximatelyEqual(to: -0.0002777777777777778))
		}

	/// Tests initializing the type from a value in Hours and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Duration.hours(2.7777777777777776e-07)
			#expect(unit.hours.isApproximatelyEqual(to: 2.7777777777777776e-07))
		}

	/// Tests initializing the type from a value in Hours and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (277.78)")
		func testRoundTrip_4() async throws {
			let unit = Duration.hours(277.77777777777777)
			#expect(unit.hours.isApproximatelyEqual(to: 277.77777777777777))
		}
	}
/// Microseconds unit tests.
///
	@Suite("Microseconds")
	struct microsecondsTests {
	/// Tests initializing the type from a value in Microseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Duration.microseconds(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Microseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Duration.microseconds(1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Microseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Duration.microseconds(-1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Microseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Duration.microseconds(100000.00000000001)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Microseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Duration.microseconds(50000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Microseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Duration<Double>.zero
			unit.microseconds = 0.0
			#expect(unit.microseconds.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Microseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Duration<Double>.zero
			unit.microseconds = 1000000.0
			#expect(unit.microseconds.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests setting the type from a value in Microseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Duration<Double>.zero
			unit.microseconds = -1000000.0
			#expect(unit.microseconds.isApproximatelyEqual(to: -1000000.0))
		}

	/// Tests setting the type from a value in Microseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000.00)")
		func testGetAndSet_3() async throws {
			var unit = Duration<Double>.zero
			unit.microseconds = 100000.00000000001
			#expect(unit.microseconds.isApproximatelyEqual(to: 100000.00000000001))
		}

	/// Tests setting the type from a value in Microseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Duration<Double>.zero
			unit.microseconds = 50000000.0
			#expect(unit.microseconds.isApproximatelyEqual(to: 50000000.0))
		}

	/// Tests initializing the type from a value in Microseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Duration(microseconds: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Microseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Duration(microseconds: 1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Microseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Duration(microseconds: -1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Microseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Duration(microseconds: 250000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Microseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Duration(microseconds: 1000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Microseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Duration.microseconds(0.0)
			#expect(unit.microseconds.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Microseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Duration.microseconds(1000000.0)
			#expect(unit.microseconds.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests initializing the type from a value in Microseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Duration.microseconds(-1000000.0)
			#expect(unit.microseconds.isApproximatelyEqual(to: -1000000.0))
		}

	/// Tests initializing the type from a value in Microseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_3() async throws {
			let unit = Duration.microseconds(1000.0000000000001)
			#expect(unit.microseconds.isApproximatelyEqual(to: 1000.0000000000001))
		}

	/// Tests initializing the type from a value in Microseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Duration.microseconds(1000000000000.0)
			#expect(unit.microseconds.isApproximatelyEqual(to: 1000000000000.0))
		}
	}
/// Milliseconds unit tests.
///
	@Suite("Milliseconds")
	struct millisecondsTests {
	/// Tests initializing the type from a value in Milliseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Duration.milliseconds(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Milliseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Duration.milliseconds(1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Milliseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Duration.milliseconds(-1000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Milliseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Duration.milliseconds(100.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Milliseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Duration.milliseconds(50000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Milliseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Duration<Double>.zero
			unit.milliseconds = 0.0
			#expect(unit.milliseconds.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Milliseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000.00)")
		func testGetAndSet_1() async throws {
			var unit = Duration<Double>.zero
			unit.milliseconds = 1000.0
			#expect(unit.milliseconds.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests setting the type from a value in Milliseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000.00)")
		func testGetAndSet_2() async throws {
			var unit = Duration<Double>.zero
			unit.milliseconds = -1000.0
			#expect(unit.milliseconds.isApproximatelyEqual(to: -1000.0))
		}

	/// Tests setting the type from a value in Milliseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100.00)")
		func testGetAndSet_3() async throws {
			var unit = Duration<Double>.zero
			unit.milliseconds = 100.0
			#expect(unit.milliseconds.isApproximatelyEqual(to: 100.0))
		}

	/// Tests setting the type from a value in Milliseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000.00)")
		func testGetAndSet_4() async throws {
			var unit = Duration<Double>.zero
			unit.milliseconds = 50000.0
			#expect(unit.milliseconds.isApproximatelyEqual(to: 50000.0))
		}

	/// Tests initializing the type from a value in Milliseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Duration(milliseconds: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Milliseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Duration(milliseconds: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Milliseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Duration(milliseconds: -1000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Milliseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Duration(milliseconds: 250.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Milliseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Duration(milliseconds: 1000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Milliseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Duration.milliseconds(0.0)
			#expect(unit.milliseconds.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Milliseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000.00)")
		func testRoundTrip_1() async throws {
			let unit = Duration.milliseconds(1000.0)
			#expect(unit.milliseconds.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Milliseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000.00)")
		func testRoundTrip_2() async throws {
			let unit = Duration.milliseconds(-1000.0)
			#expect(unit.milliseconds.isApproximatelyEqual(to: -1000.0))
		}

	/// Tests initializing the type from a value in Milliseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_3() async throws {
			let unit = Duration.milliseconds(1.0)
			#expect(unit.milliseconds.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Milliseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Duration.milliseconds(1000000000.0)
			#expect(unit.milliseconds.isApproximatelyEqual(to: 1000000000.0))
		}
	}
/// Minutes unit tests.
///
	@Suite("Minutes")
	struct minutesTests {
	/// Tests initializing the type from a value in Minutes
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Duration.minutes(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Minutes
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Duration.minutes(0.016666666666666666)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Minutes
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Duration.minutes(-0.016666666666666666)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Minutes
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Duration.minutes(0.0016666666666666668)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Minutes
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Duration.minutes(0.8333333333333334)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Minutes and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Duration<Double>.zero
			unit.minutes = 0.0
			#expect(unit.minutes.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Minutes and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.02)")
		func testGetAndSet_1() async throws {
			var unit = Duration<Double>.zero
			unit.minutes = 0.016666666666666666
			#expect(unit.minutes.isApproximatelyEqual(to: 0.016666666666666666))
		}

	/// Tests setting the type from a value in Minutes and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.02)")
		func testGetAndSet_2() async throws {
			var unit = Duration<Double>.zero
			unit.minutes = -0.016666666666666666
			#expect(unit.minutes.isApproximatelyEqual(to: -0.016666666666666666))
		}

	/// Tests setting the type from a value in Minutes and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_3() async throws {
			var unit = Duration<Double>.zero
			unit.minutes = 0.0016666666666666668
			#expect(unit.minutes.isApproximatelyEqual(to: 0.0016666666666666668))
		}

	/// Tests setting the type from a value in Minutes and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.83)")
		func testGetAndSet_4() async throws {
			var unit = Duration<Double>.zero
			unit.minutes = 0.8333333333333334
			#expect(unit.minutes.isApproximatelyEqual(to: 0.8333333333333334))
		}

	/// Tests initializing the type from a value in Minutes
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Duration(minutes: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Minutes
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Duration(minutes: 0.016666666666666666)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Minutes
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Duration(minutes: -0.016666666666666666)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Minutes
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Duration(minutes: 0.004166666666666667)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Minutes
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Duration(minutes: 16.666666666666668)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Minutes and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Duration.minutes(0.0)
			#expect(unit.minutes.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Minutes and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.02)")
		func testRoundTrip_1() async throws {
			let unit = Duration.minutes(0.016666666666666666)
			#expect(unit.minutes.isApproximatelyEqual(to: 0.016666666666666666))
		}

	/// Tests initializing the type from a value in Minutes and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.02)")
		func testRoundTrip_2() async throws {
			let unit = Duration.minutes(-0.016666666666666666)
			#expect(unit.minutes.isApproximatelyEqual(to: -0.016666666666666666))
		}

	/// Tests initializing the type from a value in Minutes and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Duration.minutes(1.6666666666666667e-05)
			#expect(unit.minutes.isApproximatelyEqual(to: 1.6666666666666667e-05))
		}

	/// Tests initializing the type from a value in Minutes and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (16666.67)")
		func testRoundTrip_4() async throws {
			let unit = Duration.minutes(16666.666666666668)
			#expect(unit.minutes.isApproximatelyEqual(to: 16666.666666666668))
		}
	}
/// Nanoseconds unit tests.
///
	@Suite("Nanoseconds")
	struct nanosecondsTests {
	/// Tests initializing the type from a value in Nanoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Duration.nanoseconds(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nanoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Duration.nanoseconds(999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Nanoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Duration.nanoseconds(-999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Nanoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Duration.nanoseconds(100000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Nanoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Duration.nanoseconds(50000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Nanoseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Duration<Double>.zero
			unit.nanoseconds = 0.0
			#expect(unit.nanoseconds.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Nanoseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Duration<Double>.zero
			unit.nanoseconds = 999999999.9999999
			#expect(unit.nanoseconds.isApproximatelyEqual(to: 999999999.9999999))
		}

	/// Tests setting the type from a value in Nanoseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Duration<Double>.zero
			unit.nanoseconds = -999999999.9999999
			#expect(unit.nanoseconds.isApproximatelyEqual(to: -999999999.9999999))
		}

	/// Tests setting the type from a value in Nanoseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000000.00)")
		func testGetAndSet_3() async throws {
			var unit = Duration<Double>.zero
			unit.nanoseconds = 100000000.0
			#expect(unit.nanoseconds.isApproximatelyEqual(to: 100000000.0))
		}

	/// Tests setting the type from a value in Nanoseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Duration<Double>.zero
			unit.nanoseconds = 50000000000.0
			#expect(unit.nanoseconds.isApproximatelyEqual(to: 50000000000.0))
		}

	/// Tests initializing the type from a value in Nanoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Duration(nanoseconds: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nanoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Duration(nanoseconds: 999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Nanoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Duration(nanoseconds: -999999999.9999999)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Nanoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Duration(nanoseconds: 249999999.99999997)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Nanoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Duration(nanoseconds: 999999999999.9999)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Nanoseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Duration.nanoseconds(0.0)
			#expect(unit.nanoseconds.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Nanoseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Duration.nanoseconds(999999999.9999999)
			#expect(unit.nanoseconds.isApproximatelyEqual(to: 999999999.9999999))
		}

	/// Tests initializing the type from a value in Nanoseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Duration.nanoseconds(-999999999.9999999)
			#expect(unit.nanoseconds.isApproximatelyEqual(to: -999999999.9999999))
		}

	/// Tests initializing the type from a value in Nanoseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_3() async throws {
			let unit = Duration.nanoseconds(1000000.0)
			#expect(unit.nanoseconds.isApproximatelyEqual(to: 1000000.0))
		}

	/// Tests initializing the type from a value in Nanoseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Duration.nanoseconds(1000000000000000.0)
			#expect(unit.nanoseconds.isApproximatelyEqual(to: 1000000000000000.0))
		}
	}
/// Picoseconds unit tests.
///
	@Suite("Picoseconds")
	struct picosecondsTests {
	/// Tests initializing the type from a value in Picoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Duration.picoseconds(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Picoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Duration.picoseconds(1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Picoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Duration.picoseconds(-1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Picoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Duration.picoseconds(100000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Picoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Duration.picoseconds(50000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Picoseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Duration<Double>.zero
			unit.picoseconds = 0.0
			#expect(unit.picoseconds.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Picoseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1000000000000.00)")
		func testGetAndSet_1() async throws {
			var unit = Duration<Double>.zero
			unit.picoseconds = 1000000000000.0
			#expect(unit.picoseconds.isApproximatelyEqual(to: 1000000000000.0))
		}

	/// Tests setting the type from a value in Picoseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1000000000000.00)")
		func testGetAndSet_2() async throws {
			var unit = Duration<Double>.zero
			unit.picoseconds = -1000000000000.0
			#expect(unit.picoseconds.isApproximatelyEqual(to: -1000000000000.0))
		}

	/// Tests setting the type from a value in Picoseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (100000000000.00)")
		func testGetAndSet_3() async throws {
			var unit = Duration<Double>.zero
			unit.picoseconds = 100000000000.0
			#expect(unit.picoseconds.isApproximatelyEqual(to: 100000000000.0))
		}

	/// Tests setting the type from a value in Picoseconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50000000000000.00)")
		func testGetAndSet_4() async throws {
			var unit = Duration<Double>.zero
			unit.picoseconds = 50000000000000.0
			#expect(unit.picoseconds.isApproximatelyEqual(to: 50000000000000.0))
		}

	/// Tests initializing the type from a value in Picoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Duration(picoseconds: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Picoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Duration(picoseconds: 1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Picoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Duration(picoseconds: -1000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Picoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Duration(picoseconds: 250000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Picoseconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Duration(picoseconds: 1000000000000000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Picoseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Duration.picoseconds(0.0)
			#expect(unit.picoseconds.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Picoseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000.00)")
		func testRoundTrip_1() async throws {
			let unit = Duration.picoseconds(1000000000000.0)
			#expect(unit.picoseconds.isApproximatelyEqual(to: 1000000000000.0))
		}

	/// Tests initializing the type from a value in Picoseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1000000000000.00)")
		func testRoundTrip_2() async throws {
			let unit = Duration.picoseconds(-1000000000000.0)
			#expect(unit.picoseconds.isApproximatelyEqual(to: -1000000000000.0))
		}

	/// Tests initializing the type from a value in Picoseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000.00)")
		func testRoundTrip_3() async throws {
			let unit = Duration.picoseconds(1000000000.0)
			#expect(unit.picoseconds.isApproximatelyEqual(to: 1000000000.0))
		}

	/// Tests initializing the type from a value in Picoseconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000000000000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Duration.picoseconds(1e+18)
			#expect(unit.picoseconds.isApproximatelyEqual(to: 1e+18))
		}
	}
/// Seconds unit tests.
///
	@Suite("Seconds")
	struct secondsTests {
	/// Tests initializing the type from a value in Seconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Duration.seconds(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Seconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Duration.seconds(1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Seconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Duration.seconds(-1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Seconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Duration.seconds(0.1)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Seconds
	/// and checking the stored value in Seconds.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Duration.seconds(50.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Seconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Duration<Double>.zero
			unit.seconds = 0.0
			#expect(unit.seconds.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Seconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.00)")
		func testGetAndSet_1() async throws {
			var unit = Duration<Double>.zero
			unit.seconds = 1.0
			#expect(unit.seconds.isApproximatelyEqual(to: 1.0))
		}

	/// Tests setting the type from a value in Seconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.00)")
		func testGetAndSet_2() async throws {
			var unit = Duration<Double>.zero
			unit.seconds = -1.0
			#expect(unit.seconds.isApproximatelyEqual(to: -1.0))
		}

	/// Tests setting the type from a value in Seconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.10)")
		func testGetAndSet_3() async throws {
			var unit = Duration<Double>.zero
			unit.seconds = 0.1
			#expect(unit.seconds.isApproximatelyEqual(to: 0.1))
		}

	/// Tests setting the type from a value in Seconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50.00)")
		func testGetAndSet_4() async throws {
			var unit = Duration<Double>.zero
			unit.seconds = 50.0
			#expect(unit.seconds.isApproximatelyEqual(to: 50.0))
		}

	/// Tests initializing the type from a value in Seconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Duration(seconds: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Seconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Duration(seconds: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Seconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Duration(seconds: -1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Seconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Duration(seconds: 0.25)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Seconds
	/// and checking the stored value in Seconds.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Duration(seconds: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Seconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Duration.seconds(0.0)
			#expect(unit.seconds.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Seconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_1() async throws {
			let unit = Duration.seconds(1.0)
			#expect(unit.seconds.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Seconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.00)")
		func testRoundTrip_2() async throws {
			let unit = Duration.seconds(-1.0)
			#expect(unit.seconds.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Seconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Duration.seconds(0.001)
			#expect(unit.seconds.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Seconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Duration.seconds(1000000.0)
			#expect(unit.seconds.isApproximatelyEqual(to: 1000000.0))
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
			for unit in Duration<Double>.MeasurementUnit.allCases {
				#expect(!unit.symbol(for: 1.0).isEmpty)
				#expect(!unit.symbol(for: 2.0).isEmpty)
			}
		}
	}
}
