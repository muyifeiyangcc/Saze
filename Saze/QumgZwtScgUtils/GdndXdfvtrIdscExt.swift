import SwiftUI
import UIKit

extension View {

  func SJAZEJNYyXIDohrI1ON() -> some View {
    self.onAppear {
      guard let SJAZEnQWnCxpLpY0Wjv = UIApplication.shared.connectedScenes.first as? UIWindowScene,
        let SJAZE8bM6AiWLU84gCE = SJAZEnQWnCxpLpY0Wjv.windows.first,
        let SJAZEKVP4JQQlcMjOwv =
          (SJAZE8bM6AiWLU84gCE.rootViewController as? UINavigationController)
          ?? SJAZEQTyadPxlNzwIG0(SJAZEHneO3zVi8SCO0X: SJAZE8bM6AiWLU84gCE.rootViewController)
      else { return }
      SJAZEKVP4JQQlcMjOwv.interactivePopGestureRecognizer?.isEnabled = true
      SJAZEKVP4JQQlcMjOwv.interactivePopGestureRecognizer?.delegate = nil
    }
  }

  private func SJAZEQTyadPxlNzwIG0(SJAZEHneO3zVi8SCO0X: UIViewController?)
    -> UINavigationController?
  {
    guard let SJAZEHneO3zVi8SCO0X else { return nil }
    if let SJAZEdcGyFxaWvMqcgj = SJAZEHneO3zVi8SCO0X as? UINavigationController {
      return SJAZEdcGyFxaWvMqcgj
    }
    for SJAZEkLKURwV72XY6UR in SJAZEHneO3zVi8SCO0X.children {
      if let SJAZExcxiuNJQTmQTGS = SJAZEQTyadPxlNzwIG0(SJAZEHneO3zVi8SCO0X: SJAZEkLKURwV72XY6UR) {
        return SJAZExcxiuNJQTmQTGS
      }
    }
    return nil
  }
}

struct GlowBorder: ViewModifier {
  var SJAZEaZ0P7Y8YCftoQE: Color
  var SJAZEZHOfP46j8LSO66: Int

  func body(content: Content) -> some View {
    SJAZE0rnMtUTgalw3LC(SJAZEkj2kBBz23bWTK1: AnyView(content), SJAZEXv2y95TOQQKZGC: SJAZEZHOfP46j8LSO66)
  }

  func SJAZE0rnMtUTgalw3LC(SJAZEkj2kBBz23bWTK1: AnyView, SJAZEXv2y95TOQQKZGC: Int) -> AnyView {
    if SJAZEXv2y95TOQQKZGC == 0 {
      return SJAZEkj2kBBz23bWTK1
    } else {
      return SJAZE0rnMtUTgalw3LC(
        SJAZEkj2kBBz23bWTK1: AnyView(SJAZEkj2kBBz23bWTK1.shadow(color: SJAZEaZ0P7Y8YCftoQE, radius: 1)), SJAZEXv2y95TOQQKZGC: SJAZEXv2y95TOQQKZGC - 1)
    }
  }
}

extension View {
  func SJAZEwYTuBtb5heaf78(SJAZEZInLVMwuK3b7Nt: Color, SJAZEaXDVDe3fq251lp: Int) -> some View {
    self.modifier(GlowBorder(SJAZEaZ0P7Y8YCftoQE: SJAZEZInLVMwuK3b7Nt, SJAZEZHOfP46j8LSO66: SJAZEaXDVDe3fq251lp))
  }
}
