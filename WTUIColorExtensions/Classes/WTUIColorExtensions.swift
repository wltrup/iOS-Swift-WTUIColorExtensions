/*
 WTUIColorExtensions.swift
 WTUIColorExtensions

 Created by Wagner Truppel on 2016.12.03.

 The MIT License (MIT)

 Copyright (c) 2016 Wagner Truppel.

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.

 When crediting me (Wagner Truppel) for this work, please use one
 of the following two suggested formats:

 Uses "WTUIColorExtensions" by Wagner Truppel
 https://github.com/wltrup

 or

 WTUIColorExtensions by Wagner Truppel
 https://github.com/wltrup
 */

import Foundation
import CoreGraphics
import UIKit


public extension UIColor
{
    /// Returns a new `UIColor` instance in the **RGB color space**, with
    /// pseudo-random values for its color coordinates (red, green, blue),
    /// but with its opacity (alpha) set to 1.
    ///
    /// - SeeAlso: `UIColor.randomRGBA`.
    ///
    /// - SeeAlso: `UIColor.randomHSB`.
    /// - SeeAlso: `UIColor.randomHSBA`.
    ///
    /// - SeeAlso: `UIColor.randomWhite`.
    /// - SeeAlso: `UIColor.randomWhiteAlpha`.
    public static var randomRGB: UIColor
    {
        let r = UIColor.random01
        let g = UIColor.random01
        let b = UIColor.random01
        return UIColor(red: r, green: g, blue: b, alpha: 1)
    }

    /// Returns a new `UIColor` instance in the **RGB color space**, with
    /// pseudo-random values for all its color coordinates (red, green, blue, alpha).
    ///
    /// - SeeAlso: `UIColor.randomRGB`.
    ///
    /// - SeeAlso: `UIColor.randomHSB`.
    /// - SeeAlso: `UIColor.randomHSBA`.
    ///
    /// - SeeAlso: `UIColor.randomWhite`.
    /// - SeeAlso: `UIColor.randomWhiteAlpha`.
    public static var randomRGBA: UIColor
    {
        let r = UIColor.random01
        let g = UIColor.random01
        let b = UIColor.random01
        let a = UIColor.random01
        return UIColor(red: r, green: g, blue: b, alpha: a)
    }

    // MARK: -

    /// Returns a new `UIColor` instance in the **HSB color space**,\* with
    /// pseudo-random values for its color coordinates (hue, saturation, brightness),
    /// but with its opacity (alpha) set to 1.
    ///
    /// \* NOTE: Although this computed property creates a `UIColor` instance
    ///          using HSB values, that instance is internally stored as an
    ///          RGB color so it's not actually in the HSB color space.
    ///
    /// - SeeAlso: `UIColor.randomRGB`.
    /// - SeeAlso: `UIColor.randomRGBA`.
    ///
    /// - SeeAlso: `UIColor.randomHSBA`.
    ///
    /// - SeeAlso: `UIColor.randomWhite`.
    /// - SeeAlso: `UIColor.randomWhiteAlpha`.
    public static var randomHSB: UIColor
    {
        let h = UIColor.random01
        let s = UIColor.random01
        let b = UIColor.random01
        return UIColor(hue: h, saturation: s, brightness: b, alpha: 1)
    }

    /// Returns a new `UIColor` instance in the **HSB color space**,\* with
    /// pseudo-random values for all its color coordinates
    /// (hue, saturation, brightness, alpha).
    ///
    /// \* NOTE: Although this computed property creates a `UIColor` instance
    ///          using HSB values, that instance is internally stored as an
    ///          RGB color so it's not actually in the HSB color space.
    ///
    /// - SeeAlso: `UIColor.randomRGB`.
    /// - SeeAlso: `UIColor.randomRGBA`.
    ///
    /// - SeeAlso: `UIColor.randomHSB`.
    ///
    /// - SeeAlso: `UIColor.randomWhite`.
    /// - SeeAlso: `UIColor.randomWhiteAlpha`.
    public static var randomHSBA: UIColor
    {
        let h = UIColor.random01
        let s = UIColor.random01
        let b = UIColor.random01
        let a = UIColor.random01
        return UIColor(hue: h, saturation: s, brightness: b, alpha: a)
    }

    // MARK: -

    /// Returns a new `UIColor` instance in the **grayscale**\* color space,
    /// with a pseudo-random value for its white coordinate but with its
    /// opacity (alpha) set to 1.
    ///
    /// \* NOTE: Although this computed property creates a `UIColor` instance
    ///          using a grayscale value, that instance is internally stored
    ///          as an RGB color so it's not actually in the grayscale color
    ///          space.
    ///
    /// - SeeAlso: `UIColor.randomRGB`.
    /// - SeeAlso: `UIColor.randomRGBA`.
    ///
    /// - SeeAlso: `UIColor.randomHSB`.
    /// - SeeAlso: `UIColor.randomHSBA`.
    ///
    /// - SeeAlso: `UIColor.randomWhiteAlpha`.
    public static var randomWhite: UIColor
    {
        let w = UIColor.random01
        return UIColor(white: w, alpha: 1)
    }

