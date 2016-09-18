Pod::Spec.new do |s|
  s.name = 'ReactiveCocoa'
  s.version = '4.2.2'
  s.summary = 'A framework for composing and transforming streams of values.'
  s.description = <<-EOS
    ReactiveCocoa (RAC) is an Objective-C framework for Functional Reactive Programming.
    It provides APIs for composing and transforming streams of values.
  EOS
  s.homepage = 'https://github.com/ReactiveCocoa/ReactiveCocoa'
  s.license = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author = {"Josh Abernathy" => "josh@github.com"}
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.source = {
    :git => 'https://github.com/ReactiveCocoa/ReactiveCocoa.git',
    :tag => "v#{s.version}"
  }
  s.dependency 'Result', '~> 2.0'
  s.framework = 'Foundation'
  s.private_header_files = [
    '**/*Private.h',
    '**/*EXTRuntimeExtensions.h',
    '**/RACEmpty*.h'
  ]

  s.source_files = 'ReactiveCocoa/**/*.{d,h,m,swift}'

  # This is a little backwards, but it's basically easier to list the files we want to exlude
  # the files we don't want than whitelist the ones we do. Could be room for improvement later.
  s.ios.exclude_files = 'ReactiveCocoa/**/*{AppKit,NSControl,NSText,NSTable}*'
  s.osx.exclude_files = 'ReactiveCocoa/**/*{UIActionSheet,UIAlertView,UIBarButtonItem,UIButton,UICollectionReusableView,UIControl,UIDatePicker,UIGestureRecognizer,UIImagePicker,UIRefreshControl,UISegmentedControl,UISlider,UIStepper,UISwitch,UITableViewCell,UITableViewHeaderFooterView,UIText,MK}*'
  s.tvos.exclude_files = 'ReactiveCocoa/**/*{AppKit,NSControl,NSText,NSTable,UIActionSheet,UIAlertView,UIDatePicker,UIImagePicker,UIRefreshControl,UISlider,UIStepper,UISwitch,MK}*'
  s.watchos.exclude_files = 'ReactiveCocoa/**/*{UIActionSheet,UIAlertView,UIBarButtonItem,UIButton,UICollectionReusableView,UIControl,UIDatePicker,UIGestureRecognizer,UIImagePicker,UIRefreshControl,UISegmentedControl,UISlider,UIStepper,UISwitch,UITableViewCell,UITableViewHeaderFooterView,UIText,MK,AppKit,NSControl,NSText,NSTable,NSURLConnection}*'
end
