![Retargetly](http://beta.retargetly.com/wp-content/uploads/2015/07/Logo.png)

# Retargetly

Retargetly is a tracking library for iOS.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

After a git clone, open 'Retargetly.xcodeproj' file to explore the project.

The main focus of the library is to track events, separately in three event-types:

```
open    - for Library Initialization
change  - for front view changed
custom  - for developer's choice
```

### Prerequisites

```
Cocoapods
Xcode - Swift 3
```

### Installing

In order to use the library, it must be included in the project via cocoapods, then install pods. You can install cocoapods by this way:

```
$ gem install cocoapods
```

Then, specify 'Retargerlty' pod in podfile:

```
pod 'Retargetly'
```

And finally, install the pods into project:

```
$ pod install
```


## Usage

After installing, you might do some changes in the project that has Retargetly, the first thing is initialize the library, like so:

The recommended place to initialize the library is 'AppDelegate'

```Swift
import Retargetly
...

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> {

    ...
    RManager.initiate(with: an_ios_hash, pid: an_pid, sid: an_sid)
    ...

return true
}
```

The library will automatically track the 'open' event every time it initializes.

Also, the library is capable to track the 'change' event every time an 'UIViewController' subclass or inheritance is presented, by its 'viewDidAppear' method overrided.

Finally, in order to track an 'custom' event, you need to do so:

```Swift
import Retargetly
...

func anAction() {

    ...
    RManager.default.track(value: aValue) {(error) in
        print(error)
    }
    ...

}
```

The 'custom' event, allows you to have an complation callback, and it might have an 'error' object if it occurred.

## Built With

* [Swift 3](https://swift.org/documentation/) - Programming language
* [Cocoapods](https://cocoapods.org/) - Dependency Management


## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://bitbucket.org/nextdotsjolivieri/retargetly-ios/src#tags).

## Authors

* [**José Valderrama**](mailto:josevalderrama18@gmail.com) - [NextDots](http://nextdots.com/)


