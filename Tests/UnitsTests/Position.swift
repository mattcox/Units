//
//  Position.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Position")
struct PositionTests {
/// Astronomical Units unit tests.
///
	@Suite("Astronomical Units")
	struct astronomicalUnitsTests {
	/// Tests initializing the type from a vector in Astronomical Units and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.astronomicalUnits(value)
			#expect(unit.astronomicalUnits.x.isApproximatelyEqual(to: value.x))
			#expect(unit.astronomicalUnits.y.isApproximatelyEqual(to: value.y))
			#expect(unit.astronomicalUnits.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Astronomical Units
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(astronomicalUnits: value)
			#expect(unit.astronomicalUnits.x.isApproximatelyEqual(to: value.x))
			#expect(unit.astronomicalUnits.y.isApproximatelyEqual(to: value.y))
			#expect(unit.astronomicalUnits.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Astronomical Units and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.astronomicalUnits = value
			#expect(unit.astronomicalUnits.x.isApproximatelyEqual(to: value.x))
			#expect(unit.astronomicalUnits.y.isApproximatelyEqual(to: value.y))
			#expect(unit.astronomicalUnits.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Centimeters unit tests.
///
	@Suite("Centimeters")
	struct centimetersTests {
	/// Tests initializing the type from a vector in Centimeters and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.centimeters(value)
			#expect(unit.centimeters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.centimeters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.centimeters.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Centimeters
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(centimeters: value)
			#expect(unit.centimeters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.centimeters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.centimeters.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Centimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.centimeters = value
			#expect(unit.centimeters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.centimeters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.centimeters.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Decameters unit tests.
///
	@Suite("Decameters")
	struct decametersTests {
	/// Tests initializing the type from a vector in Decameters and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.decameters(value)
			#expect(unit.decameters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.decameters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.decameters.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Decameters
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(decameters: value)
			#expect(unit.decameters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.decameters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.decameters.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Decameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.decameters = value
			#expect(unit.decameters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.decameters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.decameters.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Decimeters unit tests.
///
	@Suite("Decimeters")
	struct decimetersTests {
	/// Tests initializing the type from a vector in Decimeters and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.decimeters(value)
			#expect(unit.decimeters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.decimeters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.decimeters.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Decimeters
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(decimeters: value)
			#expect(unit.decimeters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.decimeters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.decimeters.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Decimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.decimeters = value
			#expect(unit.decimeters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.decimeters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.decimeters.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Fathoms unit tests.
///
	@Suite("Fathoms")
	struct fathomsTests {
	/// Tests initializing the type from a vector in Fathoms and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.fathoms(value)
			#expect(unit.fathoms.x.isApproximatelyEqual(to: value.x))
			#expect(unit.fathoms.y.isApproximatelyEqual(to: value.y))
			#expect(unit.fathoms.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Fathoms
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(fathoms: value)
			#expect(unit.fathoms.x.isApproximatelyEqual(to: value.x))
			#expect(unit.fathoms.y.isApproximatelyEqual(to: value.y))
			#expect(unit.fathoms.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Fathoms and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.fathoms = value
			#expect(unit.fathoms.x.isApproximatelyEqual(to: value.x))
			#expect(unit.fathoms.y.isApproximatelyEqual(to: value.y))
			#expect(unit.fathoms.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Feet unit tests.
///
	@Suite("Feet")
	struct feetTests {
	/// Tests initializing the type from a vector in Feet and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.feet(value)
			#expect(unit.feet.x.isApproximatelyEqual(to: value.x))
			#expect(unit.feet.y.isApproximatelyEqual(to: value.y))
			#expect(unit.feet.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Feet
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(feet: value)
			#expect(unit.feet.x.isApproximatelyEqual(to: value.x))
			#expect(unit.feet.y.isApproximatelyEqual(to: value.y))
			#expect(unit.feet.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Feet and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.feet = value
			#expect(unit.feet.x.isApproximatelyEqual(to: value.x))
			#expect(unit.feet.y.isApproximatelyEqual(to: value.y))
			#expect(unit.feet.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Furlongs unit tests.
///
	@Suite("Furlongs")
	struct furlongsTests {
	/// Tests initializing the type from a vector in Furlongs and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.furlongs(value)
			#expect(unit.furlongs.x.isApproximatelyEqual(to: value.x))
			#expect(unit.furlongs.y.isApproximatelyEqual(to: value.y))
			#expect(unit.furlongs.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Furlongs
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(furlongs: value)
			#expect(unit.furlongs.x.isApproximatelyEqual(to: value.x))
			#expect(unit.furlongs.y.isApproximatelyEqual(to: value.y))
			#expect(unit.furlongs.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Furlongs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.furlongs = value
			#expect(unit.furlongs.x.isApproximatelyEqual(to: value.x))
			#expect(unit.furlongs.y.isApproximatelyEqual(to: value.y))
			#expect(unit.furlongs.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Hectometers unit tests.
///
	@Suite("Hectometers")
	struct hectometersTests {
	/// Tests initializing the type from a vector in Hectometers and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.hectometers(value)
			#expect(unit.hectometers.x.isApproximatelyEqual(to: value.x))
			#expect(unit.hectometers.y.isApproximatelyEqual(to: value.y))
			#expect(unit.hectometers.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Hectometers
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(hectometers: value)
			#expect(unit.hectometers.x.isApproximatelyEqual(to: value.x))
			#expect(unit.hectometers.y.isApproximatelyEqual(to: value.y))
			#expect(unit.hectometers.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Hectometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.hectometers = value
			#expect(unit.hectometers.x.isApproximatelyEqual(to: value.x))
			#expect(unit.hectometers.y.isApproximatelyEqual(to: value.y))
			#expect(unit.hectometers.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Inches unit tests.
///
	@Suite("Inches")
	struct inchesTests {
	/// Tests initializing the type from a vector in Inches and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.inches(value)
			#expect(unit.inches.x.isApproximatelyEqual(to: value.x))
			#expect(unit.inches.y.isApproximatelyEqual(to: value.y))
			#expect(unit.inches.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Inches
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(inches: value)
			#expect(unit.inches.x.isApproximatelyEqual(to: value.x))
			#expect(unit.inches.y.isApproximatelyEqual(to: value.y))
			#expect(unit.inches.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Inches and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.inches = value
			#expect(unit.inches.x.isApproximatelyEqual(to: value.x))
			#expect(unit.inches.y.isApproximatelyEqual(to: value.y))
			#expect(unit.inches.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Kilometers unit tests.
///
	@Suite("Kilometers")
	struct kilometersTests {
	/// Tests initializing the type from a vector in Kilometers and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.kilometers(value)
			#expect(unit.kilometers.x.isApproximatelyEqual(to: value.x))
			#expect(unit.kilometers.y.isApproximatelyEqual(to: value.y))
			#expect(unit.kilometers.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Kilometers
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(kilometers: value)
			#expect(unit.kilometers.x.isApproximatelyEqual(to: value.x))
			#expect(unit.kilometers.y.isApproximatelyEqual(to: value.y))
			#expect(unit.kilometers.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Kilometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.kilometers = value
			#expect(unit.kilometers.x.isApproximatelyEqual(to: value.x))
			#expect(unit.kilometers.y.isApproximatelyEqual(to: value.y))
			#expect(unit.kilometers.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Lightyears unit tests.
///
	@Suite("Lightyears")
	struct lightyearsTests {
	/// Tests initializing the type from a vector in Lightyears and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.lightyears(value)
			#expect(unit.lightyears.x.isApproximatelyEqual(to: value.x))
			#expect(unit.lightyears.y.isApproximatelyEqual(to: value.y))
			#expect(unit.lightyears.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Lightyears
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(lightyears: value)
			#expect(unit.lightyears.x.isApproximatelyEqual(to: value.x))
			#expect(unit.lightyears.y.isApproximatelyEqual(to: value.y))
			#expect(unit.lightyears.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Lightyears and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.lightyears = value
			#expect(unit.lightyears.x.isApproximatelyEqual(to: value.x))
			#expect(unit.lightyears.y.isApproximatelyEqual(to: value.y))
			#expect(unit.lightyears.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Megameters unit tests.
///
	@Suite("Megameters")
	struct megametersTests {
	/// Tests initializing the type from a vector in Megameters and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.megameters(value)
			#expect(unit.megameters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.megameters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.megameters.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Megameters
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(megameters: value)
			#expect(unit.megameters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.megameters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.megameters.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Megameters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.megameters = value
			#expect(unit.megameters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.megameters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.megameters.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Meters unit tests.
///
	@Suite("Meters")
	struct metersTests {
	/// Tests initializing the type from a vector in Meters and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.meters(value)
			#expect(unit.meters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.meters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.meters.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Meters
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(meters: value)
			#expect(unit.meters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.meters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.meters.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Meters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.meters = value
			#expect(unit.meters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.meters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.meters.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Micrometers unit tests.
///
	@Suite("Micrometers")
	struct micrometersTests {
	/// Tests initializing the type from a vector in Micrometers and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.micrometers(value)
			#expect(unit.micrometers.x.isApproximatelyEqual(to: value.x))
			#expect(unit.micrometers.y.isApproximatelyEqual(to: value.y))
			#expect(unit.micrometers.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Micrometers
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(micrometers: value)
			#expect(unit.micrometers.x.isApproximatelyEqual(to: value.x))
			#expect(unit.micrometers.y.isApproximatelyEqual(to: value.y))
			#expect(unit.micrometers.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Micrometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.micrometers = value
			#expect(unit.micrometers.x.isApproximatelyEqual(to: value.x))
			#expect(unit.micrometers.y.isApproximatelyEqual(to: value.y))
			#expect(unit.micrometers.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Miles unit tests.
///
	@Suite("Miles")
	struct milesTests {
	/// Tests initializing the type from a vector in Miles and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.miles(value)
			#expect(unit.miles.x.isApproximatelyEqual(to: value.x))
			#expect(unit.miles.y.isApproximatelyEqual(to: value.y))
			#expect(unit.miles.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Miles
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(miles: value)
			#expect(unit.miles.x.isApproximatelyEqual(to: value.x))
			#expect(unit.miles.y.isApproximatelyEqual(to: value.y))
			#expect(unit.miles.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.miles = value
			#expect(unit.miles.x.isApproximatelyEqual(to: value.x))
			#expect(unit.miles.y.isApproximatelyEqual(to: value.y))
			#expect(unit.miles.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Millimeters unit tests.
///
	@Suite("Millimeters")
	struct millimetersTests {
	/// Tests initializing the type from a vector in Millimeters and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.millimeters(value)
			#expect(unit.millimeters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.millimeters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.millimeters.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Millimeters
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(millimeters: value)
			#expect(unit.millimeters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.millimeters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.millimeters.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Millimeters and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.millimeters = value
			#expect(unit.millimeters.x.isApproximatelyEqual(to: value.x))
			#expect(unit.millimeters.y.isApproximatelyEqual(to: value.y))
			#expect(unit.millimeters.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Nanometers unit tests.
///
	@Suite("Nanometers")
	struct nanometersTests {
	/// Tests initializing the type from a vector in Nanometers and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.nanometers(value)
			#expect(unit.nanometers.x.isApproximatelyEqual(to: value.x))
			#expect(unit.nanometers.y.isApproximatelyEqual(to: value.y))
			#expect(unit.nanometers.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Nanometers
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(nanometers: value)
			#expect(unit.nanometers.x.isApproximatelyEqual(to: value.x))
			#expect(unit.nanometers.y.isApproximatelyEqual(to: value.y))
			#expect(unit.nanometers.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Nanometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.nanometers = value
			#expect(unit.nanometers.x.isApproximatelyEqual(to: value.x))
			#expect(unit.nanometers.y.isApproximatelyEqual(to: value.y))
			#expect(unit.nanometers.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Nautical Miles unit tests.
///
	@Suite("Nautical Miles")
	struct nauticalMilesTests {
	/// Tests initializing the type from a vector in Nautical Miles and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.nauticalMiles(value)
			#expect(unit.nauticalMiles.x.isApproximatelyEqual(to: value.x))
			#expect(unit.nauticalMiles.y.isApproximatelyEqual(to: value.y))
			#expect(unit.nauticalMiles.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Nautical Miles
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(nauticalMiles: value)
			#expect(unit.nauticalMiles.x.isApproximatelyEqual(to: value.x))
			#expect(unit.nauticalMiles.y.isApproximatelyEqual(to: value.y))
			#expect(unit.nauticalMiles.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Nautical Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.nauticalMiles = value
			#expect(unit.nauticalMiles.x.isApproximatelyEqual(to: value.x))
			#expect(unit.nauticalMiles.y.isApproximatelyEqual(to: value.y))
			#expect(unit.nauticalMiles.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Parsecs unit tests.
///
	@Suite("Parsecs")
	struct parsecsTests {
	/// Tests initializing the type from a vector in Parsecs and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.parsecs(value)
			#expect(unit.parsecs.x.isApproximatelyEqual(to: value.x))
			#expect(unit.parsecs.y.isApproximatelyEqual(to: value.y))
			#expect(unit.parsecs.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Parsecs
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(parsecs: value)
			#expect(unit.parsecs.x.isApproximatelyEqual(to: value.x))
			#expect(unit.parsecs.y.isApproximatelyEqual(to: value.y))
			#expect(unit.parsecs.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Parsecs and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.parsecs = value
			#expect(unit.parsecs.x.isApproximatelyEqual(to: value.x))
			#expect(unit.parsecs.y.isApproximatelyEqual(to: value.y))
			#expect(unit.parsecs.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Picometers unit tests.
///
	@Suite("Picometers")
	struct picometersTests {
	/// Tests initializing the type from a vector in Picometers and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.picometers(value)
			#expect(unit.picometers.x.isApproximatelyEqual(to: value.x))
			#expect(unit.picometers.y.isApproximatelyEqual(to: value.y))
			#expect(unit.picometers.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Picometers
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(picometers: value)
			#expect(unit.picometers.x.isApproximatelyEqual(to: value.x))
			#expect(unit.picometers.y.isApproximatelyEqual(to: value.y))
			#expect(unit.picometers.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Picometers and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.picometers = value
			#expect(unit.picometers.x.isApproximatelyEqual(to: value.x))
			#expect(unit.picometers.y.isApproximatelyEqual(to: value.y))
			#expect(unit.picometers.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Scandinavian Miles unit tests.
///
	@Suite("Scandinavian Miles")
	struct scandinavianMilesTests {
	/// Tests initializing the type from a vector in Scandinavian Miles and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.scandinavianMiles(value)
			#expect(unit.scandinavianMiles.x.isApproximatelyEqual(to: value.x))
			#expect(unit.scandinavianMiles.y.isApproximatelyEqual(to: value.y))
			#expect(unit.scandinavianMiles.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Scandinavian Miles
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(scandinavianMiles: value)
			#expect(unit.scandinavianMiles.x.isApproximatelyEqual(to: value.x))
			#expect(unit.scandinavianMiles.y.isApproximatelyEqual(to: value.y))
			#expect(unit.scandinavianMiles.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Scandinavian Miles and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.scandinavianMiles = value
			#expect(unit.scandinavianMiles.x.isApproximatelyEqual(to: value.x))
			#expect(unit.scandinavianMiles.y.isApproximatelyEqual(to: value.y))
			#expect(unit.scandinavianMiles.z.isApproximatelyEqual(to: value.z))
		}
	}
/// Yards unit tests.
///
	@Suite("Yards")
	struct yardsTests {
	/// Tests initializing the type from a vector in Yards and
	/// checking the value read in that unit is the same.
	///
		@Test("Static Initializer")
		func testStaticInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position.yards(value)
			#expect(unit.yards.x.isApproximatelyEqual(to: value.x))
			#expect(unit.yards.y.isApproximatelyEqual(to: value.y))
			#expect(unit.yards.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests initializing the measurement from a vector in Yards
	/// and checking the value read in that unit is the same.
	///
		@Test("Initialize")
		func testInitializer() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			let unit = Position(yards: value)
			#expect(unit.yards.x.isApproximatelyEqual(to: value.x))
			#expect(unit.yards.y.isApproximatelyEqual(to: value.y))
			#expect(unit.yards.z.isApproximatelyEqual(to: value.z))
		}

