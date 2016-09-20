Pod::Spec.new do |s|
  s.name = 'ReactiveSwift'
  s.version = '1.0.0-alpha.1'

  s.summary = 'A framework for composing and transforming streams of values over time.'
  s.description = 'ReactiveSwift is a Swift framework inspired by Functional Reactive Programming. It provides APIs for composing and transforming streams of values over time.'

  s.author = 'ReactiveCocoa'
  s.homepage = 'https://github.com/ReactiveCocoa/ReactiveSwift'
  s.license = { :type => 'MIT', :file => 'LICENSE.md' }
  
  s.source = {
    :git => 'https://github.com/ReactiveCocoa/ReactiveSwift.git',
    :commit => '1dc7eb74f7c807fe0c85c9cd2130acedbc5f1765'
    # :tag => 'v#{s.version}'
  }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.dependency 'Result', '~> 3.0'

  s.source_files = 'Sources/*.swift'
end