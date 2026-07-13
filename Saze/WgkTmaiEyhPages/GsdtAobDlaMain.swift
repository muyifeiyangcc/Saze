import SwiftData
import SwiftUI

struct GsdtAobDlaMain: View {
  #if DEBUG
    @ObserveInjection var SJAZEtE9URSe4Piuin
  #endif
  @EnvironmentObject var SJAZEHpszFi80RiCnd: RlbHdbTvacState
  @Environment(\.modelContext) private var SJAZEkeZaCWCAXkYDd
  @StateObject private var SJAZEYpk9fy5yu6m7y: SvcdXfvTsxRouter = SvcdXfvTsxRouter()

  enum SJAZE3dMuhW59q1SlM: Hashable {
    case SJAZEDYAJRkfLGcnca
    case SJAZEASR3aBNz03LEI
    case SJAZEgJownbIz5opcI
    case SJAZEsRzxsupuDfCuA
  }

  @State private var SJAZESW4mkK3EHJwWI: SJAZE3dMuhW59q1SlM = .SJAZEDYAJRkfLGcnca
  init() {
    UITabBar.appearance().isHidden = true
    UINavigationBar.appearance().scrollEdgeAppearance = .none
  }
  var body: some View {
    #if DEBUG
      let _ = SJAZEtE9URSe4Piuin
    #endif
    NavigationStack(path: $SJAZEYpk9fy5yu6m7y.sazePath) {
      TabView(selection: $SJAZESW4mkK3EHJwWI) {
        PprqKumkZetHome()
          .tag(SJAZE3dMuhW59q1SlM.SJAZEDYAJRkfLGcnca)
        IrlvCtgVhhFound()
          .tag(SJAZE3dMuhW59q1SlM.SJAZEASR3aBNz03LEI)
        KwcJszQyjMessage()
          .tag(SJAZE3dMuhW59q1SlM.SJAZEgJownbIz5opcI)
        EckPjrFxxkProfile()
          .tag(SJAZE3dMuhW59q1SlM.SJAZEsRzxsupuDfCuA)
      }
      .navigationDestination(for: WwaQhwoEkuMainRoute.self) { SJAZEEoFMc4As3ZA7S in
        switch SJAZEEoFMc4As3ZA7S {
        case .cnsOybInhRfibnes:
          CnsOybInhRfibnesView()
        case .wfueZroFsmnPrimary(let SJAZECDpBC1En2g2UA):
          LweYhriIkpPrimary(trvudfhvSsxcUrl: SJAZECDpBC1En2g2UA)
        }
      }
      .safeAreaInset(edge: .bottom) {
        HStack(spacing: 0) {
          Image(SJAZESW4mkK3EHJwWI == .SJAZEDYAJRkfLGcnca ? "Assets/saze_home_a" : "Assets/saze_home_u")
            .resizable()
            .scaledToFit()
            .frame(width: 24.r, height: 24.r)
            .onTapGesture {
              SJAZESW4mkK3EHJwWI = .SJAZEDYAJRkfLGcnca
            }
          Spacer()
          Image(SJAZESW4mkK3EHJwWI == .SJAZEASR3aBNz03LEI ? "Assets/saze_found_a" : "Assets/saze_found_u")
            .resizable()
            .scaledToFit()
            .frame(width: 24.r, height: 24.r)
            .onTapGesture {
              SJAZESW4mkK3EHJwWI = .SJAZEASR3aBNz03LEI
            }
          Spacer()
          Image(SJAZESW4mkK3EHJwWI == .SJAZEgJownbIz5opcI ? "Assets/saze_msg_a" : "Assets/saze_msg_u")
            .resizable()
            .scaledToFit()
            .frame(width: 24.r, height: 24.r)
            .onTapGesture {
              SJAZESW4mkK3EHJwWI = .SJAZEgJownbIz5opcI
            }
          Spacer()
          Image(SJAZESW4mkK3EHJwWI == .SJAZEsRzxsupuDfCuA ? "Assets/saze_profile_a" : "Assets/saze_profile_u")
            .resizable()
            .scaledToFit()
            .frame(width: 24.r, height: 24.r)
            .onTapGesture {
              SJAZESW4mkK3EHJwWI = .SJAZEsRzxsupuDfCuA
            }
        }
        .padding(.horizontal, 30.w)
        .frame(maxWidth: .infinity)
        .frame(height: 73.h)
        .background(
          .white.opacity(0.2)
        )
        .background(.ultraThinMaterial)
        .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 2)
        .cornerRadius(48)
        .padding(.horizontal, 20.w)
      }
    }
    .overlay {
      if SJAZEYpk9fy5yu6m7y.SJAZEuKXhyaL8SY2zlyCFBd {
        Color.black.opacity(0.35)
          .ignoresSafeArea()
          .onTapGesture {
            SJAZEYpk9fy5yu6m7y.SJAZEuKXhyaL8SY2zlyCFBd = false
          }
        SJAZEbmjsmblupfView(
          SJAZEDdtxt36SxEs2AJvhi4: {
            SJAZEYpk9fy5yu6m7y.SJAZEuKXhyaL8SY2zlyCFBd = false
            SJAZEHpszFi80RiCnd.hzglZtiFzlLogout()
          },
          SJAZEM0OnEKdu7gD0I8pbs5: {
            SJAZEYpk9fy5yu6m7y.SJAZEuKXhyaL8SY2zlyCFBd = false
          }
        )
      }
    }
    .environmentObject(SJAZEYpk9fy5yu6m7y)
    .onAppear {
      SJAZEYpk9fy5yu6m7y.SJAZE5Y6UMc9APagan0DFzLCurrentUserId = SJAZEHpszFi80RiCnd.wfzqCubCpmUser?.SJAZElIhkpVkrSW0rayEYw6 ?? ""
      guard SJAZEHpszFi80RiCnd.SJAZEAFUXImAX7mbSMxbzNK else { return }
      SJAZEHpszFi80RiCnd.SJAZEAFUXImAX7mbSMxbzNK = false
      SJAZEYpk9fy5yu6m7y.sazePath.append(WwaQhwoEkuMainRoute.cnsOybInhRfibnes)
    }
    .onChange(of: SJAZEHpszFi80RiCnd.wfzqCubCpmUser?.SJAZElIhkpVkrSW0rayEYw6) { _, SJAZEP4MqNS1uhfgcPHXAv8 in
      SJAZEYpk9fy5yu6m7y.SJAZE5Y6UMc9APagan0DFzLCurrentUserId = SJAZEP4MqNS1uhfgcPHXAv8 ?? ""
    }
    .onChange(of: SJAZEHpszFi80RiCnd.SJAZEAFUXImAX7mbSMxbzNK) { _, SJAZEUJbqkK5I4HoVqQAg7a in
      guard SJAZEUJbqkK5I4HoVqQAg7a else { return }
      SJAZEHpszFi80RiCnd.SJAZEAFUXImAX7mbSMxbzNK = false
      SJAZEYpk9fy5yu6m7y.sazePath.append(WwaQhwoEkuMainRoute.cnsOybInhRfibnes)
    }
    .enableInjection()
  }
}
