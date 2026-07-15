import Combine
import Foundation
import StoreKit

struct CoinProduct: Hashable, Codable {
  let SJAZEuhzNZ4F9JegrQqQ7c: String
  let SJAZE2eI9NcmPlSV7kZHJi: Double
  let SJAZElp9oBREs8dyBVfPyP: Int
}

@MainActor
final class VvolHdqhEszePurchase: NSObject, ObservableObject {

  @Published var SJAZEB8eL7QDCxJufVYfWf: [SKProduct] = []
  @Published var SJAZEz4PMk3RfJRHTGElwE: Set<String> = []

  let SJAZEMRZG6GlgZLuQQucUT: [CoinProduct] = [
    .init(SJAZEuhzNZ4F9JegrQqQ7c: "1371416e13aa24acd08ad700db5b4a8fd1b697dd85b74e7c4491826dc2898768".SJAZET5gG1gyy5729np8EdY(), SJAZE2eI9NcmPlSV7kZHJi: 0.99, SJAZElp9oBREs8dyBVfPyP: 400),
    .init(SJAZEuhzNZ4F9JegrQqQ7c: "6f874c7f2750c791ebbf1ae5b8fb9245e577f6c54eeda0c59f30bf4cdb18e2c0".SJAZET5gG1gyy5729np8EdY(), SJAZE2eI9NcmPlSV7kZHJi: 1.99, SJAZElp9oBREs8dyBVfPyP: 800),
    .init(SJAZEuhzNZ4F9JegrQqQ7c: "6e890b58b6bb878172c87d1237af92dce6e7849b505c3de640b9763b4b206533".SJAZET5gG1gyy5729np8EdY(), SJAZE2eI9NcmPlSV7kZHJi: 3.99, SJAZElp9oBREs8dyBVfPyP: 2190),
    .init(SJAZEuhzNZ4F9JegrQqQ7c: "58cf533a5423867b52f9d015044d64cda52c0ada8712a2e559c3d09f629d4719".SJAZET5gG1gyy5729np8EdY(), SJAZE2eI9NcmPlSV7kZHJi: 4.99, SJAZElp9oBREs8dyBVfPyP: 2450),
    .init(SJAZEuhzNZ4F9JegrQqQ7c: "ed8785a579bab2c87a72f19df6aebbee716f5852cf568855f722b56ebafc0f87".SJAZET5gG1gyy5729np8EdY(), SJAZE2eI9NcmPlSV7kZHJi: 8.99, SJAZElp9oBREs8dyBVfPyP: 3950),
    .init(SJAZEuhzNZ4F9JegrQqQ7c: "8423873da9b3aefd90043543b8764e35b8f9241c7f24e47f02bfa209862f2794".SJAZET5gG1gyy5729np8EdY(), SJAZE2eI9NcmPlSV7kZHJi: 9.99, SJAZElp9oBREs8dyBVfPyP: 5150),
    .init(SJAZEuhzNZ4F9JegrQqQ7c: "cb350ba6b64cc0665bfd8283a62fa0056d8ec9c2d365be3b6f9d90c14039c3d2".SJAZET5gG1gyy5729np8EdY(), SJAZE2eI9NcmPlSV7kZHJi: 14.99, SJAZElp9oBREs8dyBVfPyP: 5700),
    .init(SJAZEuhzNZ4F9JegrQqQ7c: "e00840144c08de84bb098a1b68de0802cc6e5be2e581adeb88b06eb905828f3f".SJAZET5gG1gyy5729np8EdY(), SJAZE2eI9NcmPlSV7kZHJi: 19.99, SJAZElp9oBREs8dyBVfPyP: 10800),
    .init(SJAZEuhzNZ4F9JegrQqQ7c: "717170e53a507048e5836a4678bfa89b3a6536947fdb9b6855eb12b2ab20dc20".SJAZET5gG1gyy5729np8EdY(), SJAZE2eI9NcmPlSV7kZHJi: 49.99, SJAZElp9oBREs8dyBVfPyP: 29400),
    .init(SJAZEuhzNZ4F9JegrQqQ7c: "8035b5c1db41d2999b60e6723386c887f26d22ffd4f26860fc4c435325f450bb".SJAZET5gG1gyy5729np8EdY(), SJAZE2eI9NcmPlSV7kZHJi: 99.99, SJAZElp9oBREs8dyBVfPyP: 63700),
  ]

  private var SJAZEuYe3It3NUF2Kzcm5u: ((Int) -> Void)?
  private var SJAZENcgN3tDnrikmd4JQF: SKProductsRequest?
  private var SJAZEaJo3H32BAomGVp4Lh: String?

  override init() {
    super.init()
    SKPaymentQueue.default().add(self)
  }

  func SJAZECnWo6b2IF6fS3yoAf() {
    guard SJAZENcgN3tDnrikmd4JQF == nil else { return }
    let SJAZEf3EkNRG7SVPafnnqr = Set(SJAZEMRZG6GlgZLuQQucUT.map { SJAZEGsV75CwXgrQiEz3C6 in
      SJAZEGsV75CwXgrQiEz3C6.SJAZEuhzNZ4F9JegrQqQ7c
    })
    let SJAZEgdJRWQYyXi3WfHT5o = SKProductsRequest(productIdentifiers: SJAZEf3EkNRG7SVPafnnqr)
    SJAZEgdJRWQYyXi3WfHT5o.delegate = self
    SJAZENcgN3tDnrikmd4JQF = SJAZEgdJRWQYyXi3WfHT5o
    SJAZEgdJRWQYyXi3WfHT5o.start()
  }

