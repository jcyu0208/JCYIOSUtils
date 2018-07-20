Pod::Spec.new do |s|
s.name             = 'JCYIOSUtils'
s.version          = '0.1.0'
s.summary          = 'Personal utilties for development'

s.description      = <<-DESC
Utilities for iOS. Includes Rx and UIKit extensions
DESC

s.homepage         = 'https://gitlab.com/jcyu0208/JCYIOSUtils.git'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Juan Carlos Yu' => 'yu.juancarlos@gmail.com' }
s.source           = { :git => 'https://gitlab.com/jcyu0208/JCYIOSUtils.git', :tag => 'v0.1.2' }

s.dependency        'RxSwift',    '~> 4.0'
s.dependency        'RxCocoa',    '~> 4.0'

s.ios.deployment_target = '10.0'
s.source_files = 'Utilities/*'
s.swift_version = '3.2'

end
