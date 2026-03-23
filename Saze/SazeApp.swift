@_exported import HotSwiftUI
import SwiftData
import SwiftUI

@main
struct SazeApp: App {
  init() {
    #if DEBUG
      Bundle(path: "/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle")?.load()
      if let path = Bundle.main.path(
        forResource:
          "iOSInjection", ofType: "bundle")
      {
        Bundle(path: path)!.load()
      }
    #endif
  }

  var body: some Scene {
    WindowGroup {
      ContentView()
    }

  }
}
