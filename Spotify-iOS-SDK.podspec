Pod::Spec.new do |s|
  	s.name = 'Spotify-iOS-SDK'
	s.module_name = 'Spotify'
  	s.version = '0.10.0'

	s.summary = 'The new Spotify iOS SDK.'
  	s.license = { :type => 'proprietary', :text => 'https://developer.spotify.com/developer-terms-of-use/' }
  	s.author = { "Daniel Kennett" => "http://ikennd.ac/" }
  	s.homepage = 'https://developer.spotify.com/technologies/spotify-ios-sdk/'
	
  	s.source = { :http => 'https://github.com/spotify/ios-sdk/archive/beta-10.zip' }
 
  	s.platform = :ios
  
  	s.ios.deployment_target = '7.0'
 
	s.requires_arc = true
  
	s.framework = 'AVFoundation'
	
	s.vendored_frameworks = 'ios-sdk-beta-10/Spotify.framework'
end