  func SJAZEhZR65qKR4ULyWEhbO(
    SJAZElHik0NahQ3bj1vFNk: String,
    SJAZEdrXqzNVfDpPAZu1t1: @escaping (Int) -> Void
  ) {
    guard SKPaymentQueue.canMakePayments() else {
      SJAZEdrXqzNVfDpPAZu1t1(0)
      return
    }

    SJAZEuYe3It3NUF2Kzcm5u = SJAZEdrXqzNVfDpPAZu1t1
    if let SJAZELIyRRTE73CVjgiGaa = SJAZEB8eL7QDCxJufVYfWf.first(where: { SJAZEM4GmHi36desG3elTz in
      SJAZEM4GmHi36desG3elTz.productIdentifier == SJAZElHik0NahQ3bj1vFNk
    }) {
      SKPaymentQueue.default().add(SKPayment(product: SJAZELIyRRTE73CVjgiGaa))
      return
    }

    SJAZEaJo3H32BAomGVp4Lh = SJAZElHik0NahQ3bj1vFNk
    SJAZECnWo6b2IF6fS3yoAf()
  }

  private func SJAZE7XdOrYmCv3ovDGLYq() {
    guard let SJAZEKZO5V9wlDQ2Cx0dHV = SJAZEaJo3H32BAomGVp4Lh else { return }
    SJAZEaJo3H32BAomGVp4Lh = nil

    guard let SJAZEqi5Hknx0ZmekuqFUr = SJAZEB8eL7QDCxJufVYfWf.first(where: { SJAZE4VuZgT9weDwy2F0c8 in
      SJAZE4VuZgT9weDwy2F0c8.productIdentifier == SJAZEKZO5V9wlDQ2Cx0dHV
    }) else {
      SJAZEuYe3It3NUF2Kzcm5u?(0)
      SJAZEuYe3It3NUF2Kzcm5u = nil
      return
    }

    SKPaymentQueue.default().add(SKPayment(product: SJAZEqi5Hknx0ZmekuqFUr))
  }

  private func SJAZE0L7cGOvCu9k2kTeuT(
    _ SJAZEjtmBWB59WpbJhRPs4: SKPaymentTransaction,
    SJAZEyPRNzSY1pLU72E8TP: Int = 0
  ) {
    SKPaymentQueue.default().finishTransaction(SJAZEjtmBWB59WpbJhRPs4)
    SJAZEuYe3It3NUF2Kzcm5u?(SJAZEyPRNzSY1pLU72E8TP)
    SJAZEuYe3It3NUF2Kzcm5u = nil
  }
}

extension VvolHdqhEszePurchase: SKProductsRequestDelegate {
  func productsRequest(_ SJAZE3bYLpejWN4YpHol7V: SKProductsRequest, didReceive SJAZE4YWL9RV4crKLkkDyr: SKProductsResponse) {
    SJAZEB8eL7QDCxJufVYfWf = SJAZE4YWL9RV4crKLkkDyr.products
    SJAZENcgN3tDnrikmd4JQF = nil
    SJAZE7XdOrYmCv3ovDGLYq()
  }

  func request(_ SJAZEpcRAEaR6C2b8F37nR: SKRequest, didFailWithError SJAZErldls0u6vdPzOiQI5: Error) {
    SJAZENcgN3tDnrikmd4JQF = nil
    if SJAZEaJo3H32BAomGVp4Lh != nil {
      SJAZEaJo3H32BAomGVp4Lh = nil
      SJAZEuYe3It3NUF2Kzcm5u?(0)
      SJAZEuYe3It3NUF2Kzcm5u = nil
    }
  }
}

extension VvolHdqhEszePurchase: SKPaymentTransactionObserver {
  func paymentQueue(
    _ SJAZEG8JlEeMvNi6WxiI7t: SKPaymentQueue,
    updatedTransactions SJAZEcxxbMkY7r1BHsH9Tp: [SKPaymentTransaction]
  ) {
    for SJAZEKKdrCc14NC1p3bOBE in SJAZEcxxbMkY7r1BHsH9Tp {
      switch SJAZEKKdrCc14NC1p3bOBE.transactionState {
      case .purchased:
        SJAZEiCDvLRjyb5byzrute(SJAZEKKdrCc14NC1p3bOBE)
      case .failed, .restored:
        SJAZE0L7cGOvCu9k2kTeuT(SJAZEKKdrCc14NC1p3bOBE)
      case .purchasing, .deferred:
        break
      @unknown default:
        break
      }
    }
  }

  private func SJAZEiCDvLRjyb5byzrute(_ SJAZEGcocM5tso6CkQhZf7: SKPaymentTransaction) {
    guard
      let SJAZEhdvjkfmCvrd6KDbvT = SJAZEMRZG6GlgZLuQQucUT.first(where: { SJAZEO9T21kEsBAAJILTQu in
        SJAZEO9T21kEsBAAJILTQu.SJAZEuhzNZ4F9JegrQqQ7c == SJAZEGcocM5tso6CkQhZf7.payment.productIdentifier
      })
    else {
      SJAZE0L7cGOvCu9k2kTeuT(SJAZEGcocM5tso6CkQhZf7)
      return
    }
    SJAZEz4PMk3RfJRHTGElwE.insert(SJAZEhdvjkfmCvrd6KDbvT.SJAZEuhzNZ4F9JegrQqQ7c)
    SJAZE0L7cGOvCu9k2kTeuT(
      SJAZEGcocM5tso6CkQhZf7,
      SJAZEyPRNzSY1pLU72E8TP: SJAZEhdvjkfmCvrd6KDbvT.SJAZElp9oBREs8dyBVfPyP
    )
  }
}
