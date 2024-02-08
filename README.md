# Survicate - UXCam integration for iOS
A thin library designed for seamless integration between [Survicate](https://survicate.com/) and [UXCam](https://uxcam.com/) on iOS. It automatically sends survey answers coming from Survicate SDK as UXCam events that can be previewed directly in the UXCam panel.

## Adding the dependency

### Swift Package Manager
To integrate Survicate UXCam integration into your Xcode project using Swift Package Manager, specify it in your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/Survicate/survicate-uxcam-integration-ios", from: "1.0.0")
]
```

### CocoaPods
survicate-uxcam-integration is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'survicate-uxcam-integration'
```

> Note that both Survicate and UXCam SDKs are added as dependencies to this package, so you don't need to add them manually.

## Usage

> Note that for the plugin to function properly, it is essential that both the Survicate and UxCam SDKs have been initialized correctly as outlined in their respective documentation:
> - [Survicate developer docs](https://developers.survicate.com/mobile-sdk/ios/)
> - [UXCam developer docs](https://developer.uxcam.com/docs/ios)

In order to activate the integration library, go to the place in your app where you initialize the Survicate SDK and register `SurvicateUXCamIntegration` as an event listener:

```swift
SurvicateSdk.shared.initialize()
SurvicateSdk.shared.addEventListener(SurvicateUXCamIntegration())
```

That's it. You can use all UXCam and Survicate features as usual. Every survey answer will be automatically logged to the UXCam using the `UXCam.logEvent` method.