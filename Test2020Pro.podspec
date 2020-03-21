#
# Be sure to run `pod lib lint Test2020Pro.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Test2020Pro'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Test2020Pro.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Test2020Pro 123456vfd 的反馈
                       DESC

  s.homepage         = 'https://github.com/yuechangfeng/Test2020'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '1640896090@qq.com' => 'yuecf@bsoft.com.cn' }
  s.source           = { :git => 'https://github.com/yuechangfeng/Test2020.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Test2020Pro/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Test2020Pro' => ['Test2020Pro/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
