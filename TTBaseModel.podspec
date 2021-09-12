Pod::Spec.new do |spec|
  spec.name         = 'TTBaseModel'
  spec.version      = '0.0.2'
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
spec.summary      = 'Base application frameworks for Turkish Technic\'s Applications. Don\'t use it without permission.'
  spec.source_files = '**/*.swift', '*.swift'
  spec.swift_versions = '4.2'
  spec.ios.deployment_target = '11.0'
  
  spec.dependency 'ObjectMapper', '~> 4.2.0'
  spec.dependency 'TTBaseApp'
end