import Foundation
import SwiftData

@Model
final class BiekWudpWdqModel {

  /// 帖子ID
  @Attribute(.unique)
  var SJAZEVeQYjYRJfcllVneqRN: String

  /// 关联用户
  @Relationship(deleteRule: .cascade)
  var SJAZEqW4EMg4h7fXuUJ0kd7: JnixAsuGeizModel?

  /// 帖子类型（0=图片，1=视频）
  var SJAZEsoZ0L6YgsKwJ0DlGuU: Int

  /// 帖子描述
  var SJAZEUVBfbq2UH81q7Ftbq3: String

  /// 图片帖子类型下标
  var SJAZEEPjTSzGukeICl2u6ue: Int

  var SJAZECyvz14cqPBZa8BHRwd: [String]

  /// 图片地址列表
  var SJAZEJvLqXUWCmDFJBLleGx: [String]

  /// 视频地址
  var SJAZEjW824LNB0yW9KOqkuE: String

  /// 点赞数
  var SJAZETqXs1AIbpvP9gabc3t: Int

  /// 评论数
  var SJAZEAyGV9lIdGdQJWQZ9Vj: Int

  init(
    SJAZEVeQYjYRJfcllVneqRN: String,
    SJAZEqW4EMg4h7fXuUJ0kd7: JnixAsuGeizModel?,
    SJAZEsoZ0L6YgsKwJ0DlGuU: Int,
    SJAZEUVBfbq2UH81q7Ftbq3: String,
    SJAZEEPjTSzGukeICl2u6ue: Int,
    SJAZECyvz14cqPBZa8BHRwd: [String] = [],
    SJAZEJvLqXUWCmDFJBLleGx: [String],
    SJAZEjW824LNB0yW9KOqkuE: String,
    SJAZETqXs1AIbpvP9gabc3t: Int,
    SJAZEAyGV9lIdGdQJWQZ9Vj: Int
  ) {
    self.SJAZEVeQYjYRJfcllVneqRN = SJAZEVeQYjYRJfcllVneqRN
    self.SJAZEqW4EMg4h7fXuUJ0kd7 = SJAZEqW4EMg4h7fXuUJ0kd7
    self.SJAZEsoZ0L6YgsKwJ0DlGuU = SJAZEsoZ0L6YgsKwJ0DlGuU
    self.SJAZEUVBfbq2UH81q7Ftbq3 = SJAZEUVBfbq2UH81q7Ftbq3
    self.SJAZEEPjTSzGukeICl2u6ue = SJAZEEPjTSzGukeICl2u6ue
    self.SJAZECyvz14cqPBZa8BHRwd = SJAZECyvz14cqPBZa8BHRwd
    self.SJAZEJvLqXUWCmDFJBLleGx = SJAZEJvLqXUWCmDFJBLleGx
    self.SJAZEjW824LNB0yW9KOqkuE = SJAZEjW824LNB0yW9KOqkuE
    self.SJAZETqXs1AIbpvP9gabc3t = SJAZETqXs1AIbpvP9gabc3t
    self.SJAZEAyGV9lIdGdQJWQZ9Vj = SJAZEAyGV9lIdGdQJWQZ9Vj
  }
}

