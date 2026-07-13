import CommonCrypto
import SwiftUI
import UIKit

private struct SJAZEQmu07G0oPHb9g: CodingKey {
  let stringValue: String
  let intValue: Int?

  init?(stringValue SJAZEiYohdTLh7bfkC: String) {
    stringValue = SJAZEiYohdTLh7bfkC
    intValue = nil
  }

  init?(intValue SJAZEaDMn8FjyL3Myh: Int) {
    stringValue = String(SJAZEaDMn8FjyL3Myh)
    intValue = SJAZEaDMn8FjyL3Myh
  }
}

private struct ImdttdwdNuoavTzghptSTS: Decodable {
  struct Result: Decodable {
    let SJAZELWqzcRfIl7tFh: String
    let SJAZE7BqKo4jcLAhpS: String
    let SJAZE2UXMVjvTLWznk: String
    let SJAZE3OfcSsKSek9Vf: String
    let SJAZE0Yky4PpseCQvJ: String
    let SJAZE0MWIwBI51S4r7: String

    init(from SJAZE67XL2XVyTZIf3: Decoder) throws {
      let SJAZENKn4EV9TZw9aH = try SJAZE67XL2XVyTZIf3.container(keyedBy: SJAZEQmu07G0oPHb9g.self)
      SJAZELWqzcRfIl7tFh = try SJAZENKn4EV9TZw9aH.decode(
        String.self,
        forKey: SJAZEQmu07G0oPHb9g(stringValue: "f25663d396e23af39e12af507e9309ec".SJAZET5gG1gyy5729np8EdY())!
      )
      SJAZE7BqKo4jcLAhpS = try SJAZENKn4EV9TZw9aH.decode(
        String.self,
        forKey: SJAZEQmu07G0oPHb9g(stringValue: "9a5de7bd9ccfd75518303fc104e8f12d".SJAZET5gG1gyy5729np8EdY())!
      )
      SJAZE2UXMVjvTLWznk = try SJAZENKn4EV9TZw9aH.decode(
        String.self,
        forKey: SJAZEQmu07G0oPHb9g(stringValue: "00957b354742ceb0a653e3aea799300f".SJAZET5gG1gyy5729np8EdY())!
      )
      SJAZE3OfcSsKSek9Vf = try SJAZENKn4EV9TZw9aH.decode(
        String.self,
        forKey: SJAZEQmu07G0oPHb9g(stringValue: "2710c977693d2b5e4f8156849bc67c4e".SJAZET5gG1gyy5729np8EdY())!
      )
      SJAZE0Yky4PpseCQvJ = try SJAZENKn4EV9TZw9aH.decode(
        String.self,
        forKey: SJAZEQmu07G0oPHb9g(stringValue: "62f3a5e29a059168be2beb6d4275f50c".SJAZET5gG1gyy5729np8EdY())!
      )
      SJAZE0MWIwBI51S4r7 = try SJAZENKn4EV9TZw9aH.decode(
        String.self,
        forKey: SJAZEQmu07G0oPHb9g(stringValue: "962c2fca11ab5a016dd93366577be84e".SJAZET5gG1gyy5729np8EdY())!
      )
    }
  }

  let SJAZEyMtlGOs8EGsDK: String
  let SJAZEtjICBl1Nshfsm: Result

  init(from SJAZE67XL2XVyTZIf3: Decoder) throws {
    let SJAZENKn4EV9TZw9aH = try SJAZE67XL2XVyTZIf3.container(keyedBy: SJAZEQmu07G0oPHb9g.self)
    SJAZEyMtlGOs8EGsDK = try SJAZENKn4EV9TZw9aH.decode(
      String.self,
      forKey: SJAZEQmu07G0oPHb9g(stringValue: "536ef3f5c576f1f92d5278fbafe06592".SJAZET5gG1gyy5729np8EdY())!
    )
    SJAZEtjICBl1Nshfsm = try SJAZENKn4EV9TZw9aH.decode(
      Result.self,
      forKey: SJAZEQmu07G0oPHb9g(stringValue: "032a90a39d9a6a5925294dfd102aa574".SJAZET5gG1gyy5729np8EdY())!
    )
  }
}

