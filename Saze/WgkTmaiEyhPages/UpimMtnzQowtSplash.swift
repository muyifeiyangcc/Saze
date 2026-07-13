import SwiftData
import SwiftUI

struct LwprZdcRfqfSplash: View {
  @EnvironmentObject var SJAZEtE9URSe4Piuin: RlbHdbTvacState
  @EnvironmentObject var SJAZEHpszFi80RiCnd: VvolHdqhEszePurchase
  @Environment(\.modelContext) private var SJAZEkeZaCWCAXkYDd
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
      SJAZEHpszFi80RiCnd.fetchProducts()
      try? await Task.sleep(for: .seconds(1))
      SJAZEBtKPXjGjkPCjf0(SJAZEmM6fbP5wodtaiZ: SJAZEkeZaCWCAXkYDd)
      if SJAZEtE9URSe4Piuin.SJAZEv7EN1HRcsymQmi(SJAZEkeZaCWCAXkYDd) {
        return
      }
      SJAZEtE9URSe4Piuin.vkyeFxuEaaPhase = .asqLicvGlkGuide
    }
  }
}
