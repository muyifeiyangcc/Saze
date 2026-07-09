import Foundation
import SwiftData

@Model
final class HwsYfezKgckModel {

  @Attribute(.unique)
  var SJAZELj4BVAUIW1CdfC1E9n: String

  var SJAZEBCR2nFfDTdsD4REASp: [String]
  var SJAZEn9xXVUjsmZIL5HwlRT: String
  var SJAZE9Er6ZUSKkEa2jaHrc4: String?
  var SJAZEcGA3f4WMkxlgomv0W6: Int?
  var SJAZETxSMQ6uAH5IgHGQQ0G: String?

  init(
    SJAZELj4BVAUIW1CdfC1E9n: String,
    SJAZEBCR2nFfDTdsD4REASp: [String],
    SJAZEn9xXVUjsmZIL5HwlRT: String,
    SJAZE9Er6ZUSKkEa2jaHrc4: String? = nil,
    SJAZEcGA3f4WMkxlgomv0W6: Int? = nil,
    SJAZETxSMQ6uAH5IgHGQQ0G: String? = nil
  ) {
    self.SJAZELj4BVAUIW1CdfC1E9n = SJAZELj4BVAUIW1CdfC1E9n
    self.SJAZEBCR2nFfDTdsD4REASp = SJAZEBCR2nFfDTdsD4REASp
    self.SJAZEn9xXVUjsmZIL5HwlRT = SJAZEn9xXVUjsmZIL5HwlRT
    self.SJAZE9Er6ZUSKkEa2jaHrc4 = SJAZE9Er6ZUSKkEa2jaHrc4
    self.SJAZEcGA3f4WMkxlgomv0W6 = SJAZEcGA3f4WMkxlgomv0W6
    self.SJAZETxSMQ6uAH5IgHGQQ0G = SJAZETxSMQ6uAH5IgHGQQ0G
  }
}

// MARK: - JSON Support
extension HwsYfezKgckModel {
  func SJAZEhIl26YqPW7bYsDnGDi(from SJAZEbKNLayFNQOfK7BGEub: HwsYfezKgckModel) {
    SJAZEBCR2nFfDTdsD4REASp = SJAZEbKNLayFNQOfK7BGEub.SJAZEBCR2nFfDTdsD4REASp
    SJAZEn9xXVUjsmZIL5HwlRT = SJAZEbKNLayFNQOfK7BGEub.SJAZEn9xXVUjsmZIL5HwlRT
    SJAZE9Er6ZUSKkEa2jaHrc4 = SJAZEbKNLayFNQOfK7BGEub.SJAZE9Er6ZUSKkEa2jaHrc4
    SJAZEcGA3f4WMkxlgomv0W6 = SJAZEbKNLayFNQOfK7BGEub.SJAZEcGA3f4WMkxlgomv0W6
    SJAZETxSMQ6uAH5IgHGQQ0G = SJAZEbKNLayFNQOfK7BGEub.SJAZETxSMQ6uAH5IgHGQQ0G
  }
  /// 转 Dictionary
  func SJAZErTTrSFzQqvk8CqQGVx() -> [String: Any] {
    return [
      "e4cb87984b078b806310573a2a50913f".SJAZET5gG1gyy5729np8EdY(): SJAZELj4BVAUIW1CdfC1E9n,
      "f13a214bde59d72e89643cfc4b998d9a".SJAZET5gG1gyy5729np8EdY(): SJAZEBCR2nFfDTdsD4REASp,
      "80e98ffa32c4f5b2db0f22cc13cb5ad3".SJAZET5gG1gyy5729np8EdY(): SJAZEn9xXVUjsmZIL5HwlRT,
      "51d1217b60cb373562d8a56b4599a640".SJAZET5gG1gyy5729np8EdY(): SJAZE9Er6ZUSKkEa2jaHrc4 as Any,
      "87f2ac7fba3d32932f675bd6806c60a4".SJAZET5gG1gyy5729np8EdY(): SJAZEcGA3f4WMkxlgomv0W6 as Any,
      "6549932de1aab1a46204e3e84b69110e".SJAZET5gG1gyy5729np8EdY(): SJAZETxSMQ6uAH5IgHGQQ0G as Any,
    ]
  }

  /// 转 JSON String
  func SJAZEdCCqr3yHlozSZgz6ID() -> String? {
    guard let SJAZEkZrRMSHL5OBgA65cNH = try? JSONSerialization.data(withJSONObject: SJAZErTTrSFzQqvk8CqQGVx()) else {
      return nil
    }
    return String(data: SJAZEkZrRMSHL5OBgA65cNH, encoding: .utf8)
  }

  /// 从 JSON 创建对象
  static func SJAZE7KsC41Sdy5ej8SJeT1(_ SJAZEnkLAphU8uUYFhKArrL: [String: Any]) -> HwsYfezKgckModel? {
    guard
      let SJAZELj4BVAUIW1CdfC1E9n = SJAZEnkLAphU8uUYFhKArrL["e4cb87984b078b806310573a2a50913f".SJAZET5gG1gyy5729np8EdY()] as? String,
      let SJAZEBCR2nFfDTdsD4REASp = SJAZEnkLAphU8uUYFhKArrL["f13a214bde59d72e89643cfc4b998d9a".SJAZET5gG1gyy5729np8EdY()] as? [String],
      let SJAZEn9xXVUjsmZIL5HwlRT = SJAZEnkLAphU8uUYFhKArrL["80e98ffa32c4f5b2db0f22cc13cb5ad3".SJAZET5gG1gyy5729np8EdY()] as? String
    else {
      return nil
    }

    return HwsYfezKgckModel(
      SJAZELj4BVAUIW1CdfC1E9n: SJAZELj4BVAUIW1CdfC1E9n,
      SJAZEBCR2nFfDTdsD4REASp: SJAZEBCR2nFfDTdsD4REASp,
      SJAZEn9xXVUjsmZIL5HwlRT: SJAZEn9xXVUjsmZIL5HwlRT,
      SJAZE9Er6ZUSKkEa2jaHrc4: SJAZEnkLAphU8uUYFhKArrL["51d1217b60cb373562d8a56b4599a640".SJAZET5gG1gyy5729np8EdY()] as? String,
      SJAZEcGA3f4WMkxlgomv0W6: SJAZEnkLAphU8uUYFhKArrL["87f2ac7fba3d32932f675bd6806c60a4".SJAZET5gG1gyy5729np8EdY()] as? Int,
      SJAZETxSMQ6uAH5IgHGQQ0G: SJAZEnkLAphU8uUYFhKArrL["6549932de1aab1a46204e3e84b69110e".SJAZET5gG1gyy5729np8EdY()] as? String
    )
  }
}
