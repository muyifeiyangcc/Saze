import Kingfisher
import SwiftData
import SwiftUI

struct PprqKumkZetHome: View {
  #if DEBUG
    @ObserveInjection var forceRedraw
  #endif
  @EnvironmentObject var appState: RlbHdbTvacState
  @Environment(\.modelContext) private var modelContext
  @EnvironmentObject var router: SvcdXfvTsxRouter
  @Query private var dynamics: [BiekWudpWdqModel]
  @Query private var users: [JnixAsuGeizModel]
  @State private var postTitleTypes = ["All", "Round", "Square", "Oval"]
  @State private var showPostTitleType = -1
  var filteredPictureDynamics: [BiekWudpWdqModel] {
    let blockSet = Set(appState.wfzqCubCpmUser?.SJAZE8aPaDfeuPau1weW9Tr ?? [])
    return dynamics.filter { model in
      if let SJAZElIhkpVkrSW0rayEYw6 = model.SJAZEqW4EMg4h7fXuUJ0kd7?.SJAZElIhkpVkrSW0rayEYw6, blockSet.contains(SJAZElIhkpVkrSW0rayEYw6) {
        return false
      }
      guard model.SJAZEsoZ0L6YgsKwJ0DlGuU == 0 else {
        return false
      }
      return showPostTitleType == -1 || model.SJAZEEPjTSzGukeICl2u6ue == showPostTitleType
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
    GeometryReader { g in
      Image("Assets/saze_home_bg").resizable().ignoresSafeArea()
      Image("Assets/saze_home_rw").resizable().scaledToFill()
        .frame(width: 121.w, height: 238.h)
        .frame(maxWidth: .infinity, alignment: .top)
        .offset(y: 41.h)
      VStack(spacing: 0) {
        Spacer().frame(height: 10.h)
        HStack(alignment: .top, spacing: 0) {
          Text("SHARE YOUR\nBEAUTY！")
            .foregroundColor(Color(red: 211 / 255, green: 238 / 255, blue: 241 / 255))
            .font(.system(size: 24.sp, weight: .black))
            .SJAZEwYTuBtb5heaf78(SJAZEZInLVMwuK3b7Nt: Color(red: 25 / 255, green: 44 / 255, blue: 65 / 255), SJAZEaXDVDe3fq251lp: 4)
          Spacer()
          VStack(spacing: 5.h) {
            Image("Assets/saze_home_share").resizable().scaledToFit().frame(
              width: 76.r, height: 76.r)
            Text("SHARE")
              .foregroundColor(Color(red: 8 / 255, green: 115 / 255, blue: 255 / 255))
              .font(.system(size: 14.sp, weight: .bold))
          }
          .onTapGesture {
            router.sazePath.append(
              WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                url: URL(
                  string:
                    "43d13a3a0778a485eaba1ffe0f2b056e".SJAZET5gG1gyy5729np8EdY())!
              ))
          }
          .padding(.top, 15.h)
        }
        .padding(.horizontal, 13.w)
        .padding(.leading, 7.w)
        Spacer().frame(height: 101.h)
        HStack(spacing: 10.w) {
          Text("AI Photo Inspiration")
            .foregroundColor(Color("fzs1"))
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
        .onTapGesture {
          router.sazePath.append(
            WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
              url: URL(
                string:
                  "75e3bbc7b6c7a719263fad7a92bad5d9".SJAZET5gG1gyy5729np8EdY())!
            ))
        }
        .frame(maxWidth: .infinity, alignment: .center)
        Spacer().frame(height: 12.h)
        ScrollView(.vertical) {
          VStack(spacing: 0) {
            Text("POPULAR PHOTO")
              .foregroundColor(.zts1)
              .font(.system(size: 18.sp, weight: .black))
              .SJAZEwYTuBtb5heaf78(SJAZEZInLVMwuK3b7Nt: .fzs1, SJAZEaXDVDe3fq251lp: 4)
              .padding(.leading, 20.w)
              .frame(maxWidth: .infinity, alignment: .leading)
            Spacer().frame(height: 16.h)
            ScrollView(.horizontal) {
              HStack(spacing: 10.w) {
                ForEach(filteredPictureDynamics, id: \.self) { dynamicEntity in
                  KFImage(URL(string: dynamicEntity.SJAZEJvLqXUWCmDFJBLleGx.first!))
                    .fade(duration: 0.25)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 137.w, height: 172.h)
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
                      router.sazePath.append(
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
            .padding(.leading, 20.w)
            Spacer().frame(height: 24.h)
            ForEach(filteredUsers, id: \.self) { userModel in
              HStack(spacing: 16.w) {
                KFImage(URL(string: userModel.SJAZEitwQEriHyuWepBXcnG))
                  .fade(duration: 0.2)
                  .resizable()
                  .scaledToFill()
                  .frame(width: 62.r, height: 62.r)
                  .clipShape(Circle())
                  .overlay(Circle().stroke(.white.opacity(0.1), lineWidth: 4.0))
                VStack(spacing: 7.h) {
                  Text(userModel.SJAZEgk7Ot2T1adgYgUOQFz)
                    .foregroundColor(.white)
                    .font(.system(size: 16.sp, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                  Text(userModel.SJAZEvngXxy127zPzUvo24P)
                    .foregroundColor(Color(red: 229 / 255, green: 229 / 255, blue: 229 / 255))
                    .font(.system(size: 13.sp, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(maxWidth: .infinity)
              }
              .padding(.all, 6.w)
              .frame(maxWidth: .infinity)
              .background(.fzs1)
              .cornerRadius(41.r)
              .padding(.horizontal, 20.w)
              .padding(.bottom, 8.h)
            }
          }
        }
        .scrollIndicators(.hidden)
        .padding(.top, 20.h)
        .padding(.bottom, 80.h)
        .frame(maxWidth: .infinity)
        .background(.white)
        .clipShape(MacuSupJsqRoundedCorner(SJAZE2hUbpFoA9MRWSb: 20, SJAZEvOx831LUvSBpIz: [.topLeft, .topRight]))
        .ignoresSafeArea()
      }
    }
    .enableInjection()
  }
}
