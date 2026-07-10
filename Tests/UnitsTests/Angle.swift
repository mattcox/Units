//
//  Angle.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Angle")
struct AngleTests {
/// Arc Minutes unit tests.
///
	@Suite("Arc Minutes")
	struct arcMinutesTests {
	/// Tests initializing the type from a value in Arc Minutes
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Angle.arcMinutes(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Arc Minutes
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Angle.arcMinutes(3437.7467707849396)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Arc Minutes
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Angle.arcMinutes(-3437.7467707849396)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Arc Minutes
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Angle.arcMinutes(343.77467707849394)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Arc Minutes
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Angle.arcMinutes(171887.33853924696)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Arc Minutes and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Angle<Double>.zero
			unit.arcMinutes = 0.0
			#expect(unit.arcMinutes.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Arc Minutes and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (3437.75)")
		func testGetAndSet_1() async throws {
			var unit = Angle<Double>.zero
			unit.arcMinutes = 3437.7467707849396
			#expect(unit.arcMinutes.isApproximatelyEqual(to: 3437.7467707849396))
		}

	/// Tests setting the type from a value in Arc Minutes and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-3437.75)")
		func testGetAndSet_2() async throws {
			var unit = Angle<Double>.zero
			unit.arcMinutes = -3437.7467707849396
			#expect(unit.arcMinutes.isApproximatelyEqual(to: -3437.7467707849396))
		}

	/// Tests setting the type from a value in Arc Minutes and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (343.77)")
		func testGetAndSet_3() async throws {
			var unit = Angle<Double>.zero
			unit.arcMinutes = 343.77467707849394
			#expect(unit.arcMinutes.isApproximatelyEqual(to: 343.77467707849394))
		}

	/// Tests setting the type from a value in Arc Minutes and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (171887.34)")
		func testGetAndSet_4() async throws {
			var unit = Angle<Double>.zero
			unit.arcMinutes = 171887.33853924696
			#expect(unit.arcMinutes.isApproximatelyEqual(to: 171887.33853924696))
		}

	/// Tests initializing the type from a value in Arc Minutes
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Angle(arcMinutes: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Arc Minutes
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Angle(arcMinutes: 3437.7467707849396)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Arc Minutes
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Angle(arcMinutes: -3437.7467707849396)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Arc Minutes
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Angle(arcMinutes: 859.4366926962349)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Arc Minutes
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Angle(arcMinutes: 3437746.7707849396)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Arc Minutes and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Angle.arcMinutes(0.0)
			#expect(unit.arcMinutes.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Arc Minutes and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (3437.75)")
		func testRoundTrip_1() async throws {
			let unit = Angle.arcMinutes(3437.7467707849396)
			#expect(unit.arcMinutes.isApproximatelyEqual(to: 3437.7467707849396))
		}

	/// Tests initializing the type from a value in Arc Minutes and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-3437.75)")
		func testRoundTrip_2() async throws {
			let unit = Angle.arcMinutes(-3437.7467707849396)
			#expect(unit.arcMinutes.isApproximatelyEqual(to: -3437.7467707849396))
		}

	/// Tests initializing the type from a value in Arc Minutes and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (3.44)")
		func testRoundTrip_3() async throws {
			let unit = Angle.arcMinutes(3.4377467707849396)
			#expect(unit.arcMinutes.isApproximatelyEqual(to: 3.4377467707849396))
		}

	/// Tests initializing the type from a value in Arc Minutes and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (3437746770.78)")
		func testRoundTrip_4() async throws {
			let unit = Angle.arcMinutes(3437746770.7849393)
			#expect(unit.arcMinutes.isApproximatelyEqual(to: 3437746770.7849393))
		}
	}
/// Arc Seconds unit tests.
///
	@Suite("Arc Seconds")
	struct arcSecondsTests {
	/// Tests initializing the type from a value in Arc Seconds
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Angle.arcSeconds(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Arc Seconds
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Angle.arcSeconds(206264.80624709636)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Arc Seconds
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Angle.arcSeconds(-206264.80624709636)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Arc Seconds
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Angle.arcSeconds(20626.48062470964)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Arc Seconds
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Angle.arcSeconds(10313240.312354818)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Arc Seconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Angle<Double>.zero
			unit.arcSeconds = 0.0
			#expect(unit.arcSeconds.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Arc Seconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (206264.81)")
		func testGetAndSet_1() async throws {
			var unit = Angle<Double>.zero
			unit.arcSeconds = 206264.80624709636
			#expect(unit.arcSeconds.isApproximatelyEqual(to: 206264.80624709636))
		}

	/// Tests setting the type from a value in Arc Seconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-206264.81)")
		func testGetAndSet_2() async throws {
			var unit = Angle<Double>.zero
			unit.arcSeconds = -206264.80624709636
			#expect(unit.arcSeconds.isApproximatelyEqual(to: -206264.80624709636))
		}

	/// Tests setting the type from a value in Arc Seconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (20626.48)")
		func testGetAndSet_3() async throws {
			var unit = Angle<Double>.zero
			unit.arcSeconds = 20626.48062470964
			#expect(unit.arcSeconds.isApproximatelyEqual(to: 20626.48062470964))
		}

	/// Tests setting the type from a value in Arc Seconds and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (10313240.31)")
		func testGetAndSet_4() async throws {
			var unit = Angle<Double>.zero
			unit.arcSeconds = 10313240.312354818
			#expect(unit.arcSeconds.isApproximatelyEqual(to: 10313240.312354818))
		}

	/// Tests initializing the type from a value in Arc Seconds
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Angle(arcSeconds: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Arc Seconds
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Angle(arcSeconds: 206264.80624709636)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Arc Seconds
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Angle(arcSeconds: -206264.80624709636)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Arc Seconds
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Angle(arcSeconds: 51566.20156177409)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Arc Seconds
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Angle(arcSeconds: 206264806.24709636)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Arc Seconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Angle.arcSeconds(0.0)
			#expect(unit.arcSeconds.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Arc Seconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (206264.81)")
		func testRoundTrip_1() async throws {
			let unit = Angle.arcSeconds(206264.80624709636)
			#expect(unit.arcSeconds.isApproximatelyEqual(to: 206264.80624709636))
		}

	/// Tests initializing the type from a value in Arc Seconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-206264.81)")
		func testRoundTrip_2() async throws {
			let unit = Angle.arcSeconds(-206264.80624709636)
			#expect(unit.arcSeconds.isApproximatelyEqual(to: -206264.80624709636))
		}

	/// Tests initializing the type from a value in Arc Seconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (206.26)")
		func testRoundTrip_3() async throws {
			let unit = Angle.arcSeconds(206.26480624709637)
			#expect(unit.arcSeconds.isApproximatelyEqual(to: 206.26480624709637))
		}

	/// Tests initializing the type from a value in Arc Seconds and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (206264806247.10)")
		func testRoundTrip_4() async throws {
			let unit = Angle.arcSeconds(206264806247.09634)
			#expect(unit.arcSeconds.isApproximatelyEqual(to: 206264806247.09634))
		}
	}
/// Degrees unit tests.
///
	@Suite("Degrees")
	struct degreesTests {
	/// Tests initializing the type from a value in Degrees
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Angle.degrees(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Degrees
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Angle.degrees(57.29577951308232)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Degrees
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Angle.degrees(-57.29577951308232)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Degrees
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Angle.degrees(5.729577951308232)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Degrees
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Angle.degrees(2864.7889756541163)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Degrees and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Angle<Double>.zero
			unit.degrees = 0.0
			#expect(unit.degrees.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Degrees and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (57.30)")
		func testGetAndSet_1() async throws {
			var unit = Angle<Double>.zero
			unit.degrees = 57.29577951308232
			#expect(unit.degrees.isApproximatelyEqual(to: 57.29577951308232))
		}

	/// Tests setting the type from a value in Degrees and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-57.30)")
		func testGetAndSet_2() async throws {
			var unit = Angle<Double>.zero
			unit.degrees = -57.29577951308232
			#expect(unit.degrees.isApproximatelyEqual(to: -57.29577951308232))
		}

	/// Tests setting the type from a value in Degrees and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (5.73)")
		func testGetAndSet_3() async throws {
			var unit = Angle<Double>.zero
			unit.degrees = 5.729577951308232
			#expect(unit.degrees.isApproximatelyEqual(to: 5.729577951308232))
		}

	/// Tests setting the type from a value in Degrees and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (2864.79)")
		func testGetAndSet_4() async throws {
			var unit = Angle<Double>.zero
			unit.degrees = 2864.7889756541163
			#expect(unit.degrees.isApproximatelyEqual(to: 2864.7889756541163))
		}

	/// Tests initializing the type from a value in Degrees
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Angle(degrees: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Degrees
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Angle(degrees: 57.29577951308232)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Degrees
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Angle(degrees: -57.29577951308232)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Degrees
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Angle(degrees: 14.32394487827058)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Degrees
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Angle(degrees: 57295.77951308232)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Degrees and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Angle.degrees(0.0)
			#expect(unit.degrees.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Degrees and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (57.30)")
		func testRoundTrip_1() async throws {
			let unit = Angle.degrees(57.29577951308232)
			#expect(unit.degrees.isApproximatelyEqual(to: 57.29577951308232))
		}

	/// Tests initializing the type from a value in Degrees and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-57.30)")
		func testRoundTrip_2() async throws {
			let unit = Angle.degrees(-57.29577951308232)
			#expect(unit.degrees.isApproximatelyEqual(to: -57.29577951308232))
		}

	/// Tests initializing the type from a value in Degrees and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.06)")
		func testRoundTrip_3() async throws {
			let unit = Angle.degrees(0.057295779513082325)
			#expect(unit.degrees.isApproximatelyEqual(to: 0.057295779513082325))
		}

	/// Tests initializing the type from a value in Degrees and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (57295779.51)")
		func testRoundTrip_4() async throws {
			let unit = Angle.degrees(57295779.513082325)
			#expect(unit.degrees.isApproximatelyEqual(to: 57295779.513082325))
		}
	}
/// Gradians unit tests.
///
	@Suite("Gradians")
	struct gradiansTests {
	/// Tests initializing the type from a value in Gradians
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Angle.gradians(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Gradians
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Angle.gradians(63.66197723675813)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Gradians
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Angle.gradians(-63.66197723675813)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Gradians
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Angle.gradians(6.366197723675813)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Gradians
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Angle.gradians(3183.0988618379065)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Gradians and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Angle<Double>.zero
			unit.gradians = 0.0
			#expect(unit.gradians.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Gradians and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (63.66)")
		func testGetAndSet_1() async throws {
			var unit = Angle<Double>.zero
			unit.gradians = 63.66197723675813
			#expect(unit.gradians.isApproximatelyEqual(to: 63.66197723675813))
		}

	/// Tests setting the type from a value in Gradians and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-63.66)")
		func testGetAndSet_2() async throws {
			var unit = Angle<Double>.zero
			unit.gradians = -63.66197723675813
			#expect(unit.gradians.isApproximatelyEqual(to: -63.66197723675813))
		}

	/// Tests setting the type from a value in Gradians and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (6.37)")
		func testGetAndSet_3() async throws {
			var unit = Angle<Double>.zero
			unit.gradians = 6.366197723675813
			#expect(unit.gradians.isApproximatelyEqual(to: 6.366197723675813))
		}

	/// Tests setting the type from a value in Gradians and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (3183.10)")
		func testGetAndSet_4() async throws {
			var unit = Angle<Double>.zero
			unit.gradians = 3183.0988618379065
			#expect(unit.gradians.isApproximatelyEqual(to: 3183.0988618379065))
		}

	/// Tests initializing the type from a value in Gradians
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Angle(gradians: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Gradians
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Angle(gradians: 63.66197723675813)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Gradians
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Angle(gradians: -63.66197723675813)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Gradians
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Angle(gradians: 15.915494309189533)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Gradians
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Angle(gradians: 63661.97723675813)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Gradians and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Angle.gradians(0.0)
			#expect(unit.gradians.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Gradians and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (63.66)")
		func testRoundTrip_1() async throws {
			let unit = Angle.gradians(63.66197723675813)
			#expect(unit.gradians.isApproximatelyEqual(to: 63.66197723675813))
		}

	/// Tests initializing the type from a value in Gradians and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-63.66)")
		func testRoundTrip_2() async throws {
			let unit = Angle.gradians(-63.66197723675813)
			#expect(unit.gradians.isApproximatelyEqual(to: -63.66197723675813))
		}

	/// Tests initializing the type from a value in Gradians and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.06)")
		func testRoundTrip_3() async throws {
			let unit = Angle.gradians(0.06366197723675814)
			#expect(unit.gradians.isApproximatelyEqual(to: 0.06366197723675814))
		}

	/// Tests initializing the type from a value in Gradians and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (63661977.24)")
		func testRoundTrip_4() async throws {
			let unit = Angle.gradians(63661977.23675813)
			#expect(unit.gradians.isApproximatelyEqual(to: 63661977.23675813))
		}
	}
/// Radians unit tests.
///
	@Suite("Radians")
	struct radiansTests {
	/// Tests initializing the type from a value in Radians
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Angle.radians(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Radians
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Angle.radians(1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Radians
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Angle.radians(-1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Radians
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Angle.radians(0.1)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Radians
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Angle.radians(50.0)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Radians and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Angle<Double>.zero
			unit.radians = 0.0
			#expect(unit.radians.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Radians and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (1.00)")
		func testGetAndSet_1() async throws {
			var unit = Angle<Double>.zero
			unit.radians = 1.0
			#expect(unit.radians.isApproximatelyEqual(to: 1.0))
		}

	/// Tests setting the type from a value in Radians and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-1.00)")
		func testGetAndSet_2() async throws {
			var unit = Angle<Double>.zero
			unit.radians = -1.0
			#expect(unit.radians.isApproximatelyEqual(to: -1.0))
		}

	/// Tests setting the type from a value in Radians and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.10)")
		func testGetAndSet_3() async throws {
			var unit = Angle<Double>.zero
			unit.radians = 0.1
			#expect(unit.radians.isApproximatelyEqual(to: 0.1))
		}

	/// Tests setting the type from a value in Radians and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (50.00)")
		func testGetAndSet_4() async throws {
			var unit = Angle<Double>.zero
			unit.radians = 50.0
			#expect(unit.radians.isApproximatelyEqual(to: 50.0))
		}

	/// Tests initializing the type from a value in Radians
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Angle(radians: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Radians
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Angle(radians: 1.0)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Radians
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Angle(radians: -1.0)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Radians
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Angle(radians: 0.25)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Radians
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Angle(radians: 1000.0)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Radians and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Angle.radians(0.0)
			#expect(unit.radians.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Radians and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1.00)")
		func testRoundTrip_1() async throws {
			let unit = Angle.radians(1.0)
			#expect(unit.radians.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Radians and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-1.00)")
		func testRoundTrip_2() async throws {
			let unit = Angle.radians(-1.0)
			#expect(unit.radians.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Radians and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Angle.radians(0.001)
			#expect(unit.radians.isApproximatelyEqual(to: 0.001))
		}

	/// Tests initializing the type from a value in Radians and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (1000000.00)")
		func testRoundTrip_4() async throws {
			let unit = Angle.radians(1000000.0)
			#expect(unit.radians.isApproximatelyEqual(to: 1000000.0))
		}
	}
/// Revolutions unit tests.
///
	@Suite("Revolutions")
	struct revolutionsTests {
	/// Tests initializing the type from a value in Revolutions
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (0.00)")
		func testStaticInitializer_0() async throws {
			let unit = Angle.revolutions(0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Revolutions
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (1.00)")
		func testStaticInitializer_1() async throws {
			let unit = Angle.revolutions(0.15915494309189535)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Revolutions
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (-1.00)")
		func testStaticInitializer_2() async throws {
			let unit = Angle.revolutions(-0.15915494309189535)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Revolutions
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (0.10)")
		func testStaticInitializer_3() async throws {
			let unit = Angle.revolutions(0.015915494309189534)
			#expect(unit.value.isApproximatelyEqual(to: 0.1))
		}

	/// Tests initializing the type from a value in Revolutions
	/// and checking the stored value in Radians.
	///
		@Test("Static Initializer (50.00)")
		func testStaticInitializer_4() async throws {
			let unit = Angle.revolutions(7.957747154594767)
			#expect(unit.value.isApproximatelyEqual(to: 50.0))
		}

	/// Tests setting the type from a value in Revolutions and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.00)")
		func testGetAndSet_0() async throws {
			var unit = Angle<Double>.zero
			unit.revolutions = 0.0
			#expect(unit.revolutions.isApproximatelyEqual(to: 0.0))
		}

	/// Tests setting the type from a value in Revolutions and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.16)")
		func testGetAndSet_1() async throws {
			var unit = Angle<Double>.zero
			unit.revolutions = 0.15915494309189535
			#expect(unit.revolutions.isApproximatelyEqual(to: 0.15915494309189535))
		}

	/// Tests setting the type from a value in Revolutions and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (-0.16)")
		func testGetAndSet_2() async throws {
			var unit = Angle<Double>.zero
			unit.revolutions = -0.15915494309189535
			#expect(unit.revolutions.isApproximatelyEqual(to: -0.15915494309189535))
		}

	/// Tests setting the type from a value in Revolutions and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (0.02)")
		func testGetAndSet_3() async throws {
			var unit = Angle<Double>.zero
			unit.revolutions = 0.015915494309189534
			#expect(unit.revolutions.isApproximatelyEqual(to: 0.015915494309189534))
		}

	/// Tests setting the type from a value in Revolutions and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set (7.96)")
		func testGetAndSet_4() async throws {
			var unit = Angle<Double>.zero
			unit.revolutions = 7.957747154594767
			#expect(unit.revolutions.isApproximatelyEqual(to: 7.957747154594767))
		}

	/// Tests initializing the type from a value in Revolutions
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (0.00)")
		func testInitializer_0() async throws {
			let unit = Angle(revolutions: 0.0)
			#expect(unit.value.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Revolutions
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (1.00)")
		func testInitializer_1() async throws {
			let unit = Angle(revolutions: 0.15915494309189535)
			#expect(unit.value.isApproximatelyEqual(to: 1.0))
		}

	/// Tests initializing the type from a value in Revolutions
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (-1.00)")
		func testInitializer_2() async throws {
			let unit = Angle(revolutions: -0.15915494309189535)
			#expect(unit.value.isApproximatelyEqual(to: -1.0))
		}

	/// Tests initializing the type from a value in Revolutions
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (0.25)")
		func testInitializer_3() async throws {
			let unit = Angle(revolutions: 0.039788735772973836)
			#expect(unit.value.isApproximatelyEqual(to: 0.25))
		}

	/// Tests initializing the type from a value in Revolutions
	/// and checking the stored value in Radians.
	///
		@Test("Initialize (1000.00)")
		func testInitializer_4() async throws {
			let unit = Angle(revolutions: 159.15494309189535)
			#expect(unit.value.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests initializing the type from a value in Revolutions and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_0() async throws {
			let unit = Angle.revolutions(0.0)
			#expect(unit.revolutions.isApproximatelyEqual(to: 0.0))
		}

	/// Tests initializing the type from a value in Revolutions and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.16)")
		func testRoundTrip_1() async throws {
			let unit = Angle.revolutions(0.15915494309189535)
			#expect(unit.revolutions.isApproximatelyEqual(to: 0.15915494309189535))
		}

	/// Tests initializing the type from a value in Revolutions and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (-0.16)")
		func testRoundTrip_2() async throws {
			let unit = Angle.revolutions(-0.15915494309189535)
			#expect(unit.revolutions.isApproximatelyEqual(to: -0.15915494309189535))
		}

	/// Tests initializing the type from a value in Revolutions and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (0.00)")
		func testRoundTrip_3() async throws {
			let unit = Angle.revolutions(0.00015915494309189535)
			#expect(unit.revolutions.isApproximatelyEqual(to: 0.00015915494309189535))
		}

	/// Tests initializing the type from a value in Revolutions and checking
	/// the value in that unit is the same.
	///
		@Test("Round Trip (159154.94)")
		func testRoundTrip_4() async throws {
			let unit = Angle.revolutions(159154.94309189534)
			#expect(unit.revolutions.isApproximatelyEqual(to: 159154.94309189534))
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
			for unit in Angle<Double>.MeasurementUnit.allCases {
				#expect(!unit.symbol(for: 1.0).isEmpty)
				#expect(!unit.symbol(for: 2.0).isEmpty)
			}
		}
	}

/// Angle constant tests.
///
	@Suite("Constants")
	struct constantTests {
	/// Tests that the π constant equals pi radians.
	///
		@Test("Pi")
		func testPi() async throws {
			#expect(Angle<Double>.π.radians.isApproximatelyEqual(to: Double.pi))
		}
	}

/// Angle normalization tests.
///
	@Suite("Normalization")
	struct normalizationTests {
	/// Tests normalizing an angle above 2π back into range by mutation.
	///
		@Test("Normalize (above)")
		func testNormalizeAbove() async throws {
			var unit = Angle.radians(2.0 * Double.pi + 1.0)
			unit.normalize()
			#expect(unit.radians.isApproximatelyEqual(to: 1.0))
		}

	/// Tests normalizing a negative angle back into range by mutation.
	///
		@Test("Normalize (negative)")
		func testNormalizeNegative() async throws {
			var unit = Angle.radians(-1.0)
			unit.normalize()
			#expect(unit.radians.isApproximatelyEqual(to: 2.0 * Double.pi - 1.0))
		}

	/// Tests reading a normalized angle above 2π.
	///
		@Test("Normalized (above)")
		func testNormalizedAbove() async throws {
			let unit = Angle.radians(2.0 * Double.pi + 1.0)
			#expect(unit.normalized.radians.isApproximatelyEqual(to: 1.0))
		}

	/// Tests reading a normalized negative angle.
	///
		@Test("Normalized (negative)")
		func testNormalizedNegative() async throws {
			let unit = Angle.radians(-1.0)
			#expect(unit.normalized.radians.isApproximatelyEqual(to: 2.0 * Double.pi - 1.0))
		}
	}

/// Angle classification tests.
///
	@Suite("Classification")
	struct classificationTests {
	/// Tests that an angle below 90° is classified as acute.
	///
		@Test("Acute")
		func testAcute() async throws {
			#expect(Angle.radians(0.5).classification == .acute)
		}

	/// Tests that an angle of exactly 90° is classified as right.
	///
		@Test("Right")
		func testRight() async throws {
			#expect(Angle.radians(Double.pi / 2.0).classification == .right)
		}

	/// Tests that an angle between 90° and 180° is classified as obtuse.
	///
		@Test("Obtuse")
		func testObtuse() async throws {
			#expect(Angle.radians(2.0).classification == .obtuse)
		}

	/// Tests that an angle of exactly 180° is classified as straight.
	///
		@Test("Straight")
		func testStraight() async throws {
			#expect(Angle.radians(Double.pi).classification == .straight)
		}

	/// Tests that an angle above 180° is classified as reflex.
	///
		@Test("Reflex")
		func testReflex() async throws {
			#expect(Angle.radians(4.0).classification == .reflex)
		}
	}
}
