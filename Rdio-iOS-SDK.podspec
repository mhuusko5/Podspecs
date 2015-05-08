Pod::Spec.new do |s|
  	s.name = 'Rdio-iOS-SDK'
	s.summary = 'Newest Rdio iOS SDK.'
  	s.version = '1.0.1'
  	s.license = { :type => 'proprietary', :text => 'http://www.rdio.com/developers/api-terms-of-use/' }
  	s.author = { "Rdio" => "http://www.rdio.com/developers/" }
  	s.homepage = 'http://www.rdio.com/'
	
  	s.source = { :http => 'http://www.rdio.com/media/static/developer/ios/rdio-ios.tar.gz' }

  	s.platform = :ios
  
  	s.ios.deployment_target = '7.0'

	s.requires_arc = true
  
	s.frameworks = 'AVFoundation', 'CoreGraphics', 'CFNetwork', 'CoreMedia', 'SystemConfiguration', 'AudioToolbox', 'Security'
	
	s.compiler_flags = '-ObjC', '-all_load'
	
	s.vendored_frameworks = 'Rdio.framework'
end