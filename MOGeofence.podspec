Pod::Spec.new do |s|

  s.name         = 'MOGeofence'
  s.version      = '2.0.0'
  s.summary      = 'MoEngage SDK for Geofence based campaigns in iOS'
  s.description  = <<-DESC
                   MOGeofence framework helps you to trigger notifications based on the exit/entry of geofences. This framework makes use of the Region Monitoring service of CoreLocation to achieve the same.
                   DESC

  s.homepage     = 'http://www.moengage.com'
  s.documentation_url = 'https://docs.moengage.com/docs/geofences'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'Chengappa C D' => 'chengappa@moengage.com' }
  s.social_media_url   = 'https://twitter.com/moengage'
  s.platform     = :ios
  s.ios.deployment_target = '9.0'

  s.source       = { 
    :git => 'https://github.com/moengage/MoEngage-iOS-SDK.git', 
    :tag => 'geofence-' + s.version.to_s 
  }

  s.ios.vendored_frameworks = 'Frameworks/MoEngageGeofence/MOGeofence.framework'
  s.preserve_paths = 'Frameworks/MoEngageGeofence/MOGeofence.framework'
  s.module_map = 'Frameworks/MoEngageGeofence/MOGeofence.framework/Modules/module.modulemap'

  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'CoreLocation'
  s.dependency 'MoEngage-iOS-SDK', '~> 6.0.0'
end
