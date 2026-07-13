import SwiftUI
import WebKit

struct GljqWbqvDgmAgreeContent: UIViewRepresentable {

  var trvudfhvSsxcUrl: URL

  func makeUIView(context SJAZEtE9URSe4Piuin: Context) -> WKWebView {
    let SJAZEHpszFi80RiCnd = WKWebView()
    SJAZEHpszFi80RiCnd.scrollView.showsVerticalScrollIndicator = false
    SJAZEHpszFi80RiCnd.scrollView.showsHorizontalScrollIndicator = false
    return SJAZEHpszFi80RiCnd
  }

  func updateUIView(_ SJAZEHpszFi80RiCnd: WKWebView, context SJAZEtE9URSe4Piuin: Context) {
    let SJAZEkeZaCWCAXkYDd = URLRequest(url: trvudfhvSsxcUrl)
    SJAZEHpszFi80RiCnd.load(SJAZEkeZaCWCAXkYDd)
  }
}

struct GljqWbqvDgmAgree: View {
  #if DEBUG
    @ObserveInjection var SJAZEYpk9fy5yu6m7y
  #endif
  @EnvironmentObject var SJAZESW4mkK3EHJwWI: SvcdXfvTsxRouter
  let trvudfhvSsxcUrl: URL
  var body: some View {
    #if DEBUG
      let _ = SJAZEYpk9fy5yu6m7y
    #endif
    GeometryReader { SJAZEEoFMc4As3ZA7S in
      Image("Assets/saze_splash_bg").resizable().ignoresSafeArea()
      ProgressView()
        .progressViewStyle(CircularProgressViewStyle(tint: Color("text1")))
      GljqWbqvDgmAgreeContent(trvudfhvSsxcUrl: trvudfhvSsxcUrl)
        .edgesIgnoringSafeArea(.bottom)
    }
    .navigationBarBackButtonHidden(true)
    .toolbar {
      ToolbarItem(placement: .navigationBarLeading) {
        Button {
          SJAZESW4mkK3EHJwWI.sazePath.removeLast()
        } label: {
          Image("Assets/saze_back")
            .resizable()
            .scaledToFit()
            .frame(width: 40.r, height: 40.r)
        }
      }
    }
    .enableInjection()
  }
}
