import SwiftUI

struct CnsOybInhRegister: View {
  #if DEBUG
    @ObserveInjection var forceRedraw
  #endif
  enum Field: Hashable {
    case email
    case password
    case againPassword
  }
  @State var email: String = ""
  @State var password: String = ""
  @State var againPassword: String = ""
  @FocusState private var focusedField: Field?
  @EnvironmentObject var router: SvcdXfvTsxRouter
  var body: some View {
    #if DEBUG
      let _ = forceRedraw
    #endif
    GeometryReader { geometry in
      Image("SplashBg").resizable().scaledToFill().ignoresSafeArea()
      Image("Assets/saze_sign_rw").resizable().scaledToFit().frame(width: 59.w, height: 116.h)
        .frame(maxHeight: .infinity, alignment: .topLeading).offset(x: 53.w, y: 34.h)
      VStack(spacing: 0) {
        Spacer().frame(height: 145.h)
        TextField(
          "", text: $email,
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
        .focused($focusedField, equals: .email)
        .submitLabel(.next)
        .onSubmit {
          focusedField = .password
        }
        Spacer().frame(height: 24.h)
        SecureField(
          "", text: $password,
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
        .focused($focusedField, equals: .password)
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
        Text("SIGN UP")
          .foregroundColor(.white)
          .font(.system(size: 20.sp, weight: .bold))
          .frame(height: 53.h)
          .frame(maxWidth: .infinity)
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
          .glowBorder(color: .fzs1, lineWidth: 4)
      }
    }
    .navigationBarBackButtonHidden(true)
    .enableSwipeBack()
    .enableInjection()
  }
}
