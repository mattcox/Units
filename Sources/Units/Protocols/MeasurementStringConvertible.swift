//
//  MeasurementStringConvertible.swift
//  Units
//
//  Created by Matt Cox on 10/10/2026.
//  Copyright © 2026 Matt Cox. All rights reserved.
//

/// Provides the default implementation for measurements conforming to
/// `LosslessStringConvertible`.
///
/// A measurement is written as a number in the base unit, followed by the base
/// unit symbol, for example `"1.5 m"`. When reading, the number can be
/// followed by the symbol of any unit the measurement supports, for example
/// `"1.0"`, `"1m"`, `"0.27cm"` or `"27 km"`. A number without a unit is assumed
/// to be in the base unit.
///
/// Unit symbols are matched exactly first. If no symbol matches exactly, they
/// are matched ignoring case, provided only one unit matches, so `"1 DAY"` is
/// read as days, but `"1 MM"` is rejected as it could be millimeters or
/// megameters. A symbol shared by more than one unit is read as the preferred
/// unit, for example US gallons rather than imperial gallons, or rejected if
/// none of the units are preferred.
///
extension Measurement where Value: BinaryFloatingPoint & LosslessStringConvertible, MeasurementUnit.Value == Value, MeasurementUnit: Equatable {
	public var description: String {
		"\(value) \(MeasurementUnit.base.symbol(for: value))"
	}

/// Initialize the measurement from a string containing a number, optionally
/// followed by a unit symbol.
///
/// - Parameters:
///   - description: The string to parse, for example `"27 km"`.
///
/// - Returns: The measurement, or `nil` if the string couldn't be parsed.
///
	public init?(_ description: String) {
		let text = Self.trimmed(Substring(description.replacingGreekMu()))
		guard !text.isEmpty else {
			return nil
		}

		if let value = Value(String(text)) {
			self.init(value, unit: .base)
			return
		}

		guard let (value, unit) = Self.parse(text, caseSensitive: true) ?? Self.parse(text, caseSensitive: false) else {
			return nil
		}

		self.init(value, unit: unit)
	}

/// Parse a value followed by a unit symbol, preferring the longest matching
/// symbol.
///
	private static func parse(_ text: Substring, caseSensitive: Bool) -> (Value, MeasurementUnit)? {
		let candidates = MeasurementUnit.allCases
			.flatMap { unit in
				Set([0, 1, 2].map { unit.symbol(for: $0) }).map { (symbol: $0, unit: unit) }
			}

		for length in Set(candidates.map(\.symbol.count)).sorted(by: >) {
			guard length < text.count else {
				continue
			}

			let suffix = text.suffix(length)
			let matches = candidates.filter { candidate in
				candidate.symbol.count == length &&
				(caseSensitive ? suffix == candidate.symbol : suffix.lowercased() == candidate.symbol.lowercased())
			}

			guard !matches.isEmpty else {
				continue
			}

			// A symbol shared by more than one unit is ambiguous, unless one
			// of the units is preferred.
			//
			guard let unit = resolve(matches.map(\.unit)) else {
				return nil
			}

			if let value = Value(String(trimmed(text.dropLast(length)))) {
				return (value, unit)
			}
		}

		return nil
	}

/// Resolve the units matching a symbol to a single unit, using the preferred
/// unit if the symbol is shared by more than one unit.
///
	private static func resolve(_ units: [MeasurementUnit]) -> MeasurementUnit? {
		for candidates in [units, units.filter(\.isPreferredForSharedSymbol)] {
			if let unit = candidates.first, candidates.allSatisfy({ $0 == unit }) {
				return unit
			}
		}

		return nil
	}

	private static func trimmed(_ text: Substring) -> Substring {
		guard let start = text.firstIndex(where: { !$0.isWhitespace }), let end = text.lastIndex(where: { !$0.isWhitespace }) else {
			return ""
		}
		
		return text[start...end]
	}
}

extension String {
/// Replace the Greek small letter mu (U+03BC) with the micro sign (U+00B5)
/// used by the unit symbols, as the two are often used interchangeably.
///
	fileprivate func replacingGreekMu() -> String {
		String(map { $0 == "\u{03BC}" ? "\u{00B5}" : $0 })
	}
}
