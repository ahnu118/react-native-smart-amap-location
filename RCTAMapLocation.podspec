Pod::Spec.new do |s|


require 'json'
pjson = JSON.parse(File.read('package.json'))

  s.name            ="RCTAMapLocation"
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/ahnu118/react-native-smart-amap-location"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "ahnu118" => "596090355@qq.com" }
  s.ios.deployment_target = '8.0'
  s.source          = { :git => "https://github.com/ahnu118/react-native-smart-amap-location.git", :tag => "v#{s.version}" }
  s.source_files    = 'ios/RCTAMapLocation/RCTAMapLocation/*.{h,m}'
  s.preserve_paths  = "**/*.js"

  s.dependency 'React/Core'

end