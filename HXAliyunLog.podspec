#
# Be sure to run `pod lib lint HXAliyunLog.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HXAliyunLog'
  s.version          = '0.1.0'
  s.summary          = 'A short description of HXAliyunLog.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'git@github.com:fcg3579112/HXAliyunLog'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '冯传高' => 'fengchuangao@huixuanjiasu.com' }
  s.source           = { :git => 'git@github.com:fcg3579112/HXAliyunLog.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'HXAliyunLog/Classes/**/*.{h,m,c,swift}'
  
  # s.resource_bundles = {
  #   'HXAliyunLog' => ['HXAliyunLog/Assets/*.png']
  # }

  s.library = 'sqlite3'
  s.requires_arc = true
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation'
  s.dependency 'FMDB', '~> 2.7.5'
  s.swift_version = '5.0'
end
