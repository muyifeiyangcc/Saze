import CommonCrypto
import SwiftUI
import UIKit

private struct ImdttdwdNuoavTzghptSTS: Decodable {
  struct Result: Decodable {
    let AccessKeyId: String
    let AccessKeySecret: String
    let SecurityToken: String
    let bucket: String
    let host: String
    let cdnUrl: String
  }

  let code: String
  let result: Result
}

final class LIMmdttdwdNuoavTzghpt {
  static let shared = LIMmdttdwdNuoavTzghpt()
  private init() {}

  func sImmdttdwdNuoavTzghpt(_ image: UIImage, folder: String = "template_development") async -> String? {
    guard
      let data = image.jpegData(compressionQuality: 0.8),
      let sts = try? await Self.sts()
    else { return nil }

    let key = "\(folder)/\(Int(Date().timeIntervalSince1970 * 1000))-photo.jpg"
    return (try? await Self.put(data, key: key, sts: sts)).map { "\(sts.cdnUrl)/\(key)" }
  }

  private static func sts() async throws -> ImdttdwdNuoavTzghptSTS.Result {
    let url = URL(string: "https://api.wouldbeauty.com/sts/getkey")!
    let (data, response) = try await URLSession.shared.data(from: url)
    guard let code = (response as? HTTPURLResponse)?.statusCode, (200..<300).contains(code) else {
      throw URLError(.badServerResponse)
    }
    let res = try JSONDecoder().decode(ImdttdwdNuoavTzghptSTS.self, from: data)
    guard res.code == "0000" else { throw URLError(.cannotParseResponse) }
    return res.result
  }

  private static func put(_ data: Data, key: String, sts: ImdttdwdNuoavTzghptSTS.Result) async throws {
    let host = sts.host.hasPrefix("http") ? sts.host : "https://\(sts.host)"
    let url = URL(string: "\(host)/\(key.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? key)")!
    let type = "image/jpeg"
    let date = {
      let f = DateFormatter()
      f.locale = Locale(identifier: "en_US_POSIX")
      f.timeZone = TimeZone(secondsFromGMT: 0)
      f.dateFormat = "EEE, dd MMM yyyy HH:mm:ss 'GMT'"
      return f.string(from: Date())
    }()
    let canonical = "PUT\n\n\(type)\n\(date)\nx-oss-security-token:\(sts.SecurityToken)\n/\(sts.bucket)/\(key)"

    var req = URLRequest(url: url)
    req.httpMethod = "PUT"
    req.setValue(date, forHTTPHeaderField: "Date")
    req.setValue(type, forHTTPHeaderField: "Content-Type")
    req.setValue(sts.SecurityToken, forHTTPHeaderField: "x-oss-security-token")
    req.setValue("OSS \(sts.AccessKeyId):\(hmac(canonical, sts.AccessKeySecret))", forHTTPHeaderField: "Authorization")

    let (_, response) = try await URLSession.shared.upload(for: req, from: data)
    guard let code = (response as? HTTPURLResponse)?.statusCode, (200..<300).contains(code) else {
      throw URLError(.badServerResponse)
    }
  }

  private static func hmac(_ value: String, _ key: String) -> String {
    var digest = [UInt8](repeating: 0, count: Int(CC_SHA1_DIGEST_LENGTH))
    Data(key.utf8).withUnsafeBytes { k in
      Data(value.utf8).withUnsafeBytes { v in
        CCHmac(CCHmacAlgorithm(kCCHmacAlgSHA1), k.baseAddress, k.count, v.baseAddress, v.count, &digest)
      }
    }
    return Data(digest).base64EncodedString()
  }
}

struct ImdttdwdNuoavTzghpt: UIViewControllerRepresentable {
  let oISmdttdwdNuoavTzghpt: (String) -> Void
  let fPmdttdwdNuoavTzghpt: String
  @Environment(\.dismiss) private var dismiss

  func makeUIViewController(context: Context) -> UIImagePickerController {
    let vc = UIImagePickerController()
    vc.delegate = context.coordinator
    vc.sourceType = .photoLibrary
    vc.allowsEditing = true
    return vc
  }

  func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
  func makeCoordinator() -> Coordinator { Coordinator(self) }

  final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    let parent: ImdttdwdNuoavTzghpt
    init(_ parent: ImdttdwdNuoavTzghpt) { self.parent = parent }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
      guard let image = info[.editedImage] as? UIImage ?? info[.originalImage] as? UIImage else {
        finish(parent.fPmdttdwdNuoavTzghpt)
        return
      }

      Task {
        let url = await LIMmdttdwdNuoavTzghpt.shared.sImmdttdwdNuoavTzghpt(image) ?? parent.fPmdttdwdNuoavTzghpt
        await MainActor.run { self.finish(url) }
      }
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
      finish(parent.fPmdttdwdNuoavTzghpt)
    }

    private func finish(_ value: String) {
      parent.oISmdttdwdNuoavTzghpt(value)
      parent.dismiss()
    }
  }
}
