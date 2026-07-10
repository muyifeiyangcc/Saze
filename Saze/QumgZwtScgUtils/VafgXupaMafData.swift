import Foundation
import SwiftData
import SwiftUI

func SJAZEDz9nk36LruPFV5(SJAZEEcjE84nmaAcs4n: ModelContext) throws {

  let SJAZEymrdmf60E2weAV = JSONDecoder()
  SJAZEymrdmf60E2weAV.dateDecodingStrategy = .iso8601

  // MARK: - Users
  let SJAZEMjMeLYweo8xGfm = Bundle.main.url(forResource: "users", withExtension: "json")!
  let SJAZE1CFP4iVIhU8d5M = try Data(contentsOf: SJAZEMjMeLYweo8xGfm)
  let SJAZEBebfKb4Y60l0vp = try SJAZEymrdmf60E2weAV.decode([UserDTO].self, from: SJAZE1CFP4iVIhU8d5M)

  for SJAZExrLi0o706wrLys in SJAZEBebfKb4Y60l0vp {
    SJAZEEcjE84nmaAcs4n.insert(SJAZExrLi0o706wrLys.SJAZEJPFy9ykqn9XXvxsPWy())
  }

  // MARK: - Dynamics
  let SJAZEFQO2qqLIS247Qe = Bundle.main.url(forResource: "dynamics", withExtension: "json")!
  let SJAZEFD1xj5QUO3vP42 = try Data(contentsOf: SJAZEFQO2qqLIS247Qe)

  let SJAZETNKS8a6VnWCkOV = try SJAZEymrdmf60E2weAV.decode([DynamicDTO].self, from: SJAZEFD1xj5QUO3vP42)

  for SJAZE0Ochk1Zo0PIU7u in SJAZETNKS8a6VnWCkOV {
    SJAZEEcjE84nmaAcs4n.insert(SJAZE0Ochk1Zo0PIU7u.SJAZEJPFy9ykqn9XXvxsPWy(modelContext: SJAZEEcjE84nmaAcs4n))
  }

  try SJAZEEcjE84nmaAcs4n.save()
}

func SJAZEBtKPXjGjkPCjf0(SJAZEmM6fbP5wodtaiZ: ModelContext) {
  let SJAZEWm90QyhtGSdnKg = "didBootstrapPostData"
  guard !UserDefaults.standard.bool(forKey: SJAZEWm90QyhtGSdnKg) else { return }

  do {
    try SJAZEDz9nk36LruPFV5(SJAZEEcjE84nmaAcs4n: SJAZEmM6fbP5wodtaiZ)
    UserDefaults.standard.set(true, forKey: SJAZEWm90QyhtGSdnKg)
  } catch {
  }
}
