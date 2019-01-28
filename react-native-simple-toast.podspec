require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = package['name']
  s.version          = package['version']
  s.summary          = package['description']
  s.description      = package['description']

  s.homepage         = package['homepage'] || package['repository']['url']
  s.license          = package['license']
  s.author           = package['author']
  s.source           = { :git => 'https://github.com/shakepay/react-native-simple-toast.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.preserve_paths = 'package.json', 'index.js'
  s.source_files = 'ios/**/*.{h,m}'

  s.requires_arc = true

  s.dependency 'React'
  # s.dependency 'Toast'
end
