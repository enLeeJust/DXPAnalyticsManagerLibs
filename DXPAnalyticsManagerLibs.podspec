#
# Be sure to run `pod lib lint DXPAnalyticsManagerLibs.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DXPAnalyticsManagerLibs'
  s.version          = '0.1.1'
  s.summary          = '埋点SDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://gitlab.digchan.info/dxpsdk/dxpanalyticsmanagerlibs'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '0027014725' => 'li.en@iwhalecloud.com' }
  s.source           = { :git => 'http://gitlab.digchan.info/dxpsdk/dxpanalyticsmanagerlibs', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  #s.source_files = 'DXPAnalyticsManagerLibs/Classes/**/*'
  s.static_framework = true
  # s.resource_bundles = {
  #   'DXPAnalyticsManagerLibs' => ['DXPAnalyticsManagerLibs/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

s.subspec 'DXPAnalyticsManager' do |dxpManage|
        dxpManage.source_files = 'DXPAnalyticsManagerLibs/Classes/DXPAnalyticsManager/**/*'
    end

   s.subspec 'DXPSensorsLib' do |dcSensor|
        dcSensor.source_files = 'DXPAnalyticsManagerLibs/Classes/DXPSensorsLib/**/*'
        dcSensor.dependency 'SensorsAnalyticsSDK/Core','~> 4.2.5'
   	dcSensor.dependency 'SensorsAnalyticsSDK/Exception','~> 4.2.5'
    end

   s.subspec 'DXPGoogleAnalyticsLib' do |dcGoogleAnalytic|
        dcGoogleAnalytic.source_files = 'DXPAnalyticsManagerLibs/Classes/DXPGoogleAnalyticsLib/**/*'
   	dcGoogleAnalytic.dependency 'Firebase/Analytics'
    end

end
