import SwiftData
import SwiftUI

struct GsdtAobDlaMain: View {
  #if DEBUG
    @ObserveInjection var forceRedraw
  #endif
  @EnvironmentObject var appState: RlbHdbTvacState
  @Environment(\.modelContext) private var modelContext
  @StateObject private var router: SvcdXfvTsxRouter = SvcdXfvTsxRouter()

  enum Tab: Hashable {
    case home
    case found
    case message
    case profile
  }

  @State private var selectedTab: Tab = .home
  init() {
    UITabBar.appearance().isHidden = true
    UINavigationBar.appearance().scrollEdgeAppearance = .none
  }
  var body: some View {
    #if DEBUG
      let _ = forceRedraw
    #endif
    NavigationStack(path: $router.sazePath) {
      TabView(selection: $selectedTab) {
        PprqKumkZetHome()
          .tag(Tab.home)
        IrlvCtgVhhFound()
          .tag(Tab.found)
        KwcJszQyjMessage()
          .tag(Tab.message)
        EckPjrFxxkProfile()
          .tag(Tab.profile)
      }
      .navigationDestination(for: WwaQhwoEkuMainRoute.self) { route in
        switch route {
        case .wfueZroFsmnPrimary(let url):
          LweYhriIkpPrimary(trvudfhvSsxcUrl: url)
        }
      }
      .safeAreaInset(edge: .bottom) {
        HStack(spacing: 0) {
          Image(selectedTab == .home ? "Assets/saze_home_a" : "Assets/saze_home_u")
            .resizable()
            .scaledToFit()
            .frame(width: 24.r, height: 24.r)
            .onTapGesture {
              selectedTab = .home
            }
          Spacer()
          Image(selectedTab == .found ? "Assets/saze_found_a" : "Assets/saze_found_u")
            .resizable()
            .scaledToFit()
            .frame(width: 24.r, height: 24.r)
            .onTapGesture {
              selectedTab = .found
            }
          Spacer()
          Image(selectedTab == .message ? "Assets/saze_msg_a" : "Assets/saze_msg_u")
            .resizable()
            .scaledToFit()
            .frame(width: 24.r, height: 24.r)
            .onTapGesture {
              selectedTab = .message
            }
          Spacer()
          Image(selectedTab == .profile ? "Assets/saze_profile_a" : "Assets/saze_profile_u")
            .resizable()
            .scaledToFit()
            .frame(width: 24.r, height: 24.r)
            .onTapGesture {
              selectedTab = .profile
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
    .environmentObject(router)
    .enableInjection()
  }
}