	/// Tests setting the type from a vector in Yards and checking
	/// the value read in that unit is the same.
	///
		@Test("Get and Set")
		func testGetAndSet() async throws {
			let value = SIMD3<Double>(1.5, -2.5, 3.5)
			var unit = Position<SIMD3<Double>>.zero
			unit.yards = value
			#expect(unit.yards.x.isApproximatelyEqual(to: value.x))
			#expect(unit.yards.y.isApproximatelyEqual(to: value.y))
			#expect(unit.yards.z.isApproximatelyEqual(to: value.z))
		}
	}

/// Vector accessor and reduction tests.
///
	@Suite("Vector")
	struct vectorTests {
	/// Tests that the zero vector has all components equal to zero.
	///
		@Test("Zero")
		func testZero() async throws {
			let unit = Position<SIMD3<Double>>.zero
			#expect(unit.value == SIMD3<Double>(0.0, 0.0, 0.0))
		}

	/// Tests reading a component of the vector by subscript.
	///
		@Test("Subscript Get")
		func testSubscriptGet() async throws {
			let unit = Position.meters(SIMD3<Double>(1.0, 2.0, 3.0))
			#expect(unit[0].meters.isApproximatelyEqual(to: 1.0))
			#expect(unit[1].meters.isApproximatelyEqual(to: 2.0))
			#expect(unit[2].meters.isApproximatelyEqual(to: 3.0))
		}

