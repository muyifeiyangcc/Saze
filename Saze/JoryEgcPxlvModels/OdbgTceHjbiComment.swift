import Foundation
import SwiftData

@Model
final class OdbgTceHjbiModel {

  /// 评论ID
  @Attribute(.unique)
  var SJAZEQjHL56u9w8PufUdnP5: String

  /// 所属帖子ID
  var SJAZEVeQYjYRJfcllVneqRN: String

  /// 评论用户ID
  var SJAZElIhkpVkrSW0rayEYw6: String

  /// 评论内容
  var SJAZECpm56ZBeV7qNkfJvuX: String

  init(
    SJAZEVeQYjYRJfcllVneqRN: String,
    SJAZEQjHL56u9w8PufUdnP5: String,
    SJAZElIhkpVkrSW0rayEYw6: String,
    SJAZECpm56ZBeV7qNkfJvuX: String
  ) {
    self.SJAZEVeQYjYRJfcllVneqRN = SJAZEVeQYjYRJfcllVneqRN
    self.SJAZEQjHL56u9w8PufUdnP5 = SJAZEQjHL56u9w8PufUdnP5
    self.SJAZElIhkpVkrSW0rayEYw6 = SJAZElIhkpVkrSW0rayEYw6
    self.SJAZECpm56ZBeV7qNkfJvuX = SJAZECpm56ZBeV7qNkfJvuX
  }
}

// MARK: - JSON Support
extension OdbgTceHjbiModel {

  func SJAZEhIl26YqPW7bYsDnGDi(from SJAZEbKNLayFNQOfK7BGEub: OdbgTceHjbiModel) {
    SJAZEVeQYjYRJfcllVneqRN = SJAZEbKNLayFNQOfK7BGEub.SJAZEVeQYjYRJfcllVneqRN
    SJAZElIhkpVkrSW0rayEYw6 = SJAZEbKNLayFNQOfK7BGEub.SJAZElIhkpVkrSW0rayEYw6
    SJAZECpm56ZBeV7qNkfJvuX = SJAZEbKNLayFNQOfK7BGEub.SJAZECpm56ZBeV7qNkfJvuX
  }
  /// 转 Dictionary
  func SJAZErTTrSFzQqvk8CqQGVx() -> [String: Any] {
    return [
      "e85aaddc015375ac9e850c24bc22b23b".SJAZET5gG1gyy5729np8EdY(): SJAZEVeQYjYRJfcllVneqRN,
      "0675a0f0bb4270f3387b94f783428ef0".SJAZET5gG1gyy5729np8EdY(): SJAZEQjHL56u9w8PufUdnP5,
      "648b7302c4ffa4b054fa5d1e4939b31e".SJAZET5gG1gyy5729np8EdY(): SJAZElIhkpVkrSW0rayEYw6,
      "dffc92176bacb25e94507635340730bd".SJAZET5gG1gyy5729np8EdY(): SJAZECpm56ZBeV7qNkfJvuX,
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
  static func SJAZE7KsC41Sdy5ej8SJeT1(_ SJAZEnkLAphU8uUYFhKArrL: [String: Any]) -> OdbgTceHjbiModel? {
    guard
      let SJAZEVeQYjYRJfcllVneqRN = SJAZEnkLAphU8uUYFhKArrL["e85aaddc015375ac9e850c24bc22b23b".SJAZET5gG1gyy5729np8EdY()] as? String,
      let SJAZEQjHL56u9w8PufUdnP5 = SJAZEnkLAphU8uUYFhKArrL["0675a0f0bb4270f3387b94f783428ef0".SJAZET5gG1gyy5729np8EdY()] as? String,
      let SJAZElIhkpVkrSW0rayEYw6 = SJAZEnkLAphU8uUYFhKArrL["648b7302c4ffa4b054fa5d1e4939b31e".SJAZET5gG1gyy5729np8EdY()] as? String,
      let SJAZECpm56ZBeV7qNkfJvuX = SJAZEnkLAphU8uUYFhKArrL["dffc92176bacb25e94507635340730bd".SJAZET5gG1gyy5729np8EdY()] as? String
    else {
      return nil
    }

    return OdbgTceHjbiModel(
      SJAZEVeQYjYRJfcllVneqRN: SJAZEVeQYjYRJfcllVneqRN,
      SJAZEQjHL56u9w8PufUdnP5: SJAZEQjHL56u9w8PufUdnP5,
      SJAZElIhkpVkrSW0rayEYw6: SJAZElIhkpVkrSW0rayEYw6,
      SJAZECpm56ZBeV7qNkfJvuX: SJAZECpm56ZBeV7qNkfJvuX
    )
  }
}
