# WTUIColorExtensions

## 1.1.0

- `whiteAlphaComponents()` no longer throws when the RBG components aren't equal to each other. 
- Added `hexValue()` and `hexValueWithAlpha()` for finding the hex representation of a color.
- Added `quadraticLuma()` and `quadraticLuma(red: CGFloat, green: CGFloat, blue: CGFloat)` for
    obtaining the value of a color's luminance, using a quadratic approximation'.
- Added `contrastingColor(continuous: Bool, threshold: CGFloat, sameAlpha: Bool)` to find the
    most contrasting color to a given color.

## 1.0.2

- Aligns versioning with other of my libraries.

## 1.0.1

- Adds this changelog file but no other functional changes.

## 1.0.0

- Initial release.
