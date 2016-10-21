Pod::Spec.new do |s|
  s.name = 'Spotify-iOS-SDK'
  s.module_name = 'Spotify'
  s.summary = 'The new Spotify iOS SDK.'
  s.version = '0.24.1'
  s.source = { :http => 'https://github.com/spotify/ios-sdk/archive/beta-24.zip' }

  s.license = { :type => 'Proprietary', :text => 'https://developer.spotify.com/developer-terms-of-use/' }
  s.author = { 'Spotify' => 'https://developer.spotify.com/' }
  s.homepage = 'https://developer.spotify.com/technologies/spotify-ios-sdk/'

  s.platform = :ios
  s.ios.deployment_target = '7.1'

  s.requires_arc = true
  s.framework = 'Foundation', 'AVFoundation'

  s.pod_target_xcconfig = {
  	'ENABLE_BITCODE' => 'NO',
    'OTHER_LDFLAGS' => '$(inherited) -ObjC'
  }

  s.user_target_xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '$(inherited) "$(PODS_ROOT)/Spotify-iOS-SDK"'
  }

  s.preserve_paths = 'ios-sdk-beta-24/SpotifyAudioPlayback.framework/SpotifyAudioPlayback', 'ios-sdk-beta-24/SpotifyAuthentication.framework/SpotifyAuthentication', 'ios-sdk-beta-24/SpotifyMetadata.framework/SpotifyMetadata'
  s.prepare_command = "touch Empty.m && cp ios-sdk-beta-24/SpotifyAudioPlayback.framework/SpotifyAudioPlayback libSpotifyAudioPlayback.a && cp ios-sdk-beta-24/SpotifyAudioPlayback.framework/Headers/* ./ && sed -i '' 's@<SpotifyAudioPlayback/@<Spotify/@g' *.h && cp ios-sdk-beta-24/SpotifyAuthentication.framework/SpotifyAuthentication libSpotifyAuthentication.a && cp ios-sdk-beta-24/SpotifyAuthentication.framework/Headers/* ./ && sed -i '' 's@<SpotifyAuthentication/@<Spotify/@g' *.h && cp ios-sdk-beta-24/SpotifyMetadata.framework/SpotifyMetadata libSpotifyMetadata.a && cp ios-sdk-beta-24/SpotifyMetadata.framework/Headers/* ./ && sed -i '' 's@<SpotifyMetadata/@<Spotify/@g' *.h"

  s.source_files = 'Empty.m', '*.h'
  s.public_header_files = '*.h'

  s.subspec 'Metadata' do |ss|
    ss.vendored_libraries = 'libSpotifyMetadata.a'
  end

  s.subspec 'Authentication' do |ss|
    ss.vendored_libraries = 'libSpotifyAuthentication.a'
  end

  s.subspec 'Playback' do |ss|
    ss.vendored_libraries = 'libSpotifyAudioPlayback.a'
  end

  s.default_subspecs = 'Metadata', 'Authentication', 'Playback'
end
