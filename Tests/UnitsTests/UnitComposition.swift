//
//  UnitComposition.swift
//  Units
//
//  Created by Matt Cox on 02/05/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing
import Units
import RealModule

@Suite("Unit Composition")
struct UnitCompositionTests {
/// Area composition tests.
///
	@Suite("Area")
	struct areaTests {
	/// Tests computing an area from two distances.
	///
		@Test("Area from two distances")
		func testAreaFromDistances() async throws {
			let area = Area(x: Distance(meters: 2.0), y: Distance(meters: 3.0))
			#expect(area.squareMeters.isApproximatelyEqual(to: 6.0))
		}
	}

/// Density composition tests.
///
	@Suite("Density")
	struct densityTests {
	/// Tests computing a density from a mass and a volume.
	///
		@Test("Density from mass and volume")
		func testDensityFromMassAndVolume() async throws {
			let density = Density(mass: Mass(kilograms: 10.0), volume: Volume(cubicMeters: 2.0))
			#expect(density.kilogramsPerCubicMeter.isApproximatelyEqual(to: 5.0))
		}
	}

/// Distance composition tests.
///
	@Suite("Distance")
	struct distanceTests {
	/// Tests computing a distance from a speed over a duration.
	///
		@Test("Distance from speed and duration")
		func testDistanceFromSpeedAndDuration() async throws {
			let distance = Distance(speed: Speed(metersPerSecond: 10.0), duration: Duration(seconds: 5.0))
			#expect(distance.meters.isApproximatelyEqual(to: 50.0))
		}

	/// Tests computing the distance between two positions.
	///
		@Test("Distance between two positions")
		func testDistanceBetweenPositions() async throws {
			let from = Position(meters: SIMD3<Double>(0.0, 0.0, 0.0))
			let to = Position(meters: SIMD3<Double>(3.0, 4.0, 0.0))
			let distance = Distance(from: from, to: to)
			#expect(distance.meters.isApproximatelyEqual(to: 5.0))
		}
	}

/// Duration composition tests.
///
	@Suite("Duration")
	struct durationTests {
	/// Tests computing a duration from a distance and a speed.
	///
		@Test("Duration from distance and speed")
		func testDurationFromDistanceAndSpeed() async throws {
			let duration = Duration(distance: Distance(meters: 100.0), speed: Speed(metersPerSecond: 10.0))
			#expect(duration.seconds.isApproximatelyEqual(to: 10.0))
		}

	/// Tests computing a duration from a repeating frequency.
	///
		@Test("Duration from frequency")
		func testDurationFromFrequency() async throws {
			let duration = Duration(onceEvery: Frequency(hertz: 4.0))
			#expect(duration.seconds.isApproximatelyEqual(to: 0.25))
		}
	}

/// Frequency composition tests.
///
	@Suite("Frequency")
	struct frequencyTests {
	/// Tests computing a frequency from a duration.
	///
		@Test("Frequency from duration")
		func testFrequencyFromDuration() async throws {
			let frequency = Frequency(oncePer: Duration(seconds: 0.5))
			#expect(frequency.hertz.isApproximatelyEqual(to: 2.0))
		}
	}

/// Illuminance composition tests.
///
	@Suite("Illuminance")
	struct illuminanceTests {
	/// Tests computing an illuminance from a luminous flux and an area.
	///
		@Test("Illuminance from luminous flux and area")
		func testIlluminanceFromLuminousFluxAndArea() async throws {
			let illuminance = Illuminance(luminousFlux: LuminousFlux(lumens: 800.0), area: Area(squareMeters: 4.0))
			#expect(illuminance.lux.isApproximatelyEqual(to: 200.0))
		}
	}

/// LuminousFlux composition tests.
///
	@Suite("LuminousFlux")
	struct luminousFluxTests {
	/// Tests computing a luminous flux from an illuminance and an area.
	///
		@Test("Luminous flux from illuminance and area")
		func testLuminousFluxFromIlluminanceAndArea() async throws {
			let luminousFlux = LuminousFlux(illuminance: Illuminance(lux: 200.0), area: Area(squareMeters: 4.0))
			#expect(luminousFlux.lumens.isApproximatelyEqual(to: 800.0))
		}
	}

/// Mass composition tests.
///
	@Suite("Mass")
	struct massTests {
	/// Tests computing a mass from a volume and a density.
	///
		@Test("Mass from volume and density")
		func testMassFromVolumeAndDensity() async throws {
			let mass = Mass(volume: Volume(cubicMeters: 2.0), density: Density(kilogramsPerCubicMeter: 5.0))
			#expect(mass.kilograms.isApproximatelyEqual(to: 10.0))
		}
	}

/// Speed composition tests.
///
	@Suite("Speed")
	struct speedTests {
	/// Tests computing a speed from a distance over a duration.
	///
		@Test("Speed from distance and duration")
		func testSpeedFromDistanceAndDuration() async throws {
			let speed = Speed(distance: Distance(meters: 100.0), duration: Duration(seconds: 10.0))
			#expect(speed.metersPerSecond.isApproximatelyEqual(to: 10.0))
		}
	}

/// Volume composition tests.
///
	@Suite("Volume")
	struct volumeTests {
	/// Tests computing a volume from three distances.
	///
		@Test("Volume from three distances")
		func testVolumeFromDistances() async throws {
			let volume = Volume(x: Distance(meters: 2.0), y: Distance(meters: 3.0), z: Distance(meters: 4.0))
			#expect(volume.cubicMeters.isApproximatelyEqual(to: 24.0))
		}

	/// Tests computing a volume from an area and a distance.
	///
		@Test("Volume from area and distance")
		func testVolumeFromAreaAndDistance() async throws {
			let volume = Volume(area: Area(squareMeters: 6.0), distance: Distance(meters: 2.0))
			#expect(volume.cubicMeters.isApproximatelyEqual(to: 12.0))
		}
	}
}
