#
# Be sure to run `pod lib lint Test2020Pro.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Test2020Pro'
  s.version          = '1.0.2'
  s.summary          = 'Test2020Pro summary'
  
  s.description      = <<-DESC
  Test2020Pro -- description
  DESC
  
  s.homepage         = 'https://github.com/yuechangfeng/Test2020'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '1640896090@qq.com' => 'yuecf@bsoft.com.cn' }
  s.source           = { :git => 'https://github.com/yuechangfeng/Test2020.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '9.0'
    
#  s.public_header_files = '**/*.{h}'
  
  s.resource     = 'Test2020Pro/resources/EaseUIResource.bundle'
  
  #YCFDIY
  s.subspec 'YCFDIY' do |sub|
    sub.source_files = 'Test2020Pro/YCFDIY/Classes/**/*.{h,m}'
    sub.resource = 'Test2020Pro/YCFDIY/Resources/NHIMDIYModule.bundle'
    
    sub.vendored_frameworks = 'Test2020Pro/YCFDIY/SDK/JianbaoPay/*.framework'
    
    sub.frameworks = 'CFNetwork', 'SystemConfiguration'
    sub.libraries = 'z', 'xml2'
    
    #sub.dependency 'AlipaySDK-iOS'
    #sub.dependency 'WechatOpenSDK', '= 1.8.6.2'
    #sub.dependency 'Masonry'
    #sub.dependency 'YYModel'
  end
  
  # s.resources =  'Test2020Pro/Test2020Pro/*.json','Test2020Pro/**/*.xib'
  # s.resource_bundles = {
  #   'Test2020Pro' => ['Test2020Pro/Assets/*.png']
  # }
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'
  
end
