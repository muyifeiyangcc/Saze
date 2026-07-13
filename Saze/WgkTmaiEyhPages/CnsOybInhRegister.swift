import SwiftData
import SwiftUI

struct CnsOybInhRegister: View {
  #if DEBUG
    @ObserveInjection var SJAZEtE9URSe4Piuin
  #endif
  enum Field: Hashable {
    case SJAZEP9D18bMxoNRrHS3qbS
    case SJAZE3JHV2UnFe5sJW0IY99
    case againPassword
  }
  @State var SJAZEP9D18bMxoNRrHS3qbS: String = ""
  @State var SJAZE3JHV2UnFe5sJW0IY99: String = ""
  @State var SJAZEHpszFi80RiCnd: String = ""
  @FocusState private var SJAZEkeZaCWCAXkYDd: Field?
  @EnvironmentObject var SJAZEYpk9fy5yu6m7y: SvcdXfvTsxRouter
  @EnvironmentObject var SJAZESW4mkK3EHJwWI: RlbHdbTvacState
  @Environment(\.modelContext) private var SJAZEEoFMc4As3ZA7S
  @State private var SJAZECDpBC1En2g2UA = false
  var body: some View {
    #if DEBUG
      let _ = SJAZEtE9URSe4Piuin
    #endif
    GeometryReader { SJAZE3dMuhW59q1SlM in
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
        .focused($SJAZEkeZaCWCAXkYDd, equals: .SJAZEP9D18bMxoNRrHS3qbS)
        .submitLabel(.next)
        .onSubmit {
          SJAZEkeZaCWCAXkYDd = .SJAZE3JHV2UnFe5sJW0IY99
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
        .focused($SJAZEkeZaCWCAXkYDd, equals: .SJAZE3JHV2UnFe5sJW0IY99)
        .submitLabel(.next)
        .onSubmit {
          SJAZEkeZaCWCAXkYDd = .againPassword
        }
        Spacer().frame(height: 24.h)
        SecureField(
          "", text: $SJAZEHpszFi80RiCnd,
          prompt: Text(" Enter the password again")
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
        .focused($SJAZEkeZaCWCAXkYDd, equals: .againPassword)
        .submitLabel(.done)
        .onSubmit {
          SJAZEkeZaCWCAXkYDd = nil
        }
        Spacer()
        Button(action: {
          guard !SJAZECDpBC1En2g2UA else { return }
          SJAZEkeZaCWCAXkYDd = nil

          let SJAZEDYAJRkfLGcnca = SJAZEP9D18bMxoNRrHS3qbS.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
          let SJAZEASR3aBNz03LEI = SJAZE3JHV2UnFe5sJW0IY99.trimmingCharacters(in: .whitespacesAndNewlines)
          let SJAZEgJownbIz5opcI = SJAZEHpszFi80RiCnd.trimmingCharacters(in: .whitespacesAndNewlines)

          guard !SJAZEDYAJRkfLGcnca.isEmpty, !SJAZEASR3aBNz03LEI.isEmpty, !SJAZEgJownbIz5opcI.isEmpty else {
            Toast.SJAZEcdY89CWWjnmZSU.SJAZErg181XkeSUsp4M("Please fill in all fields.")
            return
          }

          guard SJAZEDYAJRkfLGcnca.contains("@"), SJAZEDYAJRkfLGcnca.contains(".") else {
            Toast.SJAZEcdY89CWWjnmZSU.SJAZErg181XkeSUsp4M("Please enter a valid email.")
            return
          }

          guard SJAZEASR3aBNz03LEI == SJAZEgJownbIz5opcI else {
            Toast.SJAZEcdY89CWWjnmZSU.SJAZErg181XkeSUsp4M("Passwords do not match.")
            return
          }

          SJAZECDpBC1En2g2UA = true
          defer { SJAZECDpBC1En2g2UA = false }

          do {
            let SJAZEsRzxsupuDfCuA = FetchDescriptor<JnixAsuGeizModel>(
              predicate: #Predicate { $0.SJAZEP9D18bMxoNRrHS3qbS == SJAZEDYAJRkfLGcnca }
            )

            if try SJAZEEoFMc4As3ZA7S.fetch(SJAZEsRzxsupuDfCuA).first != nil {
              Toast.SJAZEcdY89CWWjnmZSU.SJAZErg181XkeSUsp4M("This email is already registered.")
              return
            }

            let SJAZEgLy0nkJAaoZlA = SJAZEDYAJRkfLGcnca.split(separator: "@").first.map(String.init) ?? "User"
            let SJAZEMgsi9ejKKsRJs = JnixAsuGeizModel(
              SJAZElIhkpVkrSW0rayEYw6: UUID().uuidString,
              SJAZEP9D18bMxoNRrHS3qbS: SJAZEDYAJRkfLGcnca,
              SJAZE3JHV2UnFe5sJW0IY99: SJAZEASR3aBNz03LEI,
              SJAZEitwQEriHyuWepBXcnG:
                "a3483a210873e9b626137f1b46d022fdf3a78aaad5bf9e82bd834238962371097bf41217c47823aa6d3d3699d1f61f80252e7dd9a0ab2e9d1a27303a2e76a924d1dc08b99f34379ef435626af1778582".SJAZET5gG1gyy5729np8EdY(),
              SJAZEgk7Ot2T1adgYgUOQFz: SJAZEgLy0nkJAaoZlA,
              SJAZEvngXxy127zPzUvo24P: "Nothing",
              SJAZEdRu89xECFhVxnCAcEw: 0
            )

            SJAZEEoFMc4As3ZA7S.insert(SJAZEMgsi9ejKKsRJs)
            try SJAZEEoFMc4As3ZA7S.save()
            SJAZESW4mkK3EHJwWI.SJAZEw6XG9fZlRZQgwEl(SJAZEMgsi9ejKKsRJs)
            SJAZESW4mkK3EHJwWI.SJAZEAFUXImAX7mbSMxbzNK = true
            SJAZESW4mkK3EHJwWI.vkyeFxuEaaPhase = .vzxtUcsAkqqMain
          } catch {
            Toast.SJAZEcdY89CWWjnmZSU.SJAZErg181XkeSUsp4M("Sign up failed. Please try again.")
          }
        }) {
          if SJAZECDpBC1En2g2UA {
            ProgressView()
              .progressViewStyle(CircularProgressViewStyle(tint: .white))
              .frame(maxWidth: .infinity)
          } else {
            Text("SIGN UP")
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
          SJAZEYpk9fy5yu6m7y.sazePath.removeLast()
        } label: {
          Image("Assets/saze_back")
            .resizable()
            .scaledToFit()
            .frame(width: 40.r, height: 40.r)
        }
      }
      ToolbarItem(placement: .navigationBarLeading) {
        Text("SIGN UP")
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
