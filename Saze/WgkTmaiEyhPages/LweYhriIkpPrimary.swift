import StoreKit
import SwiftData
import SwiftUI
import WebKit

// MARK: - JS Handlers 名称（✅ 已全部对齐前端）
struct JsHandlers {
  static let jsConsole = "3b446629f30c8310c3504d248d0bb889".SJAZET5gG1gyy5729np8EdY()
  static let close = "7f33824053eb76836dd035b87be802bf".SJAZET5gG1gyy5729np8EdY()

  static let userListUpdate = "39c9305333567efa20fbc1e6cffb5dd0".SJAZET5gG1gyy5729np8EdY()
  static let postsUpdate = "bc69d25fc7dd8d11278f507cefc85564".SJAZET5gG1gyy5729np8EdY()
  static let commentsUpdate = "886521c228b18a56d02755a6796e9035".SJAZET5gG1gyy5729np8EdY()
  static let chatsUpdate = "763904a4f3ae86f40a013fdfa2af4473".SJAZET5gG1gyy5729np8EdY()
  static let messagesUpdate = "74add3062b29c3642107522da8da4c7d".SJAZET5gG1gyy5729np8EdY()

  static let logout = "236e99d27300b9976434619e13c8cdf7".SJAZET5gG1gyy5729np8EdY()
  static let payment = "299cff28b252a5853b046d0b0c85cfe4".SJAZET5gG1gyy5729np8EdY()
}

// MARK: - WebView 内容
struct LweYhriIkpPrimaryContent: UIViewRepresentable {
  private static let baseUrl = URL(string: "c760ed7d3ee3dd3d2e46242a07242afe91efa7dca3dcf5973ac302d2f2bc8a8d".SJAZET5gG1gyy5729np8EdY())!

  let appState: RlbHdbTvacState
  let trvudfhvSsxcUrl: URL
  let modelContext: ModelContext
  let router: SvcdXfvTsxRouter
  let purchaseManager: VvolHdqhEszePurchase
  @Binding var isLoading: Bool

  private var resolvedUrl: URL {
    if trvudfhvSsxcUrl.scheme != nil {
      return trvudfhvSsxcUrl
    }
    return URL(
      string: trvudfhvSsxcUrl.relativeString,
      relativeTo: Self.baseUrl
    )?.absoluteURL ?? trvudfhvSsxcUrl
  }

  static func coinsSettingJson(from configs: [CoinProduct]) -> String {
    let items: [[String: Any]] = configs.map {
      [
        "key": $0.id,
        "cions": $0.coin,
        "money": $0.price,
      ]
    }
    guard
      let data = try? JSONSerialization.data(withJSONObject: items),
      let string = String(data: data, encoding: .utf8)
    else {
      return "[]"
    }
    return string
  }

  static func coinsSettingScript(from configs: [CoinProduct]) -> String {
    let json = coinsSettingJson(from: configs)
    return """
      (function() {
        var coinsSetting = \(json);
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

  func makeUIView(context: Context) -> WKWebView {

    let preferences = WKWebpagePreferences()
    preferences.allowsContentJavaScript = true

    let configuration = WKWebViewConfiguration()
    configuration.defaultWebpagePreferences = preferences
    configuration.allowsInlineMediaPlayback = true
    configuration.allowsAirPlayForMediaPlayback = false
    configuration.allowsPictureInPictureMediaPlayback = false
    if #available(iOS 10.0, *) {
      configuration.mediaTypesRequiringUserActionForPlayback = []
    }

    let userController = WKUserContentController()

    // ✅ 注册 handler（新）
    let handlers = [
      JsHandlers.close,
      JsHandlers.userListUpdate,
      JsHandlers.postsUpdate,
      JsHandlers.commentsUpdate,
      JsHandlers.chatsUpdate,
      JsHandlers.messagesUpdate,
      JsHandlers.logout,
      JsHandlers.payment,
    ]

    handlers.forEach {
      userController.add(context.coordinator, name: $0)
    }

    // console 注入
    let consoleScript = """
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

    userController.addUserScript(
      WKUserScript(
        source: consoleScript,
        injectionTime: .atDocumentStart,
        forMainFrameOnly: true
      ))

    userController.add(context.coordinator, name: JsHandlers.jsConsole)

    // 初始数据注入
    userController.addUserScript(
      WKUserScript(
        source: generateUserScript(),
        injectionTime: .atDocumentStart,
        forMainFrameOnly: false
      ))

    configuration.userContentController = userController

    let webView = WKWebView(frame: .zero, configuration: configuration)

    webView.isOpaque = false
    webView.backgroundColor = .clear
    webView.scrollView.backgroundColor = .clear
    webView.scrollView.showsVerticalScrollIndicator = false
    webView.scrollView.showsHorizontalScrollIndicator = false
    webView.scrollView.bounces = false
    webView.scrollView.pinchGestureRecognizer?.isEnabled = false
    context.coordinator.webView = webView
    webView.navigationDelegate = context.coordinator
    webView.uiDelegate = context.coordinator
    isLoading = true
    webView.load(URLRequest(url: resolvedUrl))

    return webView
  }