    /// Returns a new `UIColor` instance in the **grayscale color space**,\*
    /// with a pseudo-random value for both its white coordinate and its
    /// opacity coordinate (alpha).
    ///
    /// \* NOTE: Although this computed property creates a `UIColor` instance
    ///          using a grayscale value, that instance is internally stored
    ///          as an RGB color so it's not actually in the grayscale color
    ///          space.
    ///
    /// - SeeAlso: `UIColor.randomRGB`.
    /// - SeeAlso: `UIColor.randomRGBA`.
    ///
    /// - SeeAlso: `UIColor.randomHSB`.
    /// - SeeAlso: `UIColor.randomHSBA`.
    ///
    /// - SeeAlso: `UIColor.randomWhite`.
    public static var randomWhiteAlpha: UIColor
    {
        let w = UIColor.random01
        let a = UIColor.random01
        return UIColor(white: w, alpha: a)
    }

    // MARK: -

    /// An enumeration describing the possible errors that can be thrown when using
    /// functions from the extended `UIColor` API provided by **WTUIColorExtensions**.
    ///
    /// - **invalidColorSpace**:
    ///            Signifies that the attempted function cannot be performed with the
    ///            color space provided.
    public enum ColorError: Error
    {
        case invalidColorSpace
    }

    // MARK: -

    /// A struct to store the RGBA components of a `UIColor` instance.
    public struct RGBAComponents
    {
        public let red: CGFloat
        public let green: CGFloat
        public let blue: CGFloat
        public let alpha: CGFloat
    }

    /// Returns the RGBA components of `self`.
    ///
    /// - Returns: the RGBA components of `self`.
    ///
    /// - Throws: `ColorError.invalidColorSpace` if somehow
    ///           the RGBA components can't be extracted from `self` (this
    ///           should never happen on iOS but...)
    public func rgbaComponents() throws -> RGBAComponents
    {
        var r: CGFloat = 0; var g: CGFloat = 0;
        var b: CGFloat = 0; var a: CGFloat = 0
        let success = getRed(&r, green: &g, blue: &b, alpha: &a)
        guard success else { throw ColorError.invalidColorSpace }
        return RGBAComponents(red: r, green: g, blue: b, alpha: a)
    }

    // MARK: -

    /// A struct to store the HSBA components of a `UIColor` instance.
    public struct HSBAComponents
    {
        public let hue: CGFloat
        public let saturation: CGFloat
        public let brightness: CGFloat
        public let alpha: CGFloat
    }

    /// Returns the HSBA components of `self`.
    ///
    /// - Returns: the HSBA components of `self`.
    ///
    /// - Throws: `Error.invalidColorSpace` if somehow
    ///           the HSBA components can't be extracted from `self` (this
    ///           should never happen on iOS but...)
    public func hsbaComponents() throws -> HSBAComponents
    {
        var h: CGFloat = 0; var s: CGFloat = 0;
        var b: CGFloat = 0; var a: CGFloat = 0
        let success = getHue(&h, saturation: &s, brightness: &b, alpha: &a)
        guard success else { throw ColorError.invalidColorSpace }
        return HSBAComponents(hue: h, saturation: s, brightness: b, alpha: a)
    }

    // MARK: -

    /// A struct to store the white and alpha components of a `UIColor` instance
    /// in the grayscale color space.
    public struct WhiteAlphaComponents
    {
        public let white: CGFloat
        public let alpha: CGFloat
    }

    /// Returns the white and alpha components of `self`.
    ///
    /// - Returns: the white and alpha components of `self`.
    ///
    /// - Throws: `ColorError.invalidColorSpace` if somehow
    ///           the white and alpha components can't be extracted from `self` (this
    ///           should never happen on iOS but...)
    public func whiteAlphaComponents() throws -> WhiteAlphaComponents
    {
        var w: CGFloat = 0; var a: CGFloat = 0
        let success = getWhite(&w, alpha: &a)
        guard success else { throw ColorError.invalidColorSpace }

        return WhiteAlphaComponents(white: w, alpha: a)
    }

    // MARK: -

    /// Returns the hexadecimal representation of an RGBA color, as a string,
    /// **excluding** its `alpha` component.
    ///
    /// - Returns: the hexadecimal representation of `self`, as a string,
    ///            **excluding** its `alpha` component.
    ///
    /// - Throws: `ColorError.invalidColorSpace` if somehow
    ///           the RGBA components can't be extracted from `self` (this
    ///           should never happen on iOS but...)
    ///
    /// - SeeAlso: hexValueWithAlpha()
    public func hexValue() throws -> String
    {
        let rgba = try rgbaComponents()
        return [rgba.red, rgba.green, rgba.blue]
            .map { Int(255 * $0) }
            .map { String(format:"%02X", $0) }
            .reduce("", +)
    }

