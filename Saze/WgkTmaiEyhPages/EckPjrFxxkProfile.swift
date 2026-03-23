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
  @Query private var dynamics: [DynamicModel]
  var filteredPictureDynamics: [DynamicModel] {
    return dynamics.filter {
      $0.dynamicType == 0
        && $0.user?.userId == appState.wfzqCubCpmUser?.userId
    }
  }
  let columns = [
    GridItem(.adaptive(minimum: .infinity, maximum: .infinity)),
    GridItem(.adaptive(minimum: .infinity, maximum: .infinity)),
  ]
  var body: some View {
    #if DEBUG
      let _ = forceRedraw
    #endif
    ZStack {
      GeometryReader { _ in
        Image("Assets/saze_default_bg").resizable().scaledToFill().ignoresSafeArea()
      }
      VStack(spacing: 0) {
        Spacer().frame(height: 12.h)
        HStack(spacing: 16.w) {
          ZStack {
            Color.white
              .frame(width: 58.r, height: 58.r)
              .clipShape(Circle())
              .overlay(
                Circle()
                  .stroke(Color("zs2"), lineWidth: 1)
              )
            KFImage(URL(string: appState.wfzqCubCpmUser?.avatar ?? ""))
              .fade(duration: 0.25)
              .resizable()
              .scaledToFill()
              .frame(width: 50.r, height: 50.r)
              .clipShape(Circle())
          }
          ZStack {
            Text(appState.wfzqCubCpmUser?.name ?? "")
              .foregroundColor(.black.opacity(0.25))
              .font(.system(size: 24.sp, weight: .bold))
              .offset(y: 2)
            Text(appState.wfzqCubCpmUser?.name ?? "")
              .foregroundColor(.black)
              .font(.system(size: 24.sp, weight: .bold))
          }
          .onTapGesture {
            router.sazePath.append(
              WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                url: URL(
                  string:
                    "http://192.168.9.129:4000/edit")!
              ))
          }
          Spacer()
        }
        .padding(.horizontal, 20.w)
        Spacer().frame(height: 20.h)
        HStack(spacing: 0) {
          VStack(alignment: .leading, spacing: 6.h) {
            Text(
              "\(filteredPictureDynamics.count)"
            )
            .foregroundColor(
              .black
            )
            .font(.system(size: 20.sp, weight: .bold))
            Text(
              "Posts"
            ).foregroundColor(
              .black
            )
            .font(.system(size: 14.sp))
          }
          Spacer()
          VStack(alignment: .leading, spacing: 6.h) {
            Text(
              "\(appState.wfzqCubCpmUser?.follow.count ?? 0)"
            )
            .foregroundColor(
              .black
            )
            .font(.system(size: 20.sp, weight: .bold))
            Text(
              "Following"
            ).foregroundColor(
              .black
            )
            .font(.system(size: 14.sp))
          }
          .onTapGesture {
            router.sazePath.append(
              WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                url: URL(
                  string:
                    "http://192.168.9.129:4000/follow"
                )!
              ))
          }
          Spacer()
          VStack(alignment: .leading, spacing: 6.h) {
            Text(
              "\(appState.wfzqCubCpmUser?.fans.count ?? 0)"
            )
            .foregroundColor(
              .black
            )
            .font(.system(size: 20.sp, weight: .bold))
            Text(
              "Followers"
            ).foregroundColor(
              .black
            )
            .font(.system(size: 14.sp))
          }
          .onTapGesture {
            router.sazePath.append(
              WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                url: URL(
                  string:
                    "http://192.168.9.129:4000/fan"
                )!
              ))
          }
          Spacer().frame(width: 33.w)
        }
        .padding(.horizontal, 20.w)
        Spacer().frame(height: 12.h)
        HStack {
          HStack(spacing: 4.w) {
            Image("Assets/saze_edit_icon")
              .resizable()
              .scaledToFit()
              .frame(
                width: 22.r, height: 22.r
              )
            Text("Edit")
              .foregroundColor(.black)
              .font(.system(size: 16.sp))
          }
          .padding(.all, 8)
          .background(.white)
          .overlay(RoundedRectangle(cornerRadius: 12.r).stroke(Color("zs2"), lineWidth: 1))
          .cornerRadius(12.r)
          .onTapGesture {
            router.sazePath.append(
              WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                url: URL(
                  string:
                    "http://192.168.9.129:4000/edit"
                )!
              ))
          }
          Spacer()
          HStack(spacing: 4.w) {
            Image("Assets/saze_wallet_icon")
              .resizable()
              .scaledToFit()
              .frame(
                width: 22.r, height: 22.r
              )
            Text("Wallet")
              .foregroundColor(.black)
              .font(.system(size: 16.sp))
          }
          .padding(.all, 8)
          .background(.white)
          .overlay(RoundedRectangle(cornerRadius: 12.r).stroke(Color("zs2"), lineWidth: 1))
          .cornerRadius(12.r)
          .onTapGesture {
            router.sazePath.append(
              WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                url: URL(
                  string:
                    "http://192.168.9.129:4000/coins"
                )!
              ))
          }
          Spacer()
          HStack(spacing: 4.w) {
            Image("Assets/saze_setting_icon")
              .resizable()
              .scaledToFit()
              .frame(
                width: 22.r, height: 22.r
              )
            Text("Setting")
              .foregroundColor(.black)
              .font(.system(size: 16.sp))
          }
          .padding(.all, 8)
          .background(.white)
          .overlay(RoundedRectangle(cornerRadius: 12.r).stroke(Color("zs2"), lineWidth: 1))
          .cornerRadius(12.r)
          .onTapGesture {
            router.sazePath.append(
              WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                url: URL(
                  string:
                    "http://192.168.9.129:4000/setting"
                )!
              ))
          }
        }
        .padding(.horizontal, 20.w)
        Spacer().frame(height: 20.h)
        Text("All")
          .font(.system(size: 16.sp, weight: .bold))
          .foregroundColor(.white)
          .padding(.horizontal, 24.5.w)
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
            RoundedRectangle(cornerRadius: 12.r)
              .stroke(
                Color(red: 48 / 255, green: 234 / 255, blue: 255 / 255), lineWidth: 1)
          )
          .cornerRadius(12)
          .overlay(
            Text("\(filteredPictureDynamics.count)")
              .foregroundColor(.white).font(
                .system(size: 12.sp)
              )
              .lineLimit(1)
              .frame(width: 24.r, height: 24.r)
              .background(Color("zs2"))
              .clipShape(
                Circle()
              )
              .offset(y: -12.r),
            alignment: .topTrailing
          )
          .padding(.horizontal, 20.w)
          .frame(maxWidth: .infinity, alignment: .leading)
        Spacer().frame(height: 20.h)
        if filteredPictureDynamics.isEmpty {
          VStack {
            Image("Assets/saze_empty").resizable().scaledToFit().frame(width: 158.r, height: 158.r)
            Text("No Data")
              .foregroundColor(.black)
              .font(.system(size: 18.sp))
          }
          .frame(maxWidth: .infinity, maxHeight: .infinity)
        } else {
          LazyVGrid(columns: columns, spacing: 16) {
            ForEach(filteredPictureDynamics, id: \.self) { dynamicEntity in
              GeometryReader { ggeo in
                KFImage(URL(string: dynamicEntity.dynamicPic.first!))
                  .fade(duration: 0.25)
                  .resizable()
                  .scaledToFill()
                  .frame(width: ggeo.size.width, height: 204.h)
                  .clipped()
                  .cornerRadius(24.r)
                  .overlay(
                    RoundedRectangle(cornerRadius: 24.r)
                      .stroke(Color.black, lineWidth: 2)
                  )
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
              .aspectRatio(1, contentMode: .fill)
            }
          }
          .padding(.horizontal, 20.w)
        }
        Spacer()
      }
    }
    .enableInjection()
  }
}
