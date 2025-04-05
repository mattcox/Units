// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "Units",
	products: [
		.library(
			name: "Units",
			targets: [
				"Units"
			]
		),
	],
	targets: [
		.target(
			name: "Units"
		),
		.testTarget(
			name: "UnitsTests",
			dependencies: [
				"Units"
			]
		),
	]
)
