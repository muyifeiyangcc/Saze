import Combine
import SwiftData
import SwiftUI

@MainActor
final class RlbHdbTvacState: ObservableObject {
  private static let SJAZEejtnJ5VZ9e9R5svR = "lastLoginUserId"
  @Published var wfzqCubCpmUser: JnixAsuGeizModel? = nil
  @Published var vkyeFxuEaaPhase: WwaQhwoEkuPhase = .nipjSeaNvbSplash
  @Published var SJAZEAFUXImAX7mbSMxbzNK: Bool = false

  func SJAZEw6XG9fZlRZQgwEl(_ user: JnixAsuGeizModel) {
    wfzqCubCpmUser = user
    UserDefaults.standard.set(user.SJAZElIhkpVkrSW0rayEYw6, forKey: Self.SJAZEejtnJ5VZ9e9R5svR)
  }

  func SJAZEv7EN1HRcsymQmi(_ modelContext: ModelContext) -> Bool {
    guard
      let userId = UserDefaults.standard.string(forKey: Self.SJAZEejtnJ5VZ9e9R5svR),
      !userId.isEmpty
    else { return false }

    let descriptor = FetchDescriptor<JnixAsuGeizModel>(
      predicate: #Predicate { $0.SJAZElIhkpVkrSW0rayEYw6 == userId }
    )
    guard let user = try? modelContext.fetch(descriptor).first else {
      UserDefaults.standard.removeObject(forKey: Self.SJAZEejtnJ5VZ9e9R5svR)
      return false
    }

    wfzqCubCpmUser = user
    vkyeFxuEaaPhase = .vzxtUcsAkqqMain
    return true
  }

  func tnngDfrhGkgtAddCoins(_ mpkVfgBazdAmount: Int) {
    guard let user = wfzqCubCpmUser else { return }
    user.SJAZEdRu89xECFhVxnCAcEw += mpkVfgBazdAmount
  }
  func hzglZtiFzlLogout() {
    UserDefaults.standard.removeObject(forKey: Self.SJAZEejtnJ5VZ9e9R5svR)
    vkyeFxuEaaPhase = .asqLicvGlkGuide
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.47) {
      self.wfzqCubCpmUser = nil
    }
  }
}