	/// Tests writing a component of the vector by subscript.
	///
		@Test("Subscript Set")
		func testSubscriptSet() async throws {
			var unit = Position<SIMD3<Double>>.zero
			unit[1] = Distance(meters: 4.0)
			#expect(unit[1].meters.isApproximatelyEqual(to: 4.0))
		}

	/// Tests finding the minimum component of the vector.
	///
		@Test("Min")
		func testMin() async throws {
			let unit = Position.meters(SIMD3<Double>(3.0, 1.0, 2.0))
			#expect(unit.min().meters.isApproximatelyEqual(to: 1.0))
		}

	/// Tests finding the maximum component of the vector.
	///
		@Test("Max")
		func testMax() async throws {
			let unit = Position.meters(SIMD3<Double>(3.0, 1.0, 2.0))
			#expect(unit.max().meters.isApproximatelyEqual(to: 3.0))
		}

	/// Tests summing the components of the vector.
	///
		@Test("Sum")
		func testSum() async throws {
			let unit = Position.meters(SIMD3<Double>(1.0, 2.0, 3.0))
			#expect(unit.sum().meters.isApproximatelyEqual(to: 6.0))
		}

	/// Tests averaging the components of the vector.
	///
		@Test("Average")
		func testAverage() async throws {
			let unit = Position.meters(SIMD3<Double>(1.0, 2.0, 3.0))
			#expect(unit.average().meters.isApproximatelyEqual(to: 2.0))
		}
	}

/// Vector arithmetic operator tests.
///
	@Suite("Arithmetic")
	struct arithmeticTests {
		let a = Position.meters(SIMD3<Double>(1.0, 2.0, 3.0))
		let b = Position.meters(SIMD3<Double>(4.0, 5.0, 6.0))
		let s = Distance(meters: 2.0)

