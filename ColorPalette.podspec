#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "ColorPalette"
  s.version          = "0.1.0"
  s.summary          = "Allows colors to be defined and managed outside of code."
  s.description      = <<-DESC
                       ColorPalette gets the colors out of your code.

                       * Define your colors in a palette file.
                       * Use your colors anywhere by name.
                       DESC
  s.homepage         = "https://github.com/chrisjeane/ColorPalette"
  s.license          = 'MIT'
  s.author           = { "Chris Jeane" => "chrisjeane@gmail.com" }
  s.source           = { :git => "https://github.com/chrisjeane/ColorPalette.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/chrisjeane'
  s.platform     = :ios, '5.0'
  s.ios.deployment_target = '5.0'
  s.requires_arc = true

  s.source_files = 'Classes/ios/*.{h,m}'
  
  s.public_header_files = 'Classes/ios/ColorPalette.h'
  s.dependency 'YAML-Framework', '~> 0.0.2'
end
