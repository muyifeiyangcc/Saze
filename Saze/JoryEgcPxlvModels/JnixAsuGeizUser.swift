import Foundation
import SwiftData

@Model
final class UserModel {

  @Attribute(.unique)
  var userId: String

  var email: String
  var password: String
  var avatar: String
  var name: String
  var about: String
  var coins: Int

  var follow: [String]
  var fans: [String]
  var blockList: [String]
  var picPostLikeIds: [String]
  var videoPostLikeIds: [String]

  init(
    userId: String,
    email: String,
    password: String,
    avatar: String,
    name: String,
    about: String,
    coins: Int,
    follow: [String] = [],
    fans: [String] = [],
    blockList: [String] = [],
    picPostLikeIds: [String] = [],
    videoPostLikeIds: [String] = []
  ) {
    self.userId = userId
    self.email = email
    self.password = password
    self.avatar = avatar
    self.name = name
    self.about = about
    self.coins = coins
    self.follow = follow
    self.fans = fans
    self.blockList = blockList
    self.picPostLikeIds = picPostLikeIds
    self.videoPostLikeIds = videoPostLikeIds
  }
}

extension UserModel {
  func update(from new: UserModel) {
    email = new.email
    password = new.password
    avatar = new.avatar
    name = new.name
    about = new.about
    coins = new.coins
    follow = new.follow
    fans = new.fans
    blockList = new.blockList
    picPostLikeIds = new.picPostLikeIds
    videoPostLikeIds = new.videoPostLikeIds
  }

  func toJson() -> [String: Any] {
    return [
      "648b7302c4ffa4b054fa5d1e4939b31e".SJAZET5gG1gyy5729np8EdY(): userId,
      "9ecd97e9a63b98e2d473cca2dab72a93".SJAZET5gG1gyy5729np8EdY(): email,
      "d659f02861456d14bd57269871f10e9d".SJAZET5gG1gyy5729np8EdY(): password,
      "27274062c7e2431266a12b6a7fbc51cf".SJAZET5gG1gyy5729np8EdY(): avatar,
      "58bfd5af727f1b843c15df60a668899f".SJAZET5gG1gyy5729np8EdY(): name,
      "a9673cee69d054ffac664e0a93a24480".SJAZET5gG1gyy5729np8EdY(): about,
      "81bf44aaa75aa1002400c5c042eab2de".SJAZET5gG1gyy5729np8EdY(): coins,
      "13dab376a49b2d0df66f10e1837ff47b".SJAZET5gG1gyy5729np8EdY(): follow,
      "ddfbcc815da3d53152347328ffe1ecfb".SJAZET5gG1gyy5729np8EdY(): fans,
      "1d9c2eda3ab63bf6dfb784ef01472bf9".SJAZET5gG1gyy5729np8EdY(): blockList,
      "c74cd2106ab0c1327a4ba82bbe2c96bc".SJAZET5gG1gyy5729np8EdY(): picPostLikeIds,
      "a50ab131fd56db604423e7a5c9c361374bc9c93b38dc18a112deed2877c212f8".SJAZET5gG1gyy5729np8EdY(): videoPostLikeIds,
    ]
  }

  func toJsonString() -> String? {
    guard let data = try? JSONSerialization.data(withJSONObject: toJson()) else {
      return nil
    }
    return String(data: data, encoding: .utf8)
  }

  static func fromJson(_ json: [String: Any]) -> UserModel? {
    guard
      let userId = json["648b7302c4ffa4b054fa5d1e4939b31e".SJAZET5gG1gyy5729np8EdY()] as? String,
      let email = json["9ecd97e9a63b98e2d473cca2dab72a93".SJAZET5gG1gyy5729np8EdY()] as? String,
      let password = json["d659f02861456d14bd57269871f10e9d".SJAZET5gG1gyy5729np8EdY()] as? String,
      let avatar = json["27274062c7e2431266a12b6a7fbc51cf".SJAZET5gG1gyy5729np8EdY()] as? String,
      let name = json["58bfd5af727f1b843c15df60a668899f".SJAZET5gG1gyy5729np8EdY()] as? String,
      let about = json["a9673cee69d054ffac664e0a93a24480".SJAZET5gG1gyy5729np8EdY()] as? String,
      let coins = json["81bf44aaa75aa1002400c5c042eab2de".SJAZET5gG1gyy5729np8EdY()] as? Int
    else { return nil }

    return UserModel(
      userId: userId,
      email: email,
      password: password,
      avatar: avatar,
      name: name,
      about: about,
      coins: coins,
      follow: json["13dab376a49b2d0df66f10e1837ff47b".SJAZET5gG1gyy5729np8EdY()] as? [String] ?? [],
      fans: json["ddfbcc815da3d53152347328ffe1ecfb".SJAZET5gG1gyy5729np8EdY()] as? [String] ?? [],
      blockList: json["1d9c2eda3ab63bf6dfb784ef01472bf9".SJAZET5gG1gyy5729np8EdY()] as? [String] ?? [],
      picPostLikeIds: json["c74cd2106ab0c1327a4ba82bbe2c96bc".SJAZET5gG1gyy5729np8EdY()] as? [String] ?? [],
      videoPostLikeIds: json["a50ab131fd56db604423e7a5c9c361374bc9c93b38dc18a112deed2877c212f8".SJAZET5gG1gyy5729np8EdY()] as? [String] ?? []
    )
  }
}

struct UserDTO: Codable {

  let userId: String
  let email: String
  let password: String
  let avatar: String
  let name: String
  let about: String
  let coins: Int

  let follow: [String]
  let fans: [String]
  let blockList: [String]
  let picPostLikeIds: [String]
  let videoPostLikeIds: [String]
}

extension UserDTO {

  func toModel() -> UserModel {
    return UserModel(
      userId: userId,
      email: email,
      password: password,
      avatar: avatar,
      name: name,
      about: about,
      coins: coins,
      follow: follow,
      fans: fans,
      blockList: blockList,
      picPostLikeIds: picPostLikeIds,
      videoPostLikeIds: videoPostLikeIds
    )
  }

}
