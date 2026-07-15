import Foundation
import SwiftData

@Model
final class BiekWudpWdqModel {

  @Attribute(.unique)
  var SJAZEVeQYjYRJfcllVneqRN: String

  @Relationship(deleteRule: .cascade)
  var SJAZEqW4EMg4h7fXuUJ0kd7: JnixAsuGeizModel?

  var SJAZEsoZ0L6YgsKwJ0DlGuU: Int

  var SJAZEUVBfbq2UH81q7Ftbq3: String

  var SJAZEEPjTSzGukeICl2u6ue: Int

  var SJAZECyvz14cqPBZa8BHRwd: [String]

  var SJAZEJvLqXUWCmDFJBLleGx: [String]

  var SJAZEjW824LNB0yW9KOqkuE: String

  var SJAZETqXs1AIbpvP9gabc3t: Int
    
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

  func SJAZErTTrSFzQqvk8CqQGVx() -> [String: Any] {
    return [
      "e85aaddc015375ac9e850c24bc22b23b".SJAZET5gG1gyy5729np8EdY(): SJAZEVeQYjYRJfcllVneqRN,
      "648b7302c4ffa4b054fa5d1e4939b31e".SJAZET5gG1gyy5729np8EdY(): SJAZEqW4EMg4h7fXuUJ0kd7?.SJAZElIhkpVkrSW0rayEYw6 ?? "",
      "a0f7013a3f50839229f059dd7b5aeed1".SJAZET5gG1gyy5729np8EdY(): SJAZEsoZ0L6YgsKwJ0DlGuU,
      "0d28bb4be5ccd97aca57cdd956bddfb1".SJAZET5gG1gyy5729np8EdY(): SJAZEUVBfbq2UH81q7Ftbq3,
      "f6cad843cd3d3dcd47d1b5346673a1e2cedf43acd12a59e2c78c432fa7ba0b94".SJAZET5gG1gyy5729np8EdY(): SJAZEEPjTSzGukeICl2u6ue,
      "741799e85e3dff0ffcd66fdcc34af5ed".SJAZET5gG1gyy5729np8EdY(): SJAZECyvz14cqPBZa8BHRwd,
      "3e7c2d90422ac1c55c4b1c8f8429fca9".SJAZET5gG1gyy5729np8EdY(): SJAZEJvLqXUWCmDFJBLleGx,
      "44cf9939f6386d0d9c74e1c187ea117e".SJAZET5gG1gyy5729np8EdY(): SJAZEjW824LNB0yW9KOqkuE,
      "f50ba09ba81424ddec0b9f728d04d6eb0c76813c27f77a81ea7ad79448483304".SJAZET5gG1gyy5729np8EdY(): SJAZETqXs1AIbpvP9gabc3t,
      "032d2a1c189c50080f7f3368d6e40a01f7515fa50a3d6a7b67c29ba4feb9a071".SJAZET5gG1gyy5729np8EdY(): SJAZEAyGV9lIdGdQJWQZ9Vj,
    ]
  }

  func SJAZEdCCqr3yHlozSZgz6ID() -> String? {
    guard let SJAZEkZrRMSHL5OBgA65cNH = try? JSONSerialization.data(withJSONObject: SJAZErTTrSFzQqvk8CqQGVx()) else {
      return nil
    }
    return String(data: SJAZEkZrRMSHL5OBgA65cNH, encoding: .utf8)
  }

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

  let SJAZEVeQYjYRJfcllVneqRN: String

  let SJAZElIhkpVkrSW0rayEYw6: String

  let SJAZEsoZ0L6YgsKwJ0DlGuU: Int

  let SJAZEUVBfbq2UH81q7Ftbq3: String

  let SJAZEEPjTSzGukeICl2u6ue: Int

  let SJAZECyvz14cqPBZa8BHRwd: [String]?

  let SJAZEJvLqXUWCmDFJBLleGx: [String]

  let SJAZEjW824LNB0yW9KOqkuE: String

  let SJAZETqXs1AIbpvP9gabc3t: Int

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

  private struct SJAZESmF9YE6Ugl08Npi4Ae: CodingKey {
    let stringValue: String
    let intValue: Int? = nil

    init?(stringValue: String) {
      self.stringValue = stringValue
    }

    init?(intValue: Int) {
      return nil
    }
  }

