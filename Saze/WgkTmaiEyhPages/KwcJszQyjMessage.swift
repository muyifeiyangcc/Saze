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
  @Query private var chats: [ChatModel]
  let columns = [
    GridItem(.adaptive(minimum: .infinity, maximum: .infinity)),
    GridItem(.adaptive(minimum: .infinity, maximum: .infinity)),
  ]
  var filteredChats: [ChatModel] {
    guard let blockList = appState.wfzqCubCpmUser?.blockList else {
      return []
    }
    return chats.filter {
      !blockList.contains($0.chatUserIds.first ?? "")
        && !blockList.contains($0.chatUserIds.last ?? "")
        && !$0.lastSendContent.isEmpty
        && $0.chatUserIds.contains(appState.wfzqCubCpmUser?.userId ?? "")
    }
  }
  var body: some View {
    #if DEBUG
      let _ = forceRedraw
    #endif
    GeometryReader { geo in
      Image("Assets/saze_default_bg").resizable().scaledToFill().ignoresSafeArea()
      VStack(spacing: 0) {
        Spacer().frame(height: 10.h)
        ZStack {
          Text("Message")
            .foregroundColor(.black.opacity(0.25))
            .font(.system(size: 24.sp, weight: .black))
            .offset(y: 2)
          Text("Message")
            .foregroundColor(.black)
            .font(.system(size: 24.sp, weight: .black))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        Spacer().frame(height: 14.h)
        if filteredChats.isEmpty {
          VStack {
            Image("Assets/saze_empty").resizable().scaledToFill().frame(
              width: 149.r, height: 149.r)
            Text("No Data")
              .font(.system(size: 16.sp))
              .foregroundColor(.black)
          }
          .frame(maxWidth: .infinity, maxHeight: .infinity)
        } else {
          LazyVGrid(columns: columns, spacing: 16) {
            ForEach(filteredChats) { chat in
              let otherUserId =
                chat.chatUserIds.filter { $0 != appState.wfzqCubCpmUser?.userId }
                .first ?? ""
              let userDescriptor = FetchDescriptor<UserModel>(
                predicate: #Predicate { $0.userId == otherUserId }
              )
              if let otherUser = try? modelContext.fetch(userDescriptor).first {
                GeometryReader { ggeo in
                  VStack(spacing: 10.h) {
                    KFImage(URL(string: otherUser.avatar))
                      .fade(duration: 0.25)
                      .resizable()
                      .scaledToFill()
                      .frame(width: .infinity, height: 70.h)
                      .cornerRadius(14.r)
                    VStack(spacing: 5.h) {
                      Text(otherUser.name)
                        .foregroundColor(.black)
                        .lineLimit(1)
                        .font(.system(size: 16.sp, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .center)
                      Text(otherUser.name)
                        .foregroundColor(.black.opacity(0.8))
                        .lineLimit(2)
                        .font(.system(size: 14.sp, ))
                        .frame(maxWidth: .infinity, alignment: .center)
                      HStack(spacing: 4.w) {
                        Image("Assets/saze_chat_icon")
                          .resizable().scaledToFit().frame(width: 20.r, height: 20.r)
                        Text("Chat")
                          .foregroundColor(.white)
                          .font(.system(size: 14.sp))
                      }
                      .frame(width: 100.w, height: 29.h)
                      .background(Color("zs2"))
                      .cornerRadius(14.r)
                    }
                    Spacer()
                  }
                  .padding(.all, 10)
                  .frame(width: ggeo.size.width, height: 200.h)
                  .background(.white)
                  .cornerRadius(16.r)
                  .overlay(
                    Text(chat.lastSendTime ?? "")
                      .foregroundColor(Color("text3"))
                      .font(.system(size: 10.sp))
                      .offset(x: -16.w, y: 10.h), alignment: .topTrailing
                  )
                  .onTapGesture {
                    router.sazePath.append(
                      WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                        url: URL(
                          string:
                            "http://192.168.9.129:4000/chat/\(chat.chatId)"
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
