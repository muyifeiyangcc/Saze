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

struct StrokeLabel: UIViewRepresentable {
  var text: String
  var strokeColor: UIColor = .black
  var fillColor: UIColor = .white
  var strokeWidth: CGFloat = -4
  var font: UIFont = .boldSystemFont(ofSize: 24)
  var alignment: NSTextAlignment = .center

  func makeUIView(context: Context) -> UILabel {
    let label = UILabel()
    label.textAlignment = alignment
    label.layer.allowsEdgeAntialiasing = true
    label.layer.shouldRasterize = true
    label.layer.rasterizationScale = UIScreen.main.scale
    return label
  }

  func updateUIView(_ label: UILabel, context: Context) {
    label.textAlignment = alignment
    let attr = NSAttributedString(
      string: text,
      attributes: [
        .strokeColor: strokeColor,
        .foregroundColor: fillColor,
        .strokeWidth: strokeWidth,
        .font: font,
      ]
    )
    label.attributedText = attr
  }
}