// MARK: - JSON Support
extension BiekWudpWdqModel {
  func SJAZEhIl26YqPW7bYsDnGDi(from SJAZEbKNLayFNQOfK7BGEub: BiekWudpWdqModel) {
    SJAZEsoZ0L6YgsKwJ0DlGuU = SJAZEbKNLayFNQOfK7BGEub.SJAZEsoZ0L6YgsKwJ0DlGuU
    SJAZEUVBfbq2UH81q7Ftbq3 = SJAZEbKNLayFNQOfK7BGEub.SJAZEUVBfbq2UH81q7Ftbq3
    SJAZEEPjTSzGukeICl2u6ue = SJAZEbKNLayFNQOfK7BGEub.SJAZEEPjTSzGukeICl2u6ue
    SJAZECyvz14cqPBZa8BHRwd = SJAZEbKNLayFNQOfK7BGEub.SJAZECyvz14cqPBZa8BHRwd
    SJAZEJvLqXUWCmDFJBLleGx = SJAZEbKNLayFNQOfK7BGEub.SJAZEJvLqXUWCmDFJBLleGx
    SJAZEjW824LNB0yW9KOqkuE = SJAZEbKNLayFNQOfK7BGEub.SJAZEjW824LNB0yW9KOqkuE
    SJAZETqXs1AIbpvP9gabc3t = SJAZEbKNLayFNQOfK7BGEub.SJAZETqXs1AIbpvP9gabc3t
    SJAZEAyGV9lIdGdQJWQZ9Vj = SJAZEbKNLayFNQOfK7BGEub.SJAZEAyGV9lIdGdQJWQZ9Vj

    if SJAZEqW4EMg4h7fXuUJ0kd7?.SJAZElIhkpVkrSW0rayEYw6 != SJAZEbKNLayFNQOfK7BGEub.SJAZEqW4EMg4h7fXuUJ0kd7?.SJAZElIhkpVkrSW0rayEYw6 {
      SJAZEqW4EMg4h7fXuUJ0kd7 = SJAZEbKNLayFNQOfK7BGEub.SJAZEqW4EMg4h7fXuUJ0kd7
    }
  }
  /// 转 Dictionary
  func SJAZErTTrSFzQqvk8CqQGVx() -> [String: Any] {
    return [
      "e85aaddc015375ac9e850c24bc22b23b".SJAZET5gG1gyy5729np8EdY(): SJAZEVeQYjYRJfcllVneqRN,
      "648b7302c4ffa4b054fa5d1e4939b31e".SJAZET5gG1gyy5729np8EdY(): SJAZEqW4EMg4h7fXuUJ0kd7?.SJAZElIhkpVkrSW0rayEYw6 ?? "",
      "a0f7013a3f50839229f059dd7b5aeed1".SJAZET5gG1gyy5729np8EdY(): SJAZEsoZ0L6YgsKwJ0DlGuU,
      "0d28bb4be5ccd97aca57cdd956bddfb1".SJAZET5gG1gyy5729np8EdY(): SJAZEUVBfbq2UH81q7Ftbq3,
      "f6cad843cd3d3dcd47d1b5346673a1e2cedf43acd12a59e2c78c432fa7ba0b94".SJAZET5gG1gyy5729np8EdY(): SJAZEEPjTSzGukeICl2u6ue,
      "c66f0a438fd974b632e59d50e464ffca".SJAZET5gG1gyy5729np8EdY(): SJAZECyvz14cqPBZa8BHRwd,
      "3e7c2d90422ac1c55c4b1c8f8429fca9".SJAZET5gG1gyy5729np8EdY(): SJAZEJvLqXUWCmDFJBLleGx,
      "44cf9939f6386d0d9c74e1c187ea117e".SJAZET5gG1gyy5729np8EdY(): SJAZEjW824LNB0yW9KOqkuE,
      "f50ba09ba81424ddec0b9f728d04d6eb0c76813c27f77a81ea7ad79448483304".SJAZET5gG1gyy5729np8EdY(): SJAZETqXs1AIbpvP9gabc3t,
      "032d2a1c189c50080f7f3368d6e40a01f7515fa50a3d6a7b67c29ba4feb9a071".SJAZET5gG1gyy5729np8EdY(): SJAZEAyGV9lIdGdQJWQZ9Vj,
    ]
  }

  /// 转 JSON 字符串
  func SJAZEdCCqr3yHlozSZgz6ID() -> String? {
    guard let SJAZEkZrRMSHL5OBgA65cNH = try? JSONSerialization.data(withJSONObject: SJAZErTTrSFzQqvk8CqQGVx()) else {
      return nil
    }
    return String(data: SJAZEkZrRMSHL5OBgA65cNH, encoding: .utf8)
  }