	/// Tests adding two vectors.
	///
		@Test("Add Vectors")
		func testAdd() async throws {
			#expect((a + b).value == SIMD3<Double>(5.0, 7.0, 9.0))
			var c = a
			c += b
			#expect(c.value == SIMD3<Double>(5.0, 7.0, 9.0))
		}

	/// Tests adding a scalar to a vector.
	///
		@Test("Add Scalar")
		func testAddScalar() async throws {
			#expect((a + s).value == SIMD3<Double>(3.0, 4.0, 5.0))
			#expect((s + a).value == SIMD3<Double>(3.0, 4.0, 5.0))
			var c = a
			c += s
			#expect(c.value == SIMD3<Double>(3.0, 4.0, 5.0))
		}

	/// Tests subtracting two vectors.
	///
		@Test("Subtract Vectors")
		func testSubtract() async throws {
			#expect((b - a).value == SIMD3<Double>(3.0, 3.0, 3.0))
			var c = b
			c -= a
			#expect(c.value == SIMD3<Double>(3.0, 3.0, 3.0))
		}

	/// Tests subtracting a scalar from a vector.
	///
		@Test("Subtract Scalar")
		func testSubtractScalar() async throws {
			#expect((b - s).value == SIMD3<Double>(2.0, 3.0, 4.0))
			#expect((s - b).value == SIMD3<Double>(-2.0, -3.0, -4.0))
			var c = b
			c -= s
			#expect(c.value == SIMD3<Double>(2.0, 3.0, 4.0))
		}