  init(from SJAZEm457iSGmOI4UEZPFCn: Decoder) throws {
    let SJAZEZzBMTsbZH1eTmZ0UYE = try SJAZEm457iSGmOI4UEZPFCn.container(keyedBy: SJAZESmF9YE6Ugl08Npi4Ae.self)

    func SJAZEISF6h2D0xpKIUGuYdZ(_ SJAZEYQCh4mV3otG15oWCCx: String, _ SJAZEKkIRsdymhvGBWjm2Av: String) throws -> String {
      if let SJAZEhYgxetNNG33SvhOYiX = try? SJAZEZzBMTsbZH1eTmZ0UYE.decode(String.self, forKey: SJAZESmF9YE6Ugl08Npi4Ae(stringValue: SJAZEYQCh4mV3otG15oWCCx)!) {
        return SJAZEhYgxetNNG33SvhOYiX
      }
      return try SJAZEZzBMTsbZH1eTmZ0UYE.decode(String.self, forKey: SJAZESmF9YE6Ugl08Npi4Ae(stringValue: SJAZEKkIRsdymhvGBWjm2Av)!)
    }

    func SJAZEZiVcjD7tR38RqEqDxY(_ SJAZEYQCh4mV3otG15oWCCx: String, _ SJAZEKkIRsdymhvGBWjm2Av: String) throws -> Int {
      if let SJAZEhYgxetNNG33SvhOYiX = try? SJAZEZzBMTsbZH1eTmZ0UYE.decode(Int.self, forKey: SJAZESmF9YE6Ugl08Npi4Ae(stringValue: SJAZEYQCh4mV3otG15oWCCx)!) {
        return SJAZEhYgxetNNG33SvhOYiX
      }
      return try SJAZEZzBMTsbZH1eTmZ0UYE.decode(Int.self, forKey: SJAZESmF9YE6Ugl08Npi4Ae(stringValue: SJAZEKkIRsdymhvGBWjm2Av)!)
    }

    func SJAZEaW0ZtsT27YYyJUOT2d(_ SJAZEYQCh4mV3otG15oWCCx: String, _ SJAZEKkIRsdymhvGBWjm2Av: String) throws -> [String] {
      if let SJAZEhYgxetNNG33SvhOYiX = try? SJAZEZzBMTsbZH1eTmZ0UYE.decode([String].self, forKey: SJAZESmF9YE6Ugl08Npi4Ae(stringValue: SJAZEYQCh4mV3otG15oWCCx)!) {
        return SJAZEhYgxetNNG33SvhOYiX
      }
      return try SJAZEZzBMTsbZH1eTmZ0UYE.decode([String].self, forKey: SJAZESmF9YE6Ugl08Npi4Ae(stringValue: SJAZEKkIRsdymhvGBWjm2Av)!)
    }

    func SJAZExojJCPpyxfpsM5RIl9(_ SJAZEYQCh4mV3otG15oWCCx: String, _ SJAZEKkIRsdymhvGBWjm2Av: String) -> [String]? {
      if let SJAZEhYgxetNNG33SvhOYiX = try? SJAZEZzBMTsbZH1eTmZ0UYE.decode([String].self, forKey: SJAZESmF9YE6Ugl08Npi4Ae(stringValue: SJAZEYQCh4mV3otG15oWCCx)!) {
        return SJAZEhYgxetNNG33SvhOYiX
      }
      return try? SJAZEZzBMTsbZH1eTmZ0UYE.decode([String].self, forKey: SJAZESmF9YE6Ugl08Npi4Ae(stringValue: SJAZEKkIRsdymhvGBWjm2Av)!)
    }

    SJAZEVeQYjYRJfcllVneqRN = try SJAZEISF6h2D0xpKIUGuYdZ(CodingKeys.SJAZEVeQYjYRJfcllVneqRN.rawValue, "e85aaddc015375ac9e850c24bc22b23b".SJAZET5gG1gyy5729np8EdY())
    SJAZElIhkpVkrSW0rayEYw6 = try SJAZEISF6h2D0xpKIUGuYdZ(CodingKeys.SJAZElIhkpVkrSW0rayEYw6.rawValue, "648b7302c4ffa4b054fa5d1e4939b31e".SJAZET5gG1gyy5729np8EdY())
    SJAZEsoZ0L6YgsKwJ0DlGuU = try SJAZEZiVcjD7tR38RqEqDxY(CodingKeys.SJAZEsoZ0L6YgsKwJ0DlGuU.rawValue, "a0f7013a3f50839229f059dd7b5aeed1".SJAZET5gG1gyy5729np8EdY())
    SJAZEUVBfbq2UH81q7Ftbq3 = try SJAZEISF6h2D0xpKIUGuYdZ(CodingKeys.SJAZEUVBfbq2UH81q7Ftbq3.rawValue, "0d28bb4be5ccd97aca57cdd956bddfb1".SJAZET5gG1gyy5729np8EdY())
    SJAZEEPjTSzGukeICl2u6ue = try SJAZEZiVcjD7tR38RqEqDxY(CodingKeys.SJAZEEPjTSzGukeICl2u6ue.rawValue, "f6cad843cd3d3dcd47d1b5346673a1e2cedf43acd12a59e2c78c432fa7ba0b94".SJAZET5gG1gyy5729np8EdY())
    SJAZECyvz14cqPBZa8BHRwd = SJAZExojJCPpyxfpsM5RIl9(CodingKeys.SJAZECyvz14cqPBZa8BHRwd.rawValue, "741799e85e3dff0ffcd66fdcc34af5ed".SJAZET5gG1gyy5729np8EdY())
    SJAZEJvLqXUWCmDFJBLleGx = try SJAZEaW0ZtsT27YYyJUOT2d(CodingKeys.SJAZEJvLqXUWCmDFJBLleGx.rawValue, "3e7c2d90422ac1c55c4b1c8f8429fca9".SJAZET5gG1gyy5729np8EdY())
    SJAZEjW824LNB0yW9KOqkuE = try SJAZEISF6h2D0xpKIUGuYdZ(CodingKeys.SJAZEjW824LNB0yW9KOqkuE.rawValue, "44cf9939f6386d0d9c74e1c187ea117e".SJAZET5gG1gyy5729np8EdY())
    SJAZETqXs1AIbpvP9gabc3t = try SJAZEZiVcjD7tR38RqEqDxY(CodingKeys.SJAZETqXs1AIbpvP9gabc3t.rawValue, "f50ba09ba81424ddec0b9f728d04d6eb0c76813c27f77a81ea7ad79448483304".SJAZET5gG1gyy5729np8EdY())
    SJAZEAyGV9lIdGdQJWQZ9Vj = try SJAZEZiVcjD7tR38RqEqDxY(CodingKeys.SJAZEAyGV9lIdGdQJWQZ9Vj.rawValue, "032d2a1c189c50080f7f3368d6e40a01f7515fa50a3d6a7b67c29ba4feb9a071".SJAZET5gG1gyy5729np8EdY())
  }
}