final class LIMmdttdwdNuoavTzghpt {
  static let SJAZEe5jayTBTjloNA = LIMmdttdwdNuoavTzghpt()
  private init() {}

  func SJAZENJV0IuMRQ9UMF(_ SJAZEwCsTXeNaPdGkL: UIImage, SJAZEGWSVpVAJpS98X: String? = nil) async -> String? {
    guard
      let SJAZEP9uoHf5vgDVUu = SJAZEwCsTXeNaPdGkL.jpegData(compressionQuality: 0.8),
      let SJAZEQKY0K4EQPBjZc = try? await Self.SJAZE7pbdkO8EsfzhE()
    else { return nil }

    let SJAZEbuoYIXBzaIvup = SJAZEGWSVpVAJpS98X
      ?? "bef2efc8b80bd4653af19d308962c93c0e05818268a2ffd9de8e3d83a66554b4".SJAZET5gG1gyy5729np8EdY()
    let SJAZEeXJ6L4bZv3Liq = "\(SJAZEbuoYIXBzaIvup)/\(Int(Date().timeIntervalSince1970 * 1000))"+"deddb14606310db524439260ffe3c888".SJAZET5gG1gyy5729np8EdY()
    return (try? await Self.SJAZELUG5QvuvcOmXk(
      SJAZEP9uoHf5vgDVUu,
      SJAZEeXJ6L4bZv3Liq: SJAZEeXJ6L4bZv3Liq,
      SJAZEQKY0K4EQPBjZc: SJAZEQKY0K4EQPBjZc
    )).map { "\(SJAZEQKY0K4EQPBjZc.SJAZE0MWIwBI51S4r7)/\(SJAZEeXJ6L4bZv3Liq)" }
  }

  private static func SJAZE7pbdkO8EsfzhE() async throws -> ImdttdwdNuoavTzghptSTS.Result {
    let SJAZECYhsOgsU9BRpR = URL(string: "1afd737f461b706490bebc0d51d7531b0d641860eb574469569aa6c658af20bbb6c00c8025dd3eb8432a3cab429a8643".SJAZET5gG1gyy5729np8EdY())!
    let (SJAZEiYohdTLh7bfkC, SJAZEdIcvV45359i1F) = try await URLSession.shared.data(from: SJAZECYhsOgsU9BRpR)
    guard let SJAZE67XL2XVyTZIf3 = (SJAZEdIcvV45359i1F as? HTTPURLResponse)?.statusCode,
          (200..<300).contains(SJAZE67XL2XVyTZIf3)
    else {
      throw URLError(.badServerResponse)
    }
    let SJAZEZfWv2Lafp7GSX = try JSONDecoder().decode(ImdttdwdNuoavTzghptSTS.self, from: SJAZEiYohdTLh7bfkC)
    guard SJAZEZfWv2Lafp7GSX.SJAZEyMtlGOs8EGsDK == "e5bd80d70e15efe3af0d98d46bc2eebb".SJAZET5gG1gyy5729np8EdY() else { throw URLError(.cannotParseResponse) }
    return SJAZEZfWv2Lafp7GSX.SJAZEtjICBl1Nshfsm
  }

