//
//  WTUIColorExtensionsTests.swift
//  WTUIColorExtensions
//
//  Created by Wagner Truppel on 2016.12.03.
//
//  Copyright (c) 2016 Wagner Truppel. All rights reserved.
//

import XCTest
import Foundation
import WTUIColorExtensions

class WTUIColorExtensionsTests: WTUIColorExtensionsTestsBase
{
    func test_randomRGBGeneratesColorsWithComponentValuesInTheExpectedRange()
    {
        let success = (1...N)
            .map { _ in
                let components = try! UIColor.randomRGB.rgbaComponents()
                return (components.red   >= 0 && components.red   <= 1 &&
                        components.green >= 0 && components.green <= 1 &&
                        components.blue  >= 0 && components.blue  <= 1 &&
                        components.alpha == 1)
            }
            .reduce(true) { $0 && $1 }

        XCTAssertTrue(success)
    }

    func test_randomRGB()
    {
        N = 10_000
        tolerance = 1e-1

        let colors = (1...N)
            .map { _ in try! UIColor.randomRGB.rgbaComponents() }

        let reds = colors.map { $0.red }
        testRandomness(reds)

        let greens = colors.map { $0.green }
        testRandomness(greens)

        let blues = colors.map { $0.blue }
        testRandomness(blues)
    }

    // MARK: -

    func test_randomRGBAGeneratesColorsWithComponentValuesInTheExpectedRange()
    {
        let success = (1...N)
            .map { _ in
                let components = try! UIColor.randomRGBA.rgbaComponents()
                return (components.red   >= 0 && components.red   <= 1 &&
                        components.green >= 0 && components.green <= 1 &&
                        components.blue  >= 0 && components.blue  <= 1 &&
                        components.alpha >= 0 && components.alpha <= 1)
            }
            .reduce(true) { $0 && $1 }

        XCTAssertTrue(success)
    }

    func test_randomRGBA()
    {
        N = 10_000
        tolerance = 1e-1

        let colors = (1...N)
            .map { _ in try! UIColor.randomRGBA.rgbaComponents() }

        let reds = colors.map { $0.red }
        testRandomness(reds)

        let greens = colors.map { $0.green }
        testRandomness(greens)

        let blues = colors.map { $0.blue }
        testRandomness(blues)

        let alphas = colors.map { $0.alpha }
        testRandomness(alphas)
    }

    // MARK: -

    func test_randomHSBGeneratesColorsWithComponentValuesInTheExpectedRange()
    {
        let success = (1...N)
            .map { _ in
                let components = try! UIColor.randomHSB.hsbaComponents()
                return (components.hue         >= 0 && components.hue         <= 1 &&
                        components.saturation  >= 0 && components.saturation  <= 1 &&
                        components.brightness  >= 0 && components.brightness  <= 1 &&
                        components.alpha       == 1)
            }
            .reduce(true) { $0 && $1 }

        XCTAssertTrue(success)
    }

    func test_randomHSB()
    {
        N = 10_000
        tolerance = 1e-1

        let colors = (1...N)
            .map { _ in try! UIColor.randomHSB.hsbaComponents() }

        let hues = colors.map { $0.hue }
        testRandomness(hues)

        let sats = colors.map { $0.saturation }
        testRandomness(sats)

        let brights = colors.map { $0.brightness }
        testRandomness(brights)
    }

    // MARK: -

    func test_randomHSBAGeneratesColorsWithComponentValuesInTheExpectedRange()
    {
        let success = (1...N)
            .map { _ in
                let components = try! UIColor.randomHSBA.hsbaComponents()
                return (components.hue         >= 0 && components.hue         <= 1 &&
                        components.saturation  >= 0 && components.saturation  <= 1 &&
                        components.brightness  >= 0 && components.brightness  <= 1 &&
                        components.alpha       >= 0 && components.alpha       <= 1)
            }
            .reduce(true) { $0 && $1 }

        XCTAssertTrue(success)
    }

    func test_randomHSBA()
    {
        N = 10_000
        tolerance = 1e-1

        let colors = (1...N)
            .map { _ in try! UIColor.randomHSBA.hsbaComponents() }

        let hues = colors.map { $0.hue }
        testRandomness(hues)

        let sats = colors.map { $0.saturation }
        testRandomness(sats)

        let brights = colors.map { $0.brightness }
        testRandomness(brights)

        let alphas = colors.map { $0.alpha }
        testRandomness(alphas)
    }

    // MARK: -

    func test_randomWhiteGeneratesColorsWithComponentValuesInTheExpectedRange()
    {
        let success = (1...N)
            .map { _ in
                let components = try! UIColor.randomWhite.whiteAlphaComponents()
                return (components.white >= 0 && components.white <= 1 &&
                        components.alpha == 1)
            }
            .reduce(true) { $0 && $1 }

        XCTAssertTrue(success)
    }

    func test_randomWhite()
    {
        N = 10_000
        tolerance = 1e-1

        let whites = (1...N)
            .map { _ in try! UIColor.randomWhite.whiteAlphaComponents().white }

        testRandomness(whites)
    }

