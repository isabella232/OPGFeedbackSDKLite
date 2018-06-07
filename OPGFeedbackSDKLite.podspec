

Pod::Spec.new do |s|
  s.name             = 'OPGFeedbackSDKLite'
  s.version          = '0.1.3'
  s.summary          = 'OPGFeedbackSDKLite is an easy to integrate iOS library for taking mobile surveys.'


  s.description      = <<-DESC
The OnePoint Global Mobile App SDK allows you to build your own research capabilities into mobile applications.
                        DESC

  s.homepage         = 'https://github.com/OnePointGlobal/OPGFeedbackSDKLite'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'manjunath.ramesh@onepointglobal.com' => 'manjunath.ramesh@onepointglobal.com' }
  s.source           = { :git => 'https://github.com/OnePointGlobal/OPGFeedbackSDKLite.git', :tag => s.version.to_s }


  s.ios.deployment_target = '8.0'
  s.ios.vendored_library = 'lib/libOnePointSDK.a'


  s.source_files = "include/OPGSDK/*.h", "include/OPGSDK/Other Supporting Files/*.h"
  s.public_header_files = "include/OPGSDK/*.h", "include/OPGSDK/Other Supporting Files/*.h"


    s.resource_bundles = {
     'OPGFeedbackSDKLite' => ['OPGFeedbackSDKLite/Assets/OPGResourceBundle.bundle']
   }
   s.resources = "OPGFeedbackSDKLite/Assets/OPGResourceBundle.bundle"

   s.xcconfig = { 'OTHER_LDFLAGS' => '-lz -ObjC'}
   s.library = 'c++', 'iconv', 'z'
end