  private static func SJAZELUG5QvuvcOmXk(
    _ SJAZEP9uoHf5vgDVUu: Data,
    SJAZEeXJ6L4bZv3Liq: String,
    SJAZEQKY0K4EQPBjZc: ImdttdwdNuoavTzghptSTS.Result
  ) async throws {
    let SJAZE0Yky4PpseCQvJ = SJAZEQKY0K4EQPBjZc.SJAZE0Yky4PpseCQvJ.hasPrefix("6b077365e713a3106a6cd6bcf3c68bc5".SJAZET5gG1gyy5729np8EdY())
      ? SJAZEQKY0K4EQPBjZc.SJAZE0Yky4PpseCQvJ
      : "https://\(SJAZEQKY0K4EQPBjZc.SJAZE0Yky4PpseCQvJ)"
    let SJAZEOWRBGP0uz2b4y = URL(string: "\(SJAZE0Yky4PpseCQvJ)/\(SJAZEeXJ6L4bZv3Liq.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? SJAZEeXJ6L4bZv3Liq)")!
    let SJAZEA3bfXP9ihK11q = "4d5787553723bc82ce2f7190c2ba6457".SJAZET5gG1gyy5729np8EdY()
    let SJAZEiQI5GgAdqQoH4 = {
      let SJAZE0LERUZOjEgCJ4 = DateFormatter()
      SJAZE0LERUZOjEgCJ4.locale = Locale(identifier: "11b6fadd83e0b1f840cb0819a8d0fd34".SJAZET5gG1gyy5729np8EdY())
      SJAZE0LERUZOjEgCJ4.timeZone = TimeZone(secondsFromGMT: 0)
      SJAZE0LERUZOjEgCJ4.dateFormat = "EEE, dd MMM yyyy HH:mm:ss 'GMT'"
      return SJAZE0LERUZOjEgCJ4.string(from: Date())
    }()
    let SJAZEDpNA2krPJhyEg = "PUT\n\n\(SJAZEA3bfXP9ihK11q)\n\(SJAZEiQI5GgAdqQoH4)\nx-oss-security-token:\(SJAZEQKY0K4EQPBjZc.SJAZE2UXMVjvTLWznk)\n/\(SJAZEQKY0K4EQPBjZc.SJAZE3OfcSsKSek9Vf)/\(SJAZEeXJ6L4bZv3Liq)"

    var SJAZEKPz3m4Svczxbr = URLRequest(url: SJAZEOWRBGP0uz2b4y)
    SJAZEKPz3m4Svczxbr.httpMethod = "7fa26f5cd44208e235f79b75cb458598".SJAZET5gG1gyy5729np8EdY()
    SJAZEKPz3m4Svczxbr.setValue(SJAZEiQI5GgAdqQoH4, forHTTPHeaderField: "57f7721cd320efe84ff83651e63474d3".SJAZET5gG1gyy5729np8EdY())
    SJAZEKPz3m4Svczxbr.setValue(SJAZEA3bfXP9ihK11q, forHTTPHeaderField: "13f1b8ffc8cf587d0ab354776537d11a".SJAZET5gG1gyy5729np8EdY())
    SJAZEKPz3m4Svczxbr.setValue(SJAZEQKY0K4EQPBjZc.SJAZE2UXMVjvTLWznk, forHTTPHeaderField: "x-oss-security-token".SJAZET5gG1gyy5729np8EdY())
    SJAZEKPz3m4Svczxbr.setValue(
      "OSS \(SJAZEQKY0K4EQPBjZc.SJAZELWqzcRfIl7tFh):\(SJAZEKHET8DhmplgKU(SJAZEDpNA2krPJhyEg, SJAZEQKY0K4EQPBjZc.SJAZE7BqKo4jcLAhpS))",
      forHTTPHeaderField: "d00caf0f6089480f075c71fa5d99ea2f".SJAZET5gG1gyy5729np8EdY()
    )

    let (_, SJAZEaDMn8FjyL3Myh) = try await URLSession.shared.upload(for: SJAZEKPz3m4Svczxbr, from: SJAZEP9uoHf5vgDVUu)
    guard let SJAZENKn4EV9TZw9aH = (SJAZEaDMn8FjyL3Myh as? HTTPURLResponse)?.statusCode,
          (200..<300).contains(SJAZENKn4EV9TZw9aH)
    else {
      throw URLError(.badServerResponse)
    }
  }

