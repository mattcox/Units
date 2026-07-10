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
	dependencies: [
		.package(url: "https://github.com/apple/swift-numerics", from: Version(1, 0, 0))
	],
	targets: [
		.target(
			name: "Units"
		),
		.testTarget(
			name: "UnitsTests",
			dependencies: [
				.product(name: "RealModule", package: "swift-numerics"),
				"Units"
			]
		),
	]
)
