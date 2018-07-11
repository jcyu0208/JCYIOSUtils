Pod::Spec.new do |s|
s.name             = 'JcyIosUtilities'
s.version          = '0.2.0'
s.summary          = 'Personal utilties for development'

s.description      = <<-DESC
Utilities for iOS. Includes Rx and UIKit extensions
DESC

s.homepage         = 'https://github.com/jcyu0208/ios-utilities'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Juan Carlos Yu' => 'yu.juancarlos@gmail.com' }
s.source           = { :git => 'https://github.com/jcyu0208/ios-utilities.git', :tag => 'v0.1.0' }

s.dependency        'RxSwift',    '~> 4.0'
s.dependency        'RxCocoa',    '~> 4.0'

s.ios.deployment_target = '10.0'
s.source_files = 'Utilities/*'
s.swift_version = '3.2'

end
