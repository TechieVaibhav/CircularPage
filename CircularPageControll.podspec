#
# Be sure to run `pod lib lint CircularPageControll.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    
  s.name             = 'CircularPageControll'
  s.version          = '1.0.4'
  s.summary       = 'This is a circular page controll which implemented by UIPageControll.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'This is a circular page controll which implemented by UIPageControll.'
                       DESC

  s.homepage         = 'https://github.com/TechieVaibhav/CircularPage'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'vaibhav' => 'vaibhav.sharma.jp@gmail.com' }
  s.source           = { :git => 'https://github.com/TechieVaibhav/CircularPage.git',   :tag => s.version.to_s ,:branch => "master"}
  s.swift_versions = '4.2'
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.requires_arc = true
  s.ios.deployment_target = '9.0'
  #s.source_files = 'ARCKit/Classes/*'
  s.source_files = 'Source/*.swift'
  
  #:commit => "2c9000e0572e2de6314580268b0a884dabcc16f9",
  
  # s.resource_bundles = {
  #   'CircularPageControll' => ['CircularPageControll/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
