# DebooggerPlugins-iOS

Plugins for [Deboogger](https://github.com/Rosberry/Deboogger) framework.

List of plugins:
- DoSomethingDebooggerPlugin - convenient button plugin which can take action for button tap in constructor.
- DeviceTokenDebooggerPlugin - button plugin to copy device token to clipboard.
- ServerPlugin - segment control plugin for choosing server between `Production`, `Staging` and `Development`.
- FingertipsDebooggerPlugin - switch plugin for enabling fingertips.
- BaseURLDebooggerPlugin - switch plugin for failing all server request by changing base URL.
- SetSomethingToDefaultDebooggerPlugin - convenient button plugin for reseting field of object to default value.
- DisplaySomethingDebooggerPlugin - convenient button plugin for displaying value of object field. Tap will copy value to clipboard.

Dependencies:
- Base
- Deboogger
- Networking
- TouchVisualizer

## Installation

### Depo

[Depo](https://github.com/rosberry/depo) is a universal dependency manager that combines CocoaPods, Carthage and SPM.

You can use Depo to install DebooggerPlugins-iOS by adding it to your `Depofile`:
```yaml
carts:
  - kind: github
    identifier: rosberry/DebooggerPlugins-iOS
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. To integrate DebooggerPlugins-iOS into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "rosberry/DebooggerPlugins-iOS
```

## About

<img src="https://github.com/rosberry/Foundation/blob/master/Assets/full_logo.png?raw=true" height="100" />

This project is owned and maintained by [Rosberry](http://rosberry.com). We build mobile apps for users worldwide 🌏.

Check out our [open source projects](https://github.com/rosberry), read [our blog](https://medium.com/@Rosberry) or give us a high-five on 🐦 [@rosberryapps](http://twitter.com/RosberryApps).

## License

Core-iOS is available under the MIT license. See the LICENSE file for more info.

