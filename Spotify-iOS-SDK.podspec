Pod::Spec.new do |s|
  	s.name = 'Spotify-iOS-SDK'
	s.module_name = 'Spotify'
  	s.version = '0.10.1'

	s.summary = 'The new Spotify iOS SDK.'
  	s.license = { :type => 'proprietary', :text => 'https://developer.spotify.com/developer-terms-of-use/' }
  	s.author = { "Daniel Kennett" => "http://ikennd.ac/" }
  	s.homepage = 'https://developer.spotify.com/technologies/spotify-ios-sdk/'
	
  	s.source = { :git => 'https://github.com/mhuusko5/Spotify-iOS-SDK', :tag => s.version.to_s }
 
  	s.platform = :ios
  
  	s.ios.deployment_target = '7.0'
 
	s.requires_arc = true
  
	s.framework = 'AVFoundation'
	
	s.vendored_frameworks = 'Spotify.framework'
end
