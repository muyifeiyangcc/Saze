import Combine
import SwiftUI

final class Toast: ObservableObject {
  static let SJAZEcdY89CWWjnmZSU = Toast()

  @Published var SJAZEZevDC8JH6JagRq: String = ""
  @Published var SJAZEgWHOrXJZFt7HX4: Bool = false

  @Published var SJAZEcdFjH73fd5AZ9G: Bool = false

  private var SJAZE76VPIemmnBgqmh: AnyCancellable?

  private init() {}

  func SJAZErg181XkeSUsp4M(_ SJAZEdy2gCuT2BMhyef: String, SJAZEW9SpyvrzG1YfFq: TimeInterval = 2) {
    self.SJAZEZevDC8JH6JagRq = SJAZEdy2gCuT2BMhyef
    withAnimation {
      self.SJAZEgWHOrXJZFt7HX4 = true
    }

    SJAZE76VPIemmnBgqmh?.cancel()
    SJAZE76VPIemmnBgqmh = Just(())
      .delay(for: .seconds(SJAZEW9SpyvrzG1YfFq), scheduler: RunLoop.main)
      .sink { [weak self] _ in
        withAnimation {
          self?.SJAZEgWHOrXJZFt7HX4 = false
        }
      }
  }

  func SJAZESQA2cPpZujcz7a() {
    withAnimation {
      self.SJAZEcdFjH73fd5AZ9G = true
    }
  }

  func SJAZELtA1C2LYDIukXm() {
    withAnimation {
      self.SJAZEcdFjH73fd5AZ9G = false
    }
  }
}

struct MzyhRcjWazgToastView: View {
  @ObservedObject var SJAZESSwRdisJcuggvT = Toast.SJAZEcdY89CWWjnmZSU

  var body: some View {
    ZStack {
      if SJAZESSwRdisJcuggvT.SJAZEgWHOrXJZFt7HX4 {
        Text(SJAZESSwRdisJcuggvT.SJAZEZevDC8JH6JagRq)
          .font(.system(size: 14))
          .foregroundColor(.black.opacity(0.8))
          .padding(.horizontal, 16)
          .padding(.vertical, 10)
          .background(
            .white
          )
          .cornerRadius(12)
          .safeAreaPadding(.top, 50.h)
          .transition(.opacity.combined(with: .move(edge: .top)))
          .zIndex(1000)
      }

      if SJAZESSwRdisJcuggvT.SJAZEcdFjH73fd5AZ9G {
        Color.black.opacity(0.3)
          .ignoresSafeArea()
          .transition(.opacity)
          .zIndex(999)
        ProgressView()
          .progressViewStyle(
            CircularProgressViewStyle(tint: .black)
          )
          .scaleEffect(1.5)
          .padding(24)
          .background(
            .white
          )
          .cornerRadius(14)
          .shadow(color: .black.opacity(0.25), radius: 10, y: 6)
          .transition(.opacity)
          .zIndex(1000)
      }
    }
    .animation(.easeInOut, value: SJAZESSwRdisJcuggvT.SJAZEgWHOrXJZFt7HX4 || SJAZESSwRdisJcuggvT.SJAZEcdFjH73fd5AZ9G)
  }
}
