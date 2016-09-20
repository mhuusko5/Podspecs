Pod::Spec.new do |s|
  s.name = 'ReactiveObjCBridge'
  s.version = '1.0.0-alpha.1'

  s.summary = 'Bridge between ReactiveObjC and ReactiveSwift.'
  s.description = <<-EOS
    After announced Swift, ReactiveCocoa was rewritten in Swift. This framework creates a bridge between those Swift and Objective-C APIs (ReactiveSwift and ReactiveObjC).

    Because the APIs are based on fundamentally different designs, the conversion is not always one-to-one; however, every attempt has been made to faithfully translate the concepts between the two APIs (and languages).
  EOS

  s.author = 'ReactiveCocoa'
  s.homepage = 'https://github.com/ReactiveCocoa/ReactiveObjCBridge'
  s.license = { :type => 'MIT', :file => 'LICENSE.md' }
  
  s.source = {
    :git => 'https://github.com/ReactiveCocoa/ReactiveObjCBridge.git',
    :commit => '738bfb0c0b0afd8ea8949ef4412ff9b8cd1cc1ca'
    # :tag => 'v#{s.version}'
  }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  
  s.framework = 'Foundation'

  s.dependency 'ReactiveSwift', '~> 1.0.0-alpha.1'
  s.dependency 'ReactiveObjC', '~> 1.0.0-alpha.1'

  s.source_files = 'ReactiveObjCBridge/*.{swift,h,m}'
end