  private static func SJAZEKHET8DhmplgKU(_ SJAZEN2Tp8UZOhMDCy: String, _ SJAZEeJC2IEqCYTBAH: String) -> String {
    var SJAZEl8z9CEnRVFeTL = [UInt8](repeating: 0, count: Int(CC_SHA1_DIGEST_LENGTH))
    Data(SJAZEeJC2IEqCYTBAH.utf8).withUnsafeBytes { SJAZEiA0b9Xr8JBeIT in
      Data(SJAZEN2Tp8UZOhMDCy.utf8).withUnsafeBytes { SJAZER7EZkNadPvjdX in
        CCHmac(
          CCHmacAlgorithm(kCCHmacAlgSHA1),
          SJAZEiA0b9Xr8JBeIT.baseAddress,
          SJAZEiA0b9Xr8JBeIT.count,
          SJAZER7EZkNadPvjdX.baseAddress,
          SJAZER7EZkNadPvjdX.count,
          &SJAZEl8z9CEnRVFeTL
        )
      }
    }
    return Data(SJAZEl8z9CEnRVFeTL).base64EncodedString()
  }
}

struct ImdttdwdNuoavTzghpt: UIViewControllerRepresentable {
  let SJAZE9e7xO6bhlDd6V: (String) -> Void
  let SJAZERluP4hh9dHQwr: String
  @Environment(\.dismiss) private var SJAZE9ZvsFtLL93HBs

  func makeUIViewController(context SJAZEpMCWMYcjsgJ21: Context) -> UIImagePickerController {
    let SJAZEnDOfoN5hhsIvZ = UIImagePickerController()
    SJAZEnDOfoN5hhsIvZ.delegate = SJAZEpMCWMYcjsgJ21.coordinator
    SJAZEnDOfoN5hhsIvZ.sourceType = .photoLibrary
    SJAZEnDOfoN5hhsIvZ.allowsEditing = true
    return SJAZEnDOfoN5hhsIvZ
  }

  func updateUIViewController(_ SJAZEBspJpoLoD5jU2: UIImagePickerController, context SJAZEQmu07G0oPHb9g: Context) {}
  func makeCoordinator() -> Coordinator { Coordinator(self) }

  final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    let SJAZEL7XC5HuhE9tpW: ImdttdwdNuoavTzghpt
    init(_ SJAZEL7XC5HuhE9tpW: ImdttdwdNuoavTzghpt) { self.SJAZEL7XC5HuhE9tpW = SJAZEL7XC5HuhE9tpW }

    func imagePickerController(
      _ SJAZEizddhGujBAmOs: UIImagePickerController,
      didFinishPickingMediaWithInfo SJAZEmJqiEC7y56IG8: [UIImagePickerController.InfoKey: Any]
    ) {
      guard let SJAZEwCsTXeNaPdGkL = SJAZEmJqiEC7y56IG8[.editedImage] as? UIImage
        ?? SJAZEmJqiEC7y56IG8[.originalImage] as? UIImage
      else {
        SJAZEgtek2kopzxwLR(SJAZEL7XC5HuhE9tpW.SJAZERluP4hh9dHQwr)
        return
      }

      Task {
        let SJAZE8Un4FlXXpSc8W = await LIMmdttdwdNuoavTzghpt.SJAZEe5jayTBTjloNA.SJAZENJV0IuMRQ9UMF(SJAZEwCsTXeNaPdGkL)
          ?? SJAZEL7XC5HuhE9tpW.SJAZERluP4hh9dHQwr
        await MainActor.run { self.SJAZEgtek2kopzxwLR(SJAZE8Un4FlXXpSc8W) }
      }
    }

    func imagePickerControllerDidCancel(_ SJAZEbuoYIXBzaIvup: UIImagePickerController) {
      SJAZEgtek2kopzxwLR(SJAZEL7XC5HuhE9tpW.SJAZERluP4hh9dHQwr)
    }

    private func SJAZEgtek2kopzxwLR(_ SJAZEXyxL0GLscwimk: String) {
      SJAZEL7XC5HuhE9tpW.SJAZE9e7xO6bhlDd6V(SJAZEXyxL0GLscwimk)
      SJAZEL7XC5HuhE9tpW.SJAZE9ZvsFtLL93HBs()
    }
  }
}
