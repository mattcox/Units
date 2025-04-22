//
//  MeasurementComposable.swift
//  Units
//
//  Created by Matt Cox on 22/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Foundation

/// A type that allows a measurement to be composed of other measurements.
///
/// For example, a vector measurement composed of individual scalar values.
///
public protocol MeasurementComposable: Measurement {
/// The type of value used to describe a single component of the value.
///
	associatedtype Scalar: Measurement

/// Access a measurement component by index.
///
/// - Parameters:
///   - index: The index of the component in the measurement.
///
	subscript(_ index: Int) -> Scalar { get set }
}
