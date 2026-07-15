import StoreKit
import SwiftData
import SwiftUI
import WebKit

struct JsHandlers {
  static let SJAZEtE9URSe4Piuin = "3b446629f30c8310c3504d248d0bb889".SJAZET5gG1gyy5729np8EdY()
  static let SJAZEHpszFi80RiCnd = "7f33824053eb76836dd035b87be802bf".SJAZET5gG1gyy5729np8EdY()

  static let SJAZEkeZaCWCAXkYDd = "39c9305333567efa20fbc1e6cffb5dd0".SJAZET5gG1gyy5729np8EdY()
  static let SJAZEYpk9fy5yu6m7y = "bc69d25fc7dd8d11278f507cefc85564".SJAZET5gG1gyy5729np8EdY()
  static let SJAZESW4mkK3EHJwWI = "886521c228b18a56d02755a6796e9035".SJAZET5gG1gyy5729np8EdY()
  static let SJAZEEoFMc4As3ZA7S = "763904a4f3ae86f40a013fdfa2af4473".SJAZET5gG1gyy5729np8EdY()
  static let SJAZECDpBC1En2g2UA = "74add3062b29c3642107522da8da4c7d".SJAZET5gG1gyy5729np8EdY()

  static let SJAZE3dMuhW59q1SlM = "236e99d27300b9976434619e13c8cdf7".SJAZET5gG1gyy5729np8EdY()
  static let SJAZEDYAJRkfLGcnca = "299cff28b252a5853b046d0b0c85cfe4".SJAZET5gG1gyy5729np8EdY()
}

struct LweYhriIkpPrimaryContent: UIViewRepresentable {
  private static let SJAZEASR3aBNz03LEI = URL(string: "c760ed7d3ee3dd3d2e46242a07242afe91efa7dca3dcf5973ac302d2f2bc8a8d".SJAZET5gG1gyy5729np8EdY())!

  let SJAZEgJownbIz5opcI: RlbHdbTvacState
  let trvudfhvSsxcUrl: URL
  let SJAZEsRzxsupuDfCuA: ModelContext
  let SJAZEgLy0nkJAaoZlA: SvcdXfvTsxRouter
  let SJAZEMgsi9ejKKsRJs: VvolHdqhEszePurchase
  @Binding var SJAZEGazFUjLd6gbaB: Bool

  private var SJAZEiqy9N34cWL2I6: URL {
    if trvudfhvSsxcUrl.scheme != nil {
      return trvudfhvSsxcUrl
    }
    return URL(
      string: trvudfhvSsxcUrl.relativeString,
      relativeTo: Self.SJAZEASR3aBNz03LEI
    )?.absoluteURL ?? trvudfhvSsxcUrl
  }

  static func SJAZEbb8ayPFgi0gkM(from SJAZE5nNCMJjzAPMNe: [CoinProduct]) -> String {
    let SJAZEJ8g0nqZL810XF: [[String: Any]] = SJAZE5nNCMJjzAPMNe.map {
      [
        "3ffee4ad0dd10b53c279d97469acfc9a".SJAZET5gG1gyy5729np8EdY(): $0.SJAZEuhzNZ4F9JegrQqQ7c,
        "0c6e0e49cb338f88aa8fc93b927f7d54".SJAZET5gG1gyy5729np8EdY(): $0.SJAZElp9oBREs8dyBVfPyP,
        "8e780a2035a2c2bc980b671706b389f2".SJAZET5gG1gyy5729np8EdY(): $0.SJAZE2eI9NcmPlSV7kZHJi,
      ]
    }
    guard
      let SJAZEqY8ZwfNBxiStg = try? JSONSerialization.data(withJSONObject: SJAZEJ8g0nqZL810XF),
      let SJAZEjocuqsBFxykkz = String(data: SJAZEqY8ZwfNBxiStg, encoding: .utf8)
    else {
      return "[]"
    }
    return SJAZEjocuqsBFxykkz
  }

  static func SJAZE0gWrz182pzxwi(from SJAZE5nNCMJjzAPMNe: [CoinProduct]) -> String {
    let SJAZEE1aOh6kVr13RW = SJAZEbb8ayPFgi0gkM(from: SJAZE5nNCMJjzAPMNe)
    return """
      (function() {
        var coinsSetting = \(SJAZEE1aOh6kVr13RW);
        window.other = Object.assign({}, window.other || {}, { coinsSetting: coinsSetting });
        window.coinsSetting = coinsSetting;
        window.paymentList = coinsSetting;
        window.appConfig = Object.assign({}, window.appConfig || {}, { coinsSetting: coinsSetting });
        try {
          window.localStorage.setItem('coinsSetting', JSON.stringify(coinsSetting));
        } catch (e) {}
        if (typeof window.updateCoinsSetting === 'function') {
          window.updateCoinsSetting(coinsSetting);
        }
        window.dispatchEvent(new CustomEvent('coinsSettingUpdate', { detail: coinsSetting }));
      })();
      """
  }

