# JMCrashIfResign

JMCrashIfResign is a way to protect your application against bad usage.
JMCrashIfResign is only active on signed application (no problem for your simulator or unit tests on simulators)

## Usage

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
