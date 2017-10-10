

Pod::Spec.new do |s|
  s.name             = 'OPGFeedbackSDKLite'
  s.version          = '0.1.0'
  s.summary          = 'First version of OPGFeedbackSDKLite.'


  s.description      = <<-DESC
The OnePoint Global Mobile App SDK allows you to build your own research capabilities into mobile applications.
                        DESC

  s.homepage         = 'https://github.com/OnePointGlobal/OPGFeedbackSDKLite'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'manjunath.ramesh@onepointglobal.com' => 'manjunath.ramesh@onepointglobal.com' }
  s.source           = { :git => 'https://github.com/OnePointGlobal/OPGFeedbackSDKLite.git', :tag => s.version.to_s }


  s.ios.deployment_target = '8.0'
  s.ios.vendored_library = 'lib/libOnePointSDK.a'
  s.preserve_paths = 'libOnePointSDK.a'

  s.source_files = "include/OPGSDK/*.h"
  s.public_header_files = "include/OPGSDK/*.h"


    s.resource_bundles = {
     'OPGFeedbackSDKLite' => ['OPGFeedbackSDKLite/Assets/OPGResourceBundle.bundle']
   }
   s.resources = "OPGFeedbackSDKLite/Assets/OPGResourceBundle.bundle"

   s.xcconfig = { 'OTHER_LDFLAGS' => '-lz -ObjC'}
   s.library = 'c++', 'iconv', 'z'
end
