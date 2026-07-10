import SwiftData
import SwiftUI

struct CnsOybInhRegister: View {
  #if DEBUG
    @ObserveInjection var forceRedraw
  #endif
  enum Field: Hashable {
    case SJAZEP9D18bMxoNRrHS3qbS
    case SJAZE3JHV2UnFe5sJW0IY99
    case againPassword
  }
  @State var SJAZEP9D18bMxoNRrHS3qbS: String = ""
  @State var SJAZE3JHV2UnFe5sJW0IY99: String = ""
  @State var againPassword: String = ""
  @FocusState private var focusedField: Field?
  @EnvironmentObject var router: SvcdXfvTsxRouter
  @EnvironmentObject var appState: RlbHdbTvacState
  @Environment(\.modelContext) private var modelContext
  @State private var isLoading = false
  var body: some View {
    #if DEBUG
      let _ = forceRedraw
    #endif
    GeometryReader { geometry in
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
        .focused($focusedField, equals: .SJAZEP9D18bMxoNRrHS3qbS)
        .submitLabel(.next)
        .onSubmit {
          focusedField = .SJAZE3JHV2UnFe5sJW0IY99
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
        .focused($focusedField, equals: .SJAZE3JHV2UnFe5sJW0IY99)
        .submitLabel(.next)
        .onSubmit {
          focusedField = .againPassword
        }
        Spacer().frame(height: 24.h)
        SecureField(
          "", text: $againPassword,
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
        .focused($focusedField, equals: .againPassword)
        .submitLabel(.done)
        .onSubmit {
          focusedField = nil
        }
        Spacer()
        Button(action: {
          guard !isLoading else { return }
          focusedField = nil

          let email = SJAZEP9D18bMxoNRrHS3qbS.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
          let password = SJAZE3JHV2UnFe5sJW0IY99.trimmingCharacters(in: .whitespacesAndNewlines)
          let confirmPassword = againPassword.trimmingCharacters(in: .whitespacesAndNewlines)

          guard !email.isEmpty, !password.isEmpty, !confirmPassword.isEmpty else {
            Toast.SJAZEcdY89CWWjnmZSU.SJAZErg181XkeSUsp4M("Please fill in all fields.")
            return
          }

          guard email.contains("@"), email.contains(".") else {
            Toast.SJAZEcdY89CWWjnmZSU.SJAZErg181XkeSUsp4M("Please enter a valid email.")
            return
          }

          guard password == confirmPassword else {
            Toast.SJAZEcdY89CWWjnmZSU.SJAZErg181XkeSUsp4M("Passwords do not match.")
            return
          }

          isLoading = true
          defer { isLoading = false }

          do {
            let descriptor = FetchDescriptor<JnixAsuGeizModel>(
              predicate: #Predicate { $0.SJAZEP9D18bMxoNRrHS3qbS == email }
            )

            if try modelContext.fetch(descriptor).first != nil {
              Toast.SJAZEcdY89CWWjnmZSU.SJAZErg181XkeSUsp4M("This email is already registered.")
              return
            }

            let name = email.split(separator: "@").first.map(String.init) ?? "User"
            let newUser = JnixAsuGeizModel(
              SJAZElIhkpVkrSW0rayEYw6: UUID().uuidString,
              SJAZEP9D18bMxoNRrHS3qbS: email,
              SJAZE3JHV2UnFe5sJW0IY99: password,
              SJAZEitwQEriHyuWepBXcnG:
                "http://huanniuchat.oss-ap-northeast-1.aliyuncs.com/saze/saze_default_photo.png",
              SJAZEgk7Ot2T1adgYgUOQFz: name,
              SJAZEvngXxy127zPzUvo24P: "Nothing",
              SJAZEdRu89xECFhVxnCAcEw: 0
            )

            modelContext.insert(newUser)
            try modelContext.save()
            appState.SJAZEw6XG9fZlRZQgwEl(newUser)
            appState.SJAZEAFUXImAX7mbSMxbzNK = true
            appState.vkyeFxuEaaPhase = .vzxtUcsAkqqMain
          } catch {
            Toast.SJAZEcdY89CWWjnmZSU.SJAZErg181XkeSUsp4M("Sign up failed. Please try again.")
          }
        }) {
          if isLoading {
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
          router.sazePath.removeLast()
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
