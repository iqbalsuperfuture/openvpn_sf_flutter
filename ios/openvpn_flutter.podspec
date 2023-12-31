#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint openvpn_sf_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'openvpn_sf_flutter'
  s.version          = '0.0.1'
  s.summary          = 'OpenVPN for flutter'
  s.description      = <<-DESC
OpenVPN for flutter
                       DESC
  s.homepage         = 'http://sf.github.io/home'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'superfuture' => 'sf@superfuture.id' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
