Pod::Spec.new do |spec|
  spec.name = 'Refract'
  spec.version = '0.1.0'
  spec.summary = 'A library for interacting with Refract elements.'
  spec.homepage = 'https://github.com/kylef/Refract.swift'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { 'Kyle Fuller' => 'kyle@fuller.li' }
  spec.social_media_url = 'https://twitter.com/kylefuller'
  spec.source = { :git => 'https://github.com/kylef/Refract.swift.git', :tag => "#{spec.version}" }
  spec.source_files = 'Refract/*.{h,swift}'
  spec.ios.deployment_target = '8.0'
  spec.osx.deployment_target = '10.9'
  spec.requires_arc = true
end

