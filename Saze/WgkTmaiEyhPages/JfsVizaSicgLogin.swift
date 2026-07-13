import SwiftData
import SwiftUI

struct JfsVizaSicgLogin: View {
  #if DEBUG
    @ObserveInjection var SJAZEtE9URSe4Piuin
  #endif
  enum Field: Hashable {
    case SJAZEP9D18bMxoNRrHS3qbS
    case SJAZE3JHV2UnFe5sJW0IY99
  }
  @State var SJAZEP9D18bMxoNRrHS3qbS: String = ""
  @State var SJAZE3JHV2UnFe5sJW0IY99: String = ""
  @FocusState private var SJAZEHpszFi80RiCnd: Field?
  @EnvironmentObject var SJAZEkeZaCWCAXkYDd: SvcdXfvTsxRouter
  @State private var SJAZEYpk9fy5yu6m7y = false
  @EnvironmentObject var SJAZESW4mkK3EHJwWI: RlbHdbTvacState
  @Environment(\.modelContext) private var SJAZEEoFMc4As3ZA7S
  var body: some View {
    #if DEBUG
      let _ = SJAZEtE9URSe4Piuin
    #endif
    GeometryReader { SJAZECDpBC1En2g2UA in
      Image("SplashBg").resizable().ignoresSafeArea()
      Image("Assets/saze_sign_rw").resizable().scaledToFit().frame(width: 59.w, height: 116.h)
        .frame(maxHeight: .infinity, alignment: .topLeading).offset(x: 53.w, y: 34.h)
      VStack(spacing: 0) {
        Spacer().frame(height: 145.h)
        TextField(
          "", text: $SJAZEP9D18bMxoNRrHS3qbS,
          prompt: Text("Email")
            .foregroundColor(Color.fzs1.opacity(0.5))
            .font(.system(size: 16.sp)),
        )
        .keyboardType(.emailAddress)
        .textInputAutocapitalization(.never)
        .disableAutocorrection(true)
        .font(.system(size: 16.sp))
        .foregroundColor(Color.fzs1)
        .padding(.horizontal, 16.w)
        .padding(.vertical, 20.h)
        .padding(.leading, 30.w)
        .background(
          .white
        )
        .cornerRadius(40.r)
        .overlay(
          Image("Assets/saze_email_icon").resizable().scaledToFit().frame(
            width: 24.r, height: 24.r
          ).offset(x: 16.w),
          alignment: .leading
        )
        .focused($SJAZEHpszFi80RiCnd, equals: .SJAZEP9D18bMxoNRrHS3qbS)
        .submitLabel(.next)
        .onSubmit {
          SJAZEHpszFi80RiCnd = .SJAZE3JHV2UnFe5sJW0IY99
        }
        Spacer().frame(height: 24.h)
        SecureField(
          "", text: $SJAZE3JHV2UnFe5sJW0IY99,
          prompt: Text("Password")
            .foregroundColor(Color.fzs1.opacity(0.5))
            .font(.system(size: 16.sp)),
        )
        .textInputAutocapitalization(.never)
        .disableAutocorrection(true)
        .font(.system(size: 16.sp))
        .foregroundColor(Color.fzs1)
        .padding(.horizontal, 16.w)
        .padding(.vertical, 20.h)
        .padding(.leading, 30.w)
        .background(
          .white
        )
        .cornerRadius(40.r)
        .overlay(
          Image("Assets/saze_password_icon").resizable().scaledToFit().frame(
            width: 24.r, height: 24.r
          ).offset(x: 16.w),
          alignment: .leading
        )
        .focused($SJAZEHpszFi80RiCnd, equals: .SJAZE3JHV2UnFe5sJW0IY99)
        .submitLabel(.done)
        .onSubmit {
          SJAZEHpszFi80RiCnd = nil
        }
        Spacer()
        Button(action: {
          guard !SJAZEP9D18bMxoNRrHS3qbS.isEmpty, !SJAZE3JHV2UnFe5sJW0IY99.isEmpty, !SJAZEYpk9fy5yu6m7y else { return }
          SJAZEYpk9fy5yu6m7y = true
          Task {
            defer {
              SJAZEYpk9fy5yu6m7y = false
            }
            do {
              try await Task.sleep(for: .milliseconds(613))
              let SJAZE3dMuhW59q1SlM = FetchDescriptor<JnixAsuGeizModel>(
                predicate: #Predicate { $0.SJAZEP9D18bMxoNRrHS3qbS == SJAZEP9D18bMxoNRrHS3qbS }
              )
              let SJAZEDYAJRkfLGcnca = try SJAZEEoFMc4As3ZA7S.fetch(SJAZE3dMuhW59q1SlM).first
              await MainActor.run {
                guard let SJAZEDYAJRkfLGcnca = SJAZEDYAJRkfLGcnca else {
                  Toast.SJAZEcdY89CWWjnmZSU.SJAZErg181XkeSUsp4M("Invalid email or password. Please try again.")
                  return
                }
                SJAZESW4mkK3EHJwWI.SJAZEw6XG9fZlRZQgwEl(SJAZEDYAJRkfLGcnca)
                SJAZESW4mkK3EHJwWI.vkyeFxuEaaPhase = .vzxtUcsAkqqMain
              }
            } catch {
              await MainActor.run {
                Toast.SJAZEcdY89CWWjnmZSU.SJAZErg181XkeSUsp4M("Invalid email or password. Please try again.")
              }
            }
          }
        }) {
          if SJAZEYpk9fy5yu6m7y {
            ProgressView()
              .progressViewStyle(CircularProgressViewStyle(tint: Color("text1")))
              .frame(maxWidth: .infinity)
          } else {
            Text("SIGN IN")
              .foregroundColor(.white)
              .font(.system(size: 20.sp, weight: .bold))
              .frame(maxWidth: .infinity)
          }
        }
        .frame(height: 53.h)
        .background(
          Color.fzs1
        )
        .cornerRadius(40)
        .padding(.horizontal, 58.w)
        Spacer()
      }
      .padding(.horizontal, 30.w)
    }
    .toolbar {
      ToolbarItem(placement: .navigationBarLeading) {
        Button {
          SJAZEkeZaCWCAXkYDd.sazePath.removeLast()
        } label: {
          Image("Assets/saze_back")
            .resizable()
            .scaledToFit()
            .frame(width: 40.r, height: 40.r)
        }
      }
      ToolbarItem(placement: .navigationBarLeading) {
        Text("SIGN IN")
          .foregroundColor(.zts1)
          .font(.system(size: 24.sp, weight: .black))
          .SJAZEwYTuBtb5heaf78(SJAZEZInLVMwuK3b7Nt: .fzs1, SJAZEaXDVDe3fq251lp: 4)
      }
    }
    .navigationBarBackButtonHidden(true)
    .SJAZEJNYyXIDohrI1ON()
    .enableInjection()
  }
}
