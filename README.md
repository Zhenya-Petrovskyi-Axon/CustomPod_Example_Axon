# CustomPod_Example_Axon

[![CI Status](https://img.shields.io/travis/Zhenya-Petrovskyi-Axon/CustomPod_Example_Axon.svg?style=flat)](https://travis-ci.org/Zhenya-Petrovskyi-Axon/CustomPod_Example_Axon)
[![Version](https://img.shields.io/cocoapods/v/CustomPod_Example_Axon.svg?style=flat)](https://cocoapods.org/pods/CustomPod_Example_Axon)
[![License](https://img.shields.io/cocoapods/l/CustomPod_Example_Axon.svg?style=flat)](https://cocoapods.org/pods/CustomPod_Example_Axon)
[![Platform](https://img.shields.io/cocoapods/p/CustomPod_Example_Axon.svg?style=flat)](https://cocoapods.org/pods/CustomPod_Example_Axon)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

CustomPod_Example_Axon is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CustomPod_Example_Axon'
```

## Author

Zhenya-Petrovskyi-Axon, epetrovskyi@axon.dev

## How to make you're own custom cocoa pod and publish it
1. Set up new project
```ruby
XCode -> File -> New -> Project -> FrameWork/Library
```
    - include unit tests also
    - implement functionality
    - cover with unit tests


2. if you want to make a pod from the framework in you're existing project
    - Create folder in "Documents" specifically for you're pod
    - Run Terminal and follow this path
```ruby
cd <folder>
```
``` ruby
pod lib create <name of the pod> (make sure the name is free by visiting https://cocoapods.org)
```
    - answer questions:
``` ruby 
What platform do you want to use?? [ iOS / macOS ]
 > iOS

What language do you want to use?? [ Swift / ObjC ]
 > Swift

Would you like to include a demo application with your library? [ Yes / No ]
 > Yes

Which testing frameworks will you use? [ Quick / None ]
 > None

Would you like to do view based testing? [ Yes / No ]
 > No
```
    - Set up Pod target with all the files you need for you're pod - just drag and drop them to the folder you want to have you're files to locate, "DevelopmentPods -> create new folder or drag files in"
    - Set up basic implementation in example View Controller, so users can see how to use you're pod
    - Drag and drop you're unit test file to File "Tests"
3. Set up project on github
    - Run Terminal and follow this steps
```ruby
cd <project root folder>
git init
git add -A
git commit -m "commit description"
git remote add origin <RemoteUrl.git>
git push -u origin master
```
    - Navigate back to you're project in XCode or open ProjectName.xcworkspace
        - find a a file ".podspec" and set up it by this example or read comments for each section
 ```ruby
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
  
  // MARK: - you can set up dependencies here, commented code will be included
  
end
 ```
    - push to remote
```ruby
Source Controll -> "commit" or option+command+c -> "commit"
```
    - open terminal and check if file is ok and fix it if needed
```ruby
cd <project root folder>

pod spec lint <name>.podspec
```
    - if everything is 👍
        - go to remote git project and navigate to "Publish you're first release"
        - make a tag that is the same version as .podspec -> s.version
        - publish
    - open terminal and follow nest steps
```ruby
cd <project root folder>

pod trunk register <you're e-mail address>

pod lib lint

pod trunk push <podspec file name>.podspec
```
    - you should see following message saying that you're pod is ready for use
```ruby
--------------------------------------------------------------------------------
 🎉  Congrats

 🚀  <you're pod name> (1.0.1) successfully published
 📅  November 2nd, 12:13
 🌎  https://cocoapods.org/pods/<you're pod name>
 👍  Tell your friends!
--------------------------------------------------------------------------------
```

# Testing
## License

CustomPod_Example_Axon is available under the MIT license. See the LICENSE file for more info.
