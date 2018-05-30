Pod::Spec.new do |s|

  s.name         = "CLGoogleMap"
  s.version      = "1.0.0"
  s.summary      = "CLGoogleMap for iOS."
  s.homepage     = "https://github.com/CainLuo/CLGoogleMap"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "CainLuo" => "350116542@qq.com" }
  s.source       = { :git => "https://github.com/CainLuo/CLGoogleMap.git", :tag => "#{s.version}" }
  s.source_files = "CLGoogleMap", "CLGoogleMap/**/*.{h,m}"
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.frameworks   = 'UIKit', 'Foundation'

  s.static_framework = true

  s.dependency "CLUIKit"
  s.dependency "GoogleMaps"

end
