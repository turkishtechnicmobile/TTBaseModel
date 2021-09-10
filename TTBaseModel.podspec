# Pod::Spec.new do |spec|

#   spec.name         = "THYTESTFRAMEWORK"
#   spec.version      = "8.0.0"
#   spec.summary      = "A CocoaPods library written in Swift for Turkish Technic's projects."

#   spec.description  = <<-DESC
# DON'T USE IT WITHOUT PERMISSION.
# All rights reserved
# TURKISH AIRLINES
#                    DESC

#   spec.homepage     = "https://gitlab.com/turkishtechnicmobile/thybaseframework/"
#   spec.license      = { :type => "MIT", :file => "LICENSE" }
#   spec.author       = { "hasan kacar" => "hasankacar@thy.com" }

#   spec.ios.deployment_target = "11.0"
#   spec.swift_version = "4.2"

#   spec.source        = { :git => 'https://gitlab.com/turkishtechnicmobile/thybaseframework.git', :tag => "#{spec.version}" }
#   spec.source_files  = "**/*.{h,m,swift}"
#   # spec.resources = "**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

#   spec.dependency 'ObjectMapper', '~> 4.2.0'
#   spec.dependency 'Alamofire', '~>4.9.1'

# end

Pod::Spec.new do |spec|
  spec.name         = 'TTBaseModel'
  spec.version      = '0.0.1'
  spec.authors      = { 
    'Hasan KACAR' => 'hasankacar@thy.com'
  }
  spec.license      = { 
    :type => 'MIT',
    :file => 'LICENSE' 
  }
  spec.homepage     = 'https://github.com/turkishtechnicmobile/TTBaseModel'
  spec.source       = { 
    :git => 'https://github.com/turkishtechnicmobile/TTBaseModel.git', 
    :branch => 'master',
    :tag => spec.version.to_s 
  }
  spec.summary      = 'test case for base frameworks'
  spec.source_files = '**/*.swift', '*.swift'
  spec.swift_versions = '4.2'
  spec.ios.deployment_target = '11.0'
  spec.dependency 'ObjectMapper', '~> 4.2.0'
  spec.dependency 'TTBaseApp', '~> 0.0.1'
end