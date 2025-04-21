//
//  MeasurementVector.swift
//  Units
//
//  Created by Matt Cox on 10/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Foundation

/// A type that allows a measurement to store a vector.
///
/// This adds basic mathematical functions, as well as the ability to access
/// specific components of the vector.
///
public protocol MeasurementVector: Measurement where Self.Value: SIMD {
/// The type of value used to describe a single component of the value.
///
	associatedtype Component

/// Access a measurement component by index.
///
/// - Parameters:
///   - index: The index of the component in the measurement.
///
	subscript(_ index: Int) -> Component { get set }
}
