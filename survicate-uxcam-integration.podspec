#
# Be sure to run `pod lib lint survicate-uxcam-integration.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'survicate-uxcam-integration'
  s.version          = '1.0.0'
  s.summary          = 'Survicate UXCam Integration'
  s.description      = <<-DESC
  A thin library designed for seamless integration between Survicate and UXCam on iOS. It automatically sends survey answers coming from Survicate SDK as UXCam events that can be previewed directly in the UXCam panel.
                       DESC
  s.ios.deployment_target = '12.0'
  s.swift_version     = '5.6'
  s.homepage          	= "https://survicate.com"
  s.author            	= { "Survicate" => "hello@survicate.com" }
  s.source_files        = 'Sources/survicate-uxcam-integration/*'
  s.source              = { :git => 'https://github.com/Survicate/survicate-uxcam-integration-ios.git', :tag => '1.0.0' }

  s.dependency 'UXCam'
  s.dependency 'Survicate', '>= 4.1.0'
end
