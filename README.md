# SportRadar Mobile SDK for iOS [![Latest Tag](https://img.shields.io/github/v/tag/sportradar/MobileSDK-SPM)](https://github.com/sportradar/MobileSDK-SPM/tags)

Sportradar Mobile SDK helps you keep your audience up to date with match results, events and statistics for sports worldwide. They can be the first to know the score by viewing real-time in-app score and event display, or receive the fastest push notifications on the market.

## How to integrate

 1. Add this package to your project using Swift Package Manager:
```swift
 https://github.com/sportradar/MobileSDK-SPM.git
```

2. Import SRSDK where needed

3. Initialize SRSDK:

```swift
import SRSDK

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var sdk: SRSDK?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

    // Init SDK
    sdk = SRSDK(config: SRSDKConfig(appId: {insert your api key here})) { (response) in
        switch response {
        case .onSuccess(_):
            // TODO: handle init success
            break
        case .onFailure:
            // TODO: handle init failed
            break
        }
    }
    return true
    }
}
```

## Support
For support and documentation, visit [Sportradar Mobile SDK](https://artifacts.mdp.sportradar.com/docs/mdp/production/index.html?About_this_platform/Introduction/Introduction.html) page.
