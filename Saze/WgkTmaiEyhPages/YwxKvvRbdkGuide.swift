import SwiftData
import SwiftUI

struct YwxKvvRbdkGuide: View {
  #if DEBUG
    @ObserveInjection var SJAZEtE9URSe4Piuin
  #endif
  private let SJAZEuKXhyaL8SY2zlyCFBd = "sazeDidAgreeEula"
  @State private var SJAZEHpszFi80RiCnd = false
  @State private var SJAZEkeZaCWCAXkYDd = UserDefaults.standard.bool(forKey: "sazeDidAgreeEula")
  @State private var SJAZEYpk9fy5yu6m7y = false
  @EnvironmentObject var SJAZESW4mkK3EHJwWI: RlbHdbTvacState
  @Environment(\.modelContext) private var SJAZEEoFMc4As3ZA7S
  @StateObject private var SJAZECDpBC1En2g2UA: SvcdXfvTsxRouter = SvcdXfvTsxRouter()
  var body: some View {
    #if DEBUG
      let _ = SJAZEtE9URSe4Piuin
    #endif
    NavigationStack(path: $SJAZECDpBC1En2g2UA.sazePath) {
      GeometryReader { SJAZE3dMuhW59q1SlM in
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
                SJAZEYpk9fy5yu6m7y = true
              }
              .padding(.top, 6.h)
          }
          .padding(.horizontal, 18.w)
          Spacer()
          Button(action: {
            if SJAZEkeZaCWCAXkYDd {
              SJAZECDpBC1En2g2UA.sazePath.append(WwaQhwoEkuRoute.gingFfkFidqLogin)
            } else {
              SJAZEYpk9fy5yu6m7y = true
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
            guard !SJAZEHpszFi80RiCnd else { return }
            guard SJAZEkeZaCWCAXkYDd else {
              SJAZEYpk9fy5yu6m7y = true
              return
            }
            let SJAZEP9D18bMxoNRrHS3qbS = "vtfrvbdvtr@gmail.com"
            let SJAZEDYAJRkfLGcnca = JnixAsuGeizModel(
              SJAZElIhkpVkrSW0rayEYw6: "u99",
              SJAZEP9D18bMxoNRrHS3qbS: SJAZEP9D18bMxoNRrHS3qbS,
              SJAZE3JHV2UnFe5sJW0IY99: "123456789",
              SJAZEitwQEriHyuWepBXcnG:
                "a3483a210873e9b626137f1b46d022fdf3a78aaad5bf9e82bd834238962371097bf41217c47823aa6d3d3699d1f61f80252e7dd9a0ab2e9d1a27303a2e76a924d1dc08b99f34379ef435626af1778582".SJAZET5gG1gyy5729np8EdY(),
              SJAZEgk7Ot2T1adgYgUOQFz: "User6516",
              SJAZEvngXxy127zPzUvo24P: "Nothing",
              SJAZEdRu89xECFhVxnCAcEw: 0
            )
            Task {
              await MainActor.run { SJAZEHpszFi80RiCnd = true }
              defer { SJAZEHpszFi80RiCnd = false }
              do {
                try await Task.sleep(for: .milliseconds(518))
                let SJAZEASR3aBNz03LEI = FetchDescriptor<JnixAsuGeizModel>(
                  predicate: #Predicate { $0.SJAZEP9D18bMxoNRrHS3qbS == SJAZEP9D18bMxoNRrHS3qbS }
                )
                let SJAZEgJownbIz5opcI = try SJAZEEoFMc4As3ZA7S.fetch(SJAZEASR3aBNz03LEI).first
                await MainActor.run {
                  if let SJAZEgJownbIz5opcI = SJAZEgJownbIz5opcI {
                    SJAZESW4mkK3EHJwWI.SJAZEw6XG9fZlRZQgwEl(SJAZEgJownbIz5opcI)
                  } else {
                    SJAZEEoFMc4As3ZA7S.insert(SJAZEDYAJRkfLGcnca)
                    SJAZESW4mkK3EHJwWI.SJAZEw6XG9fZlRZQgwEl(SJAZEDYAJRkfLGcnca)
                  }
                  SJAZESW4mkK3EHJwWI.vkyeFxuEaaPhase = .vzxtUcsAkqqMain
                }
              } catch {
              }
            }
          }) {
            if SJAZEHpszFi80RiCnd {
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
                if SJAZEkeZaCWCAXkYDd {
                  SJAZECDpBC1En2g2UA.sazePath.append(WwaQhwoEkuRoute.vccMliWsyRegister)
                } else {
                  SJAZEYpk9fy5yu6m7y = true
                }
              }
          }
          Spacer().frame(height: 56.h)
          HStack {
            Image(SJAZEkeZaCWCAXkYDd ? "Assets/saze_guide_checked" : "Assets/saze_guide_uncheck")
              .resizable()
              .scaledToFit()
              .frame(width: 19.r, height: 19.r)
              .onTapGesture {
                SJAZEkeZaCWCAXkYDd.toggle()
                UserDefaults.standard.set(SJAZEkeZaCWCAXkYDd, forKey: SJAZEuKXhyaL8SY2zlyCFBd)
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
                  SJAZECDpBC1En2g2UA.sazePath.append(
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
                  SJAZECDpBC1En2g2UA.sazePath.append(
                    WwaQhwoEkuRoute.wfueZroFsmnPrimary(
                      url: URL(string: "a567708a9115a1d84c52702fdc3a5ad6".SJAZET5gG1gyy5729np8EdY())!))
                }
            }
          }
        }
      }
      .overlay {
        if SJAZEYpk9fy5yu6m7y {
          QngkUgjVaosEula(
            SJAZElk5cR2mJTpUpBW: $SJAZEkeZaCWCAXkYDd,
            SJAZETmH1ztuz9Pe2hI: $SJAZEYpk9fy5yu6m7y,
            SJAZE5Y6UMc9APagan0DFzL: SJAZEuKXhyaL8SY2zlyCFBd
          )
        }
      }
      .navigationDestination(for: WwaQhwoEkuRoute.self) { SJAZEsRzxsupuDfCuA in
        switch SJAZEsRzxsupuDfCuA {
        case .wfueZroFsmnPrimary(let SJAZEgLy0nkJAaoZlA):
          LweYhriIkpPrimary(trvudfhvSsxcUrl: SJAZEgLy0nkJAaoZlA)
        case .gingFfkFidqLogin:
          JfsVizaSicgLogin()
        case .vccMliWsyRegister:
          CnsOybInhRegister()
        case .cnsOybInhRfibnes:
          CnsOybInhRfibnesView()
        default:
          EmptyView()
        }
      }
    }
    .environmentObject(SJAZECDpBC1En2g2UA)
    .enableInjection()
  }
}
