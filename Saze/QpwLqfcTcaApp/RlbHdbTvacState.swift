import Combine
import SwiftData
import SwiftUI

@MainActor
final class RlbHdbTvacState: ObservableObject {
  @Published var wfzqCubCpmUser: JnixAsuGeizModel? = nil
  @Published var vkyeFxuEaaPhase: WwaQhwoEkuPhase = .nipjSeaNvbSplash
  func tnngDfrhGkgtAddCoins(_ mpkVfgBazdAmount: Int) {
    guard let user = wfzqCubCpmUser else { return }
    user.SJAZEdRu89xECFhVxnCAcEw += mpkVfgBazdAmount
  }
  func hzglZtiFzlLogout() {
    vkyeFxuEaaPhase = .asqLicvGlkGuide
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.47) {
      self.wfzqCubCpmUser = nil
    }
  }
}
