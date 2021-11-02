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
1. First you need to set up new project
this way {
- File -> New -> Project -> FrameWork/Library
- include unit tests also
- implement functionality
- cover with unit tests
} else if you want to make a pod from the framework in you're existing project {
1. Create folder for you're pod 
2. Run Terminal and follow this path
```ruby
cd <folder>
```
``` ruby
pod lib create <name of the pod> (make sure the name is free by visiting https://cocoapods.org)
```
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
3. Set up Pod target with all the files you need for you're pod - just drag and drop them to the folder you want to have you're files to locate, "DevelopmentPods -> create new folder or drag files in"
4. Set up basic implementation in example viewController, so users can see how to use you're pod
5. Drag and drop you're unit test file to File "Tests"
6. Set up project on github
7. Run Terminal and follow this steps
```ruby

```
}

## License

CustomPod_Example_Axon is available under the MIT license. See the LICENSE file for more info.
