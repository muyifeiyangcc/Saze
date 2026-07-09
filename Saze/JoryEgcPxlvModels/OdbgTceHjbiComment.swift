import Foundation
import SwiftData

@Model
final class CommentModel {

  /// 评论ID
  @Attribute(.unique)
  var commentId: String

  /// 所属帖子ID
  var dynamicId: String

  /// 评论用户ID
  var userId: String

  /// 评论内容
  var content: String

  init(
    dynamicId: String,
    commentId: String,
    userId: String,
    content: String
  ) {
    self.dynamicId = dynamicId
    self.commentId = commentId
    self.userId = userId
    self.content = content
  }
}

// MARK: - JSON Support
extension CommentModel {

  func update(from new: CommentModel) {
    dynamicId = new.dynamicId
    userId = new.userId
    content = new.content
  }
  /// 转 Dictionary
  func toJson() -> [String: Any] {
    return [
      "e85aaddc015375ac9e850c24bc22b23b".SJAZET5gG1gyy5729np8EdY(): dynamicId,
      "0675a0f0bb4270f3387b94f783428ef0".SJAZET5gG1gyy5729np8EdY(): commentId,
      "648b7302c4ffa4b054fa5d1e4939b31e".SJAZET5gG1gyy5729np8EdY(): userId,
      "dffc92176bacb25e94507635340730bd".SJAZET5gG1gyy5729np8EdY(): content,
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
  static func fromJson(_ json: [String: Any]) -> CommentModel? {
    guard
      let dynamicId = json["e85aaddc015375ac9e850c24bc22b23b".SJAZET5gG1gyy5729np8EdY()] as? String,
      let commentId = json["0675a0f0bb4270f3387b94f783428ef0".SJAZET5gG1gyy5729np8EdY()] as? String,
      let userId = json["648b7302c4ffa4b054fa5d1e4939b31e".SJAZET5gG1gyy5729np8EdY()] as? String,
      let content = json["dffc92176bacb25e94507635340730bd".SJAZET5gG1gyy5729np8EdY()] as? String
    else {
      return nil
    }

    return CommentModel(
      dynamicId: dynamicId,
      commentId: commentId,
      userId: userId,
      content: content
    )
  }
}
