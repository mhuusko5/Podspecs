Pod::Spec.new do |s|
  s.name         = "Firebase"
  s.version      = "2.3.3"
  s.summary      = "The Firebase Cocoa framework for adding realtime data synchronization to your app."
  s.homepage     = "https://www.firebase.com/"
  s.license      = { :type => 'Commercial', :text => 'https://www.firebase.com/terms/terms-of-service.html' }
  s.author       = { "Firebase" => "support@firebase.com" }
  
  s.source       = { :http => "https://cdn.firebase.com/ObjC/Firebase.framework-2.3.3.zip" }
  
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.7'
  
  s.requires_arc = true
  
  s.framework    = 'CFNetwork', 'Security', 'SystemConfiguration'
  s.library      = 'icucore', 'c++'
  
  s.vendored_frameworks = 'Firebase.framework'
end
