#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "ColorPalette"
  s.version          = "0.1.0"
  s.summary          = "A short description of ColorPalette."
  s.description      = <<-DESC
                       An optional longer description of ColorPalette

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "http://EXAMPLE/NAME"
  s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Chris Jeane" => "chrisjeane@gmail.com" }
  s.source           = { :git => "https://github.com/chrisjeane/ColorPalette.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/chrisjeane'
  s.platform     = :ios, '5.0'
  s.ios.deployment_target = '5.0'
  s.requires_arc = true

  s.source_files = 'Classes/**/*.{h,m}'

  s.ios.exclude_files = 'Classes/osx'
  # s.public_header_files = 'Classes/**/*.h'
  s.dependency 'YAML-Framework', '~> 0.0.2'
end
