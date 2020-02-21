# WTUIColorExtensions

[![CI Status](http://img.shields.io/travis/wltrup/iOS-Swift-WTUIColorExtensions.svg?style=flat)](https://travis-ci.org/wltrup/iOS-Swift-WTUIColorExtensions)
[![Version](https://img.shields.io/cocoapods/v/WTUIColorExtensions.svg?style=flat)](http://cocoapods.org/pods/WTUIColorExtensions)
[![License](https://img.shields.io/cocoapods/l/WTUIColorExtensions.svg?style=flat)](http://cocoapods.org/pods/WTUIColorExtensions)
[![Platform](https://img.shields.io/cocoapods/p/WTUIColorExtensions.svg?style=flat)](http://cocoapods.org/pods/WTUIColorExtensions)

## IMPORTANT
2020.02.21: This project has been **deprecated** and is replaced by [ColorExtensions](https://github.com/wltrup/ColorExtensions).

## What

**WTUIColorExtensions** adds to `UIColor` the ability to generate pseudo-random color instances
and methods to extract color components in a more direct way than using `inout` arguments and
the default `get...` methods. Here's the full set of API additions:

```swift
    public static var randomRGB: UIColor { get }
    public static var randomRGBA: UIColor { get }

    public static var randomHSB: UIColor { get }
    public static var randomHSBA: UIColor { get }

    public static var randomWhite: UIColor { get }
    public static var randomWhiteAlpha: UIColor { get }

    public enum ColorError : Error {
        case invalidColorSpace
    }

    public struct RGBAComponents {
        public let red: CGFloat
        public let green: CGFloat
        public let blue: CGFloat
        public let alpha: CGFloat
    }
    public func rgbaComponents() throws -> RGBAComponents

    public struct HSBAComponents {
        public let hue: CGFloat
        public let saturation: CGFloat
        public let brightness: CGFloat
        public let alpha: CGFloat
    }
    public func hsbaComponents() throws -> HSBAComponents

    public struct WhiteAlphaComponents {
        public let white: CGFloat
        public let alpha: CGFloat
    }
    public func whiteAlphaComponents() throws -> WhiteAlphaComponents

    // NEW in v. 1.1.0
    public func hexValue() throws -> String
    public func hexValueWithAlpha() throws -> String

    // NEW in v. 1.1.0
    public static func quadraticLuma(red: CGFloat, green: CGFloat, blue: CGFloat) throws -> CGFloat
    public func quadraticLuma() throws -> CGFloat

    // NEW in v. 1.1.0
    public func contrastingColor(continuous: Bool, threshold: CGFloat, sameAlpha: Bool) throws -> UIColor
}
```

## Why

Because generating random colors is a common enough need and because having to use `inout`
arguments to extract color components is annoying.

## Tests

**WTUIColorExtensions** adds several extensions, all tested by 26 tests with nearly 95% coverage.
The missing 5% test-coverage is due to the fact that `rgbaComponents()` and `hsbaComponents()`
don't actually `throw` any invalid color space errors on iOS, although in theory they could.
In order to future-proof this library, I've assumed that those methods might fail but I can't
currently test that code path.

## Changelog

Changes to **WTUIColorExtensions** are listed
[here](https://github.com/wltrup/iOS-Swift-WTUIColorExtensions/blob/master/CHANGELOG.md).

## Installation

**WTUIColorExtensions** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "WTUIColorExtensions"
```

## Author

Wagner Truppel, trupwl@gmail.com

## License

**WTUIColorExtensions** is available under the MIT license. See the LICENSE file for more info.
