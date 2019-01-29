#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'firebase_in_app_messaging'
  s.version          = '0.0.1'
  s.summary          = 'Firebase In-App Messaging plugin for Flutter.'
  s.description      = <<-DESC
Firebase In-App Messaging plugin for Flutter.
                       DESC
  s.homepage         = 'https://github.com/daikini/firebase_in_app_messaging'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Jonathan Younger' => 'jonathan@daikini.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.ios.deployment_target = '8.0'
  s.dependency 'Flutter'
  s.dependency 'Firebase/Core'
  s.dependency 'Firebase/InAppMessagingDisplay'
  s.static_framework = true
end