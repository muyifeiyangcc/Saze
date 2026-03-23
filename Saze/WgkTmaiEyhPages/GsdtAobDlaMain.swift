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
        VStack(spacing: 0) {
          HStack(spacing: 120.w) {
            HStack {
              Image(selectedTab == .home ? "Assets/saze_home_a" : "Assets/saze_home_u")
                .resizable()
                .scaledToFit()
                .frame(width: 26.r, height: 26.r)
                .onTapGesture {
                  selectedTab = .home
                }
              Spacer()
              Image(selectedTab == .found ? "Assets/saze_found_a" : "Assets/saze_found_u")
                .resizable()
                .scaledToFit()
                .frame(width: 26.r, height: 26.r)
                .onTapGesture {
                  selectedTab = .found
                }
            }
            HStack {
              Image(selectedTab == .message ? "Assets/saze_msg_a" : "Assets/saze_msg_u")
                .resizable()
                .scaledToFit()
                .frame(width: 26.r, height: 26.r)
                .onTapGesture {
                  selectedTab = .message
                }
              Spacer()
              Image(selectedTab == .profile ? "Assets/saze_profile_a" : "Assets/saze_profile_u")
                .resizable()
                .scaledToFit()
                .frame(width: 26.r, height: 26.r)
                .onTapGesture {
                  selectedTab = .profile
                }
            }
          }
          .padding(.horizontal, 31.w)
          .frame(maxWidth: .infinity)
          .frame(height: 48.h)
          .background(
            .black
          )
          .clipShape(MacuSupJsqRoundedCorner(radius: 20, corners: [.topLeft, .topRight]))
          .overlay(alignment: .top) {
            Image("Assets/saze_add_post_icon")
              .resizable()
              .scaledToFit()
              .frame(
                width: 60.r, height: 60.r
              )
              .onTapGesture {
                router.sazePath.append(
                  WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                    url: URL(
                      string:
                        "http://192.168.9.129:4000/publishPicPost")!
                  ))
              }
              .offset(y: -22.r)
          }
          Color.clear
            .frame(maxWidth: .infinity)
            .frame(height: 0)
            .safeAreaPadding(.bottom)
            .background(.black)
        }
      }
      .ignoresSafeArea(edges: .bottom)
    }
    .environmentObject(router)
    .enableInjection()
  }
}
