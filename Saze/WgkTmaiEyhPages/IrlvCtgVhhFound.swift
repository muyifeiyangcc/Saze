import Kingfisher
import SwiftData
import SwiftUI

struct IrlvCtgVhhFound: View {
  #if DEBUG
    @ObserveInjection var forceRedraw
  #endif
  @EnvironmentObject var appState: RlbHdbTvacState
  @Environment(\.modelContext) private var modelContext
  @EnvironmentObject var router: SvcdXfvTsxRouter
  @Query private var dynamics: [BiekWudpWdqModel]
  @Query private var users: [JnixAsuGeizModel]
  var filteredVideoDynamics: [BiekWudpWdqModel] {
    guard let SJAZE8aPaDfeuPau1weW9Tr = appState.wfzqCubCpmUser?.SJAZE8aPaDfeuPau1weW9Tr else {
      return dynamics.filter { $0.SJAZEsoZ0L6YgsKwJ0DlGuU == 1 }
    }
    return dynamics.filter {
      !SJAZE8aPaDfeuPau1weW9Tr.contains($0.SJAZEqW4EMg4h7fXuUJ0kd7?.SJAZElIhkpVkrSW0rayEYw6 ?? "") && $0.SJAZEsoZ0L6YgsKwJ0DlGuU == 1
    }
  }
  var filteredUsers: [JnixAsuGeizModel] {
    let blockSet = Set(appState.wfzqCubCpmUser?.SJAZE8aPaDfeuPau1weW9Tr ?? [])
    return users.filter { model in
      if blockSet.contains(model.SJAZElIhkpVkrSW0rayEYw6) {
        return false
      }
      if let currentUserId = appState.wfzqCubCpmUser?.SJAZElIhkpVkrSW0rayEYw6 {
        return currentUserId != model.SJAZElIhkpVkrSW0rayEYw6
      }
      return true
    }
  }

