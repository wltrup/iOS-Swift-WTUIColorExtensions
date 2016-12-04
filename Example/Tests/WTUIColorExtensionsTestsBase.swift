//
//  WTUIColorExtensionsTestsBase.swift
//  WTUIColorExtensions
//
//  Created by Wagner Truppel on 2016.12.03.
//
//  Copyright (c) 2016 Wagner Truppel. All rights reserved.
//

import XCTest
import Foundation
import WTUIColorExtensions

class WTUIColorExtensionsTestsBase: XCTestCase
{
    var tolerance: CGFloat = 0
    var N: Int = 0

    // MARK: -

    var expectedValue: CGFloat = 0
    var resultedValue: CGFloat = 0

    // MARK: -

    /// Returns a uniformly-distributed pseudo-random value in the **closed** interval [0, 1].
    final func random01() -> CGFloat
    { return CGFloat(arc4random_uniform(UInt32.max)) / CGFloat(UInt32.max - 1) }

    final func assertAbsoluteDifferenceWithinTolerance()
    { XCTAssertTrue(abs(resultedValue - expectedValue) <= tolerance) }

    /// Tests that uniformly generated pseudo-random values in the range [0, 1]
    /// satisfy the properties that their average approaches 1/2 and their
    /// variance approaches 1/12, within a given tolerance.
    final func testRandomness(_ values: [CGFloat])
    {
        let n = CGFloat(values.count)
        let average = values.reduce(0, +) / n
        let variance = values
            .map { ($0 - average)*($0 - average) }
            .reduce(0, +) / n

        expectedValue = 1/2
        resultedValue = average
        assertAbsoluteDifferenceWithinTolerance()

        expectedValue = 1/12
        resultedValue = variance
        assertAbsoluteDifferenceWithinTolerance()
    }

    // MARK: -

    override func setUp()
    {
        super.setUp()

        tolerance = 1e-12
        N = 100
    }
}

