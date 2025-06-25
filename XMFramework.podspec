
Pod::Spec.new do |s|
  s.name             = 'XMFramework'
  s.version          = '1.0.0'
  s.summary          = 'A brief description of XMFramework'
  s.description      = <<-DESC
    MyFramework is a custom iOS library with reusable components.
  DESC
  s.homepage         = 'https://github.com/Wxm510846302/XMFramework'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'XM@Wxm510846302.git.com' }
  s.source           = { :git => 'https://github.com/Wxm510846302/XMFramework.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.source_files     = 'XMFramework/**/*.{swift,h,m}'
  s.swift_version    = '5.0'

  # 如果使用 Swift 的 module，则不需要下面这项
  # s.public_header_files = 'XMFramework/**/*.h'
end
