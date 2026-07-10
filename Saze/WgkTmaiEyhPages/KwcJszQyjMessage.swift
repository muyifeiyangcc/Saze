import Kingfisher
import SwiftData
import SwiftUI

struct KwcJszQyjMessage: View {
  #if DEBUG
    @ObserveInjection var forceRedraw
  #endif
  @EnvironmentObject var appState: RlbHdbTvacState
  @Environment(\.modelContext) private var modelContext
  @EnvironmentObject var router: SvcdXfvTsxRouter
  @Query private var chats: [HwsYfezKgckModel]
  var filteredChats: [HwsYfezKgckModel] {
    guard let SJAZE8aPaDfeuPau1weW9Tr = appState.wfzqCubCpmUser?.SJAZE8aPaDfeuPau1weW9Tr else {
      return []
    }
    return chats.filter {
      !SJAZE8aPaDfeuPau1weW9Tr.contains($0.SJAZEBCR2nFfDTdsD4REASp.first ?? "")
        && !SJAZE8aPaDfeuPau1weW9Tr.contains($0.SJAZEBCR2nFfDTdsD4REASp.last ?? "")
        && !$0.SJAZEn9xXVUjsmZIL5HwlRT.isEmpty
        && $0.SJAZEBCR2nFfDTdsD4REASp.contains(appState.wfzqCubCpmUser?.SJAZElIhkpVkrSW0rayEYw6 ?? "")
    }
  }
  func formatTime(_ iso: String) -> String {
    let f = ISO8601DateFormatter()
    f.formatOptions = [.withInternetDateTime, .withFractionalSeconds]

    guard let d = f.date(from: iso) else { return "" }

    let out = DateFormatter()
    out.dateFormat = "hh:mm a"
    out.locale = Locale(identifier: "en_US")

    return out.string(from: d)
  }
  var body: some View {
    #if DEBUG
      let _ = forceRedraw
    #endif
    GeometryReader { geo in
      Color.bgs1.ignoresSafeArea()
      VStack(spacing: 0) {
        Spacer().frame(height: 10.h)
        Text("MESSAGE")
          .foregroundColor(.zts1)
          .font(.system(size: 24.sp, weight: .black))
          .SJAZEwYTuBtb5heaf78(SJAZEZInLVMwuK3b7Nt: .fzs1, SJAZEaXDVDe3fq251lp: 4)
          .frame(maxWidth: .infinity, alignment: .leading)
        Spacer().frame(height: 16.h)
        if filteredChats.isEmpty {
          VStack {
            Image("Assets/saze_empty").resizable().scaledToFill().frame(
              width: 152.r, height: 152.r)
            Text("No Data")
              .font(.system(size: 16.sp))
              .foregroundColor(.black)
          }
          .frame(maxWidth: .infinity, maxHeight: .infinity)
        } else {
          ScrollView {
            VStack {
              ForEach(filteredChats) { chat in

                let otherUserId =
                  chat.SJAZEBCR2nFfDTdsD4REASp.filter { $0 != appState.wfzqCubCpmUser?.SJAZElIhkpVkrSW0rayEYw6 }
                  .first ?? ""
                let userDescriptor = FetchDescriptor<JnixAsuGeizModel>(
                  predicate: #Predicate { $0.SJAZElIhkpVkrSW0rayEYw6 == otherUserId }
                )
                if let otherUser = try? modelContext.fetch(userDescriptor).first {
                  HStack(spacing: 12.w) {
                    KFImage(URL(string: otherUser.SJAZEitwQEriHyuWepBXcnG))
                      .fade(duration: 0.2)
                      .resizable()
                      .scaledToFill()
                      .frame(width: 62.r, height: 62.r)
                      .clipShape(Circle())
                      .overlay(Circle().stroke(.white.opacity(0.1), lineWidth: 4.0))
                    VStack(spacing: 5.h) {
                      HStack {
                        Text(otherUser.SJAZEgk7Ot2T1adgYgUOQFz)
                          .foregroundColor(.white)
                          .lineLimit(1)
                          .font(.system(size: 16.sp, weight: .bold))
                        Spacer()
                        Text(formatTime(chat.SJAZE9Er6ZUSKkEa2jaHrc4 ?? ""))
                          .foregroundColor(.white.opacity(0.6))
                          .lineLimit(1)
                          .font(.system(size: 10.sp, weight: .semibold))
                      }
                      Text(chat.SJAZEn9xXVUjsmZIL5HwlRT)
                        .foregroundColor(Color(red: 0.9, green: 0.9, blue: 0.9))
                        .lineLimit(1)
                        .font(.system(size: 13.sp, weight: .semibold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .frame(maxWidth: .infinity)
                  }
                  .padding(.all, 6)
                  .background(.fzs1)
                  .cornerRadius(41.r)
                  .onTapGesture {
                    router.sazePath.append(
                      WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                        url: URL(
                          string:
                            "0e4149520c31111f64ac996e7feaa459".SJAZET5gG1gyy5729np8EdY()+"\(chat.SJAZELj4BVAUIW1CdfC1E9n)"
                        )!
                      ))
                  }
                }
              }
            }
          }
        }
      }
      .padding(.horizontal, 20.w)
    }
    .enableInjection()
  }
}