	/// Tests negating a vector.
	///
		@Test("Negate")
		func testNegate() async throws {
			#expect((-a).value == SIMD3<Double>(-1.0, -2.0, -3.0))
		}

	/// Tests multiplying two vectors.
	///
		@Test("Multiply Vectors")
		func testMultiply() async throws {
			#expect((a * b).value == SIMD3<Double>(4.0, 10.0, 18.0))
			var c = a
			c *= b
			#expect(c.value == SIMD3<Double>(4.0, 10.0, 18.0))
		}

	/// Tests multiplying a vector by a scalar.
	///
		@Test("Multiply Scalar")
		func testMultiplyScalar() async throws {
			#expect((a * s).value == SIMD3<Double>(2.0, 4.0, 6.0))
			#expect((s * a).value == SIMD3<Double>(2.0, 4.0, 6.0))
			var c = a
			c *= s
			#expect(c.value == SIMD3<Double>(2.0, 4.0, 6.0))
		}

	/// Tests dividing two vectors.
	///
		@Test("Divide Vectors")
		func testDivide() async throws {
			#expect((b / a).value == SIMD3<Double>(4.0, 2.5, 2.0))
			var c = b
			c /= a
			#expect(c.value == SIMD3<Double>(4.0, 2.5, 2.0))
		}

	/// Tests dividing a vector by a scalar.
	///
		@Test("Divide Scalar")
		func testDivideScalar() async throws {
			#expect((b / s).value == SIMD3<Double>(2.0, 2.5, 3.0))
			var c = b
			c /= s
			#expect(c.value == SIMD3<Double>(2.0, 2.5, 3.0))
		}
	}
}