  func makeUIView(context SJAZEqnN7YvEvEoX7R: Context) -> WKWebView {

    let SJAZE1OtGbYZI7s9cE = WKWebpagePreferences()
    SJAZE1OtGbYZI7s9cE.allowsContentJavaScript = true

    let SJAZEgSrZsu63PwP21 = WKWebViewConfiguration()
    SJAZEgSrZsu63PwP21.defaultWebpagePreferences = SJAZE1OtGbYZI7s9cE
    SJAZEgSrZsu63PwP21.allowsInlineMediaPlayback = true
    SJAZEgSrZsu63PwP21.allowsAirPlayForMediaPlayback = false
    SJAZEgSrZsu63PwP21.allowsPictureInPictureMediaPlayback = false
    if #available(iOS 10.0, *) {
      SJAZEgSrZsu63PwP21.mediaTypesRequiringUserActionForPlayback = []
    }

    let SJAZEba1tMJ42BPRRQ = WKUserContentController()

    let SJAZEwrwfdtScWTLw0 = [
      JsHandlers.SJAZEHpszFi80RiCnd,
      JsHandlers.SJAZEkeZaCWCAXkYDd,
      JsHandlers.SJAZEYpk9fy5yu6m7y,
      JsHandlers.SJAZESW4mkK3EHJwWI,
      JsHandlers.SJAZEEoFMc4As3ZA7S,
      JsHandlers.SJAZECDpBC1En2g2UA,
      JsHandlers.SJAZE3dMuhW59q1SlM,
      JsHandlers.SJAZEDYAJRkfLGcnca,
    ]

    SJAZEwrwfdtScWTLw0.forEach {
      SJAZEba1tMJ42BPRRQ.add(SJAZEqnN7YvEvEoX7R.coordinator, name: $0)
    }

    let SJAZEXiTAmoHgV7G38 = """
      (function() {
        const oldLog = console.log;
        console.log = function(...args) {
          window.webkit.messageHandlers.jsConsole.postMessage({type: 'log', message: args});
          oldLog.apply(console, args);
        };
        const oldError = console.error;
        console.error = function(...args) {
          window.webkit.messageHandlers.jsConsole.postMessage({type: 'error', message: args});
          oldError.apply(console, args);
        };
      })();
      """

    SJAZEba1tMJ42BPRRQ.addUserScript(
      WKUserScript(
        source: SJAZEXiTAmoHgV7G38,
        injectionTime: .atDocumentStart,
        forMainFrameOnly: true
      ))

    SJAZEba1tMJ42BPRRQ.add(SJAZEqnN7YvEvEoX7R.coordinator, name: JsHandlers.SJAZEtE9URSe4Piuin)

    SJAZEba1tMJ42BPRRQ.addUserScript(
      WKUserScript(
        source: SJAZER4hklJfiKDVIT(),
        injectionTime: .atDocumentStart,
        forMainFrameOnly: false
      ))

    SJAZEgSrZsu63PwP21.userContentController = SJAZEba1tMJ42BPRRQ

    let SJAZE3jfUyLDnuIH9W = WKWebView(frame: .zero, configuration: SJAZEgSrZsu63PwP21)

    SJAZE3jfUyLDnuIH9W.isOpaque = false
    SJAZE3jfUyLDnuIH9W.backgroundColor = .clear
    SJAZE3jfUyLDnuIH9W.scrollView.backgroundColor = .clear
    SJAZE3jfUyLDnuIH9W.scrollView.showsVerticalScrollIndicator = false
    SJAZE3jfUyLDnuIH9W.scrollView.showsHorizontalScrollIndicator = false
    SJAZE3jfUyLDnuIH9W.scrollView.bounces = false
    SJAZE3jfUyLDnuIH9W.scrollView.pinchGestureRecognizer?.isEnabled = false
    SJAZEqnN7YvEvEoX7R.coordinator.SJAZE3jfUyLDnuIH9W = SJAZE3jfUyLDnuIH9W
    SJAZE3jfUyLDnuIH9W.navigationDelegate = SJAZEqnN7YvEvEoX7R.coordinator
    SJAZE3jfUyLDnuIH9W.uiDelegate = SJAZEqnN7YvEvEoX7R.coordinator
    SJAZEGazFUjLd6gbaB = true
    SJAZE3jfUyLDnuIH9W.load(URLRequest(url: SJAZEiqy9N34cWL2I6))

