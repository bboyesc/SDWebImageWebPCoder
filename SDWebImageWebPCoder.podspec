Pod::Spec.new do |s|
  s.name             = 'SDWebImageWebPCoder'
  s.version          = '0.14.6'
  s.summary          = 'WebP decoder/encoder for SDWebImage coder plugin.'

  s.description      = <<-DESC
This is a SDWebImage coder plugin to support WebP image.
                       DESC

  s.homepage         = 'https://github.com/SDWebImage/SDWebImageWebPCoder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bogdan Poplauschi' => 'bpoplauschi@gmail.com' }
  s.source           = { :git => 'https://github.com/SDWebImage/SDWebImageWebPCoder.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.module_map = 'SDWebImageWebPCoder/Module/SDWebImageWebPCoder.modulemap'
  
  s.source_files = 'SDWebImageWebPCoder/Classes/**/*', 'SDWebImageWebPCoder/Private/*.h', 'SDWebImageWebPCoder/Module/SDWebImageWebPCoder.h'
  s.private_header_files = 'SDWebImageWebPCoder/Private/*.h'
  s.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) SD_WEBP=1'
  }
  s.watchos.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) SD_WEBP=1 WEBP_USE_INTRINSICS=1'
  }
  s.pod_target_xcconfig = {
    'USER_HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/libwebp/src'
  }
  s.framework = 'CoreGraphics'
  s.dependency 'SDWebImage/Core', '~> 5.19.0'
  s.dependency 'libwebp','~> 1.3.2'
  
end
