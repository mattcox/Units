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

	/// Tests computing an illuminance from a luminous intensity and a
	/// distance.
	///
		@Test("Illuminance from luminous intensity and distance")
		func testIlluminanceFromLuminousIntensityAndDistance() async throws {
			let illuminance = Illuminance(luminousIntensity: LuminousIntensity(candela: 1000.0), distance: Distance(meters: 2.0))
			#expect(illuminance.lux.isApproximatelyEqual(to: 250.0))
		}
	}

/// Luminance composition tests.
///
	@Suite("Luminance")
	struct luminanceTests {
	/// Tests computing a luminance from a luminous intensity and an area.
	///
		@Test("Luminance from luminous intensity and area")
		func testLuminanceFromLuminousIntensityAndArea() async throws {
			let luminance = Luminance(luminousIntensity: LuminousIntensity(candela: 500.0), area: Area(squareMeters: 2.0))
			#expect(luminance.candelaPerSquareMeter.isApproximatelyEqual(to: 250.0))
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

/// LuminousIntensity composition tests.
///
	@Suite("LuminousIntensity")
	struct luminousIntensityTests {
	/// Tests computing a luminous intensity from an illuminance and a
	/// distance.
	///
		@Test("Luminous intensity from illuminance and distance")
		func testLuminousIntensityFromIlluminanceAndDistance() async throws {
			let luminousIntensity = LuminousIntensity(illuminance: Illuminance(lux: 250.0), distance: Distance(meters: 2.0))
			#expect(luminousIntensity.candela.isApproximatelyEqual(to: 1000.0))
		}

	/// Tests computing a luminous intensity from a luminance and an area.
	///
		@Test("Luminous intensity from luminance and area")
		func testLuminousIntensityFromLuminanceAndArea() async throws {
			let luminousIntensity = LuminousIntensity(luminance: Luminance(candelaPerSquareMeter: 250.0), area: Area(squareMeters: 2.0))
			#expect(luminousIntensity.candela.isApproximatelyEqual(to: 500.0))
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

/// Energy and electrical composition tests.
///
	@Suite("Energy and Electricity")
	struct energyTests {
	/// Tests computing an energy from a power sustained over a duration.
	///
		@Test("Energy from power and duration")
		func testEnergyFromPowerAndDuration() async throws {
			let energy = Energy(power: Power(kilowatts: 3.0), duration: Duration(hours: 2.0))
			#expect(energy.kilowattHours.isApproximatelyEqual(to: 6.0))
		}

	/// Tests computing a power from an energy transferred over a duration.
	///
		@Test("Power from energy and duration")
		func testPowerFromEnergyAndDuration() async throws {
			let power = Power(energy: Energy(kilowattHours: 6.0), duration: Duration(hours: 2.0))
			#expect(power.kilowatts.isApproximatelyEqual(to: 3.0))
		}

	/// Tests computing a duration from an energy and a power.
	///
		@Test("Duration from energy and power")
		func testDurationFromEnergyAndPower() async throws {
			let duration = Duration(energy: Energy(kilowattHours: 6.0), power: Power(kilowatts: 3.0))
			#expect(duration.hours.isApproximatelyEqual(to: 2.0))
		}

	/// Tests computing a power from a voltage and a current.
	///
		@Test("Power from voltage and current")
		func testPowerFromVoltageAndCurrent() async throws {
			let power = Power(voltage: Voltage(volts: 230.0), current: ElectricCurrent(amperes: 10.0))
			#expect(power.watts.isApproximatelyEqual(to: 2300.0))
		}

	/// Tests computing a current from a power and a voltage.
	///
		@Test("Current from power and voltage")
		func testCurrentFromPowerAndVoltage() async throws {
			let current = ElectricCurrent(power: Power(watts: 2300.0), voltage: Voltage(volts: 230.0))
			#expect(current.amperes.isApproximatelyEqual(to: 10.0))
		}

	/// Tests computing a voltage from a power and a current.
	///
		@Test("Voltage from power and current")
		func testVoltageFromPowerAndCurrent() async throws {
			let voltage = Voltage(power: Power(watts: 2300.0), current: ElectricCurrent(amperes: 10.0))
			#expect(voltage.volts.isApproximatelyEqual(to: 230.0))
		}
	}

/// Composition operator tests.
///
	@Suite("Operators")
	struct operatorTests {
	/// Tests the operators that produce a different kind of measurement
	/// from distances, durations and speeds.
	///
		@Test("Distance, duration and speed")
		func testDistanceDurationAndSpeed() async throws {
			let area: Area<Double> = Distance(meters: 2.0) * Distance(meters: 3.0)
			#expect(area.squareMeters.isApproximatelyEqual(to: 6.0))

			let speed: Speed<Double> = Distance(meters: 100.0) / Duration(seconds: 10.0)
			#expect(speed.metersPerSecond.isApproximatelyEqual(to: 10.0))

			let duration: Duration<Double> = Distance(meters: 100.0) / Speed(metersPerSecond: 10.0)
			#expect(duration.seconds.isApproximatelyEqual(to: 10.0))

			let distance: Distance<Double> = Speed(metersPerSecond: 10.0) * Duration(seconds: 5.0)
			#expect(distance.meters.isApproximatelyEqual(to: 50.0))
			#expect((Duration(seconds: 5.0) * Speed(metersPerSecond: 10.0)).meters.isApproximatelyEqual(to: 50.0))
		}

	/// Tests the operators that produce volumes, masses and densities.
	///
		@Test("Volume, mass and density")
		func testVolumeMassAndDensity() async throws {
			let volume: Volume<Double> = Area(squareMeters: 2.0) * Distance(meters: 3.0)
			#expect(volume.cubicMeters.isApproximatelyEqual(to: 6.0))
			#expect((Distance(meters: 3.0) * Area(squareMeters: 2.0)).cubicMeters.isApproximatelyEqual(to: 6.0))

			let mass: Mass<Double> = Volume(cubicMeters: 2.0) * Density(kilogramsPerCubicMeter: 5.0)
			#expect(mass.kilograms.isApproximatelyEqual(to: 10.0))
			#expect((Density(kilogramsPerCubicMeter: 5.0) * Volume(cubicMeters: 2.0)).kilograms.isApproximatelyEqual(to: 10.0))

			let density: Density<Double> = Mass(kilograms: 10.0) / Volume(cubicMeters: 2.0)
			#expect(density.kilogramsPerCubicMeter.isApproximatelyEqual(to: 5.0))
		}

	/// Tests the operators between light measurements and areas.
	///
		@Test("Light")
		func testLight() async throws {
			let illuminance: Illuminance<Double> = LuminousFlux(lumens: 100.0) / Area(squareMeters: 4.0)
			#expect(illuminance.lux.isApproximatelyEqual(to: 25.0))

			let flux: LuminousFlux<Double> = Illuminance(lux: 25.0) * Area(squareMeters: 4.0)
			#expect(flux.lumens.isApproximatelyEqual(to: 100.0))

			let luminance: Luminance<Double> = LuminousIntensity(candela: 100.0) / Area(squareMeters: 4.0)
			#expect(luminance.candelaPerSquareMeter.isApproximatelyEqual(to: 25.0))

			let intensity: LuminousIntensity<Double> = Luminance(candelaPerSquareMeter: 25.0) * Area(squareMeters: 4.0)
			#expect(intensity.candela.isApproximatelyEqual(to: 100.0))
		}

	/// Tests the operators between energy, power, duration, voltage and
	/// current.
	///
		@Test("Energy and electricity")
		func testEnergyAndElectricity() async throws {
			let energy: Energy<Double> = Power(kilowatts: 3.0) * Duration(hours: 2.0)
			#expect(energy.kilowattHours.isApproximatelyEqual(to: 6.0))
			#expect((Duration(hours: 2.0) * Power(kilowatts: 3.0)).kilowattHours.isApproximatelyEqual(to: 6.0))

			let power: Power<Double> = Energy(kilowattHours: 6.0) / Duration(hours: 2.0)
			#expect(power.kilowatts.isApproximatelyEqual(to: 3.0))

			let duration: Duration<Double> = Energy(kilowattHours: 6.0) / Power(kilowatts: 3.0)
			#expect(duration.hours.isApproximatelyEqual(to: 2.0))

			let delivered: Power<Double> = Voltage(volts: 230.0) * ElectricCurrent(amperes: 10.0)
			#expect(delivered.watts.isApproximatelyEqual(to: 2300.0))
			#expect((ElectricCurrent(amperes: 10.0) * Voltage(volts: 230.0)).watts.isApproximatelyEqual(to: 2300.0))

			let current: ElectricCurrent<Double> = Power(watts: 2300.0) / Voltage(volts: 230.0)
			#expect(current.amperes.isApproximatelyEqual(to: 10.0))

			let voltage: Voltage<Double> = Power(watts: 2300.0) / ElectricCurrent(amperes: 10.0)
			#expect(voltage.volts.isApproximatelyEqual(to: 230.0))
		}
	}
}
