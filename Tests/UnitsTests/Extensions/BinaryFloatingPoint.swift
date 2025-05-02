//
//  BinaryFloatingPoint.swift
//  Units
//
//  Created by Matt Cox on 06/04/2025.
//  Copyright © 2025 Matt Cox. All rights reserved.
//

import Testing

extension BinaryFloatingPoint {
/// Returns true if one value is close enough to the other to be considered
/// the same value, usually within some pre-defined tolerance.
///
/// - Parameters:
///   - lhs: A value to compare.
///   - rhs: Another value to compare.
///
/// - Returns: A boolean indicating if the two values are almost identical.
///
	public static func almostEqual(_ lhs: Self, _ rhs: Self) -> Bool {
		rhs.almostEqual(to: lhs)
	}
	
/// Returns true if the current value is close enough to another to be
/// considered the same value, usually within some pre-defined tolerance.
///
/// - Parameters:
///   - other: The value to compare to the current value.
///
/// - Returns: A boolean indicating if the two values are almost identical.
///
	public func almostEqual(to: Self) -> Bool {
		(to >= self.nextDown && to <= self.nextUp)
	}
}
