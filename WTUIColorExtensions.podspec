Pod::Spec.new do |s|
  s.name             = 'WTUIColorExtensions'
  s.version          = '1.1.0'
  s.summary          = 'WTUIColorExtensions adds methods to generate pseudo-random colors, and more.'
  s.description      = <<-DESC
    WTUIColorExtensions adds methods to generate pseudo-random colors, methods to
    extract the color components of a color instance in a more direct way than the
    default API does, methods to obtain the hexadecimal representation of an RGB color,
    methods to obtain the color's luminance, and a method to obtain the most contrasting
    color to a given color.
                       DESC
  s.homepage         = 'https://github.com/wltrup/iOS-Swift-WTUIColorExtensions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Wagner Truppel' => 'trupwl@gmail.com' }
  s.source           = { :git => 'https://github.com/wltrup/iOS-Swift-WTUIColorExtensions.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'WTUIColorExtensions/Classes/**/*'
end
