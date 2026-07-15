import Foundation
import SwiftData
import SwiftUI

func SJAZEDz9nk36LruPFV5(SJAZEEcjE84nmaAcs4n: ModelContext) throws {

  let SJAZEymrdmf60E2weAV = JSONDecoder()
  SJAZEymrdmf60E2weAV.dateDecodingStrategy = .iso8601

  let SJAZEMjMeLYweo8xGfm = Bundle.main.url(forResource: "bdfd5d23f525e0fff37cbbe30e0b3153".SJAZET5gG1gyy5729np8EdY(), withExtension: "c6d70faf01a679bd4e712ffab23e5ebd".SJAZET5gG1gyy5729np8EdY())!
  let SJAZE1CFP4iVIhU8d5M = try Data(contentsOf: SJAZEMjMeLYweo8xGfm)
  let SJAZEBebfKb4Y60l0vp = try SJAZEymrdmf60E2weAV.decode([UserDTO].self, from: SJAZE1CFP4iVIhU8d5M)

  for SJAZExrLi0o706wrLys in SJAZEBebfKb4Y60l0vp {
    SJAZEEcjE84nmaAcs4n.insert(SJAZExrLi0o706wrLys.SJAZEJPFy9ykqn9XXvxsPWy())
  }

  let SJAZEFQO2qqLIS247Qe = Bundle.main.url(forResource: "8e8143e6af7f1904e7079e3cde03e16d".SJAZET5gG1gyy5729np8EdY(), withExtension: "c6d70faf01a679bd4e712ffab23e5ebd".SJAZET5gG1gyy5729np8EdY())!
  let SJAZEFD1xj5QUO3vP42 = try Data(contentsOf: SJAZEFQO2qqLIS247Qe)

  let SJAZETNKS8a6VnWCkOV = try SJAZEymrdmf60E2weAV.decode([DynamicDTO].self, from: SJAZEFD1xj5QUO3vP42)

  for SJAZE0Ochk1Zo0PIU7u in SJAZETNKS8a6VnWCkOV {
    SJAZEEcjE84nmaAcs4n.insert(SJAZE0Ochk1Zo0PIU7u.SJAZEJPFy9ykqn9XXvxsPWy(modelContext: SJAZEEcjE84nmaAcs4n))
  }

  let SJAZEhx7lUeF0SaBW1m = Bundle.main.url(forResource: "fe7ec1860a1974de40106dbb58089fd8".SJAZET5gG1gyy5729np8EdY(), withExtension: "c6d70faf01a679bd4e712ffab23e5ebd".SJAZET5gG1gyy5729np8EdY())!
  let SJAZE6r1SqK8xYqbwnJ = try Data(contentsOf: SJAZEhx7lUeF0SaBW1m)
  let SJAZEkM81tD9vCjbd4A =
    try JSONSerialization.jsonObject(with: SJAZE6r1SqK8xYqbwnJ) as? [[String: Any]] ?? []

  for SJAZEA3kZ8lyUPvcbSN in SJAZEkM81tD9vCjbd4A {
    if let SJAZEDmh0OqpK3cYqdn = HwsYfezKgckModel.SJAZE7KsC41Sdy5ej8SJeT1(SJAZEA3kZ8lyUPvcbSN) {
      SJAZEEcjE84nmaAcs4n.insert(SJAZEDmh0OqpK3cYqdn)
    }
  }

  let SJAZEzT1gbJxwCzxTpK = Bundle.main.url(forResource: "3de2fe9c5d42475396e7cffadfeb7076".SJAZET5gG1gyy5729np8EdY(), withExtension: "c6d70faf01a679bd4e712ffab23e5ebd".SJAZET5gG1gyy5729np8EdY())!
  let SJAZEIkUy2GsB5y9duW = try Data(contentsOf: SJAZEzT1gbJxwCzxTpK)
  let SJAZEcF8Nte1QzYu5dx =
    try JSONSerialization.jsonObject(with: SJAZEIkUy2GsB5y9duW) as? [[String: Any]] ?? []

  for SJAZEk2oJaIuR4unW30 in SJAZEcF8Nte1QzYu5dx {
    if let SJAZE0gWQhdfyeSQmS8 = WsqrTacoBgttModel.SJAZE7KsC41Sdy5ej8SJeT1(SJAZEk2oJaIuR4unW30) {
      SJAZEEcjE84nmaAcs4n.insert(SJAZE0gWQhdfyeSQmS8)
    }
  }

  try SJAZEEcjE84nmaAcs4n.save()
}

func SJAZEBtKPXjGjkPCjf0(SJAZEmM6fbP5wodtaiZ: ModelContext) {
  let SJAZEWm90QyhtGSdnKg = "df1a21513751bfa1c3cc01b384d974af6ec8e73f40a132ff1531c07b9225c24b".SJAZET5gG1gyy5729np8EdY()
  guard !UserDefaults.standard.bool(forKey: SJAZEWm90QyhtGSdnKg) else { return }

  do {
    try SJAZEDz9nk36LruPFV5(SJAZEEcjE84nmaAcs4n: SJAZEmM6fbP5wodtaiZ)
    UserDefaults.standard.set(true, forKey: SJAZEWm90QyhtGSdnKg)
  } catch {
  }
}