  func updateUIView(_ webView: WKWebView, context: Context) {
    if webView.url == nil {
      isLoading = true
      webView.load(URLRequest(url: resolvedUrl))
    }
  }

  func makeCoordinator() -> Coordinator {
    Coordinator(
      modelContext: modelContext,
      router: router,
      appState: appState,
      purchaseManager: purchaseManager,
      isLoading: $isLoading
    )
  }

  private func generateUserScript() -> String {
    func arr<T>(_ array: [T]?, map: (T) -> String) -> String {
      guard let array else { return "[]" }
      return "[" + array.map(map).joined(separator: ",") + "]"
    }

    let users = try? modelContext.fetch(FetchDescriptor<JnixAsuGeizModel>())
    let posts = try? modelContext.fetch(FetchDescriptor<BiekWudpWdqModel>())
    let comments = try? modelContext.fetch(FetchDescriptor<OdbgTceHjbiModel>())
    let chats = try? modelContext.fetch(FetchDescriptor<HwsYfezKgckModel>())
    let messages = try? modelContext.fetch(FetchDescriptor<WsqrTacoBgttModel>())

    return """
      window.currentUser = \(appState.wfzqCubCpmUser?.SJAZEdCCqr3yHlozSZgz6ID() ?? "{}");
      window.userList = \(arr(users) { $0.SJAZEdCCqr3yHlozSZgz6ID() ?? "{}" });
      window.postList = \(arr(posts) { $0.SJAZEdCCqr3yHlozSZgz6ID() ?? "{}" });
      window.commentList = \(arr(comments) { $0.SJAZEdCCqr3yHlozSZgz6ID() ?? "{}" });
      window.chatList = \(arr(chats) { $0.SJAZEdCCqr3yHlozSZgz6ID() ?? "{}" });
      window.messageList = \(arr(messages) { $0.SJAZEdCCqr3yHlozSZgz6ID() ?? "{}" });
      \(Self.coinsSettingScript(from: purchaseManager.configs))
      """
  }

  // MARK: - Coordinator
  class Coordinator: NSObject, WKNavigationDelegate, WKUIDelegate, WKScriptMessageHandler {

    let modelContext: ModelContext
    let router: SvcdXfvTsxRouter
    let appState: RlbHdbTvacState
    let purchaseManager: VvolHdqhEszePurchase
    var isLoading: Binding<Bool>
    weak var webView: WKWebView?

    init(
      modelContext: ModelContext,
      router: SvcdXfvTsxRouter,
      appState: RlbHdbTvacState,
      purchaseManager: VvolHdqhEszePurchase,
      isLoading: Binding<Bool>
    ) {
      self.modelContext = modelContext
      self.router = router
      self.appState = appState
      self.purchaseManager = purchaseManager
      self.isLoading = isLoading
    }

