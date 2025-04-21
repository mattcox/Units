//
//  UnitComposition.swift
//  Units
//
//  Created by Matt Cox on 08/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Foundation

extension Area {
/// Initialize the area from two distances.
///
/// `area = x ⨯ y`
///
/// - Parameters:
///   - x: A distance representing the first axis.
///   - y: A distance representing the second axis.
///
/// - Returns: The measurement representing the computed area.
///
	public init(x: Distance<Value>, y: Distance<Value>) {
		self = Area(squareMeters: x.meters * y.meters)
	}
}

extension Density {
/// Initialize the density from a mass and a value.
///
/// `density = mass ÷ volume`
///
/// - Parameters:
///   - mass: The mass quantity being measured.
///   - volume: The volume quantity being measured.
///
/// - Returns: The measurement representing the computed density.
///
	public init(mass: Mass<Value>, volume: Volume<Value>) {
		self = Density(kilogramsPerCubicMeter: mass.kilograms / volume.cubicMeters)
	}
}

extension Distance {
/// Initialize the distance from a speed over time.
///
/// `distance = speed ⨯ duration`
///
/// - Parameters:
///   - speed: The speed travelled at.
///   - duration: The duration the speed is measured over.
///
/// - Returns: The measurement representing the computed distance.
///
	public init(speed: Speed<Value>, duration: Duration<Value>) {
		self = Distance(meters: speed.metersPerSecond * duration.seconds)
	}
	
/// Initialize the distance from two positions.
///
/// `distance = |a-b|`
///
/// - Parameters:
///   - from: The first position.
///   - to: The second position.
///
/// - Returns: The distance between the two positions.
///
	public init<V: SIMD>(from first: Position<V>, to second: Position<V>) where V.Scalar == Value {
		let squaredDistance = (0..<V.scalarCount)
			.map { index in
				let component = first.value[index] - second.value[index]
				return component * component
			}
			.reduce(V.Scalar.zero) {
				$0 + $1
			}
			
		self = Distance(meters: sqrt(squaredDistance))
	}
}

extension Duration {
/// Initialize the duration from a distance travelled and a speed.
///
/// `duration = distance ÷ speed`
///
/// - Parameters:
///   - distance: The distance travelled.
///   - speed: The speed travelled at.
///
/// - Returns: The measurement representing the computed duration.
///
	public init(distance: Distance<Value>, speed: Speed<Value>) {
		self = Duration(seconds: distance.meters / speed.metersPerSecond)
	}
	
/// Initialize the duration from a repeating frequency.
///
/// `duration = 1 ÷ frequency`
///
/// - Parameters:
///   - frequency: The frequency representing the duration.
///
/// - Returns: The measurement representing the computed duration.
///
	public init(onceEvery frequency: Frequency<Value>) {
		self = Duration(seconds: 1.0 / frequency.hertz)
	}
}

extension Frequency {
/// Initialize the frequency from a duration.
///
/// `frequency = 1 ÷ duration`
///
/// - Parameters:
///   - duration: The duration the frequency occurs over.
///
/// - Returns: The measurement representing the computed frequency.
///
	public init(oncePer duration: Duration<Value>) {
		self = Frequency(hertz: 1.0 / duration.seconds)
	}
}

extension Mass {
/// Initialize the mass from a volume and the density of the volume.
///
/// `mass = volume ⨯ density`
///
/// - Parameters:
///   - volume: The volume being measured.
///   - density: The density of the volume.
///
/// - Returns: The measurement representing the computed mass.
///
	public init(volume: Volume<Value>, density: Density<Value>) {
		self = Mass(kilograms: volume.cubicMeters * density.kilogramsPerCubicMeter)
	}
}

extension Speed {
/// Initialize the speed from a distance travelled over time.
///
/// `speed = distance ÷ duration`
///
/// - Parameters:
///   - distance: The distance travelled.
///   - duration: The time taken to travel the distance.
///
/// - Returns: The measurement representing the computed speed.
///
	public init(distance: Distance<Value>, duration: Duration<Value>) {
		self = Speed(metersPerSecond: distance.meters / duration.seconds)
	}
}

extension Volume {
/// Initialize the volume from three distances.
///
/// `volume = x ⨯ y ⨯ z`
///
/// - Parameters:
///   - x: A distance representing the first axis.
///   - y: A distance representing the second axis.
///   - z: A distance representing the third axis
///
/// - Returns: The measurement representing the computed volume.
///
	public init(x: Distance<Value>, y: Distance<Value>, z: Distance<Value>) {
		self = Volume(cubicMeters: x.meters * y.meters * z.meters)
	}

/// Initialize the volume from an area and a distance extending the area
/// into three dimensions.
///
/// `volume = area ⨯ distance`
///
/// - Parameters:
///   - area: An area representing to axis of the volume.
///   - distance: A distance extending the area into three dimensions.
///
/// - Returns: The measurement representing the computed volume.
///
	public init(area: Area<Value>, distance: Distance<Value>) {
		self = Volume(cubicMeters: area.squareMeters * distance.meters)
	}
}
