import Foundation
import SwiftData

@Model
final class DynamicModel {

  /// 帖子ID
  @Attribute(.unique)
  var dynamicId: String

  /// 关联用户
  @Relationship(deleteRule: .cascade)
  var user: UserModel?

  /// 帖子类型（0=图片，1=视频）
  var dynamicType: Int

  /// 帖子描述
  var dynamicDesc: String

  /// 图片帖子类型下标
  var dynamicTitleType: Int

  /// 图片地址列表
  var dynamicPic: [String]

  /// 视频地址
  var dynamicVideo: String

  /// 点赞数
  var dynamicLikeCount: Int

  /// 评论数
  var dynamicCommentCount: Int

  init(
    dynamicId: String,
    user: UserModel?,
    dynamicType: Int,
    dynamicDesc: String,
    dynamicTitleType: Int,
    dynamicPic: [String],
    dynamicVideo: String,
    dynamicLikeCount: Int,
    dynamicCommentCount: Int
  ) {
    self.dynamicId = dynamicId
    self.user = user
    self.dynamicType = dynamicType
    self.dynamicDesc = dynamicDesc
    self.dynamicTitleType = dynamicTitleType
    self.dynamicPic = dynamicPic
    self.dynamicVideo = dynamicVideo
    self.dynamicLikeCount = dynamicLikeCount
    self.dynamicCommentCount = dynamicCommentCount
  }
}

// MARK: - JSON Support
extension DynamicModel {
  func update(from new: DynamicModel) {
    dynamicType = new.dynamicType
    dynamicDesc = new.dynamicDesc
    dynamicTitleType = new.dynamicTitleType
    dynamicPic = new.dynamicPic
    dynamicVideo = new.dynamicVideo
    dynamicLikeCount = new.dynamicLikeCount
    dynamicCommentCount = new.dynamicCommentCount

    if user?.userId != new.user?.userId {
      user = new.user
    }
  }
  /// 转 Dictionary
  func toJson() -> [String: Any] {
    return [
      "e85aaddc015375ac9e850c24bc22b23b".SJAZET5gG1gyy5729np8EdY(): dynamicId,
      "648b7302c4ffa4b054fa5d1e4939b31e".SJAZET5gG1gyy5729np8EdY(): user?.userId ?? "",
      "a0f7013a3f50839229f059dd7b5aeed1".SJAZET5gG1gyy5729np8EdY(): dynamicType,
      "0d28bb4be5ccd97aca57cdd956bddfb1".SJAZET5gG1gyy5729np8EdY(): dynamicDesc,
      "f6cad843cd3d3dcd47d1b5346673a1e2cedf43acd12a59e2c78c432fa7ba0b94".SJAZET5gG1gyy5729np8EdY(): dynamicTitleType,
      "3e7c2d90422ac1c55c4b1c8f8429fca9".SJAZET5gG1gyy5729np8EdY(): dynamicPic,
      "44cf9939f6386d0d9c74e1c187ea117e".SJAZET5gG1gyy5729np8EdY(): dynamicVideo,
      "f50ba09ba81424ddec0b9f728d04d6eb0c76813c27f77a81ea7ad79448483304".SJAZET5gG1gyy5729np8EdY(): dynamicLikeCount,
      "032d2a1c189c50080f7f3368d6e40a01f7515fa50a3d6a7b67c29ba4feb9a071".SJAZET5gG1gyy5729np8EdY(): dynamicCommentCount,
    ]
  }

  /// 转 JSON 字符串
  func toJsonString() -> String? {
    guard let data = try? JSONSerialization.data(withJSONObject: toJson()) else {
      return nil
    }
    return String(data: data, encoding: .utf8)
  }

  /// 从 JSON 创建对象，并关联 UserModel
  static func fromJson(
    _ json: [String: Any],
    modelContext: ModelContext
  ) -> DynamicModel? {

    guard
      let dynamicId = json["e85aaddc015375ac9e850c24bc22b23b".SJAZET5gG1gyy5729np8EdY()] as? String,
      let userId = json["648b7302c4ffa4b054fa5d1e4939b31e".SJAZET5gG1gyy5729np8EdY()] as? String,
      let dynamicType = json["a0f7013a3f50839229f059dd7b5aeed1".SJAZET5gG1gyy5729np8EdY()] as? Int,
      let dynamicDesc = json["0d28bb4be5ccd97aca57cdd956bddfb1".SJAZET5gG1gyy5729np8EdY()] as? String,
      let dynamicTitleType = json["f6cad843cd3d3dcd47d1b5346673a1e2cedf43acd12a59e2c78c432fa7ba0b94".SJAZET5gG1gyy5729np8EdY()] as? Int,
      let dynamicPic = json["3e7c2d90422ac1c55c4b1c8f8429fca9".SJAZET5gG1gyy5729np8EdY()] as? [String],
      let dynamicVideo = json["44cf9939f6386d0d9c74e1c187ea117e".SJAZET5gG1gyy5729np8EdY()] as? String,
      let dynamicLikeCount = json["f50ba09ba81424ddec0b9f728d04d6eb0c76813c27f77a81ea7ad79448483304".SJAZET5gG1gyy5729np8EdY()] as? Int,
      let dynamicCommentCount = json["032d2a1c189c50080f7f3368d6e40a01f7515fa50a3d6a7b67c29ba4feb9a071".SJAZET5gG1gyy5729np8EdY()] as? Int
    else {
      return nil
    }

    // 查询关联用户
    let userDescriptor = FetchDescriptor<UserModel>(
      predicate: #Predicate { $0.userId == userId }
    )
    let user = try? modelContext.fetch(userDescriptor).first

    return DynamicModel(
      dynamicId: dynamicId,
      user: user,
      dynamicType: dynamicType,
      dynamicDesc: dynamicDesc,
      dynamicTitleType: dynamicTitleType,
      dynamicPic: dynamicPic,
      dynamicVideo: dynamicVideo,
      dynamicLikeCount: dynamicLikeCount,
      dynamicCommentCount: dynamicCommentCount
    )
  }
}
struct DynamicDTO: Codable {

  /// 帖子ID
  let dynamicId: String

  /// 发布人ID
  let userId: String

  /// 帖子类型（0=图片，1=视频）
  let dynamicType: Int

  /// 帖子描述
  let dynamicDesc: String

  /// 图片帖子类型下标
  let dynamicTitleType: Int

  /// 图片地址
  let dynamicPic: [String]

  /// 视频地址
  let dynamicVideo: String

  /// 点赞数
  let dynamicLikeCount: Int

  /// 评论数
  let dynamicCommentCount: Int
}

extension DynamicDTO {

  /// DTO 转 Model，并关联 UserModel
  func toModel(modelContext: ModelContext) -> DynamicModel {
    // 查询对应用户
    let userDescriptor = FetchDescriptor<UserModel>(
      predicate: #Predicate { $0.userId == self.userId }
    )
    let user: UserModel? = try? modelContext.fetch(userDescriptor).first

    return DynamicModel(
      dynamicId: dynamicId,
      user: user,
      dynamicType: dynamicType,
      dynamicDesc: dynamicDesc,
      dynamicTitleType: dynamicTitleType,
      dynamicPic: dynamicPic,
      dynamicVideo: dynamicVideo,
      dynamicLikeCount: dynamicLikeCount,
      dynamicCommentCount: dynamicCommentCount
    )
  }
}
