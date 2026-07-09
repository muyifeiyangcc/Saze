import Foundation
import SwiftData

@Model
final class ChatModel {

  @Attribute(.unique)
  var chatId: String

  var chatUserIds: [String]
  var lastSendContent: String
  var lastSendTime: String?
  var unreadMsgCount: Int?
  var lastSendUserId: String?

  init(
    chatId: String,
    chatUserIds: [String],
    lastSendContent: String,
    lastSendTime: String? = nil,
    unreadMsgCount: Int? = nil,
    lastSendUserId: String? = nil
  ) {
    self.chatId = chatId
    self.chatUserIds = chatUserIds
    self.lastSendContent = lastSendContent
    self.lastSendTime = lastSendTime
    self.unreadMsgCount = unreadMsgCount
    self.lastSendUserId = lastSendUserId
  }
}

// MARK: - JSON Support
extension ChatModel {
  func update(from new: ChatModel) {
    chatUserIds = new.chatUserIds
    lastSendContent = new.lastSendContent
    lastSendTime = new.lastSendTime
    unreadMsgCount = new.unreadMsgCount
    lastSendUserId = new.lastSendUserId
  }
  /// 转 Dictionary
  func toJson() -> [String: Any] {
    return [
      "e4cb87984b078b806310573a2a50913f".SJAZET5gG1gyy5729np8EdY(): chatId,
      "f13a214bde59d72e89643cfc4b998d9a".SJAZET5gG1gyy5729np8EdY(): chatUserIds,
      "80e98ffa32c4f5b2db0f22cc13cb5ad3".SJAZET5gG1gyy5729np8EdY(): lastSendContent,
      "51d1217b60cb373562d8a56b4599a640".SJAZET5gG1gyy5729np8EdY(): lastSendTime as Any,
      "87f2ac7fba3d32932f675bd6806c60a4".SJAZET5gG1gyy5729np8EdY(): unreadMsgCount as Any,
      "6549932de1aab1a46204e3e84b69110e".SJAZET5gG1gyy5729np8EdY(): lastSendUserId as Any,
    ]
  }

  /// 转 JSON String
  func toJsonString() -> String? {
    guard let data = try? JSONSerialization.data(withJSONObject: toJson()) else {
      return nil
    }
    return String(data: data, encoding: .utf8)
  }

  /// 从 JSON 创建对象
  static func fromJson(_ json: [String: Any]) -> ChatModel? {
    guard
      let chatId = json["e4cb87984b078b806310573a2a50913f".SJAZET5gG1gyy5729np8EdY()] as? String,
      let chatUserIds = json["f13a214bde59d72e89643cfc4b998d9a".SJAZET5gG1gyy5729np8EdY()] as? [String],
      let lastSendContent = json["80e98ffa32c4f5b2db0f22cc13cb5ad3".SJAZET5gG1gyy5729np8EdY()] as? String
    else {
      return nil
    }

    return ChatModel(
      chatId: chatId,
      chatUserIds: chatUserIds,
      lastSendContent: lastSendContent,
      lastSendTime: json["51d1217b60cb373562d8a56b4599a640".SJAZET5gG1gyy5729np8EdY()] as? String,
      unreadMsgCount: json["87f2ac7fba3d32932f675bd6806c60a4".SJAZET5gG1gyy5729np8EdY()] as? Int,
      lastSendUserId: json["6549932de1aab1a46204e3e84b69110e".SJAZET5gG1gyy5729np8EdY()] as? String
    )
  }
}
