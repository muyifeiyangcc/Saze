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
  @Query private var dynamics: [DynamicModel]
  var filteredVideoDynamics: [DynamicModel] {
    guard let blockList = appState.wfzqCubCpmUser?.blockList else {
      return dynamics.filter { $0.dynamicType == 1 }
    }
    return dynamics.filter {
      !blockList.contains($0.user?.userId ?? "") && $0.dynamicType == 1
    }
  }

  var body: some View {
    #if DEBUG
      let _ = forceRedraw
    #endif
    GeometryReader { geo in
      Image("Assets/saze_default_bg").resizable().scaledToFill().ignoresSafeArea()
      VStack(spacing: 0) {
        Spacer().frame(height: 20.h)
        HStack(spacing: 0) {
          Text("Hot Video")
            .foregroundColor(.white)
            .font(.system(size: 16.sp, weight: .bold))
            .padding(.horizontal, 10.w)
            .padding(.vertical, 8.h)
            .background(
              LinearGradient(
                colors: [
                  Color(red: 165 / 255, green: 237 / 255, blue: 57 / 255),
                  Color(red: 48 / 255, green: 234 / 255, blue: 255 / 255),
                ],
                startPoint: .leading,
                endPoint: .trailing
              )
            )
            .overlay(
              RoundedRectangle(cornerRadius: 20.r)
                .stroke(
                  Color(red: 48 / 255, green: 234 / 255, blue: 255 / 255), lineWidth: 1)
            )
            .cornerRadius(20.r)
          Spacer()
          Image("Assets/saze_vp_add")
            .resizable().scaledToFit().frame(width: 30.r, height: 30.r)
            .onTapGesture {
              router.sazePath.append(
                WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                  url: URL(
                    string:
                      "http://192.168.9.129:4000/publishVideoPost")!
                ))
            }
        }.padding(.horizontal, 20.w)
        Spacer().frame(height: 20.h)
        ScrollView(.vertical) {
          VStack(spacing: 12.h) {
            ForEach(filteredVideoDynamics, id: \.self) { dynamicEntity in
              VStack(spacing: 12.h) {
                HStack(spacing: 8.w) {
                  KFImage(URL(string: dynamicEntity.user?.avatar ?? ""))
                    .fade(duration: 0.25)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36.r, height: 36.r)
                    .clipShape(Circle())
                  Text("\(dynamicEntity.user?.name ?? "")")
                    .foregroundColor(.white)
                    .font(.system(size: 14.sp, weight: .bold))
                  Spacer()
                }
                KFImage(URL(string: dynamicEntity.dynamicPic.first!))
                  .fade(duration: 0.25)
                  .resizable()
                  .scaledToFill()
                  .frame(height: 268.h)
                  .cornerRadius(12.r)
                  .overlay(
                    Image("Assets/saze_vp_item_play")
                      .resizable().scaledToFit().frame(width: 30.r, height: 30.r),
                    alignment: .center
                  )
                  .overlay(
                    VStack(spacing: 13.h) {
                      VStack(spacing: 6.h) {
                        Image("Assets/saze_post_item_dz")
                          .resizable().scaledToFit().frame(width: 20.r, height: 20.r)
                        Text("\(dynamicEntity.dynamicLikeCount)")
                          .foregroundColor(.white)
                          .font(.system(size: 16.sp))
                      }
                      .padding(.horizontal, 5.w)
                      .padding(.vertical, 6.h)
                      .background(.black)
                      .cornerRadius(12.r)
                      .overlay(RoundedRectangle(cornerRadius: 12.r).stroke(.white, lineWidth: 1))
                      VStack(spacing: 6.h) {
                        Image("Assets/saze_post_item_com")
                          .resizable().scaledToFit().frame(width: 20.r, height: 20.r)
                        Text("\(dynamicEntity.dynamicCommentCount)")
                          .foregroundColor(.white)
                          .font(.system(size: 16.sp))
                      }
                      .padding(.horizontal, 5.w)
                      .padding(.vertical, 6.h)
                      .background(.black)
                      .cornerRadius(12.r)
                      .overlay(RoundedRectangle(cornerRadius: 12.r).stroke(.white, lineWidth: 1))
                    }
                    .padding(.bottom, 10.h)
                    .padding(.trailing, 10.w), alignment: .bottomTrailing)
                Text(dynamicEntity.dynamicDesc)
                  .foregroundColor(.white)
                  .lineLimit(2)
                  .font(.system(size: 12.sp))
                  .frame(maxWidth: .infinity, alignment: .leading)
              }
              .padding(.all, 8)
              .background(.black)
              .cornerRadius(16.r)
              .onTapGesture {
                router.sazePath.append(
                  WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                    url: URL(
                      string:
                        "http://192.168.9.129:4000/videoPostDetails/\(dynamicEntity.dynamicId)"
                    )!
                  ))
              }
            }
          }
        }
        .scrollIndicators(.hidden)
        .padding(.horizontal, 10.w)
        .padding(.bottom, 40.h)
      }
    }
    .enableInjection()
  }
}