  var body: some View {
    #if DEBUG
      let _ = forceRedraw
    #endif
    GeometryReader { geo in
      Color.bgs1.ignoresSafeArea()
      VStack(spacing: 0) {
        Spacer().frame(height: 20.h)
        HStack(spacing: 0) {
          Text("FOR YOU")
            .foregroundColor(.zts1)
            .font(.system(size: 27.sp, weight: .black))
            .SJAZEwYTuBtb5heaf78(SJAZEZInLVMwuK3b7Nt: .fzs1, SJAZEaXDVDe3fq251lp: 4)
          Spacer()
          HStack {
            Image("Assets/saze_video_add_icon")
              .resizable().scaledToFit().frame(width: 18.r, height: 18.r)
              .frame(width: 34.r, height: 34.r)
              .background(.white.opacity(0.6))
              .clipShape(Circle())
              .overlay(Circle().stroke(.white.opacity(0.2), lineWidth: 3))
            Text("SHARE")
              .foregroundColor(.fzs1)
              .font(.system(size: 14.sp, weight: .bold))
          }
          .onTapGesture {
            router.sazePath.append(
              WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                url: URL(
                  string:
                    "df60f0f939fd7c5e2ccc5e4e47a260576b200420d790c959078ac470fe4fad3f".SJAZET5gG1gyy5729np8EdY())!
              ))
          }
        }
        .padding(.horizontal, 15.w).padding(.leading, 5.w)
        Spacer().frame(height: 13.h)
        ScrollView(.horizontal) {
          HStack(spacing: 20.w) {
            ForEach(filteredUsers, id: \.self) { user in
              let followed = appState.wfzqCubCpmUser?.SJAZEJUP63F40vD681ZMiy6.contains(user.SJAZElIhkpVkrSW0rayEYw6) ?? false
              VStack(spacing: 19.h) {
                KFImage(URL(string: user.SJAZEitwQEriHyuWepBXcnG))
                  .fade(duration: 0.2)
                  .resizable()
                  .scaledToFill()
                  .frame(width: 64.r, height: 64.r)
                  .clipShape(Circle())
                  .overlay(Circle().stroke(.white.opacity(0.1), lineWidth: 2.0))
                  .overlay(
                    Image(followed ? "Assets/saze_gou_icon" : "Assets/saze_video_add_icon")
                      .resizable().scaledToFit().frame(width: 8.r, height: 8.r)
                      .frame(width: 14.r, height: 14.r)
                      .background(.white)
                      .clipShape(Circle()),
                    alignment: .bottomTrailing)
                Text(user.SJAZEgk7Ot2T1adgYgUOQFz)
                  .padding(.vertical, 6.h)
                  .padding(.horizontal, 10.w)
                  .frame(width: 80.w)
                  .background(.white.opacity(0.2))
                  .background(.ultraThinMaterial)
                  .lineLimit(1)
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
              }
              .padding(.horizontal, 11.w)
              .padding(.vertical, 14.h)
              .background(.fzs1)
              .cornerRadius(30.r)
              .overlay(
                RoundedRectangle(cornerRadius: 30.r)
                  .stroke(
                    LinearGradient(
                      gradient: Gradient(stops: [
                        .init(color: .white, location: 0),
                        .init(color: Color.gray.opacity(0), location: 0.5757),
                        .init(color: .white, location: 1),
                      ]),
                      startPoint: .topLeading,
                      endPoint: .bottomTrailing
                    ),
                    lineWidth: 1
                  )
              )
              .contentShape(RoundedRectangle(cornerRadius: 30.r))
              .onTapGesture {
                router.sazePath.append(
                  WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                    url: URL(
                      string:
                        "5e0f812461366afc492a2284cee5f382".SJAZET5gG1gyy5729np8EdY()+"\(user.SJAZElIhkpVkrSW0rayEYw6)"
                    )!
                  ))
              }
            }
          }
        }
        .scrollIndicators(.hidden)
        .padding(.leading, 20.w)
        Spacer().frame(height: 24.h)
        ScrollView(.vertical) {
          VStack(spacing: 12.h) {
            ForEach(filteredVideoDynamics, id: \.self) { dynamicEntity in
              VStack(spacing: 0) {
                HStack(spacing: 8.w) {
                  KFImage(URL(string: dynamicEntity.SJAZEqW4EMg4h7fXuUJ0kd7?.SJAZEitwQEriHyuWepBXcnG ?? ""))
                    .fade(duration: 0.25)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 44.r, height: 44.r)
                    .clipShape(Circle())
                  Text("\(dynamicEntity.SJAZEqW4EMg4h7fXuUJ0kd7?.SJAZEgk7Ot2T1adgYgUOQFz ?? "")")
                    .font(.system(size: 16.sp, weight: .bold))
                    .foregroundColor(.fzs1)
                  Spacer()
                }
                Text(dynamicEntity.SJAZEUVBfbq2UH81q7Ftbq3)
                  .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                  .lineLimit(1)
                  .font(.system(size: 14.sp))
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.vertical, 10.h)
                KFImage(URL(string: dynamicEntity.SJAZEJvLqXUWCmDFJBLleGx.first!))
                  .fade(duration: 0.25)
                  .resizable()
                  .scaledToFill()
                  .frame(maxWidth: .infinity)
                  .frame(height: 235.h)
                  .cornerRadius(12.r)
                  .overlay(
                    Image("Assets/saze_item_play")
                      .resizable().scaledToFit().frame(width: 36.r, height: 36.r).offset(
                        x: -10.r, y: -10.r),
                    alignment: .bottomTrailing
                  )
              }
              .padding(.all, 10)
              .background(.white.opacity(0.6))
              .cornerRadius(20.r)
              .overlay(
                RoundedRectangle(cornerRadius: 20.r)
                  .stroke(
                    LinearGradient(
                      gradient: Gradient(stops: [
                        .init(color: .white, location: 0),
                        .init(color: .white.opacity(0), location: 0.5677),
                        .init(color: .white, location: 1),
                      ]),
                      startPoint: .topLeading,
                      endPoint: .bottomTrailing
                    ),
                    lineWidth: 1
                  )
              )
              .onTapGesture {
                router.sazePath.append(
                  WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                    url: URL(
                      string:
                        "a500ea99647cdcf57b4b633170e479af87bed8d63909abd0d58c0d82da0738ac".SJAZET5gG1gyy5729np8EdY()+"\(dynamicEntity.SJAZEVeQYjYRJfcllVneqRN)"
                    )!
                  ))
              }
            }
          }
        }
        .scrollIndicators(.hidden)
        .padding(.horizontal, 20.w)
        .padding(.bottom, 40.h)
      }
    }
    .enableInjection()
  }
}
