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
  @Query private var dynamics: [DynamicModel]
  @State private var postTitleTypes = ["All", "Round", "Square", "Oval"]
  @State private var showPostTitleType = -1
  var filteredPictureDynamics: [DynamicModel] {
    let blockSet = Set(appState.wfzqCubCpmUser?.blockList ?? [])
    return dynamics.filter { model in
      if let userId = model.user?.userId, blockSet.contains(userId) {
        return false
      }
      guard model.dynamicType == 0 else {
        return false
      }
      return showPostTitleType == -1 || model.dynamicTitleType == showPostTitleType
    }
  }

  var body: some View {
    #if DEBUG
      let _ = forceRedraw
    #endif
    GeometryReader { g in
      Image("Assets/saze_home_bg").resizable().scaledToFill().ignoresSafeArea()
      Image("Assets/saze_home_yjrw").resizable().scaledToFill()
        .frame(width: 338.w, height: 343.h)
        .frame(maxWidth: .infinity, alignment: .topTrailing)
      VStack(spacing: 0) {
        Spacer().frame(height: 1.h)
        HStack {
          ZStack {
            Text("AI Yoga Improvement\nGuide")
              .foregroundColor(.black.opacity(0.25))
              .font(.system(size: 24.sp, weight: .black))
              .offset(y: 2)
            Text("AI Yoga Improvement\nGuide")
              .foregroundColor(.black)
              .font(.system(size: 24.sp, weight: .black))
          }
          Spacer()
        }
        .padding(.horizontal, 20.w)
        Spacer().frame(height: 16.h)
        HStack(spacing: 4.w) {
          Text("Go Now")
            .foregroundColor(Color("zs2"))
            .font(.system(size: 16.sp, weight: .bold))
          Image("Assets/saze_home_ai_forward")
            .resizable().scaledToFit()
            .frame(width: 16.r, height: 16.r)
        }
        .padding(.horizontal, 10.w)
        .padding(.vertical, 6.h)
        .background(.black)
        .cornerRadius(10)
        .onTapGesture {
          router.sazePath.append(
            WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
              url: URL(
                string:
                  "http://192.168.9.129:4000/aiDetails")!
            ))
        }
        .padding(.horizontal, 20.w)
        .frame(maxWidth: .infinity, alignment: .leading)
        Spacer().frame(height: 170.h)
        Text("Provide yoga advice to help\nimprove body shape")
          .foregroundColor(.white)
          .font(.system(size: 18.sp, weight: .bold))
          .padding(.horizontal, 14.w)
          .padding(.vertical, 14.h)
          .frame(width: 326.w, height: 73.h, alignment: .leading)
          .background(.black)
          .cornerRadius(16)
        Spacer().frame(height: 20.h)
        ScrollView(.horizontal) {
          HStack(spacing: 16.w) {
            ForEach(Array(postTitleTypes.enumerated()), id: \.offset) { index, type in
              Text("\(type)")
                .foregroundColor(showPostTitleType != (index - 1) ? Color("fz1") : .white)
                .font(.system(size: 16.sp, weight: .bold))
                .padding(.horizontal, 24.5.w)
                .padding(.vertical, 8.h)
                .background(
                  LinearGradient(
                    colors: showPostTitleType != (index - 1)
                      ? [.white, .white]
                      : [
                        Color(red: 165 / 255, green: 237 / 255, blue: 57 / 255),
                        Color(red: 48 / 255, green: 234 / 255, blue: 255 / 255),
                      ],
                    startPoint: .leading,
                    endPoint: .trailing
                  )
                )
                .overlay(
                  RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("fz1"), lineWidth: 1)
                )
                .cornerRadius(20)
                .onTapGesture {
                  showPostTitleType = index - 1
                }
            }
          }
        }
        .scrollIndicators(.hidden)
        .padding(.leading, 20.w)
        Spacer().frame(height: 20.h)
        ScrollView {
          VStack(spacing: 20.w) {
            ForEach(filteredPictureDynamics, id: \.self) { dynamicEntity in
              VStack(spacing: 10.h) {
                HStack(spacing: 8.w) {
                  KFImage(URL(string: dynamicEntity.user?.avatar ?? ""))
                    .fade(duration: 0.25)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 44.r, height: 44.r)
                    .clipShape(Circle())
                  VStack(spacing: 0) {
                    Spacer().frame(height: 4.5.h)
                    Text("\(dynamicEntity.user?.name ?? "")")
                      .foregroundColor(.white)
                      .font(.system(size: 14.sp, weight: .bold))
                    Spacer()
                  }
                  Spacer()
                }
                KFImage(URL(string: dynamicEntity.dynamicPic.first!))
                  .fade(duration: 0.25)
                  .resizable()
                  .scaledToFill()
                  .frame(width: g.size.width - 60.w)
                  .frame(height: 244.h)
                  .clipped()
                  .overlay(
                    Text(dynamicEntity.dynamicDesc)
                      .foregroundColor(.white)
                      .font(.system(size: 14.sp))
                      .lineLimit(2)
                      .padding(.horizontal, 10.w)
                      .padding(.vertical, 6.h)
                      .frame(maxWidth: .infinity, alignment: .leading)
                      .background(.white.opacity(0.1))
                      .background(.ultraThinMaterial), alignment: .bottom
                  )
                  .cornerRadius(12.r)
                HStack(spacing: 43.w) {
                  HStack(spacing: 6.w) {
                    Image("Assets/saze_post_item_com")
                      .resizable().scaledToFit().frame(width: 20.r, height: 20.r)
                    Text("\(dynamicEntity.dynamicCommentCount)")
                      .foregroundColor(.white)
                      .font(.system(size: 16.sp))
                  }
                  HStack(spacing: 6.w) {
                    Image("Assets/saze_post_item_dz")
                      .resizable().scaledToFit().frame(width: 20.r, height: 20.r)
                    Text("\(dynamicEntity.dynamicLikeCount)")
                      .foregroundColor(.white)
                      .font(.system(size: 16.sp))
                  }
                  Spacer()
                }
              }
              .padding(.all, 10)
              .background(.black)
              .cornerRadius(16.r)
              .onTapGesture {
                router.sazePath.append(
                  WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                    url: URL(
                      string:
                        "http://192.168.9.129:4000/picPostDetails/\(dynamicEntity.dynamicId)"
                    )!
                  ))
              }
            }
          }
        }
        .padding(.horizontal, 20.w)
        .padding(.bottom, 30.h)
        .scrollIndicators(.hidden)
      }
      .frame(maxWidth: .infinity)
    }
    .enableInjection()
  }
}
