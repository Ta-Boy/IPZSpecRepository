#
# Be sure to run `pod lib lint IPZBasePublic.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IPZBasePublic'
  s.version          = '0.5.0'
  s.summary          = '伊品众通用组件库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Ta-Boy/IPZBasePublic'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tangmingit@163.com' => 'tangming@ipzoe.com' }
  s.source           = { :git => 'https://github.com/Ta-Boy/IPZBasePublic.git', :tag => s.version.to_s }
  s.swift_versions   = ['5.0']

  s.pod_target_xcconfig = {
      'VALID_ARCHS[sdk=iphonesimulator*]' => '',
      'OTHER_LDFLAGS' => '-all_load'
  }
  
  s.ios.deployment_target = '10.0'
  
  s.subspec 'Category' do |ss|
      ss.source_files = 'IPZBasePublic/Classes/Category/*'
      ss.dependency 'GPUImage'
      ss.dependency 'MJRefresh'
      ss.dependency 'Texture'
      ss.dependency 'RxSwift'
      ss.dependency 'RxCocoa'
  end

  s.subspec 'Controller' do |ss|
      ss.dependency 'Texture'
      ss.dependency 'Then'
      ss.dependency 'QMUIKit'
      ss.dependency 'SnapKit'
      ss.dependency 'IPZBasePublic/View'
      ss.source_files = 'IPZBasePublic/Classes/Controller/*'
  end

  s.subspec 'Define' do |ss|
      ss.source_files = 'IPZBasePublic/Classes/Define/*'
      ss.dependency 'QMUIKit'
      ss.dependency 'IPZBasePublic/Category'
  end

  s.subspec 'Model' do |ss|
      ss.source_files = 'IPZBasePublic/Classes/Model/*'
      ss.dependency 'ObjectMapper'
      ss.dependency 'SwiftyJSON'
  end

  s.subspec 'Util' do |ss|
      ss.source_files = 'IPZBasePublic/Classes/Util/*'
      ss.dependency 'RxSwift'
      ss.dependency 'RxCocoa'
      ss.dependency 'RxAlamofire'
      ss.dependency 'Alamofire'
      ss.dependency 'IPZBasePublic/Model'
      ss.dependency 'IPZBasePublic/Define'
  end

  s.subspec 'View' do |ss|
      ss.source_files = 'IPZBasePublic/Classes/View/*'
      ss.dependency 'Then'
      ss.dependency 'SnapKit'
      ss.dependency 'Kingfisher'
      ss.dependency 'FLAnimatedImage'
      ss.dependency 'QMUIKit'
      ss.dependency 'IPZBasePublic/Category'
      ss.dependency 'IPZBasePublic/Define'
      ss.dependency 'IPZBasePublic/Model'
      ss.dependency 'IPZBasePublic/Util'
  end
  
  s.resource_bundles = {
    'IPZBasePublic' => ['IPZBasePublic/Assets/*.png']
  }
  
end