    /// Returns the hexadecimal representation of an RGBA color, as a string,
    /// **including** its `alpha` component.
    ///
    /// - Returns: the hexadecimal representation of `self`, as a string,
    ///            **including** its `alpha` component.
    ///
    /// - Throws: `ColorError.invalidColorSpace` if somehow
    ///           the RGBA components can't be extracted from `self` (this
    ///           should never happen on iOS but...)
    ///
    /// - SeeAlso: hexValue()
    public func hexValueWithAlpha() throws -> String
    {
        let rgba = try rgbaComponents()
        return [rgba.red, rgba.green, rgba.blue, rgba.alpha]
            .map { Int(255 * $0) }
            .map { String(format:"%02X", $0) }
            .reduce("", +)
    }

    // MARK: -

    /// Returns an approximate value for the **luminance** of an RGB color,
    /// based on the quadratic expression:
    ///
    /// `L = 0.2126 * red * red + 0.7152 * green * green + 0.0722 * blue * blue`
    ///
    /// where `(red, green, blue)`, and `L` as well, are all in the range `[0, 1]`.
    ///
    /// See:
    /// http://gamedev.stackexchange.com/questions/38536/given-a-rgb-color-x-how-to-find-the-most-contrasting-color-y
    ///
    /// - Parameters:
    ///   - red:   the red   component of `self`, in the range [0,1].
    ///   - green: the green component of `self`, in the range [0,1].
    ///   - blue:  the blue  component of `self`, in the range [0,1].
    ///
    /// - Returns: an approximate value for the **luminance** of a color with the
    ///            given RGB values.
    ///
    /// - Throws: `ColorError.invalidColorSpace` if somehow
    ///           the RGBA components can't be extracted from `self` (this
    ///           should never happen on iOS but...)
    public static func quadraticLuma(red: CGFloat,
                                     green: CGFloat,
                                     blue: CGFloat) throws -> CGFloat
    {
        let rsq = red * red
        let gsq = green * green
        let bsq = blue * blue
        return (0.2126 * rsq + 0.7152 * gsq + 0.0722 * bsq)
    }

    /// Returns an approximate value for the **luminance** of an RGB color,
    /// based on the quadratic expression:
    ///
    /// `L = 0.2126 * red * red + 0.7152 * green * green + 0.0722 * blue * blue`
    ///
    /// where `(red, green, blue)`, and `L` as well, are all in the range `[0, 1]`.
    ///
    /// See:
    /// http://gamedev.stackexchange.com/questions/38536/given-a-rgb-color-x-how-to-find-the-most-contrasting-color-y
    ///
    /// - Returns: an approximate value for the **luminance** of `self`.
    ///
    /// - Throws: `ColorError.invalidColorSpace` if somehow
    ///           the RGBA components can't be extracted from `self` (this
    ///           should never happen on iOS but...)
    public func quadraticLuma() throws -> CGFloat
    {
        let rgba = try rgbaComponents()
        return try UIColor.quadraticLuma(red: rgba.red,
                                         green: rgba.green,
                                         blue: rgba.blue)
    }

    // MARK: -

    /// Returns a color that contrasts well with `self`.
    ///
    /// See:
    /// http://gamedev.stackexchange.com/questions/38536/given-a-rgb-color-x-how-to-find-the-most-contrasting-color-y
    ///
    /// - Parameters:
    ///
    ///   - continuous: when `true`, the resulting color is some shade of gray ranging
    ///                 from white to black; when `false`, the resulting color is either
    ///                 white or black, depending on a luminance threshold. The default
    ///                 behaviour is to result in a continuous shade of gray.
    ///
    ///   - threshold: ignored when `continuous` is set to `true`, otherwise used to
    ///                decide whether the resulting color is white or black. The result
    ///                is black when `self` has a luminance larger than this threshold,
    ///                else the result if white. The default threshold value is 0.2.
    ///
    ///   - sameAlpha: when `true`, the resulting color has the same `alpha` component
    ///                as `self`, otherwise it has `alpha` equal to 1. The default is
    ///                `false` so the resulting color has `alpha` equal to 1.
    ///
    /// - Returns: a color that contrasts well with `self`.
    ///
    /// - Throws: `ColorError.invalidColorSpace` if somehow
    ///           the RGBA components can't be extracted from `self` (this
    ///           should never happen on iOS but...)
    public func contrastingColor(continuous: Bool = true,
                                 threshold: CGFloat = 0.2,
                                 sameAlpha: Bool = false) throws -> UIColor
    {
        let rgba = try rgbaComponents()
        let luma = try UIColor.quadraticLuma(red: rgba.red,
                                             green: rgba.green,
                                             blue: rgba.blue)
        let a: CGFloat = (sameAlpha ? rgba.alpha : 1)
        if continuous
        { return UIColor(white: 1 - luma, alpha: a) }
        else
        {
            return (luma > threshold ?
                UIColor.black.withAlphaComponent(a) :
                UIColor.white.withAlphaComponent(a))
        }
    }

    // MARK: - Private API

    /// Returns a uniformly-distributed pseudo-random value in the
    /// **closed** interval [0, 1].
    fileprivate static var random01: CGFloat
    { return CGFloat(arc4random_uniform(UInt32.max)) / CGFloat(UInt32.max - 1) }
}

