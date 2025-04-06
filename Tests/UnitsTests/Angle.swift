import Testing
@testable import Units

@Suite("Angle")
struct AngleTests {
	@Test("Degrees Initializer")
	func testInitDegrees() throws {
		let angle = Angle<Double>.degrees(180)
		#expect(angle.radians.almostEqual(.pi))
		
	}

	@Test("Radians Initializer")
	func testInitRadians() throws {
		let angle = Angle<Double>.radians(.pi)
		#expect(angle.degrees.almostEqual(180))
	}

	@Test("Revolutions Initializer")
	func testInitRevolutions() throws {
		let angle = Angle<Double>.revolutions(1)
		#expect(angle.degrees.almostEqual(360))
	}

	@Test("Arc Minutes Initializer")
	func testInitArcMinutes() throws {
		let angle = Angle<Double>.arcMinutes(60)
		#expect(angle.degrees.almostEqual(1))
	}

	@Test("Arc Seconds Initializer")
	func testInitArcSeconds() throws {
		let angle = Angle<Double>.arcSeconds(3600)
		#expect(angle.degrees.almostEqual(1))
	}

	@Test("Gradians Initializer")
	func testInitGradians() throws {
		let angle = Angle<Double>.gradians(200)
		#expect(angle.degrees.almostEqual(180))
	}

	@Test("Degrees to Radians")
	func testConvertDegreesToRadians() throws {
		let angle = Angle<Double>.degrees(90)
		#expect(angle.radians.almostEqual(.pi / 2))
	}

	@Test("Radians to Revolutions")
	func testConvertRadiansToRevolutions() throws {
		let angle = Angle<Double>.radians(.pi * 2)
		#expect(angle.revolutions.almostEqual(1))
	}

	@Test("Gradians to Arc Minutes")
	func testConvertGradiansToArcMinutes() throws {
		let angle = Angle<Double>.gradians(400)
		#expect(angle.arcMinutes.almostEqual(21600))
	}

	@Test("Normalization above 360")
	func testNormalizationAbove360() throws {
		let angle = Angle<Double>.degrees(450).normalized
		#expect(angle.degrees.almostEqual(90))
	}

	@Test("Normalization below 0")
	func testNormalizationBelowZero() throws {
		let angle = Angle<Double>.degrees(-90).normalized
		#expect(angle.degrees.almostEqual(270))
	}

	@Test("Normalization within range")
	func testNormalizationWithinRange() throws {
		let angle = Angle<Double>.degrees(90).normalized
		#expect(angle.degrees.almostEqual(90))
	}

	@Test("Is angle acute")
	func testAcuteAngleClassification() throws {
		let angle = Angle<Double>.degrees(45)
		#expect(angle.classification == .acute)
	}

	@Test("Is right angle")
	func testRightAngleClassification() throws {
		let angle = Angle<Double>.degrees(90)
		#expect(angle.classification == .right)
	}

	@Test("Is angle obtuse")
	func testObtuseAngleClassification() throws {
		let angle = Angle<Double>.degrees(135)
		#expect(angle.classification == .obtuse)
	}

	@Test("Is straight angle")
	func testStraightAngleClassification() throws {
		let angle = Angle<Double>.degrees(180)
		#expect(angle.classification == .straight)
	}

	@Test("Is angle reflex")
	func testReflexAngleClassification() throws {
		let angle = Angle<Double>.degrees(270)
		#expect(angle.classification == .reflex)
	}

	@Test("π")
	func testPiAngle() throws {
		let pi = Angle<Double>.pi
		#expect(pi.degrees.almostEqual(180))
	}
}
