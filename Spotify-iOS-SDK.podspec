Pod::Spec.new do |s|
  s.name = 'Spotify-iOS-SDK'
  s.module_name = 'Spotify'
  s.summary = 'The new Spotify iOS SDK.'
  s.version = '0.16.0'
  s.source = { :http => 'https://github.com/spotify/ios-sdk/releases/download/beta-16/ios-sdk-deploy-beta-16.zip' }

  s.license = { :type => 'Proprietary', :text => 'https://developer.spotify.com/developer-terms-of-use/' }
  s.author = { 'Spotify' => 'https://developer.spotify.com/' }
  s.homepage = 'https://developer.spotify.com/technologies/spotify-ios-sdk/'

  s.platform = :ios
  s.ios.deployment_target = '7.1'

  s.requires_arc = true
  s.framework = 'Foundation', 'AVFoundation'

  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '$(inherited) -ObjC'
  }

  s.preserve_paths = 'ios-sdk-deploy-beta-16/Spotify.framework/Spotify'
  s.prepare_command = 'touch Empty.m && cp ios-sdk-deploy-beta-16/Spotify.framework/Spotify libSpotify.a && cp ios-sdk-deploy-beta-16/Spotify.framework/Headers/* .'

  s.source_files = 'Empty.m', '*.h'
  s.public_header_files = '*.h'

  s.vendored_libraries = 'libSpotify.a'
end
