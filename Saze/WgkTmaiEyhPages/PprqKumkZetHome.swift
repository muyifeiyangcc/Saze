import Kingfisher
import SwiftData
import SwiftUI

struct PprqKumkZetHome: View {
  #if DEBUG
    @ObserveInjection var SJAZEtE9URSe4Piuin
  #endif
  @EnvironmentObject var SJAZEHpszFi80RiCnd: RlbHdbTvacState
  @Environment(\.modelContext) private var SJAZEkeZaCWCAXkYDd
  @EnvironmentObject var SJAZEYpk9fy5yu6m7y: SvcdXfvTsxRouter
  @Query private var SJAZESW4mkK3EHJwWI: [BiekWudpWdqModel]
  @Query private var SJAZEEoFMc4As3ZA7S: [HwsYfezKgckModel]
  @State private var SJAZECDpBC1En2g2UA = ["All", "Round", "Square", "Oval"]
  @State private var SJAZE3dMuhW59q1SlM = -1
  var SJAZEDYAJRkfLGcnca: [BiekWudpWdqModel] {
    let SJAZEASR3aBNz03LEI = Set(SJAZEHpszFi80RiCnd.wfzqCubCpmUser?.SJAZE8aPaDfeuPau1weW9Tr ?? [])
    return SJAZESW4mkK3EHJwWI.filter { SJAZEgJownbIz5opcI in
      if let SJAZElIhkpVkrSW0rayEYw6 = SJAZEgJownbIz5opcI.SJAZEqW4EMg4h7fXuUJ0kd7?.SJAZElIhkpVkrSW0rayEYw6, SJAZEASR3aBNz03LEI.contains(SJAZElIhkpVkrSW0rayEYw6) {
        return false
      }
      guard SJAZEgJownbIz5opcI.SJAZEsoZ0L6YgsKwJ0DlGuU == 0 else {
        return false
      }
      return SJAZE3dMuhW59q1SlM == -1 || SJAZEgJownbIz5opcI.SJAZEEPjTSzGukeICl2u6ue == SJAZE3dMuhW59q1SlM
    }
  }
  var SJAZEsRzxsupuDfCuA: [HwsYfezKgckModel] {
    guard let SJAZE8aPaDfeuPau1weW9Tr = SJAZEHpszFi80RiCnd.wfzqCubCpmUser?.SJAZE8aPaDfeuPau1weW9Tr else {
      return []
    }
    return SJAZEEoFMc4As3ZA7S.filter {
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
    GeometryReader { SJAZEgLy0nkJAaoZlA in
      Image("Assets/saze_home_bg").resizable().ignoresSafeArea()
      Image("Assets/saze_home_rw").resizable().scaledToFill()
        .frame(width: 121.w, height: 238.h)
        .frame(maxWidth: .infinity, alignment: .top)
        .offset(y: 41.h)
      VStack(spacing: 0) {
        Spacer().frame(height: 10.h)
        HStack(alignment: .top, spacing: 0) {
          Text("SHARE YOUR\nBEAUTY！")
            .foregroundColor(Color(red: 211 / 255, green: 238 / 255, blue: 241 / 255))
            .font(.system(size: 24.sp, weight: .black))
            .SJAZEwYTuBtb5heaf78(SJAZEZInLVMwuK3b7Nt: Color(red: 25 / 255, green: 44 / 255, blue: 65 / 255), SJAZEaXDVDe3fq251lp: 4)
          Spacer()
          VStack(spacing: 5.h) {
            Image("Assets/saze_home_share").resizable().scaledToFit().frame(
              width: 76.r, height: 76.r)
            Text("SHARE")
              .foregroundColor(Color(red: 8 / 255, green: 115 / 255, blue: 255 / 255))
              .font(.system(size: 14.sp, weight: .bold))
          }
          .onTapGesture {
            SJAZEYpk9fy5yu6m7y.SJAZE5Y6UMc9APagan0DFzL(
                      WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                url: URL(
                  string:
                    "43d13a3a0778a485eaba1ffe0f2b056e".SJAZET5gG1gyy5729np8EdY())!
              ))
          }
          .padding(.top, 15.h)
        }
        .padding(.horizontal, 13.w)
        .padding(.leading, 7.w)
        Spacer().frame(height: 101.h)
        HStack(spacing: 10.w) {
          Text("AI Photo Inspiration")
            .foregroundColor(Color("fzs1"))
            .font(.system(size: 16.sp, weight: .semibold))
          Image("Assets/saze_item_forward")
            .resizable().scaledToFit()
            .frame(width: 18.r, height: 18.r)
            .frame(width: 30.r, height: 30.r)
            .background(.zs1)
            .clipShape(Circle())
        }
        .padding(.horizontal, 10.w)
        .padding(.vertical, 6.h)
        .background(.white.opacity(0.2))
        .background(.ultraThinMaterial)
        .cornerRadius(100.r)
        .overlay(
          RoundedRectangle(cornerRadius: 100.r)
            .stroke(
              LinearGradient(
                gradient: Gradient(stops: [
                  .init(color: Color.white, location: 0),
                  .init(color: Color.white.opacity(0), location: 0.5381),
                  .init(color: Color.white.opacity(0.75), location: 1),
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
              ),
              lineWidth: 1
            )
        )
        .onTapGesture {
          SJAZEYpk9fy5yu6m7y.SJAZE5Y6UMc9APagan0DFzL(
                      WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
              url: URL(
                string:
                  "75e3bbc7b6c7a719263fad7a92bad5d9".SJAZET5gG1gyy5729np8EdY())!
            ))
        }
        .frame(maxWidth: .infinity, alignment: .center)
        Spacer().frame(height: 12.h)
        ScrollView(.vertical) {
          VStack(spacing: 0) {
            Text("POPULAR PHOTO")
              .foregroundColor(.zts1)
              .font(.system(size: 18.sp, weight: .black))
              .SJAZEwYTuBtb5heaf78(SJAZEZInLVMwuK3b7Nt: .fzs1, SJAZEaXDVDe3fq251lp: 4)
              .padding(.leading, 20.w)
              .frame(maxWidth: .infinity, alignment: .leading)
            Spacer().frame(height: 16.h)
            ScrollView(.horizontal) {
              HStack(spacing: 10.w) {
                ForEach(SJAZEDYAJRkfLGcnca, id: \.self) { SJAZEMgsi9ejKKsRJs in
                  KFImage(URL(string: SJAZEMgsi9ejKKsRJs.SJAZEJvLqXUWCmDFJBLleGx.first!))
                    .fade(duration: 0.25)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 137.w, height: 172.h)
                    .cornerRadius(40.r)
                    .overlay(
                      HStack(spacing: 10.w) {
                        Text("Check")
                          .foregroundColor(.white)
                          .font(.system(size: 16.sp, weight: .semibold))
                        Image("Assets/saze_item_forward")
                          .resizable().scaledToFit()
                          .frame(width: 18.r, height: 18.r)
                          .frame(width: 30.r, height: 30.r)
                          .background(.zs1)
                          .clipShape(Circle())
                      }
                      .padding(.horizontal, 10.w)
                      .padding(.vertical, 6.h)
                      .background(.white.opacity(0.2))
                      .background(.ultraThinMaterial)
                      .cornerRadius(100.r)
                      .overlay(
                        RoundedRectangle(cornerRadius: 100.r)
                          .stroke(
                            LinearGradient(
                              gradient: Gradient(stops: [
                                .init(color: Color.white, location: 0),
                                .init(color: Color.white.opacity(0), location: 0.5381),
                                .init(color: Color.white.opacity(0.75), location: 1),
                              ]),
                              startPoint: .topLeading,
                              endPoint: .bottomTrailing
                            ),
                            lineWidth: 1
                          )
                      )
                      .offset(y: -10.h), alignment: .bottom
                    )
                    .onTapGesture {
                      SJAZEYpk9fy5yu6m7y.SJAZE5Y6UMc9APagan0DFzL(
                      WwaQhwoEkuMainRoute.wfueZroFsmnPrimary(
                          url: URL(
                            string:
                              "84e811b58c548019d61e1208cadd2b4a".SJAZET5gG1gyy5729np8EdY()+"\(SJAZEMgsi9ejKKsRJs.SJAZEVeQYjYRJfcllVneqRN)"
                          )!
                        ))
                    }
                }
              }
            }
            .padding(.leading, 20.w)
            Spacer().frame(height: 24.h)
              if SJAZEsRzxsupuDfCuA.isEmpty {
                  VStack {
                    Image("Assets/saze_empty").resizable().scaledToFill().frame(
                      width: 152.r, height: 152.r)
                    Text("No Data")
                      .font(.system(size: 16.sp))
                      .foregroundColor(.black)
                  }
                  .frame(maxWidth: .infinity, maxHeight: .infinity)
              }else{
                  ForEach(SJAZEsRzxsupuDfCuA) { SJAZEGazFUjLd6gbaB in
                    SJAZEM0OnEKdu7gD0I8pbs5(SJAZE46goRBlwHcZ2NTR7Zj: SJAZEGazFUjLd6gbaB)
                    .padding(.horizontal, 20.w)
                    .padding(.bottom, 8.h)
                  }
              }
          }
        }
        .scrollIndicators(.hidden)
        .padding(.top, 20.h)
        .padding(.bottom, 80.h)
        .frame(maxWidth: .infinity)
        .background(.white)
        .clipShape(MacuSupJsqRoundedCorner(SJAZE2hUbpFoA9MRWSb: 20, SJAZEvOx831LUvSBpIz: [.topLeft, .topRight]))
        .ignoresSafeArea()
      }
    }
    .enableInjection()
  }
}
