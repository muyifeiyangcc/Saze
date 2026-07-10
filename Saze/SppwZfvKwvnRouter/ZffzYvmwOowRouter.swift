import Combine
import SwiftUI

enum WwaQhwoEkuPhase: Hashable {
  case nipjSeaNvbSplash
  case asqLicvGlkGuide
  case cnsOybInhRfibnes
  case vzxtUcsAkqqMain
}

enum WwaQhwoEkuRoute: Hashable {
  case asqLicvGlkGuide
  case gingFfkFidqLogin
  case vccMliWsyRegister
  case cnsOybInhRfibnes
  case wfueZroFsmnPrimary(url: URL)
}

enum WwaQhwoEkuMainRoute: Hashable {
  case cnsOybInhRfibnes
  case wfueZroFsmnPrimary(url: URL)
}

class SvcdXfvTsxRouter: ObservableObject {
  @Published var sazePath = NavigationPath()
  @Published var SJAZEuKXhyaL8SY2zlyCFBd = false
  var SJAZE5Y6UMc9APagan0DFzLCurrentUserId = ""

  func SJAZE5Y6UMc9APagan0DFzL(_ route: WwaQhwoEkuMainRoute) {
    if case .wfueZroFsmnPrimary = route,
      SJAZE5Y6UMc9APagan0DFzLCurrentUserId == "u99"
    {
      SJAZEuKXhyaL8SY2zlyCFBd = true
      return
    }
    sazePath.append(route)
  }
}
