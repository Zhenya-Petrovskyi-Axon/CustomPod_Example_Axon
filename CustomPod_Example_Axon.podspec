Pod::Spec.new do |s|
  s.name             = 'CustomPod_Example_Axon'
  s.version          = '1.0.1'
  s.summary          = 'Simple class to perform basic math methods.'
  
  s.description      = 'Practicing with implementation of custom cocoa pod'

  s.homepage         = 'https://github.com/Zhenya-Petrovskyi-Axon/CustomPod_Example_Axon'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  
  s.author           = { 'Zhenya-Petrovskyi-Axon' => 'epetrovskyi@axon.dev' }
  
  s.source           = { :git => 'https://github.com/Zhenya-Petrovskyi-Axon/CustomPod_Example_Axon.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  
  s.swift_version = '5.0'
  s.platforms = {
      "ios": "12.0"
  }
  
  s.source_files = 'Source/**/*.swift'
  
end