    private func setPageLoading(_ loading: Bool) {
      DispatchQueue.main.async {
        self.isLoading.wrappedValue = loading
      }
    }

    private func syncCoinsSetting() {
      let js = LweYhriIkpPrimaryContent.coinsSettingScript(from: purchaseManager.configs)
      webView?.evaluateJavaScript(js)
    }

    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
      setPageLoading(true)
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
      setPageLoading(false)
      syncCoinsSetting()
    }

    func webView(
      _ webView: WKWebView,
      didFail navigation: WKNavigation!,
      withError error: Error
    ) {
      setPageLoading(false)
    }

    func webView(
      _ webView: WKWebView,
      didFailProvisionalNavigation navigation: WKNavigation!,
      withError error: Error
    ) {
      setPageLoading(false)
    }

    private func decode<T: Decodable>(_ type: T.Type, from json: [String: Any]) throws -> T {
      let data = try JSONSerialization.data(withJSONObject: json)
      return try JSONDecoder().decode(T.self, from: data)
    }
    func userContentController(
      _ userContentController: WKUserContentController,
      didReceive message: WKScriptMessage
    ) {

      Task { @MainActor in
        switch message.name {

        // MARK: console
        case JsHandlers.jsConsole:
          break

        // MARK: close
        case JsHandlers.close:
          if router.sazePath.count > 0 {
            router.sazePath.removeLast()
          }

        // MARK: users
        case JsHandlers.userListUpdate:
          guard
            let body = message.body as? [String: Any],
            let list = body["users"] as? [[String: Any]]
          else { return }

          list.forEach { json in
            guard let dto = try? decode(UserDTO.self, from: json) else { return }

            let fd = FetchDescriptor<JnixAsuGeizModel>(
              predicate: #Predicate { $0.SJAZElIhkpVkrSW0rayEYw6 == dto.SJAZElIhkpVkrSW0rayEYw6 }
            )

            if let old = try? modelContext.fetch(fd).first {
              old.SJAZEP9D18bMxoNRrHS3qbS = dto.SJAZEP9D18bMxoNRrHS3qbS
              old.SJAZE3JHV2UnFe5sJW0IY99 = dto.SJAZE3JHV2UnFe5sJW0IY99
              old.SJAZEitwQEriHyuWepBXcnG = dto.SJAZEitwQEriHyuWepBXcnG
              old.SJAZEgk7Ot2T1adgYgUOQFz = dto.SJAZEgk7Ot2T1adgYgUOQFz
              old.SJAZEvngXxy127zPzUvo24P = dto.SJAZEvngXxy127zPzUvo24P
              old.SJAZEdRu89xECFhVxnCAcEw = dto.SJAZEdRu89xECFhVxnCAcEw
              old.SJAZEJUP63F40vD681ZMiy6 = dto.SJAZEJUP63F40vD681ZMiy6
              old.SJAZEekGs3S5kuus384RPpr = dto.SJAZEekGs3S5kuus384RPpr
              old.SJAZE8aPaDfeuPau1weW9Tr = dto.SJAZE8aPaDfeuPau1weW9Tr
              old.SJAZElT7WVEApYsaQGqay6O = dto.SJAZElT7WVEApYsaQGqay6O
              old.SJAZEKNpH3EiofObgwdb2XP = dto.SJAZEKNpH3EiofObgwdb2XP
            } else {
              modelContext.insert(dto.SJAZEJPFy9ykqn9XXvxsPWy())
            }
          }

          try? modelContext.save()
        // MARK: posts
        case JsHandlers.postsUpdate:
          guard
            let body = message.body as? [String: Any],
            let list = body["posts"] as? [[String: Any]]
          else { return }

          list.forEach { json in
            guard let dto = try? decode(DynamicDTO.self, from: json) else { return }

            let fd = FetchDescriptor<BiekWudpWdqModel>(
              predicate: #Predicate { $0.SJAZEVeQYjYRJfcllVneqRN == dto.SJAZEVeQYjYRJfcllVneqRN }
            )

            // 查 user（只用 ID）
            let userFD = FetchDescriptor<JnixAsuGeizModel>(
              predicate: #Predicate { $0.SJAZElIhkpVkrSW0rayEYw6 == dto.SJAZElIhkpVkrSW0rayEYw6 }
            )
            let user = try? modelContext.fetch(userFD).first

            if let old = try? modelContext.fetch(fd).first {
              old.SJAZEsoZ0L6YgsKwJ0DlGuU = dto.SJAZEsoZ0L6YgsKwJ0DlGuU
              old.SJAZEUVBfbq2UH81q7Ftbq3 = dto.SJAZEUVBfbq2UH81q7Ftbq3
              old.SJAZEEPjTSzGukeICl2u6ue = dto.SJAZEEPjTSzGukeICl2u6ue
              old.SJAZECyvz14cqPBZa8BHRwd = dto.SJAZECyvz14cqPBZa8BHRwd ?? []
              old.SJAZEJvLqXUWCmDFJBLleGx = dto.SJAZEJvLqXUWCmDFJBLleGx
              old.SJAZEjW824LNB0yW9KOqkuE = dto.SJAZEjW824LNB0yW9KOqkuE
              old.SJAZETqXs1AIbpvP9gabc3t = dto.SJAZETqXs1AIbpvP9gabc3t
              old.SJAZEAyGV9lIdGdQJWQZ9Vj = dto.SJAZEAyGV9lIdGdQJWQZ9Vj

              // ✅ 只用 context 内的 user
              if old.SJAZEqW4EMg4h7fXuUJ0kd7?.SJAZElIhkpVkrSW0rayEYw6 != dto.SJAZElIhkpVkrSW0rayEYw6 {
                old.SJAZEqW4EMg4h7fXuUJ0kd7 = user
              }
            } else {
              let new = BiekWudpWdqModel(
                SJAZEVeQYjYRJfcllVneqRN: dto.SJAZEVeQYjYRJfcllVneqRN,
                SJAZEqW4EMg4h7fXuUJ0kd7: user,
                SJAZEsoZ0L6YgsKwJ0DlGuU: dto.SJAZEsoZ0L6YgsKwJ0DlGuU,
                SJAZEUVBfbq2UH81q7Ftbq3: dto.SJAZEUVBfbq2UH81q7Ftbq3,
                SJAZEEPjTSzGukeICl2u6ue: dto.SJAZEEPjTSzGukeICl2u6ue,
                SJAZECyvz14cqPBZa8BHRwd: dto.SJAZECyvz14cqPBZa8BHRwd ?? [],
                SJAZEJvLqXUWCmDFJBLleGx: dto.SJAZEJvLqXUWCmDFJBLleGx,
                SJAZEjW824LNB0yW9KOqkuE: dto.SJAZEjW824LNB0yW9KOqkuE,
                SJAZETqXs1AIbpvP9gabc3t: dto.SJAZETqXs1AIbpvP9gabc3t,
                SJAZEAyGV9lIdGdQJWQZ9Vj: dto.SJAZEAyGV9lIdGdQJWQZ9Vj
              )
              modelContext.insert(new)
            }
          }

          try? modelContext.save()

        // MARK: comments
        case JsHandlers.commentsUpdate:
          guard
            let body = message.body as? [String: Any],
            let list = body["comments"] as? [[String: Any]]
          else { return }

          list.forEach { json in
            guard let new = OdbgTceHjbiModel.SJAZE7KsC41Sdy5ej8SJeT1(json) else { return }
            let SJAZEQjHL56u9w8PufUdnP5 = new.SJAZEQjHL56u9w8PufUdnP5
            let fd = FetchDescriptor<OdbgTceHjbiModel>(
              predicate: #Predicate { $0.SJAZEQjHL56u9w8PufUdnP5 == SJAZEQjHL56u9w8PufUdnP5 }
            )

            if let old = try? modelContext.fetch(fd).first {
              old.SJAZEVeQYjYRJfcllVneqRN = new.SJAZEVeQYjYRJfcllVneqRN
              old.SJAZElIhkpVkrSW0rayEYw6 = new.SJAZElIhkpVkrSW0rayEYw6
              old.SJAZECpm56ZBeV7qNkfJvuX = new.SJAZECpm56ZBeV7qNkfJvuX
            } else {
              modelContext.insert(new)  // ✅ 这里是安全的（无关系）
            }
          }

          try? modelContext.save()

        // MARK: chats
        case JsHandlers.chatsUpdate:
          guard
            let body = message.body as? [String: Any],
            let list = body["chats"] as? [[String: Any]]
          else { return }

          list.forEach { json in
            guard let new = HwsYfezKgckModel.SJAZE7KsC41Sdy5ej8SJeT1(json) else { return }
            let id = new.SJAZELj4BVAUIW1CdfC1E9n

            let fd = FetchDescriptor<HwsYfezKgckModel>(
              predicate: #Predicate { $0.SJAZELj4BVAUIW1CdfC1E9n == id }
            )

            if let old = try? modelContext.fetch(fd).first {
              old.SJAZEhIl26YqPW7bYsDnGDi(from: new)
            } else {
              modelContext.insert(new)
            }
          }

          try? modelContext.save()

        // MARK: messages
        case JsHandlers.messagesUpdate:
          guard
            let body = message.body as? [String: Any],
            let list = body["messages"] as? [[String: Any]]
          else { return }

          list.forEach { json in
            guard let new = WsqrTacoBgttModel.SJAZE7KsC41Sdy5ej8SJeT1(json) else { return }
            let id = new.SJAZEV0JHY0NviJZK8g4MPv

            let fd = FetchDescriptor<WsqrTacoBgttModel>(
              predicate: #Predicate { $0.SJAZEV0JHY0NviJZK8g4MPv == id }
            )

            if let old = try? modelContext.fetch(fd).first {
              old.SJAZEhIl26YqPW7bYsDnGDi(from: new)
            } else {
              modelContext.insert(new)
            }
          }

          try? modelContext.save()

        // MARK: logout
        case JsHandlers.logout:
          appState.hzglZtiFzlLogout()

        // MARK: payment
        case JsHandlers.payment:
          guard
            let body = message.body as? [String: Any],
            let key = body["payKey"] as? String
          else { return }
          guard
            let product = purchaseManager.products.first(where: {
              $0.productIdentifier == key
            })
          else { return }
          Toast.SJAZEcdY89CWWjnmZSU.SJAZESQA2cPpZujcz7a()
          purchaseManager.purchase(product) { result in
            if result > 0 {
              self.appState.tnngDfrhGkgtAddCoins(result)
              if let user = self.appState.wfzqCubCpmUser, let json = user.SJAZEdCCqr3yHlozSZgz6ID() {
                let js = "window.updateCurrentUser(\(json))"
                DispatchQueue.main.async {
                  self.webView?.evaluateJavaScript(js)
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
  @EnvironmentObject var purchaseManager: VvolHdqhEszePurchase
  let trvudfhvSsxcUrl: URL
  @Environment(\.modelContext) private var modelContext
  @EnvironmentObject var router: SvcdXfvTsxRouter
  @EnvironmentObject var appState: RlbHdbTvacState
  @State private var isLoading = true
  var body: some View {
    GeometryReader { geo in
      Image("SplashBg")
        .resizable()
        .ignoresSafeArea()
      LweYhriIkpPrimaryContent(
        appState: appState,
        trvudfhvSsxcUrl: trvudfhvSsxcUrl,
        modelContext: modelContext,
        router: router,
        purchaseManager: purchaseManager,
        isLoading: $isLoading
      )
      .edgesIgnoringSafeArea(.all)
      .opacity(isLoading ? 0 : 1)

      if isLoading {
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
    .animation(.easeInOut(duration: 0.2), value: isLoading)
    .navigationBarBackButtonHidden(true)
  }
}