    // MARK: -

    func test_randomWhiteAlphaGeneratesColorsWithComponentValuesInTheExpectedRange()
    {
        let success = (1...N)
            .map { _ in
                let components = try! UIColor.randomWhiteAlpha.whiteAlphaComponents()
                return (components.white >= 0 && components.white <= 1 &&
                        components.alpha >= 0 && components.alpha <= 1)
            }
            .reduce(true) { $0 && $1 }

        XCTAssertTrue(success)
    }

    func test_randomWhiteAlpha()
    {
        N = 10_000
        tolerance = 1e-1

        let colors = (1...N)
            .map { _ in try! UIColor.randomWhiteAlpha.whiteAlphaComponents() }

        let whites = colors.map { $0.white }
        testRandomness(whites)

        let alphas = colors.map { $0.alpha }
        testRandomness(alphas)
    }

    // MARK: -

    func test_rgbaComponentsDoesNotActuallyThrow1()
    {
        let color = UIColor(hue: random01(),
                            saturation: random01(),
                            brightness: random01(),
                            alpha: random01())

        do { _ = try color.rgbaComponents() }
        catch { XCTFail() }
    }

    func test_rgbaComponentsDoesNotActuallyThrow2()
    {
        let color = UIColor(white: random01(), alpha: random01())

        do { _ = try color.rgbaComponents() }
        catch { XCTFail() }
    }

    func test_rgbaComponents()
    {
        (1...N).forEach { _ in
            let r = random01(); let g = random01()
            let b = random01(); let a = random01()

            let color = UIColor(red: r, green: g, blue: b, alpha: a)
            let comps = try! color.rgbaComponents()

            expectedValue = r
            resultedValue = comps.red
            assertAbsoluteDifferenceWithinTolerance()

            expectedValue = g
            resultedValue = comps.green
            assertAbsoluteDifferenceWithinTolerance()

            expectedValue = b
            resultedValue = comps.blue
            assertAbsoluteDifferenceWithinTolerance()

            expectedValue = a
            resultedValue = comps.alpha
            assertAbsoluteDifferenceWithinTolerance()
        }
    }

    // MARK: -

    func test_hsbaComponentsDoesNotActuallyThrow1()
    {
        let color = UIColor(red: random01(),
                            green: random01(),
                            blue: random01(),
                            alpha: random01())

        do { _ = try color.hsbaComponents() }
        catch { XCTFail() }
    }

    func test_hsbaComponentsDoesNotActuallyThrow2()
    {
        let color = UIColor(white: random01(), alpha: random01())

        do { _ = try color.hsbaComponents() }
        catch { XCTFail() }
    }

    func test_hsbaComponents()
    {
        (1...N).forEach { _ in
            let h = random01(); let s = random01()
            let b = random01(); let a = random01()

            let color = UIColor(hue: h, saturation: s, brightness: b, alpha: a)
            let comps = try! color.hsbaComponents()

            expectedValue = h
            resultedValue = comps.hue
            assertAbsoluteDifferenceWithinTolerance()

            expectedValue = s
            resultedValue = comps.saturation
            assertAbsoluteDifferenceWithinTolerance()

            expectedValue = b
            resultedValue = comps.brightness
            assertAbsoluteDifferenceWithinTolerance()

            expectedValue = a
            resultedValue = comps.alpha
            assertAbsoluteDifferenceWithinTolerance()
        }
    }

    // MARK: -

    func test_whiteAlphaComponentsThrowsOnInvalidColorSpace1()
    {
        let color = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.4)
        do {
            _ = try color.whiteAlphaComponents()
            XCTFail()
        }
        catch {
            let expectedError = UIColor.ColorError.invalidColorSpace
            let resultedError = error

            XCTAssertTrue(resultedError is UIColor.ColorError)
            if let resultedError = resultedError as? UIColor.ColorError
            { XCTAssertEqual(resultedError, expectedError) }
        }
    }

    func test_whiteAlphaComponentsThrowsOnInvalidColorSpace2()
    {
        let color = UIColor(hue: 0.1, saturation: 0.2, brightness: 0.3, alpha: 0.4)
        do {
            _ = try color.whiteAlphaComponents()
            XCTFail()
        }
        catch {
            let expectedError = UIColor.ColorError.invalidColorSpace
            let resultedError = error

            XCTAssertTrue(resultedError is UIColor.ColorError)
            if let resultedError = resultedError as? UIColor.ColorError
            { XCTAssertEqual(resultedError, expectedError) }
        }
    }

    func test_whiteAlphaComponents()
    {
        (1...N).forEach { _ in
            let w = random01(); let a = random01()
            
            let color = UIColor(white: w, alpha: a)
            let comps = try! color.whiteAlphaComponents()
            
            expectedValue = w
            resultedValue = comps.white
            assertAbsoluteDifferenceWithinTolerance()
            
            expectedValue = a
            resultedValue = comps.alpha
            assertAbsoluteDifferenceWithinTolerance()
        }
    }
}
