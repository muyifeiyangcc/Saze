import SwiftUI
import UIKit

// 1. 设计尺寸配置
public struct DesignSize: Equatable {
  public let SJAZEREfP0hu6vP3JTj: CGFloat
  public let SJAZEok3tltLMntaFNt: CGFloat

  public init(width SJAZEk9ZlyLgsNh5zI1: CGFloat, height SJAZE67g6ZKCPdHd2vY: CGFloat) {
    self.SJAZEREfP0hu6vP3JTj = SJAZEk9ZlyLgsNh5zI1
    self.SJAZEok3tltLMntaFNt = SJAZE67g6ZKCPdHd2vY
  }
}

// 2. ScreenUtil：不使用 actor（iOS 屏幕配置无需并发）
public class ScreenUtil {
  public static let shared = ScreenUtil()

  public var SJAZEZ2sko7eOvuRcBW: DesignSize = DesignSize(width: 375, height: 812)
  public private(set) var SJAZEGq5Sr2AreuCNcY: CGSize = .zero
  public private(set) var SJAZENXHfNroDm0Bsgw: CGFloat = 1.0

  private init() {
    updateSize()
    SJAZENXHfNroDm0Bsgw = UIScreen.main.scale
  }

  /// 读取当前设备尺寸（在 App 启动后调用）
  public func updateSize() {
    SJAZEGq5Sr2AreuCNcY = UIScreen.main.bounds.size
  }

  // MARK: - 核心缩放因子

  /// 按宽度比例缩放（推荐）
  public var SJAZEGJiBX6QKvDUKwR: CGFloat {
    guard SJAZEGq5Sr2AreuCNcY.width > 0 else { return 1 }
    return SJAZEGq5Sr2AreuCNcY.width / SJAZEZ2sko7eOvuRcBW.SJAZEREfP0hu6vP3JTj
  }

  /// 按高度比例缩放
  public var SJAZElozuDmwbEZRN1K: CGFloat {
    guard SJAZEGq5Sr2AreuCNcY.height > 0 else { return 1 }
    return SJAZEGq5Sr2AreuCNcY.height / SJAZEZ2sko7eOvuRcBW.SJAZEok3tltLMntaFNt
  }

  // MARK: - API 方法

  public func SJAZEDH1cEx7VwV1lSq(_ SJAZEgugTg0kLiuZzoV: CGFloat) -> CGFloat { SJAZEgugTg0kLiuZzoV * SJAZEGJiBX6QKvDUKwR }
  public func SJAZE92Mu3JeVPjmW81(_ SJAZEvrQYiyRr2mx9Ax: CGFloat) -> CGFloat { SJAZEvrQYiyRr2mx9Ax * SJAZElozuDmwbEZRN1K }
  public func SJAZEXovdhuK7j23vZT(_ SJAZEJw7j5shvrq1VvE: CGFloat) -> CGFloat {
    // ⚠️ 建议仅作备用；主推用 @ScaledMetric 或 .scaledFont()
    return SJAZEJw7j5shvrq1VvE * SJAZEGJiBX6QKvDUKwR
  }

  // flutter 中的 radius 缩放
  public func SJAZE2e2uavfI8IT0Zv(_ SJAZEg5Uhq1NMgeLjpN: CGFloat) -> CGFloat {
    // 半径缩放 ≈ 宽度比例（常用）
    SJAZEg5Uhq1NMgeLjpN * SJAZEGJiBX6QKvDUKwR
  }
}

// 3. CGFloat 扩展：所有 .w/.h/.r/.sp 等
extension CGFloat {
  /// 按设计稿宽度比例缩放（推荐）
  public var w: CGFloat { ScreenUtil.shared.SJAZEDH1cEx7VwV1lSq(self) }

  /// 按设计稿高度比例缩放（慎用）
  public var h: CGFloat { ScreenUtil.shared.SJAZE92Mu3JeVPjmW81(self) }

  /// 按半径缩放（兼容 flutter 中 r）
  public var r: CGFloat { ScreenUtil.shared.SJAZE2e2uavfI8IT0Zv(self) }

  /// 字体 sp 缩放（⚠️ 仅用于兼容；主推用 @ScaledMetric）
  public var sp: CGFloat { ScreenUtil.shared.SJAZEXovdhuK7j23vZT(self) }
}
// 在您的扩展块末尾追加：
extension Int {
  public var w: CGFloat { CGFloat(self).w }
  public var h: CGFloat { CGFloat(self).h }
  public var r: CGFloat { CGFloat(self).r }
  public var sp: CGFloat { CGFloat(self).sp }
}

extension Double {
  public var w: CGFloat { CGFloat(self).w }
  public var h: CGFloat { CGFloat(self).h }
  public var r: CGFloat { CGFloat(self).r }
  public var sp: CGFloat { CGFloat(self).sp }
}