  /// 从 JSON 创建对象，并关联 JnixAsuGeizModel
  static func SJAZE7KsC41Sdy5ej8SJeT1(
    _ SJAZEnkLAphU8uUYFhKArrL: [String: Any],
    modelContext SJAZEWoyFRmcFXlgp6kTJib: ModelContext
  ) -> BiekWudpWdqModel? {

    guard
      let SJAZEVeQYjYRJfcllVneqRN = SJAZEnkLAphU8uUYFhKArrL["e85aaddc015375ac9e850c24bc22b23b".SJAZET5gG1gyy5729np8EdY()] as? String,
      let SJAZElIhkpVkrSW0rayEYw6 = SJAZEnkLAphU8uUYFhKArrL["648b7302c4ffa4b054fa5d1e4939b31e".SJAZET5gG1gyy5729np8EdY()] as? String,
      let SJAZEsoZ0L6YgsKwJ0DlGuU = SJAZEnkLAphU8uUYFhKArrL["a0f7013a3f50839229f059dd7b5aeed1".SJAZET5gG1gyy5729np8EdY()] as? Int,
      let SJAZEUVBfbq2UH81q7Ftbq3 = SJAZEnkLAphU8uUYFhKArrL["0d28bb4be5ccd97aca57cdd956bddfb1".SJAZET5gG1gyy5729np8EdY()] as? String,
      let SJAZEEPjTSzGukeICl2u6ue = SJAZEnkLAphU8uUYFhKArrL["f6cad843cd3d3dcd47d1b5346673a1e2cedf43acd12a59e2c78c432fa7ba0b94".SJAZET5gG1gyy5729np8EdY()] as? Int,
      let SJAZEJvLqXUWCmDFJBLleGx = SJAZEnkLAphU8uUYFhKArrL["3e7c2d90422ac1c55c4b1c8f8429fca9".SJAZET5gG1gyy5729np8EdY()] as? [String],
      let SJAZEjW824LNB0yW9KOqkuE = SJAZEnkLAphU8uUYFhKArrL["44cf9939f6386d0d9c74e1c187ea117e".SJAZET5gG1gyy5729np8EdY()] as? String,
      let SJAZETqXs1AIbpvP9gabc3t = SJAZEnkLAphU8uUYFhKArrL["f50ba09ba81424ddec0b9f728d04d6eb0c76813c27f77a81ea7ad79448483304".SJAZET5gG1gyy5729np8EdY()] as? Int,
      let SJAZEAyGV9lIdGdQJWQZ9Vj = SJAZEnkLAphU8uUYFhKArrL["032d2a1c189c50080f7f3368d6e40a01f7515fa50a3d6a7b67c29ba4feb9a071".SJAZET5gG1gyy5729np8EdY()] as? Int
    else {
      return nil
    }
    let SJAZECyvz14cqPBZa8BHRwd = SJAZEnkLAphU8uUYFhKArrL["c66f0a438fd974b632e59d50e464ffca".SJAZET5gG1gyy5729np8EdY()] as? [String] ?? []

    // 查询关联用户
    let SJAZEW1A8KOP0BG880Z7jnO = FetchDescriptor<JnixAsuGeizModel>(
      predicate: #Predicate { $0.SJAZElIhkpVkrSW0rayEYw6 == SJAZElIhkpVkrSW0rayEYw6 }
    )
    let SJAZEqW4EMg4h7fXuUJ0kd7 = try? SJAZEWoyFRmcFXlgp6kTJib.fetch(SJAZEW1A8KOP0BG880Z7jnO).first

    return BiekWudpWdqModel(
      SJAZEVeQYjYRJfcllVneqRN: SJAZEVeQYjYRJfcllVneqRN,
      SJAZEqW4EMg4h7fXuUJ0kd7: SJAZEqW4EMg4h7fXuUJ0kd7,
      SJAZEsoZ0L6YgsKwJ0DlGuU: SJAZEsoZ0L6YgsKwJ0DlGuU,
      SJAZEUVBfbq2UH81q7Ftbq3: SJAZEUVBfbq2UH81q7Ftbq3,
      SJAZEEPjTSzGukeICl2u6ue: SJAZEEPjTSzGukeICl2u6ue,
      SJAZECyvz14cqPBZa8BHRwd: SJAZECyvz14cqPBZa8BHRwd,
      SJAZEJvLqXUWCmDFJBLleGx: SJAZEJvLqXUWCmDFJBLleGx,
      SJAZEjW824LNB0yW9KOqkuE: SJAZEjW824LNB0yW9KOqkuE,
      SJAZETqXs1AIbpvP9gabc3t: SJAZETqXs1AIbpvP9gabc3t,
      SJAZEAyGV9lIdGdQJWQZ9Vj: SJAZEAyGV9lIdGdQJWQZ9Vj
    )
  }
}
struct DynamicDTO: Codable {

  /// 帖子ID
  let SJAZEVeQYjYRJfcllVneqRN: String

  /// 发布人ID
  let SJAZElIhkpVkrSW0rayEYw6: String

  /// 帖子类型（0=图片，1=视频）
  let SJAZEsoZ0L6YgsKwJ0DlGuU: Int

