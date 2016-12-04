#
# Be sure to run `pod lib lint WTUIColorExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WTUIColorExtensions'
  s.version          = '1.0.0'
  s.summary          = 'WTUIColorExtensions adds methods to generate pseudo-random colors, and more.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    WTUIColorExtensions adds methods to generate pseudo-random colors and methods to
    extract the color components of a color instance in a more direct way than the
    default API does.
                       DESC

  s.homepage         = 'https://github.com/wltrup/iOS-Swift-WTUIColorExtensions'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Wagner Truppel' => 'trupwl@gmail.com' }
  s.source           = { :git => 'https://github.com/wltrup/iOS-Swift-WTUIColorExtensions.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'WTUIColorExtensions/Classes/**/*'
  
  # s.resource_bundles = {
  #   'WTUIColorExtensions' => ['WTUIColorExtensions/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
