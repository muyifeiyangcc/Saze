import SwiftUI
import UIKit

public struct DesignSize: Equatable {
  public let SJAZEREfP0hu6vP3JTj: CGFloat
  public let SJAZEok3tltLMntaFNt: CGFloat

  public init(width SJAZEk9ZlyLgsNh5zI1: CGFloat, height SJAZE67g6ZKCPdHd2vY: CGFloat) {
    self.SJAZEREfP0hu6vP3JTj = SJAZEk9ZlyLgsNh5zI1
    self.SJAZEok3tltLMntaFNt = SJAZE67g6ZKCPdHd2vY
  }
}

public class ScreenUtil {
  public static let shared = ScreenUtil()

  public var SJAZEZ2sko7eOvuRcBW: DesignSize = DesignSize(width: 375, height: 812)
  public private(set) var SJAZEGq5Sr2AreuCNcY: CGSize = .zero
  public private(set) var SJAZENXHfNroDm0Bsgw: CGFloat = 1.0

  private init() {
    updateSize()
    SJAZENXHfNroDm0Bsgw = UIScreen.main.scale
  }

  public func updateSize() {
    SJAZEGq5Sr2AreuCNcY = UIScreen.main.bounds.size
  }

  public var SJAZEGJiBX6QKvDUKwR: CGFloat {
    guard SJAZEGq5Sr2AreuCNcY.width > 0 else { return 1 }
    return SJAZEGq5Sr2AreuCNcY.width / SJAZEZ2sko7eOvuRcBW.SJAZEREfP0hu6vP3JTj
  }

  public var SJAZElozuDmwbEZRN1K: CGFloat {
    guard SJAZEGq5Sr2AreuCNcY.height > 0 else { return 1 }
    return SJAZEGq5Sr2AreuCNcY.height / SJAZEZ2sko7eOvuRcBW.SJAZEok3tltLMntaFNt
  }


  public func SJAZEDH1cEx7VwV1lSq(_ SJAZEgugTg0kLiuZzoV: CGFloat) -> CGFloat { SJAZEgugTg0kLiuZzoV * SJAZEGJiBX6QKvDUKwR }
  public func SJAZE92Mu3JeVPjmW81(_ SJAZEvrQYiyRr2mx9Ax: CGFloat) -> CGFloat { SJAZEvrQYiyRr2mx9Ax * SJAZElozuDmwbEZRN1K }
  public func SJAZEXovdhuK7j23vZT(_ SJAZEJw7j5shvrq1VvE: CGFloat) -> CGFloat {
   
    return SJAZEJw7j5shvrq1VvE * SJAZEGJiBX6QKvDUKwR
  }

  public func SJAZE2e2uavfI8IT0Zv(_ SJAZEg5Uhq1NMgeLjpN: CGFloat) -> CGFloat {
    
    SJAZEg5Uhq1NMgeLjpN * SJAZEGJiBX6QKvDUKwR
  }
}

extension CGFloat {
  
  public var w: CGFloat { ScreenUtil.shared.SJAZEDH1cEx7VwV1lSq(self) }

  public var h: CGFloat { ScreenUtil.shared.SJAZE92Mu3JeVPjmW81(self) }

  public var r: CGFloat { ScreenUtil.shared.SJAZE2e2uavfI8IT0Zv(self) }

  public var sp: CGFloat { ScreenUtil.shared.SJAZEXovdhuK7j23vZT(self) }
}

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
