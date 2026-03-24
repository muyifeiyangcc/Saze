import SwiftUI
import UIKit

extension View {

  func enableSwipeBack() -> some View {
    self.onAppear {
      guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
        let window = windowScene.windows.first,
        let navigationController =
          (window.rootViewController as? UINavigationController)
          ?? findNavigationController(in: window.rootViewController)
      else { return }
      navigationController.interactivePopGestureRecognizer?.isEnabled = true
      navigationController.interactivePopGestureRecognizer?.delegate = nil
    }
  }

  private func findNavigationController(in viewController: UIViewController?)
    -> UINavigationController?
  {
    guard let viewController else { return nil }
    if let nav = viewController as? UINavigationController {
      return nav
    }
    for child in viewController.children {
      if let found = findNavigationController(in: child) {
        return found
      }
    }
    return nil
  }
}

struct GlowBorder: ViewModifier {
  var color: Color
  var lineWidth: Int

  func body(content: Content) -> some View {
    applyShadow(content: AnyView(content), lineWidth: lineWidth)
  }

  func applyShadow(content: AnyView, lineWidth: Int) -> AnyView {
    if lineWidth == 0 {
      return content
    } else {
      return applyShadow(
        content: AnyView(content.shadow(color: color, radius: 1)), lineWidth: lineWidth - 1)
    }
  }
}

extension View {
  func glowBorder(color: Color, lineWidth: Int) -> some View {
    self.modifier(GlowBorder(color: color, lineWidth: lineWidth))
  }
}
