# JMCrashIfResign

[![CI Status](http://img.shields.io/travis/Jerome Morissard/JMCrashIfResign.svg?style=flat)](https://travis-ci.org/Jerome Morissard/JMCrashIfResign)
[![Version](https://img.shields.io/cocoapods/v/JMCrashIfResign.svg?style=flat)](http://cocoapods.org/pods/JMCrashIfResign)
[![License](https://img.shields.io/cocoapods/l/JMCrashIfResign.svg?style=flat)](http://cocoapods.org/pods/JMCrashIfResign)
[![Platform](https://img.shields.io/cocoapods/p/JMCrashIfResign.svg?style=flat)](http://cocoapods.org/pods/JMCrashIfResign)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```objc
#import "JMResignDetector.h"

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [JMResignDetector registerSecureTeamIdentifiers:@[@"35C6XY72U8", @"35C6X642UI", @"G8WDYDSFS7"]];


    return YES;
}
```


## Requirements

## Installation

JMCrashIfResign is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "JMCrashIfResign"
```

## Author

Jerome Morissard, jerome.morissard@backelite.com

## License

JMCrashIfResign is available under the MIT license. See the LICENSE file for more info.