extension DynamicDTO {

  func SJAZEJPFy9ykqn9XXvxsPWy(modelContext SJAZEWoyFRmcFXlgp6kTJib: ModelContext) -> BiekWudpWdqModel {
    
    let SJAZEW1A8KOP0BG880Z7jnO = FetchDescriptor<JnixAsuGeizModel>(
      predicate: #Predicate { $0.SJAZElIhkpVkrSW0rayEYw6 == self.SJAZElIhkpVkrSW0rayEYw6 }
    )
    let SJAZEqW4EMg4h7fXuUJ0kd7: JnixAsuGeizModel? = try? SJAZEWoyFRmcFXlgp6kTJib.fetch(SJAZEW1A8KOP0BG880Z7jnO).first
    let SJAZEOvjacrMWeFnHI = "ad57fd78fec4f2818b396380adfacc6cbc318a765a9c0c7c0506d9a6180909f922da1509667ff7179a103e7cbfcde0f8383b650571488888e3741abb4036efa483c1a1f1f4bac456c6a2cc363878eded".SJAZET5gG1gyy5729np8EdY()
    let SJAZE6YKIvLYxKdmNM = "a3483a210873e9b626137f1b46d022fdf3a78aaad5bf9e82bd834238962371097bf41217c47823aa6d3d3699d1f61f808cf5969cb6589fd1f1634182fdd90b76".SJAZET5gG1gyy5729np8EdY()
    let SJAZEPXqTKAhnj2eYw = SJAZEJvLqXUWCmDFJBLleGx.map {
      if $0.hasPrefix("6b077365e713a3106a6cd6bcf3c68bc5".SJAZET5gG1gyy5729np8EdY()) {
        return $0
      }
      return ($0.hasPrefix("09a334f2caa64f1c6c14dd18d2602041".SJAZET5gG1gyy5729np8EdY()) ? SJAZE6YKIvLYxKdmNM : SJAZEOvjacrMWeFnHI) + $0
    }
    let SJAZEtupPHpg0oD23E = SJAZEjW824LNB0yW9KOqkuE.isEmpty || SJAZEjW824LNB0yW9KOqkuE.hasPrefix("6b077365e713a3106a6cd6bcf3c68bc5".SJAZET5gG1gyy5729np8EdY())
      ? SJAZEjW824LNB0yW9KOqkuE
      : SJAZEOvjacrMWeFnHI + SJAZEjW824LNB0yW9KOqkuE

    return BiekWudpWdqModel(
      SJAZEVeQYjYRJfcllVneqRN: SJAZEVeQYjYRJfcllVneqRN,
      SJAZEqW4EMg4h7fXuUJ0kd7: SJAZEqW4EMg4h7fXuUJ0kd7,
      SJAZEsoZ0L6YgsKwJ0DlGuU: SJAZEsoZ0L6YgsKwJ0DlGuU,
      SJAZEUVBfbq2UH81q7Ftbq3: SJAZEUVBfbq2UH81q7Ftbq3,
      SJAZEEPjTSzGukeICl2u6ue: SJAZEEPjTSzGukeICl2u6ue,
      SJAZECyvz14cqPBZa8BHRwd: SJAZECyvz14cqPBZa8BHRwd ?? [],
      SJAZEJvLqXUWCmDFJBLleGx: SJAZEPXqTKAhnj2eYw,
      SJAZEjW824LNB0yW9KOqkuE: SJAZEtupPHpg0oD23E,
      SJAZETqXs1AIbpvP9gabc3t: SJAZETqXs1AIbpvP9gabc3t,
      SJAZEAyGV9lIdGdQJWQZ9Vj: SJAZEAyGV9lIdGdQJWQZ9Vj
    )
  }
}
