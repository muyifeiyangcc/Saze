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
      Image("Assets/saze_default_bg").resizable().scaledToFill().ignoresSafeArea()
      Image("Assets/saze_sign_play").resizable().scaledToFit().frame(width: 118.r, height: 118.r)
        .frame(maxWidth: .infinity, alignment: .top)
      VStack(spacing: 0) {
        Spacer().frame(height: 100.h)
        Text("Email:")
          .foregroundColor(.black)
          .font(.system(size: 18.sp, weight: .bold))
          .frame(maxWidth: .infinity, alignment: .leading)
        Spacer().frame(height: 16.h)
        TextField(
          "", text: $email,
          prompt: Text("Enter email address")
            .foregroundColor(Color(red: 153 / 255, green: 153 / 255, blue: 153 / 255))
            .font(.system(size: 16.sp)),
        )
        .keyboardType(.emailAddress)
        .textInputAutocapitalization(.never)
        .disableAutocorrection(true)
        .font(.system(size: 14.sp))
        .foregroundColor(.black)
        .padding(.horizontal, 19.w)
        .padding(.vertical, 19.h)
        .background(
          Color(red: 227 / 255, green: 227 / 255, blue: 227 / 255)
        )
        .cornerRadius(14)
        .focused($focusedField, equals: .email)
        .submitLabel(.next)
        .onSubmit {
          focusedField = .password
        }
        Spacer().frame(height: 18.h)
        Text("Password:")
          .foregroundColor(.black)
          .font(.system(size: 18.sp, weight: .bold))
          .frame(maxWidth: .infinity, alignment: .leading)
        Spacer().frame(height: 16.h)
        SecureField(
          "", text: $password,
          prompt: Text("Enter password")
            .foregroundColor(Color(red: 153 / 255, green: 153 / 255, blue: 153 / 255))
            .font(.system(size: 14.sp)),
        )
        .textInputAutocapitalization(.never)
        .disableAutocorrection(true)
        .font(.system(size: 14.sp))
        .foregroundColor(.black)
        .padding(.horizontal, 19.w)
        .padding(.vertical, 19.h)
        .background(
          Color(red: 227 / 255, green: 227 / 255, blue: 227 / 255)
        )
        .cornerRadius(14)
        .focused($focusedField, equals: .password)
        .submitLabel(.next)
        .onSubmit {
          focusedField = .againPassword
        }
        Spacer().frame(height: 18.h)
        Text("Password:")
          .foregroundColor(.black)
          .font(.system(size: 18.sp, weight: .bold))
          .frame(maxWidth: .infinity, alignment: .leading)
        Spacer().frame(height: 16.h)
        SecureField(
          "", text: $againPassword,
          prompt: Text("Please enter the password again")
            .foregroundColor(Color(red: 153 / 255, green: 153 / 255, blue: 153 / 255))
            .font(.system(size: 14.sp)),
        )
        .textInputAutocapitalization(.never)
        .disableAutocorrection(true)
        .font(.system(size: 14.sp))
        .foregroundColor(.black)
        .padding(.horizontal, 19.w)
        .padding(.vertical, 19.h)
        .background(
          Color(red: 227 / 255, green: 227 / 255, blue: 227 / 255)
        )
        .cornerRadius(14)
        .focused($focusedField, equals: .againPassword)
        .submitLabel(.done)
        .onSubmit {
          focusedField = nil
        }
        Spacer()
        Button(action: {
        }) {
          Text("Sign up")
            .foregroundColor(.white)
            .font(.system(size: 20.sp, weight: .bold))
            .frame(maxWidth: .infinity)
        }
        .frame(height: 53.h)
        .background(
          Rectangle()
            .fill(.black)
        )
        .overlay(
          RoundedRectangle(cornerRadius: 40)
            .stroke(
              LinearGradient(
                colors: [
                  Color(red: 165 / 255, green: 237 / 255, blue: 57 / 255),
                  Color(red: 48 / 255, green: 234 / 255, blue: 255 / 255),
                ],
                startPoint: .leading,
                endPoint: .trailing
              ),
              lineWidth: 2
            )
        )
        .cornerRadius(40)
        .padding(.horizontal, 73.w)
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
      ToolbarItem(placement: .navigationBarTrailing) {
        Text("Sign UP")
          .foregroundColor(.black)
          .font(.system(size: 24.sp, weight: .black))
      }
    }
    .navigationBarBackButtonHidden(true)
    .enableSwipeBack()
    .enableInjection()
  }
}