  /// 帖子描述
  let SJAZEUVBfbq2UH81q7Ftbq3: String

  /// 图片帖子类型下标
  let SJAZEEPjTSzGukeICl2u6ue: Int

  let SJAZECyvz14cqPBZa8BHRwd: [String]?

  /// 图片地址
  let SJAZEJvLqXUWCmDFJBLleGx: [String]

  /// 视频地址
  let SJAZEjW824LNB0yW9KOqkuE: String

  /// 点赞数
  let SJAZETqXs1AIbpvP9gabc3t: Int

  /// 评论数
  let SJAZEAyGV9lIdGdQJWQZ9Vj: Int

  enum CodingKeys: String, CodingKey {
    case SJAZEVeQYjYRJfcllVneqRN = "e85aaddc015375ac9e850c24bc22b23b"
    case SJAZElIhkpVkrSW0rayEYw6 = "648b7302c4ffa4b054fa5d1e4939b31e"
    case SJAZEsoZ0L6YgsKwJ0DlGuU = "a0f7013a3f50839229f059dd7b5aeed1"
    case SJAZEUVBfbq2UH81q7Ftbq3 = "0d28bb4be5ccd97aca57cdd956bddfb1"
    case SJAZEEPjTSzGukeICl2u6ue = "f6cad843cd3d3dcd47d1b5346673a1e2cedf43acd12a59e2c78c432fa7ba0b94"
    case SJAZECyvz14cqPBZa8BHRwd = "c66f0a438fd974b632e59d50e464ffca"
    case SJAZEJvLqXUWCmDFJBLleGx = "3e7c2d90422ac1c55c4b1c8f8429fca9"
    case SJAZEjW824LNB0yW9KOqkuE = "44cf9939f6386d0d9c74e1c187ea117e"
    case SJAZETqXs1AIbpvP9gabc3t = "f50ba09ba81424ddec0b9f728d04d6eb0c76813c27f77a81ea7ad79448483304"
    case SJAZEAyGV9lIdGdQJWQZ9Vj = "032d2a1c189c50080f7f3368d6e40a01f7515fa50a3d6a7b67c29ba4feb9a071"
  }
}

extension DynamicDTO {

  /// DTO 转 Model，并关联 JnixAsuGeizModel
  func SJAZEJPFy9ykqn9XXvxsPWy(modelContext SJAZEWoyFRmcFXlgp6kTJib: ModelContext) -> BiekWudpWdqModel {
    // 查询对应用户
    let SJAZEW1A8KOP0BG880Z7jnO = FetchDescriptor<JnixAsuGeizModel>(
      predicate: #Predicate { $0.SJAZElIhkpVkrSW0rayEYw6 == self.SJAZElIhkpVkrSW0rayEYw6 }
    )
    let SJAZEqW4EMg4h7fXuUJ0kd7: JnixAsuGeizModel? = try? SJAZEWoyFRmcFXlgp6kTJib.fetch(SJAZEW1A8KOP0BG880Z7jnO).first

    return BiekWudpWdqModel(
      SJAZEVeQYjYRJfcllVneqRN: SJAZEVeQYjYRJfcllVneqRN,
      SJAZEqW4EMg4h7fXuUJ0kd7: SJAZEqW4EMg4h7fXuUJ0kd7,
      SJAZEsoZ0L6YgsKwJ0DlGuU: SJAZEsoZ0L6YgsKwJ0DlGuU,
      SJAZEUVBfbq2UH81q7Ftbq3: SJAZEUVBfbq2UH81q7Ftbq3,
      SJAZEEPjTSzGukeICl2u6ue: SJAZEEPjTSzGukeICl2u6ue,
      SJAZECyvz14cqPBZa8BHRwd: SJAZECyvz14cqPBZa8BHRwd ?? [],
      SJAZEJvLqXUWCmDFJBLleGx: SJAZEJvLqXUWCmDFJBLleGx,
      SJAZEjW824LNB0yW9KOqkuE: SJAZEjW824LNB0yW9KOqkuE,
      SJAZETqXs1AIbpvP9gabc3t: SJAZETqXs1AIbpvP9gabc3t,
      SJAZEAyGV9lIdGdQJWQZ9Vj: SJAZEAyGV9lIdGdQJWQZ9Vj
    )
  }
}
