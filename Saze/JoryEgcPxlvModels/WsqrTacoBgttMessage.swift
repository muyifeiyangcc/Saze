import Foundation
import SwiftData

@Model
final class MessageModel {

  /// 发送中状态
  var loading: Bool?

  /// 消息ID
  @Attribute(.unique)
  var msgId: String

  /// 会话ID
  var chatId: String

  /// 发送人ID
  var userId: String

  /// 用户名
  var name: String?

  /// 头像
  var avatar: String?

  /// 消息位置（left/right）
  var position: String?

  /// 文本内容
  var sendContent: String

  /// 图片URL
  var sendPicUrl: String

  /// 发送时间
  var sendTime: String?

  init(
    loading: Bool? = nil,
    msgId: String,
    chatId: String,
    userId: String,
    name: String? = nil,
    avatar: String? = nil,
    position: String? = nil,
    sendContent: String,
    sendPicUrl: String,
    sendTime: String? = nil
  ) {
    self.loading = loading
    self.msgId = msgId
    self.chatId = chatId
    self.userId = userId
    self.name = name
    self.avatar = avatar
    self.position = position
    self.sendContent = sendContent
    self.sendPicUrl = sendPicUrl
    self.sendTime = sendTime
  }
}

// MARK: - JSON Support
extension MessageModel {
  func update(from new: MessageModel) {
    loading = new.loading
    chatId = new.chatId
    userId = new.userId
    name = new.name
    avatar = new.avatar
    position = new.position
    sendContent = new.sendContent
    sendPicUrl = new.sendPicUrl
    sendTime = new.sendTime
  }
  /// 转 Dictionary
  func toJson() -> [String: Any] {
    return [
      "12245d91f902a3046159f5fb454b6348".SJAZET5gG1gyy5729np8EdY(): loading as Any,
      "cd5892851cd9f6c4675c019358bc01d2".SJAZET5gG1gyy5729np8EdY(): msgId,
      "e4cb87984b078b806310573a2a50913f".SJAZET5gG1gyy5729np8EdY(): chatId,
      "648b7302c4ffa4b054fa5d1e4939b31e".SJAZET5gG1gyy5729np8EdY(): userId,
      "58bfd5af727f1b843c15df60a668899f".SJAZET5gG1gyy5729np8EdY(): name as Any,
      "27274062c7e2431266a12b6a7fbc51cf".SJAZET5gG1gyy5729np8EdY(): avatar as Any,
      "59fdf3d1fcf8c839944c9bd16d5a2025".SJAZET5gG1gyy5729np8EdY(): position as Any,
      "6aa08015b8f3774685d3e6c182e17f67".SJAZET5gG1gyy5729np8EdY(): sendContent,
      "4966c003c0ea5918b72fae298ee8b547".SJAZET5gG1gyy5729np8EdY(): sendPicUrl,
      "70f86d4fac127dde5322adea8bf270f0".SJAZET5gG1gyy5729np8EdY(): sendTime as Any,
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
  static func fromJson(_ json: [String: Any]) -> MessageModel? {
    guard
      let msgId = json["cd5892851cd9f6c4675c019358bc01d2".SJAZET5gG1gyy5729np8EdY()] as? String,
      let chatId = json["e4cb87984b078b806310573a2a50913f".SJAZET5gG1gyy5729np8EdY()] as? String,
      let userId = json["648b7302c4ffa4b054fa5d1e4939b31e".SJAZET5gG1gyy5729np8EdY()] as? String,
      let sendContent = json["6aa08015b8f3774685d3e6c182e17f67".SJAZET5gG1gyy5729np8EdY()] as? String,
      let sendPicUrl = json["4966c003c0ea5918b72fae298ee8b547".SJAZET5gG1gyy5729np8EdY()] as? String
    else {
      return nil
    }

    return MessageModel(
      loading: json["12245d91f902a3046159f5fb454b6348".SJAZET5gG1gyy5729np8EdY()] as? Bool,
      msgId: msgId,
      chatId: chatId,
      userId: userId,
      name: json["58bfd5af727f1b843c15df60a668899f".SJAZET5gG1gyy5729np8EdY()] as? String,
      avatar: json["27274062c7e2431266a12b6a7fbc51cf".SJAZET5gG1gyy5729np8EdY()] as? String,
      position: json["59fdf3d1fcf8c839944c9bd16d5a2025".SJAZET5gG1gyy5729np8EdY()] as? String,
      sendContent: sendContent,
      sendPicUrl: sendPicUrl,
      sendTime: json["70f86d4fac127dde5322adea8bf270f0".SJAZET5gG1gyy5729np8EdY()] as? String
    )
  }
}
