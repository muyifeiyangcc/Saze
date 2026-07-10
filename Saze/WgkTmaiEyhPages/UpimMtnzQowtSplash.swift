import SwiftData
import SwiftUI

struct LwprZdcRfqfSplash: View {
  @EnvironmentObject var appState: RlbHdbTvacState
  @EnvironmentObject var purchaseManager: VvolHdqhEszePurchase
  @Environment(\.modelContext) private var modelContext
  var body: some View {
    ZStack {
      GeometryReader { _ in
        Image("SplashBg").resizable().ignoresSafeArea()
      }
      VStack {
        Spacer().frame(height: 150.h)
        Image("Logo").resizable().scaledToFit().frame(width: 74.r, height: 74.r)
          .cornerRadius(20.r)
        Spacer()
      }
      .ignoresSafeArea()
      .frame(maxWidth: .infinity)
    }
    .task {
      purchaseManager.fetchProducts()
      try? await Task.sleep(for: .seconds(1))
      SJAZEBtKPXjGjkPCjf0(SJAZEmM6fbP5wodtaiZ: modelContext)
      if appState.SJAZEv7EN1HRcsymQmi(modelContext) {
        return
      }
      appState.vkyeFxuEaaPhase = .asqLicvGlkGuide
    }
  }
}
