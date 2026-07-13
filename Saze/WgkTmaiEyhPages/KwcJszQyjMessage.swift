import Kingfisher
import SwiftData
import SwiftUI

struct KwcJszQyjMessage: View {
  #if DEBUG
    @ObserveInjection var SJAZEtE9URSe4Piuin
  #endif
  @EnvironmentObject var SJAZEHpszFi80RiCnd: RlbHdbTvacState
  @Environment(\.modelContext) private var SJAZEkeZaCWCAXkYDd
  @EnvironmentObject var SJAZEYpk9fy5yu6m7y: SvcdXfvTsxRouter
  @Query private var SJAZESW4mkK3EHJwWI: [HwsYfezKgckModel]
  var SJAZEEoFMc4As3ZA7S: [HwsYfezKgckModel] {
    guard let SJAZE8aPaDfeuPau1weW9Tr = SJAZEHpszFi80RiCnd.wfzqCubCpmUser?.SJAZE8aPaDfeuPau1weW9Tr else {
      return []
    }
    return SJAZESW4mkK3EHJwWI.filter {
      !SJAZE8aPaDfeuPau1weW9Tr.contains($0.SJAZEBCR2nFfDTdsD4REASp.first ?? "")
        && !SJAZE8aPaDfeuPau1weW9Tr.contains($0.SJAZEBCR2nFfDTdsD4REASp.last ?? "")
        && !$0.SJAZEn9xXVUjsmZIL5HwlRT.isEmpty
        && $0.SJAZEBCR2nFfDTdsD4REASp.contains(SJAZEHpszFi80RiCnd.wfzqCubCpmUser?.SJAZElIhkpVkrSW0rayEYw6 ?? "")
    }
  }
  var body: some View {
    #if DEBUG
      let _ = SJAZEtE9URSe4Piuin
    #endif
    GeometryReader { SJAZECDpBC1En2g2UA in
      Color.bgs1.ignoresSafeArea()
      VStack(spacing: 0) {
        Spacer().frame(height: 10.h)
        Text("MESSAGE")
          .foregroundColor(.zts1)
          .font(.system(size: 24.sp, weight: .black))
          .SJAZEwYTuBtb5heaf78(SJAZEZInLVMwuK3b7Nt: .fzs1, SJAZEaXDVDe3fq251lp: 4)
          .frame(maxWidth: .infinity, alignment: .leading)
        Spacer().frame(height: 16.h)
        if SJAZEEoFMc4As3ZA7S.isEmpty {
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
              ForEach(SJAZEEoFMc4As3ZA7S) { SJAZE3dMuhW59q1SlM in
                SJAZEM0OnEKdu7gD0I8pbs5(SJAZE46goRBlwHcZ2NTR7Zj: SJAZE3dMuhW59q1SlM)
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

struct SJAZEM0OnEKdu7gD0I8pbs5: View {
  @EnvironmentObject var SJAZEHpszFi80RiCnd: RlbHdbTvacState
  @Environment(\.modelContext) private var SJAZEkeZaCWCAXkYDd
  @EnvironmentObject var SJAZEYpk9fy5yu6m7y: SvcdXfvTsxRouter
  let SJAZE46goRBlwHcZ2NTR7Zj: HwsYfezKgckModel

  private func SJAZElKdjUJkJ77eSAJL60a(_ SJAZEPPFS5wCvtlT1gjyYXm: String) -> String {
    let SJAZEphWXVOOb41LTURWXgv = SJAZEPPFS5wCvtlT1gjyYXm.trimmingCharacters(in: .whitespacesAndNewlines)
    guard !SJAZEphWXVOOb41LTURWXgv.isEmpty else { return "" }

    let SJAZEu5wcLqsjl06dMO2A3I = ISO8601DateFormatter()
    SJAZEu5wcLqsjl06dMO2A3I.formatOptions = [.withInternetDateTime, .withFractionalSeconds]

    let SJAZE6eH3dcqyAssBuBvK7P = ISO8601DateFormatter()
    SJAZE6eH3dcqyAssBuBvK7P.formatOptions = [.withInternetDateTime]

    let SJAZEfmx31i0VW480pYKyhd = DateFormatter()
    SJAZEfmx31i0VW480pYKyhd.locale = Locale(identifier: "en_US_POSIX")
    SJAZEfmx31i0VW480pYKyhd.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"

    guard
      let SJAZE0lmYlYb24mJ5zZXfzO =
        SJAZEu5wcLqsjl06dMO2A3I.date(from: SJAZEphWXVOOb41LTURWXgv)
        ?? SJAZE6eH3dcqyAssBuBvK7P.date(from: SJAZEphWXVOOb41LTURWXgv)
        ?? SJAZEfmx31i0VW480pYKyhd.date(from: SJAZEphWXVOOb41LTURWXgv)
    else { return SJAZEphWXVOOb41LTURWXgv }

    let SJAZEyil1v2wyYoqHb5HehM = DateFormatter()
    SJAZEyil1v2wyYoqHb5HehM.dateFormat = "hh:mm a"
    SJAZEyil1v2wyYoqHb5HehM.locale = Locale(identifier: "en_US")

    return SJAZEyil1v2wyYoqHb5HehM.string(from: SJAZE0lmYlYb24mJ5zZXfzO)
  }

  var body: some View {
    let SJAZEfOhLjqOQCP2JSVXMIa =
      SJAZE46goRBlwHcZ2NTR7Zj.SJAZEBCR2nFfDTdsD4REASp.filter { $0 != SJAZEHpszFi80RiCnd.wfzqCubCpmUser?.SJAZElIhkpVkrSW0rayEYw6 }
      .first ?? ""
    let SJAZEFDReR9Z4k3PWgjPcxb = FetchDescriptor<JnixAsuGeizModel>(
      predicate: #Predicate { $0.SJAZElIhkpVkrSW0rayEYw6 == SJAZEfOhLjqOQCP2JSVXMIa }
    )

    if let SJAZEehC57FNw5LSfew8qAT = try? SJAZEkeZaCWCAXkYDd.fetch(SJAZEFDReR9Z4k3PWgjPcxb).first {
      HStack(spacing: 12.w) {
        KFImage(URL(string: SJAZEehC57FNw5LSfew8qAT.SJAZEitwQEriHyuWepBXcnG))
          .fade(duration: 0.2)
          .resizable()
          .scaledToFill()
          .frame(width: 62.r, height: 62.r)
          .clipShape(Circle())
          .overlay(Circle().stroke(.white.opacity(0.1), lineWidth: 4.0))
        VStack(alignment: .leading, spacing: 5.h) {
          HStack {
            Text(SJAZEehC57FNw5LSfew8qAT.SJAZEgk7Ot2T1adgYgUOQFz)
              .foregroundColor(.white)
              .lineLimit(1)
              .font(.system(size: 16.sp, weight: .bold))
              .layoutPriority(1)
            Spacer()
            Text(SJAZElKdjUJkJ77eSAJL60a(SJAZE46goRBlwHcZ2NTR7Zj.SJAZE9Er6ZUSKkEa2jaHrc4 ?? ""))
              .foregroundColor(.white.opacity(0.6))
              .lineLimit(1)
              .font(.system(size: 10.sp, weight: .semibold))
              .fixedSize(horizontal: true, vertical: false)
          }
          Text(SJAZE46goRBlwHcZ2NTR7Zj.SJAZEn9xXVUjsmZIL5HwlRT)
            .foregroundColor(Color(red: 0.9, green: 0.9, blue: 0.9))
            .lineLimit(1)
            .font(.system(size: 13.sp, weight: .semibold))
            .frame(maxWidth: .infinity, alignment: .leading)
            .layoutPriority(1)
        }
        .frame(maxWidth: .infinity)
      }
      .padding(.all, 6)
      .background(.fzs1)
      .cornerRadius(41.r)
      .onTapGesture {
        SJAZEYpk9fy5yu6m7y.SJAZE5Y6UMc9APagan0DFzL(
                      WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
            url: URL(
              string:
                "0e4149520c31111f64ac996e7feaa459".SJAZET5gG1gyy5729np8EdY()+"\(SJAZE46goRBlwHcZ2NTR7Zj.SJAZELj4BVAUIW1CdfC1E9n)"
            )!
          ))
      }
    }
  }
}
