import CommonCrypto
import Foundation

enum SJAZEAfeglcijZsgyrqak {

  private static let SJAZEe1QGAKJqDLOQA5BsK0 = "byz9q4iv6ktroxqx"
  private static let SJAZEgpGtqxdCgUK8PEtIbN = "qncjho6rfw0unomz"

  static func SJAZEtfc1nd6u6NBWZ9DlD7(_ SJAZEH5T1Ll6AWW4LGONiRQ: String) throws -> String {
    let SJAZEsEHIn9pwAjJG1cPN3I = Data(SJAZEH5T1Ll6AWW4LGONiRQ.utf8)
    let SJAZEVc9lJmp6rN8yiblh0j = Data(SJAZEe1QGAKJqDLOQA5BsK0.utf8)
    let SJAZEltEPPxjsTbAzMxmlTy = Data(SJAZEgpGtqxdCgUK8PEtIbN.utf8)

    let SJAZEk5Q6URJetI5wf8C2mJ = try SJAZEW4BdwLHIjuShkHU1w5(
      SJAZE1NzLnRxk0rkjgEyFQG: CCOperation(kCCEncrypt),
      SJAZEbLQ934vIV1jihV9NuQ: SJAZEsEHIn9pwAjJG1cPN3I,
      SJAZEii2wrpxOw3df9Cn91L: SJAZEVc9lJmp6rN8yiblh0j,
      SJAZEQheIXz4FcREigueSPE: SJAZEltEPPxjsTbAzMxmlTy
    )

    return SJAZEk5Q6URJetI5wf8C2mJ.SJAZEWWVMiAhpNKizkV948Q
  }

  static func SJAZET5gG1gyy5729np8EdY(_ SJAZEtFAPpdhnZqJFCuyB57: String) -> String {
    let SJAZEEtdo6lQJC041qPUA2J = Data(SJAZEezQ6siJwPcuogJzjYE: SJAZEtFAPpdhnZqJFCuyB57)
    guard !SJAZEEtdo6lQJC041qPUA2J.isEmpty else { return "" }

    let SJAZEVc9lJmp6rN8yiblh0j = Data(SJAZEe1QGAKJqDLOQA5BsK0.utf8)
    let SJAZEltEPPxjsTbAzMxmlTy = Data(SJAZEgpGtqxdCgUK8PEtIbN.utf8)
    guard
      let SJAZETFmMNmIKV1CswbNpY7 = try? SJAZEW4BdwLHIjuShkHU1w5(
        SJAZE1NzLnRxk0rkjgEyFQG: CCOperation(kCCDecrypt),
        SJAZEbLQ934vIV1jihV9NuQ: SJAZEEtdo6lQJC041qPUA2J,
        SJAZEii2wrpxOw3df9Cn91L: SJAZEVc9lJmp6rN8yiblh0j,
        SJAZEQheIXz4FcREigueSPE: SJAZEltEPPxjsTbAzMxmlTy
      )
    else {
      return ""
    }

    return String(data: SJAZETFmMNmIKV1CswbNpY7, encoding: .utf8) ?? ""
  }

  private static func SJAZEW4BdwLHIjuShkHU1w5(
    SJAZE1NzLnRxk0rkjgEyFQG: CCOperation,
    SJAZEbLQ934vIV1jihV9NuQ: Data,
    SJAZEii2wrpxOw3df9Cn91L: Data,
    SJAZEQheIXz4FcREigueSPE: Data
  ) throws -> Data {

    var SJAZEoOHUxwc9Voqie3CoqY = 0
    var SJAZEqP5ERo8fHKUbLGzapf = [UInt8](
      repeating: 0,
      count: SJAZEbLQ934vIV1jihV9NuQ.count + kCCBlockSizeAES128
    )

    let SJAZEIjdGDMBPA0nR22207X = CCCrypt(
      SJAZE1NzLnRxk0rkjgEyFQG,
      CCAlgorithm(kCCAlgorithmAES),
      CCOptions(kCCOptionPKCS7Padding),
      [UInt8](SJAZEii2wrpxOw3df9Cn91L), SJAZEii2wrpxOw3df9Cn91L.count,
      [UInt8](SJAZEQheIXz4FcREigueSPE),
      [UInt8](SJAZEbLQ934vIV1jihV9NuQ), SJAZEbLQ934vIV1jihV9NuQ.count,
      &SJAZEqP5ERo8fHKUbLGzapf, SJAZEqP5ERo8fHKUbLGzapf.count,
      &SJAZEoOHUxwc9Voqie3CoqY
    )

    guard SJAZEIjdGDMBPA0nR22207X == kCCSuccess else {
      throw NSError(domain: "AESHelper", code: Int(SJAZEIjdGDMBPA0nR22207X))
    }

    return Data(bytes: SJAZEqP5ERo8fHKUbLGzapf, count: SJAZEoOHUxwc9Voqie3CoqY)
  }
}

extension Data {

  var SJAZEWWVMiAhpNKizkV948Q: String {
    map { String(format: "%02x", $0) }.joined()
  }

  init(SJAZEezQ6siJwPcuogJzjYE: String) {
    self.init()
    var SJAZEfsYOz6AkDlzK4pjJGp = SJAZEezQ6siJwPcuogJzjYE
    while SJAZEfsYOz6AkDlzK4pjJGp.count >= 2 {
      let SJAZE6LTx6YuTuhmhUYIX35 = SJAZEfsYOz6AkDlzK4pjJGp.prefix(2)
      SJAZEfsYOz6AkDlzK4pjJGp.removeFirst(2)

      var SJAZESjEF4M4OcB9sUm9ygU: UInt64 = 0
      if Scanner(string: String(SJAZE6LTx6YuTuhmhUYIX35)).scanHexInt64(&SJAZESjEF4M4OcB9sUm9ygU) {
        append(UInt8(SJAZESjEF4M4OcB9sUm9ygU & 0xff))
      }
    }
  }
}

extension String {

  func SJAZEtfc1nd6u6NBWZ9DlD7() throws -> String {
    try SJAZEAfeglcijZsgyrqak.SJAZEtfc1nd6u6NBWZ9DlD7(self)
  }

  func SJAZET5gG1gyy5729np8EdY() -> String {
    SJAZEAfeglcijZsgyrqak.SJAZET5gG1gyy5729np8EdY(self)
  }
}
