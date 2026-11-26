//
//  UnitCompositionOperators.swift
//  Units
//
//  Created by Matt Cox on 26/11/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

// Operators for the products and quotients that make a different kind of
// measurement. Each one returns the measurement the result actually is, and
// is the operator form of an initializer in UnitComposition.swift.
//
// Multiplying two measurements of the same kind into that same kind — meters
// times meters as meters — is deliberately not possible. Where a product of
// two measurements means something, it is here.
//

extension Area {
/// The volume of an area extended through a distance.
///
/// `volume = area ⨯ distance`
///
	public static func * (lhs: Area<Value>, rhs: Distance<Value>) -> Volume<Value> {
		Volume(area: lhs, distance: rhs)
	}
}

extension Distance {
/// The area covered by two distances.
///
/// `area = x ⨯ y`
///
	public static func * (lhs: Distance<Value>, rhs: Distance<Value>) -> Area<Value> {
		Area(x: lhs, y: rhs)
	}

/// The volume of an area extended through a distance.
///
/// `volume = distance ⨯ area`
///
	public static func * (lhs: Distance<Value>, rhs: Area<Value>) -> Volume<Value> {
		Volume(area: rhs, distance: lhs)
	}

/// The speed of covering a distance in a duration.
///
/// `speed = distance ÷ duration`
///
	public static func / (lhs: Distance<Value>, rhs: Duration<Value>) -> Speed<Value> {
		Speed(distance: lhs, duration: rhs)
	}

/// The duration taken to cover a distance at a speed.
///
/// `duration = distance ÷ speed`
///
	public static func / (lhs: Distance<Value>, rhs: Speed<Value>) -> Duration<Value> {
		Duration(distance: lhs, speed: rhs)
	}
}

extension Density {
/// The mass of a volume of a substance with this density.
///
/// `mass = density ⨯ volume`
///
	public static func * (lhs: Density<Value>, rhs: Volume<Value>) -> Mass<Value> {
		Mass(volume: rhs, density: lhs)
	}
}

extension Duration {
/// The distance covered at a speed over this duration.
///
/// `distance = duration ⨯ speed`
///
	public static func * (lhs: Duration<Value>, rhs: Speed<Value>) -> Distance<Value> {
		Distance(speed: rhs, duration: lhs)
	}

/// The energy of a power sustained over this duration.
///
/// `energy = duration ⨯ power`
///
	public static func * (lhs: Duration<Value>, rhs: Power<Value>) -> Energy<Value> {
		Energy(power: rhs, duration: lhs)
	}
}

extension ElectricCurrent {
/// The power delivered by this current at a voltage.
///
/// `power = current ⨯ voltage`
///
	public static func * (lhs: ElectricCurrent<Value>, rhs: Voltage<Value>) -> Power<Value> {
		Power(voltage: rhs, current: lhs)
	}
}

extension Energy {
/// The power at which this energy is transferred over a duration.
///
/// `power = energy ÷ duration`
///
	public static func / (lhs: Energy<Value>, rhs: Duration<Value>) -> Power<Value> {
		Power(energy: lhs, duration: rhs)
	}

/// The duration taken to transfer this energy at a power.
///
/// `duration = energy ÷ power`
///
	public static func / (lhs: Energy<Value>, rhs: Power<Value>) -> Duration<Value> {
		Duration(energy: lhs, power: rhs)
	}
}

extension Illuminance {
/// The luminous flux falling on an area at this illuminance.
///
/// `luminousFlux = illuminance ⨯ area`
///
	public static func * (lhs: Illuminance<Value>, rhs: Area<Value>) -> LuminousFlux<Value> {
		LuminousFlux(illuminance: lhs, area: rhs)
	}
}

extension Luminance {
/// The luminous intensity of an area emitting at this luminance.
///
/// `luminousIntensity = luminance ⨯ area`
///
	public static func * (lhs: Luminance<Value>, rhs: Area<Value>) -> LuminousIntensity<Value> {
		LuminousIntensity(luminance: lhs, area: rhs)
	}
}

extension LuminousFlux {
/// The illuminance of this luminous flux spread over an area.
///
/// `illuminance = luminousFlux ÷ area`
///
	public static func / (lhs: LuminousFlux<Value>, rhs: Area<Value>) -> Illuminance<Value> {
		Illuminance(luminousFlux: lhs, area: rhs)
	}
}

extension LuminousIntensity {
/// The luminance of this luminous intensity emitted from an area.
///
/// `luminance = luminousIntensity ÷ area`
///
	public static func / (lhs: LuminousIntensity<Value>, rhs: Area<Value>) -> Luminance<Value> {
		Luminance(luminousIntensity: lhs, area: rhs)
	}
}

extension Mass {
/// The density of this mass occupying a volume.
///
/// `density = mass ÷ volume`
///
	public static func / (lhs: Mass<Value>, rhs: Volume<Value>) -> Density<Value> {
		Density(mass: lhs, volume: rhs)
	}
}

extension Power {
/// The energy of this power sustained over a duration.
///
/// `energy = power ⨯ duration`
///
	public static func * (lhs: Power<Value>, rhs: Duration<Value>) -> Energy<Value> {
		Energy(power: lhs, duration: rhs)
	}

/// The current delivering this power at a voltage.
///
/// `current = power ÷ voltage`
///
	public static func / (lhs: Power<Value>, rhs: Voltage<Value>) -> ElectricCurrent<Value> {
		ElectricCurrent(power: lhs, voltage: rhs)
	}

/// The voltage at which a current delivers this power.
///
/// `voltage = power ÷ current`
///
	public static func / (lhs: Power<Value>, rhs: ElectricCurrent<Value>) -> Voltage<Value> {
		Voltage(power: lhs, current: rhs)
	}
}

extension Speed {
/// The distance covered at this speed over a duration.
///
/// `distance = speed ⨯ duration`
///
	public static func * (lhs: Speed<Value>, rhs: Duration<Value>) -> Distance<Value> {
		Distance(speed: lhs, duration: rhs)
	}
}

extension Voltage {
/// The power delivered at this voltage by a current.
///
/// `power = voltage ⨯ current`
///
	public static func * (lhs: Voltage<Value>, rhs: ElectricCurrent<Value>) -> Power<Value> {
		Power(voltage: lhs, current: rhs)
	}
}

extension Volume {
/// The mass of this volume of a substance with a density.
///
/// `mass = volume ⨯ density`
///
	public static func * (lhs: Volume<Value>, rhs: Density<Value>) -> Mass<Value> {
		Mass(volume: lhs, density: rhs)
	}
}
