Pod::Spec.new do |s|
  s.name = 'Spotify-iOS-SDK'
  s.module_name = 'Spotify'
  s.summary = 'The new Spotify iOS SDK.'
  s.version = '0.11.1'

  s.license = { :type => 'proprietary', :text => 'https://developer.spotify.com/developer-terms-of-use/' }
  s.author = { 'Spotify' => 'https://developer.spotify.com/' }
  s.homepage = 'https://developer.spotify.com/technologies/spotify-ios-sdk/'

  s.platform = :ios
  s.ios.deployment_target = '7.0'

  s.requires_arc = true
  s.framework = 'Foundation', 'AVFoundation'

  s.pod_target_xcconfig = {
    'ENABLE_BITCODE' => 'NO',
    'OTHER_LDFLAGS' => '$(inherited) -ObjC'
  }

  s.source = { :http => 'https://github.com/spotify/ios-sdk/archive/beta-11.zip' }

  s.preserve_paths = 'ios-sdk-beta-11/Spotify.framework/Spotify'
  s.prepare_command = 'touch Empty.m && cp ios-sdk-beta-11/Spotify.framework/Spotify libSpotify.a && cp ios-sdk-beta-11/Spotify.framework/Headers/* .'

  s.source_files = 'Empty.m', '*.h'
  s.public_header_files = '*.h'

  s.vendored_libraries = 'libSpotify.a'
end
