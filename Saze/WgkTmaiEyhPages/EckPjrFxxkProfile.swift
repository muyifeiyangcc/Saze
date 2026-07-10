import Kingfisher
import SwiftData
import SwiftUI

struct EckPjrFxxkProfile: View {
  #if DEBUG
    @ObserveInjection var forceRedraw
  #endif
  @EnvironmentObject var appState: RlbHdbTvacState
  @Environment(\.modelContext) private var modelContext
  @EnvironmentObject var router: SvcdXfvTsxRouter
  @Query private var dynamics: [BiekWudpWdqModel]
  var filteredPictureDynamics: [BiekWudpWdqModel] {
    return dynamics.filter {
      $0.SJAZEsoZ0L6YgsKwJ0DlGuU == 0
        && $0.SJAZEqW4EMg4h7fXuUJ0kd7?.SJAZElIhkpVkrSW0rayEYw6 == appState.wfzqCubCpmUser?.SJAZElIhkpVkrSW0rayEYw6
    }
  }
  let columns = [
    GridItem(.flexible(), spacing: 25),
    GridItem(.flexible(), spacing: 25),
  ]
  var body: some View {
    #if DEBUG
      let _ = forceRedraw
    #endif
    GeometryReader { _ in
      Image("Assets/saze_profile_bg").resizable().ignoresSafeArea()
      VStack(spacing: 0) {
        Spacer().frame(height: 12.h)
        HStack(alignment: .top, spacing: 0) {
          HStack(spacing: 10.w) {
            KFImage(URL(string: appState.wfzqCubCpmUser?.SJAZEitwQEriHyuWepBXcnG ?? ""))
              .fade(duration: 0.2)
              .resizable()
              .scaledToFill()
              .frame(width: 62.r, height: 62.r)
              .clipShape(Circle())
              .overlay(Circle().stroke(.white.opacity(0.1), lineWidth: 4.0))
            Text(appState.wfzqCubCpmUser?.SJAZEgk7Ot2T1adgYgUOQFz ?? "")
              .foregroundColor(.zs1)
              .font(.system(size: 16.sp, weight: .black))
              .SJAZEwYTuBtb5heaf78(SJAZEZInLVMwuK3b7Nt: .fzs1, SJAZEaXDVDe3fq251lp: 4)
            Image("Assets/saze_edit_icon")
              .resizable().scaledToFit().frame(
                width: 12.r, height: 12.r)
          }
          .onTapGesture {
            router.SJAZE5Y6UMc9APagan0DFzL(
                      WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                url: URL(
                  string:
                    "d3c326f07118455fb0dc1db6140cc05a".SJAZET5gG1gyy5729np8EdY())!
              ))
          }
          .padding(.top, 4.h)
          Spacer()
          Image("Assets/saze_setting_icon")
            .resizable().scaledToFit().frame(
              width: 24.r, height: 24.r
            )
            .onTapGesture {
              router.SJAZE5Y6UMc9APagan0DFzL(
                      WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                  url: URL(
                    string:
                      "a3d1641a8207734c590e325872d47e0f".SJAZET5gG1gyy5729np8EdY()
                  )!
                ))
            }
        }
        .padding(.horizontal, 20.w)
        HStack(spacing: 0) {
          VStack(alignment: .leading, spacing: 6.h) {
            Text(
              "\(appState.wfzqCubCpmUser?.SJAZEJUP63F40vD681ZMiy6.count ?? 0)"
            )
            .foregroundColor(
              .fzs1
            )
            .font(.system(size: 16.sp, weight: .bold))
            Text(
              "Following"
            ).foregroundColor(
              .fzs1
            )
            .font(.system(size: 12.sp))
          }
          .onTapGesture {
            router.SJAZE5Y6UMc9APagan0DFzL(
                      WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                url: URL(
                  string:
                    "13dab376a49b2d0df66f10e1837ff47b".SJAZET5gG1gyy5729np8EdY()
                )!
              ))
          }
          Spacer()
          VStack(alignment: .leading, spacing: 6.h) {
            Text(
              "\(appState.wfzqCubCpmUser?.SJAZEekGs3S5kuus384RPpr.count ?? 0)"
            )
            .foregroundColor(
              .fzs1
            )
            .font(.system(size: 16.sp, weight: .bold))
            Text(
              "Followers"
            ).foregroundColor(
              .fzs1
            )
            .font(.system(size: 12.sp))
          }
          .onTapGesture {
            router.SJAZE5Y6UMc9APagan0DFzL(
                      WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                url: URL(
                  string:
                    "5296c5a06b6eb0407a088310527c8530".SJAZET5gG1gyy5729np8EdY()
                )!
              ))
          }
        }
        .padding(.leading, 102.w)
        .padding(.trailing, 138.w)
        Spacer().frame(height: 14.h)
        HStack(spacing: 12.w) {
          Image("Assets/saze_wallet_icon")
            .resizable().scaledToFit().frame(
              width: 40.r, height: 40.r)
          Text("WALLET")
            .foregroundColor(.zs1)
            .font(.system(size: 20.sp, weight: .black))
            .SJAZEwYTuBtb5heaf78(SJAZEZInLVMwuK3b7Nt: .fzs1, SJAZEaXDVDe3fq251lp: 4)
          Spacer()
        }
        .padding(.horizontal, 25.w)
        .frame(maxWidth: .infinity)
        .frame(height: 70.h)
        .background(.white.opacity(0.2))
        .background(.ultraThinMaterial)
        .cornerRadius(40.r)
        .onTapGesture {
          router.SJAZE5Y6UMc9APagan0DFzL(
                      WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
              url: URL(
                string:
                  "81bf44aaa75aa1002400c5c042eab2de".SJAZET5gG1gyy5729np8EdY()
              )!
            ))
        }
        .padding(.horizontal, 30.w)
        Spacer().frame(height: 16.h)
        if filteredPictureDynamics.isEmpty {
          VStack {
            Spacer().frame(height: 20.h)
            Text("POST")
              .foregroundColor(.zts1)
              .font(.system(size: 24.sp, weight: .black))
              .SJAZEwYTuBtb5heaf78(SJAZEZInLVMwuK3b7Nt: .fzs1, SJAZEaXDVDe3fq251lp: 4)
              .padding(.leading, 20.w)
              .frame(maxWidth: .infinity, alignment: .leading)
            VStack {
              Image("Assets/saze_empty").resizable().scaledToFit().frame(
                width: 152.r, height: 152.r)
              Text("No Data")
                .foregroundColor(.black)
                .font(.system(size: 18.sp))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
          }
          .frame(maxWidth: .infinity, maxHeight: .infinity)
          .background(.white)
          .clipShape(MacuSupJsqRoundedCorner(SJAZE2hUbpFoA9MRWSb: 40.r, SJAZEvOx831LUvSBpIz: [.topLeft, .topRight]))
          .ignoresSafeArea()
        } else {
          VStack {
            Spacer().frame(height: 20.h)
            Text("POST")
              .foregroundColor(.zts1)
              .font(.system(size: 24.sp, weight: .black))
              .SJAZEwYTuBtb5heaf78(SJAZEZInLVMwuK3b7Nt: .fzs1, SJAZEaXDVDe3fq251lp: 4)
              .padding(.leading, 20.w)
              .frame(maxWidth: .infinity, alignment: .leading)
            LazyVGrid(columns: columns) {
              ForEach(filteredPictureDynamics, id: \.self) { dynamicEntity in
                GeometryReader { geometry in
                  KFImage(URL(string: dynamicEntity.SJAZEJvLqXUWCmDFJBLleGx.first!))
                    .fade(duration: 0.25)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width)
                    .frame(height: 211.h)
                    .clipped()
                    .cornerRadius(40.r)
                    .overlay(
                      HStack(spacing: 10.w) {
                        Text("Check")
                          .foregroundColor(.white)
                          .font(.system(size: 16.sp, weight: .semibold))
                        Image("Assets/saze_item_forward")
                          .resizable().scaledToFit()
                          .frame(width: 18.r, height: 18.r)
                          .frame(width: 30.r, height: 30.r)
                          .background(.zs1)
                          .clipShape(Circle())
                      }
                      .padding(.horizontal, 10.w)
                      .padding(.vertical, 6.h)
                      .background(.white.opacity(0.2))
                      .background(.ultraThinMaterial)
                      .cornerRadius(100.r)
                      .overlay(
                        RoundedRectangle(cornerRadius: 100.r)
                          .stroke(
                            LinearGradient(
                              gradient: Gradient(stops: [
                                .init(color: Color.white, location: 0),
                                .init(color: Color.white.opacity(0), location: 0.5381),
                                .init(color: Color.white.opacity(0.75), location: 1),
                              ]),
                              startPoint: .topLeading,
                              endPoint: .bottomTrailing
                            ),
                            lineWidth: 1
                          )
                      )
                      .offset(y: -10.h), alignment: .bottom
                    )
                    .onTapGesture {
                      router.SJAZE5Y6UMc9APagan0DFzL(
                      WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                          url: URL(
                            string:
                              "84e811b58c548019d61e1208cadd2b4a".SJAZET5gG1gyy5729np8EdY()+"\(dynamicEntity.SJAZEVeQYjYRJfcllVneqRN)"
                          )!
                        ))
                    }
                }
              }
            }
          }
          .padding(.horizontal, 20.w)
          .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
          .background(.white)
          .clipShape(MacuSupJsqRoundedCorner(SJAZE2hUbpFoA9MRWSb: 40.r, SJAZEvOx831LUvSBpIz: [.topLeft, .topRight]))
          .ignoresSafeArea()
        }
      }
    }
    .enableInjection()
  }
}
