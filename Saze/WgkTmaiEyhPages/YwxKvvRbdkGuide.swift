import SwiftData
import SwiftUI

struct YwxKvvRbdkGuide: View {
  #if DEBUG
    @ObserveInjection var forceRedraw
  #endif
  @State private var isLoading = false
  @State private var isAgreeEula = false
  @State private var isShowEula = false
  @EnvironmentObject var appState: RlbHdbTvacState
  @Environment(\.modelContext) private var modelContext
  @StateObject private var router: SvcdXfvTsxRouter = SvcdXfvTsxRouter()
  var body: some View {
    #if DEBUG
      let _ = forceRedraw
    #endif
    NavigationStack(path: $router.sazePath) {
      GeometryReader { geometry in
        Image("Assets/saze_guide_bg")
          .resizable()
          .ignoresSafeArea()
        VStack(spacing: 0) {
          Spacer().frame(height: 10.h)
          HStack {
            Image("Assets/saze_guide_label")
              .resizable().scaledToFit().frame(width: 87.w, height: 64.h)
            Spacer()
            Text("EULA")
              .foregroundColor(Color("fzs1"))
              .font(.system(size: 16.sp))
              .padding(.vertical, 7.h)
              .padding(.horizontal, 12.w)
              .background(.white.opacity(0.2))
              .cornerRadius(10)
              .onTapGesture {
                isShowEula = true
              }
              .padding(.top, 6.h)
          }
          .padding(.horizontal, 18.w)
          Spacer()
          Button(action: {
            if isAgreeEula {
              router.sazePath.append(WwaQhwoEkuRoute.gingFfkFidqLogin)
            } else {
              isShowEula = true
            }
          }) {
            Text("LOGIN BY EMAIL")
              .foregroundColor(.white)
              .font(.system(size: 20.sp, weight: .bold))
              .frame(maxWidth: .infinity)
          }
          .frame(height: 62.h)
          .background(
            Color("fzs1")
          )
          .cornerRadius(40.r)
          .padding(.horizontal, 73.w)
          Spacer().frame(height: 20.h)
          Button(action: {
            guard !isLoading else { return }
            guard isAgreeEula else {
              isShowEula = true
              return
            }
            let SJAZEP9D18bMxoNRrHS3qbS = "vtfrvbdvtr@gmail.com"
            let newUser = JnixAsuGeizModel(
              SJAZElIhkpVkrSW0rayEYw6: "u99",
              SJAZEP9D18bMxoNRrHS3qbS: SJAZEP9D18bMxoNRrHS3qbS,
              SJAZE3JHV2UnFe5sJW0IY99: "123456789",
              SJAZEitwQEriHyuWepBXcnG:
                "http://huanniuchat.oss-ap-northeast-1.aliyuncs.com/saze/saze_default_photo.png",
              SJAZEgk7Ot2T1adgYgUOQFz: "User6516",
              SJAZEvngXxy127zPzUvo24P: "Nothing",
              SJAZEdRu89xECFhVxnCAcEw: 0
            )
            Task {
              await MainActor.run { isLoading = true }
              defer { isLoading = false }
              do {
                try await Task.sleep(for: .milliseconds(518))
                let descriptor = FetchDescriptor<JnixAsuGeizModel>(
                  predicate: #Predicate { $0.SJAZEP9D18bMxoNRrHS3qbS == SJAZEP9D18bMxoNRrHS3qbS }
                )
                let user = try modelContext.fetch(descriptor).first
                await MainActor.run {
                  if let user = user {
                    appState.wfzqCubCpmUser = user
                  } else {
                    modelContext.insert(newUser)
                    appState.wfzqCubCpmUser = newUser
                  }
                  appState.vkyeFxuEaaPhase = .vzxtUcsAkqqMain
                }
              } catch {
              }
            }
          }) {
            if isLoading {
              ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .white))
                .frame(maxWidth: .infinity)
            } else {
              Text("I'M NEW")
                .foregroundColor(.white)
                .font(.system(size: 20.sp, weight: .bold))
                .frame(maxWidth: .infinity)
            }
          }
          .frame(height: 62.h)
          .background(
            Color("zs1")
          )
          .cornerRadius(40.r)
          .padding(.horizontal, 73.w)
          Spacer().frame(height: 10.h)
          HStack(spacing: 0) {
            Text("Don't have an account? ")
              .font(.system(size: 14.sp))
              .foregroundColor(.black)
            Text("SIGN UP")
              .font(.system(size: 14.sp, weight: .bold))
              .underline()
              .foregroundColor(.black)
              .onTapGesture {
                if isAgreeEula {
                  router.sazePath.append(WwaQhwoEkuRoute.vccMliWsyRegister)
                } else {
                  isShowEula = true
                }
              }
          }
          Spacer().frame(height: 56.h)
          HStack {
            Image(isAgreeEula ? "Assets/saze_guide_checked" : "Assets/saze_guide_uncheck")
              .resizable()
              .scaledToFit()
              .frame(width: 19.r, height: 19.r)
              .onTapGesture {
                isAgreeEula.toggle()
              }
            HStack(spacing: 0) {
              Text("Agree with  ")
                .foregroundColor(Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255))
                .font(.system(size: 14.sp))
              Text("User Agreement")
                .foregroundColor(Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255))
                .font(.system(size: 14.sp))
                .underline()
                .onTapGesture {
                  router.sazePath.append(
                    WwaQhwoEkuRoute.wfueZroFsmnPrimary(
                      url: URL(string: "700fd2d489dc5595a739a1cf71131326".SJAZET5gG1gyy5729np8EdY())!))
                }
              Text(" and ")
                .foregroundColor(Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255))
                .font(.system(size: 14.sp))
              Text("Privacy Policy")
                .foregroundColor(Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255))
                .font(.system(size: 14.sp))
                .underline()
                .onTapGesture {
                  router.sazePath.append(
                    WwaQhwoEkuRoute.wfueZroFsmnPrimary(
                      url: URL(string: "a567708a9115a1d84c52702fdc3a5ad6".SJAZET5gG1gyy5729np8EdY())!))
                }
            }
          }
        }
      }
      .overlay {
        if isShowEula {
          QngkUgjVaosEula(SJAZElk5cR2mJTpUpBW: $isAgreeEula, SJAZETmH1ztuz9Pe2hI: $isShowEula)
        }
      }
      .navigationDestination(for: WwaQhwoEkuRoute.self) { route in
        switch route {
        case .wfueZroFsmnPrimary(let url):
          LweYhriIkpPrimary(trvudfhvSsxcUrl: url)
        case .gingFfkFidqLogin:
          JfsVizaSicgLogin()
        case .vccMliWsyRegister:
          CnsOybInhRegister()
        default:
          EmptyView()
        }
      }
    }
    .environmentObject(router)
    .enableInjection()
  }
}