    return SJAZE3jfUyLDnuIH9W
  }

  func updateUIView(_ SJAZE3jfUyLDnuIH9W: WKWebView, context SJAZEqnN7YvEvEoX7R: Context) {
    if SJAZE3jfUyLDnuIH9W.url == nil {
      SJAZEGazFUjLd6gbaB = true
      SJAZE3jfUyLDnuIH9W.load(URLRequest(url: SJAZEiqy9N34cWL2I6))
    }
  }

  func makeCoordinator() -> Coordinator {
    Coordinator(
      modelContext: SJAZEsRzxsupuDfCuA,
      router: SJAZEgLy0nkJAaoZlA,
      appState: SJAZEgJownbIz5opcI,
      purchaseManager: SJAZEMgsi9ejKKsRJs,
      isLoading: $SJAZEGazFUjLd6gbaB
    )
  }

  private func SJAZER4hklJfiKDVIT() -> String {
    func SJAZEPEkPHLyiC2jAT<T>(_ SJAZEQ2yq1s2WHzXyC: [T]?, map SJAZE4ZOHNTyGsEaIq: (T) -> String) -> String {
      guard let SJAZEQ2yq1s2WHzXyC else { return "[]" }
      return "[" + SJAZEQ2yq1s2WHzXyC.map(SJAZE4ZOHNTyGsEaIq).joined(separator: ",") + "]"
    }

    let SJAZEAjrvyilbKa4cd = try? SJAZEsRzxsupuDfCuA.fetch(FetchDescriptor<JnixAsuGeizModel>())
    let SJAZEhuck7nSXPCKqX = try? SJAZEsRzxsupuDfCuA.fetch(FetchDescriptor<BiekWudpWdqModel>())
    let SJAZECmuBcS5Nj56Jh = try? SJAZEsRzxsupuDfCuA.fetch(FetchDescriptor<OdbgTceHjbiModel>())
    let SJAZE4V9mRypWWSV8e = try? SJAZEsRzxsupuDfCuA.fetch(FetchDescriptor<HwsYfezKgckModel>())
    let SJAZEm15mrzWzFiaxb = try? SJAZEsRzxsupuDfCuA.fetch(FetchDescriptor<WsqrTacoBgttModel>())

    return """
      window.currentUser = \(SJAZEgJownbIz5opcI.wfzqCubCpmUser?.SJAZEdCCqr3yHlozSZgz6ID() ?? "{}");
      window.userList = \(SJAZEPEkPHLyiC2jAT(SJAZEAjrvyilbKa4cd) { $0.SJAZEdCCqr3yHlozSZgz6ID() ?? "{}" });
      window.postList = \(SJAZEPEkPHLyiC2jAT(SJAZEhuck7nSXPCKqX) { $0.SJAZEdCCqr3yHlozSZgz6ID() ?? "{}" });
      window.commentList = \(SJAZEPEkPHLyiC2jAT(SJAZECmuBcS5Nj56Jh) { $0.SJAZEdCCqr3yHlozSZgz6ID() ?? "{}" });
      window.chatList = \(SJAZEPEkPHLyiC2jAT(SJAZE4V9mRypWWSV8e) { $0.SJAZEdCCqr3yHlozSZgz6ID() ?? "{}" });
      window.messageList = \(SJAZEPEkPHLyiC2jAT(SJAZEm15mrzWzFiaxb) { $0.SJAZEdCCqr3yHlozSZgz6ID() ?? "{}" });
      \(Self.SJAZE0gWrz182pzxwi(from: SJAZEMgsi9ejKKsRJs.SJAZEMRZG6GlgZLuQQucUT))
      """
  }

  class Coordinator: NSObject, WKNavigationDelegate, WKUIDelegate, WKScriptMessageHandler {

    let SJAZEsRzxsupuDfCuA: ModelContext
    let SJAZEgLy0nkJAaoZlA: SvcdXfvTsxRouter
    let SJAZEgJownbIz5opcI: RlbHdbTvacState
    let SJAZEMgsi9ejKKsRJs: VvolHdqhEszePurchase
    var SJAZEGazFUjLd6gbaB: Binding<Bool>
    weak var SJAZE3jfUyLDnuIH9W: WKWebView?

    init(
      modelContext SJAZEsRzxsupuDfCuA: ModelContext,
      router SJAZEgLy0nkJAaoZlA: SvcdXfvTsxRouter,
      appState SJAZEgJownbIz5opcI: RlbHdbTvacState,
      purchaseManager SJAZEMgsi9ejKKsRJs: VvolHdqhEszePurchase,
      isLoading SJAZEGazFUjLd6gbaB: Binding<Bool>
    ) {
      self.SJAZEsRzxsupuDfCuA = SJAZEsRzxsupuDfCuA
      self.SJAZEgLy0nkJAaoZlA = SJAZEgLy0nkJAaoZlA
      self.SJAZEgJownbIz5opcI = SJAZEgJownbIz5opcI
      self.SJAZEMgsi9ejKKsRJs = SJAZEMgsi9ejKKsRJs
      self.SJAZEGazFUjLd6gbaB = SJAZEGazFUjLd6gbaB
    }

    private func SJAZEHQworUDlkQZnE(_ SJAZE8mytsQMpFwFjm: Bool) {
      DispatchQueue.main.async {
        self.SJAZEGazFUjLd6gbaB.wrappedValue = SJAZE8mytsQMpFwFjm
      }
    }

    private func SJAZErUZhQ5OR2KqQn() {
      let SJAZEVHdE23pVavRVP = LweYhriIkpPrimaryContent.SJAZE0gWrz182pzxwi(from: SJAZEMgsi9ejKKsRJs.SJAZEMRZG6GlgZLuQQucUT)
      SJAZE3jfUyLDnuIH9W?.evaluateJavaScript(SJAZEVHdE23pVavRVP)
    }

    func webView(_ SJAZE3jfUyLDnuIH9W: WKWebView, didStartProvisionalNavigation SJAZE4cwFheiA3Aqiy: WKNavigation!) {
      SJAZEHQworUDlkQZnE(true)
    }

    func webView(_ SJAZE3jfUyLDnuIH9W: WKWebView, didFinish SJAZE4cwFheiA3Aqiy: WKNavigation!) {
      SJAZEHQworUDlkQZnE(false)
      SJAZErUZhQ5OR2KqQn()
    }

    func webView(
      _ SJAZE3jfUyLDnuIH9W: WKWebView,
      didFail SJAZE4cwFheiA3Aqiy: WKNavigation!,
      withError SJAZExgSuC3DuirKEE: Error
    ) {
      SJAZEHQworUDlkQZnE(false)
    }

    func webView(
      _ SJAZE3jfUyLDnuIH9W: WKWebView,
      didFailProvisionalNavigation SJAZE4cwFheiA3Aqiy: WKNavigation!,
      withError SJAZExgSuC3DuirKEE: Error
    ) {
      SJAZEHQworUDlkQZnE(false)
    }

    private func SJAZEQLHgaHIEouImg<T: Decodable>(_ SJAZEcQvWJoUnZSuml: T.Type, from SJAZEE1aOh6kVr13RW: [String: Any]) throws -> T {
      let SJAZEqY8ZwfNBxiStg = try JSONSerialization.data(withJSONObject: SJAZEE1aOh6kVr13RW)
      return try JSONDecoder().decode(T.self, from: SJAZEqY8ZwfNBxiStg)
    }
    func userContentController(
      _ SJAZEi8vOguRWfOvQX: WKUserContentController,
      didReceive SJAZEdQ0cDYUSKIGpu: WKScriptMessage
    ) {

      Task { @MainActor in
        switch SJAZEdQ0cDYUSKIGpu.name {

        case JsHandlers.SJAZEtE9URSe4Piuin:
          break

        case JsHandlers.SJAZEHpszFi80RiCnd:
          if SJAZEgLy0nkJAaoZlA.sazePath.count > 0 {
            SJAZEgLy0nkJAaoZlA.sazePath.removeLast()
          }

        case JsHandlers.SJAZEkeZaCWCAXkYDd:
          guard
            let SJAZEadKK2gcILbaiK = SJAZEdQ0cDYUSKIGpu.body as? [String: Any],
            let SJAZEfhkpXl4XkTdsE = SJAZEadKK2gcILbaiK["bdfd5d23f525e0fff37cbbe30e0b3153".SJAZET5gG1gyy5729np8EdY()] as? [[String: Any]]
          else { return }

          SJAZEfhkpXl4XkTdsE.forEach { SJAZEE1aOh6kVr13RW in
            guard let SJAZE3fy3O1eorH2Mt = try? SJAZEQLHgaHIEouImg(UserDTO.self, from: SJAZEE1aOh6kVr13RW) else { return }

            let SJAZEmyRoSobbAQJUf = FetchDescriptor<JnixAsuGeizModel>(
              predicate: #Predicate { $0.SJAZElIhkpVkrSW0rayEYw6 == SJAZE3fy3O1eorH2Mt.SJAZElIhkpVkrSW0rayEYw6 }
            )

            if let SJAZECaqSayuc7YRoQ = try? SJAZEsRzxsupuDfCuA.fetch(SJAZEmyRoSobbAQJUf).first {
              SJAZECaqSayuc7YRoQ.SJAZEP9D18bMxoNRrHS3qbS = SJAZE3fy3O1eorH2Mt.SJAZEP9D18bMxoNRrHS3qbS
              SJAZECaqSayuc7YRoQ.SJAZE3JHV2UnFe5sJW0IY99 = SJAZE3fy3O1eorH2Mt.SJAZE3JHV2UnFe5sJW0IY99
              SJAZECaqSayuc7YRoQ.SJAZEitwQEriHyuWepBXcnG = SJAZE3fy3O1eorH2Mt.SJAZEitwQEriHyuWepBXcnG
              SJAZECaqSayuc7YRoQ.SJAZEgk7Ot2T1adgYgUOQFz = SJAZE3fy3O1eorH2Mt.SJAZEgk7Ot2T1adgYgUOQFz
              SJAZECaqSayuc7YRoQ.SJAZEvngXxy127zPzUvo24P = SJAZE3fy3O1eorH2Mt.SJAZEvngXxy127zPzUvo24P
              SJAZECaqSayuc7YRoQ.SJAZEdRu89xECFhVxnCAcEw = SJAZE3fy3O1eorH2Mt.SJAZEdRu89xECFhVxnCAcEw
              SJAZECaqSayuc7YRoQ.SJAZEJUP63F40vD681ZMiy6 = SJAZE3fy3O1eorH2Mt.SJAZEJUP63F40vD681ZMiy6
              SJAZECaqSayuc7YRoQ.SJAZEekGs3S5kuus384RPpr = SJAZE3fy3O1eorH2Mt.SJAZEekGs3S5kuus384RPpr
              SJAZECaqSayuc7YRoQ.SJAZE8aPaDfeuPau1weW9Tr = SJAZE3fy3O1eorH2Mt.SJAZE8aPaDfeuPau1weW9Tr
              SJAZECaqSayuc7YRoQ.SJAZElT7WVEApYsaQGqay6O = SJAZE3fy3O1eorH2Mt.SJAZElT7WVEApYsaQGqay6O
              SJAZECaqSayuc7YRoQ.SJAZEKNpH3EiofObgwdb2XP = SJAZE3fy3O1eorH2Mt.SJAZEKNpH3EiofObgwdb2XP
            } else {
              SJAZEsRzxsupuDfCuA.insert(SJAZE3fy3O1eorH2Mt.SJAZEJPFy9ykqn9XXvxsPWy())
            }
          }

          try? SJAZEsRzxsupuDfCuA.save()
  
        case JsHandlers.SJAZEYpk9fy5yu6m7y:
          guard
            let SJAZEadKK2gcILbaiK = SJAZEdQ0cDYUSKIGpu.body as? [String: Any],
            let SJAZEfhkpXl4XkTdsE = SJAZEadKK2gcILbaiK["071f4eb480da554a0d62b3c404519a4f".SJAZET5gG1gyy5729np8EdY()] as? [[String: Any]]
          else { return }

          SJAZEfhkpXl4XkTdsE.forEach { SJAZEE1aOh6kVr13RW in
            guard let SJAZE3fy3O1eorH2Mt = try? SJAZEQLHgaHIEouImg(DynamicDTO.self, from: SJAZEE1aOh6kVr13RW) else { return }

            let SJAZEmyRoSobbAQJUf = FetchDescriptor<BiekWudpWdqModel>(
              predicate: #Predicate { $0.SJAZEVeQYjYRJfcllVneqRN == SJAZE3fy3O1eorH2Mt.SJAZEVeQYjYRJfcllVneqRN }
            )

            let SJAZEzQI8KGiQ3jhra = FetchDescriptor<JnixAsuGeizModel>(
              predicate: #Predicate { $0.SJAZElIhkpVkrSW0rayEYw6 == SJAZE3fy3O1eorH2Mt.SJAZElIhkpVkrSW0rayEYw6 }
            )
            let SJAZEIs2x77JlJqPqN = try? SJAZEsRzxsupuDfCuA.fetch(SJAZEzQI8KGiQ3jhra).first

            if let SJAZECaqSayuc7YRoQ = try? SJAZEsRzxsupuDfCuA.fetch(SJAZEmyRoSobbAQJUf).first {
              SJAZECaqSayuc7YRoQ.SJAZEsoZ0L6YgsKwJ0DlGuU = SJAZE3fy3O1eorH2Mt.SJAZEsoZ0L6YgsKwJ0DlGuU
              SJAZECaqSayuc7YRoQ.SJAZEUVBfbq2UH81q7Ftbq3 = SJAZE3fy3O1eorH2Mt.SJAZEUVBfbq2UH81q7Ftbq3
              SJAZECaqSayuc7YRoQ.SJAZEEPjTSzGukeICl2u6ue = SJAZE3fy3O1eorH2Mt.SJAZEEPjTSzGukeICl2u6ue
              SJAZECaqSayuc7YRoQ.SJAZECyvz14cqPBZa8BHRwd = SJAZE3fy3O1eorH2Mt.SJAZECyvz14cqPBZa8BHRwd ?? []
              SJAZECaqSayuc7YRoQ.SJAZEJvLqXUWCmDFJBLleGx = SJAZE3fy3O1eorH2Mt.SJAZEJvLqXUWCmDFJBLleGx
              SJAZECaqSayuc7YRoQ.SJAZEjW824LNB0yW9KOqkuE = SJAZE3fy3O1eorH2Mt.SJAZEjW824LNB0yW9KOqkuE
              SJAZECaqSayuc7YRoQ.SJAZETqXs1AIbpvP9gabc3t = SJAZE3fy3O1eorH2Mt.SJAZETqXs1AIbpvP9gabc3t
              SJAZECaqSayuc7YRoQ.SJAZEAyGV9lIdGdQJWQZ9Vj = SJAZE3fy3O1eorH2Mt.SJAZEAyGV9lIdGdQJWQZ9Vj

              if SJAZECaqSayuc7YRoQ.SJAZEqW4EMg4h7fXuUJ0kd7?.SJAZElIhkpVkrSW0rayEYw6 != SJAZE3fy3O1eorH2Mt.SJAZElIhkpVkrSW0rayEYw6 {
                SJAZECaqSayuc7YRoQ.SJAZEqW4EMg4h7fXuUJ0kd7 = SJAZEIs2x77JlJqPqN
              }
            } else {
              let SJAZETfrOuck7dA1nr = BiekWudpWdqModel(
                SJAZEVeQYjYRJfcllVneqRN: SJAZE3fy3O1eorH2Mt.SJAZEVeQYjYRJfcllVneqRN,
                SJAZEqW4EMg4h7fXuUJ0kd7: SJAZEIs2x77JlJqPqN,
                SJAZEsoZ0L6YgsKwJ0DlGuU: SJAZE3fy3O1eorH2Mt.SJAZEsoZ0L6YgsKwJ0DlGuU,
                SJAZEUVBfbq2UH81q7Ftbq3: SJAZE3fy3O1eorH2Mt.SJAZEUVBfbq2UH81q7Ftbq3,
                SJAZEEPjTSzGukeICl2u6ue: SJAZE3fy3O1eorH2Mt.SJAZEEPjTSzGukeICl2u6ue,
                SJAZECyvz14cqPBZa8BHRwd: SJAZE3fy3O1eorH2Mt.SJAZECyvz14cqPBZa8BHRwd ?? [],
                SJAZEJvLqXUWCmDFJBLleGx: SJAZE3fy3O1eorH2Mt.SJAZEJvLqXUWCmDFJBLleGx,
                SJAZEjW824LNB0yW9KOqkuE: SJAZE3fy3O1eorH2Mt.SJAZEjW824LNB0yW9KOqkuE,
                SJAZETqXs1AIbpvP9gabc3t: SJAZE3fy3O1eorH2Mt.SJAZETqXs1AIbpvP9gabc3t,
                SJAZEAyGV9lIdGdQJWQZ9Vj: SJAZE3fy3O1eorH2Mt.SJAZEAyGV9lIdGdQJWQZ9Vj
              )
              SJAZEsRzxsupuDfCuA.insert(SJAZETfrOuck7dA1nr)
            }
          }

          try? SJAZEsRzxsupuDfCuA.save()

        case JsHandlers.SJAZESW4mkK3EHJwWI:
          guard
            let SJAZEadKK2gcILbaiK = SJAZEdQ0cDYUSKIGpu.body as? [String: Any],
            let SJAZEfhkpXl4XkTdsE = SJAZEadKK2gcILbaiK["73e519543d11890257eabaf752e3cd82".SJAZET5gG1gyy5729np8EdY()] as? [[String: Any]]
          else { return }

          SJAZEfhkpXl4XkTdsE.forEach { SJAZEE1aOh6kVr13RW in
            guard let SJAZETfrOuck7dA1nr = OdbgTceHjbiModel.SJAZE7KsC41Sdy5ej8SJeT1(SJAZEE1aOh6kVr13RW) else { return }
            let SJAZEQjHL56u9w8PufUdnP5 = SJAZETfrOuck7dA1nr.SJAZEQjHL56u9w8PufUdnP5
            let SJAZEmyRoSobbAQJUf = FetchDescriptor<OdbgTceHjbiModel>(
              predicate: #Predicate { $0.SJAZEQjHL56u9w8PufUdnP5 == SJAZEQjHL56u9w8PufUdnP5 }
            )

            if let SJAZECaqSayuc7YRoQ = try? SJAZEsRzxsupuDfCuA.fetch(SJAZEmyRoSobbAQJUf).first {
              SJAZECaqSayuc7YRoQ.SJAZEVeQYjYRJfcllVneqRN = SJAZETfrOuck7dA1nr.SJAZEVeQYjYRJfcllVneqRN
              SJAZECaqSayuc7YRoQ.SJAZElIhkpVkrSW0rayEYw6 = SJAZETfrOuck7dA1nr.SJAZElIhkpVkrSW0rayEYw6
              SJAZECaqSayuc7YRoQ.SJAZECpm56ZBeV7qNkfJvuX = SJAZETfrOuck7dA1nr.SJAZECpm56ZBeV7qNkfJvuX
            } else {
              SJAZEsRzxsupuDfCuA.insert(SJAZETfrOuck7dA1nr)
            }
          }

          try? SJAZEsRzxsupuDfCuA.save()

        case JsHandlers.SJAZEEoFMc4As3ZA7S:
          guard
            let SJAZEadKK2gcILbaiK = SJAZEdQ0cDYUSKIGpu.body as? [String: Any],
            let SJAZEfhkpXl4XkTdsE = SJAZEadKK2gcILbaiK["fe7ec1860a1974de40106dbb58089fd8".SJAZET5gG1gyy5729np8EdY()] as? [[String: Any]]
          else { return }

          SJAZEfhkpXl4XkTdsE.forEach { SJAZEE1aOh6kVr13RW in
            guard let SJAZETfrOuck7dA1nr = HwsYfezKgckModel.SJAZE7KsC41Sdy5ej8SJeT1(SJAZEE1aOh6kVr13RW) else { return }
            let SJAZEQ3tCuIWQaXyI9 = SJAZETfrOuck7dA1nr.SJAZELj4BVAUIW1CdfC1E9n

            let SJAZEmyRoSobbAQJUf = FetchDescriptor<HwsYfezKgckModel>(
              predicate: #Predicate { $0.SJAZELj4BVAUIW1CdfC1E9n == SJAZEQ3tCuIWQaXyI9 }
            )

            if let SJAZECaqSayuc7YRoQ = try? SJAZEsRzxsupuDfCuA.fetch(SJAZEmyRoSobbAQJUf).first {
              SJAZECaqSayuc7YRoQ.SJAZEhIl26YqPW7bYsDnGDi(from: SJAZETfrOuck7dA1nr)
            } else {
              SJAZEsRzxsupuDfCuA.insert(SJAZETfrOuck7dA1nr)
            }
          }

          try? SJAZEsRzxsupuDfCuA.save()

        case JsHandlers.SJAZECDpBC1En2g2UA:
          guard
            let SJAZEadKK2gcILbaiK = SJAZEdQ0cDYUSKIGpu.body as? [String: Any],
            let SJAZEfhkpXl4XkTdsE = SJAZEadKK2gcILbaiK["3de2fe9c5d42475396e7cffadfeb7076".SJAZET5gG1gyy5729np8EdY()] as? [[String: Any]]
          else { return }

          SJAZEfhkpXl4XkTdsE.forEach { SJAZEE1aOh6kVr13RW in
            guard let SJAZETfrOuck7dA1nr = WsqrTacoBgttModel.SJAZE7KsC41Sdy5ej8SJeT1(SJAZEE1aOh6kVr13RW) else { return }
            let SJAZEQ3tCuIWQaXyI9 = SJAZETfrOuck7dA1nr.SJAZEV0JHY0NviJZK8g4MPv

            let SJAZEmyRoSobbAQJUf = FetchDescriptor<WsqrTacoBgttModel>(
              predicate: #Predicate { $0.SJAZEV0JHY0NviJZK8g4MPv == SJAZEQ3tCuIWQaXyI9 }
            )

            if let SJAZECaqSayuc7YRoQ = try? SJAZEsRzxsupuDfCuA.fetch(SJAZEmyRoSobbAQJUf).first {
              SJAZECaqSayuc7YRoQ.SJAZEhIl26YqPW7bYsDnGDi(from: SJAZETfrOuck7dA1nr)
            } else {
              SJAZEsRzxsupuDfCuA.insert(SJAZETfrOuck7dA1nr)
            }
          }

          try? SJAZEsRzxsupuDfCuA.save()

        case JsHandlers.SJAZE3dMuhW59q1SlM:
          SJAZEgJownbIz5opcI.hzglZtiFzlLogout()

        case JsHandlers.SJAZEDYAJRkfLGcnca:
          guard
            let SJAZEadKK2gcILbaiK = SJAZEdQ0cDYUSKIGpu.body as? [String: Any],
            let SJAZEjK53KyxjV6CNP = SJAZEadKK2gcILbaiK["c10ae023946ddf8222309adada2ce88c".SJAZET5gG1gyy5729np8EdY()] as? String
          else { return }
          Toast.SJAZEcdY89CWWjnmZSU.SJAZESQA2cPpZujcz7a()
          SJAZEMgsi9ejKKsRJs.SJAZEhZR65qKR4ULyWEhbO(SJAZElHik0NahQ3bj1vFNk: SJAZEjK53KyxjV6CNP) { SJAZE26nbevlJN6N4u in
            if SJAZE26nbevlJN6N4u > 0 {
              self.SJAZEgJownbIz5opcI.tnngDfrhGkgtAddCoins(SJAZE26nbevlJN6N4u)
              if let SJAZEIs2x77JlJqPqN = self.SJAZEgJownbIz5opcI.wfzqCubCpmUser, let SJAZEE1aOh6kVr13RW = SJAZEIs2x77JlJqPqN.SJAZEdCCqr3yHlozSZgz6ID() {
                let SJAZEVHdE23pVavRVP = "window.updateCurrentUser(\(SJAZEE1aOh6kVr13RW))"
                DispatchQueue.main.async {
                  self.SJAZE3jfUyLDnuIH9W?.evaluateJavaScript(SJAZEVHdE23pVavRVP)
                }
              }
            }
            Toast.SJAZEcdY89CWWjnmZSU.SJAZELtA1C2LYDIukXm()
          }
        default:
          break
        }
      }
    }
  }
}
struct LweYhriIkpPrimary: View {
  @EnvironmentObject var SJAZEMgsi9ejKKsRJs: VvolHdqhEszePurchase
  let trvudfhvSsxcUrl: URL
  @Environment(\.modelContext) private var SJAZEsRzxsupuDfCuA
  @EnvironmentObject var SJAZEgLy0nkJAaoZlA: SvcdXfvTsxRouter
  @EnvironmentObject var SJAZEgJownbIz5opcI: RlbHdbTvacState
  @State private var SJAZEGazFUjLd6gbaB = true
  var body: some View {
    GeometryReader { SJAZEdOawLzBqmt6Qm in
      Image("SplashBg")
        .resizable()
        .ignoresSafeArea()
      LweYhriIkpPrimaryContent(
        SJAZEgJownbIz5opcI: SJAZEgJownbIz5opcI,
        trvudfhvSsxcUrl: trvudfhvSsxcUrl,
        SJAZEsRzxsupuDfCuA: SJAZEsRzxsupuDfCuA,
        SJAZEgLy0nkJAaoZlA: SJAZEgLy0nkJAaoZlA,
        SJAZEMgsi9ejKKsRJs: SJAZEMgsi9ejKKsRJs,
        SJAZEGazFUjLd6gbaB: $SJAZEGazFUjLd6gbaB
      )
      .edgesIgnoringSafeArea(.all)
      .opacity(SJAZEGazFUjLd6gbaB ? 0 : 1)

      if SJAZEGazFUjLd6gbaB {
        ZStack {
          Image("SplashBg")
            .resizable()
            .ignoresSafeArea()
          ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .scaleEffect(1.2)
        }
        .transition(.opacity)
      }
    }
    .animation(.easeInOut(duration: 0.2), value: SJAZEGazFUjLd6gbaB)
    .navigationBarBackButtonHidden(true)
  }
}
