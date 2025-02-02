Pod::Spec.new do |s|
  s.name         = "LongdoMapFramework"
  s.version      = "4.1.4"
  s.summary      = "Integrated map tiles from Longdo Map to iOS application."
  s.description  = <<-DESC
 The Framework use map resources from Longdo.COM services yet allow developers to use other map tile standards such as TMS, WMS, and WMTS. The Framework provides most must have features allow developers to show markers on the map with a few lines. It also includes exclusive services such as POI tags but traffic events and traffic camera that aren't available on other map SDK.
                   DESC
  s.homepage     = "https://github.com/MetamediaTechnology/longdo-map-ios-framework"
  s.screenshots  = "https://usermap.longdo.com/ipao/github_host/ss4.png"
  s.documentation_url = "https://github.com/MetamediaTechnology/longdo-map-demo-ios/wiki"
  s.license      = { :type => "Commercial", :file => "LICENSE.md" }
  s.author             = { "Metamedia Technology" => "staff-map@mm.co.th" }
  s.social_media_url   = "https://www.facebook.com/longdocom"
  s.platform     = :ios
  s.ios.deployment_target = '13.0'
  s.source       = { :git => "https://github.com/MetamediaTechnology/longdo-map-ios-framework.git", :tag => "#{s.version}" }
  s.vendored_frameworks = "LongdoMapFramework.xcframework"
  s.swift_version = '5.0'
  s.dependency    "Swifter", "~> 1.5.0"
  

end
