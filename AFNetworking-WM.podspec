Pod::Spec.new do |s|
  s.name     = 'AFNetworking-WM'
  s.version  = '4.0.2'
  s.license  = 'MIT'
  s.summary  = 'A delightful networking framework for Apple platforms.'
  s.homepage = 'https://github.com/huhwei920/AFNetworking-WM'
  s.social_media_url = 'https://twitter.com/AFNetworking'
  s.authors  = { 'huhangwei' => 'huhangwei@gmail.com' }
  s.source   = { :git => 'https://github.com/huhwei920/AFNetworking-WM.git', :tag => s.version }
  s.platform  = :ios, "9.0"

  s.source_files = 'AFNetworking-WM/AFNetworking.h'

  s.subspec 'Serialization' do |ss|
    ss.source_files = 'AFNetworking-WM/AFURL{Request,Response}Serialization.{h,m}'
  end

  s.subspec 'Security' do |ss|
    ss.source_files = 'AFNetworking-WM/AFSecurityPolicy.{h,m}'
  end

  s.subspec 'Reachability' do |ss|
    ss.source_files = 'AFNetworking-WM/AFNetworkReachabilityManager.{h,m}'
  end

  s.subspec 'NSURLSession' do |ss|
    ss.dependency 'AFNetworking-WM/Serialization'
    ss.dependency 'AFNetworking-WM/Reachability'
    ss.dependency 'AFNetworking-WM/Security'

    ss.source_files = 'AFNetworking-WM/AF{URL,HTTP}SessionManager.{h,m}', 'AFNetworking-WM/AFCompatibilityMacros.h'
  end

  s.subspec 'UIKit' do |ss|
    ss.dependency 'AFNetworking-WM/NSURLSession'

    ss.source_files = 'UIKit+AFNetworking'
  end
  
  s.subspec 'Resources' do |ss|
      ss.source_files = 'Resources/*.xcprivacy'
    end
end
