import SwiftUI

struct QngkUgjVaosEula: View {
  @Binding var isAgreeEula: Bool
  @Binding var isShowEula: Bool
  var body: some View {
    GeometryReader { geometry in
      Color.black.opacity(0.2).ignoresSafeArea()
      VStack(spacing: 0) {
        Spacer().frame(height: 16.h)
        Text("EULA")
          .font(.system(size: 24.sp, weight: .black))
          .foregroundColor(.black)
        Spacer().frame(height: 4.h)
        Text(
          """
          Welcome to Saze! To make a better place,the following content is not allowed in the app in particular.\n\n
          1.Any content about child harm,pornography related detrimental to children.
          2. Fake and harmful messages about recent or current events.
          3. Any violence,bullying content, publicly promotes pornography and other content.\n\n
          If we find any content including and not limited to the above violations your content will be deleted and account will be banned.By clicking the above button,you agreeto the Terms of Use and Privacy Policy
          """
        )
        .foregroundColor(Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255))
        .font(.system(size: 16.sp))
        .multilineTextAlignment(.center)
        .padding(.horizontal, 16.w)
        Spacer()
        HStack(spacing: 23.w) {
          Button(action: {
            isShowEula = false
            isAgreeEula = false
          }) {
            Text("Cancle")
              .foregroundColor(.white)
              .font(.system(size: 16.sp, weight: .bold))
              .frame(maxWidth: .infinity)
          }
          .frame(height: 40.h)
          .background(.black)
          .cornerRadius(20)
          Button(action: {
            isShowEula = false
            isAgreeEula = true
          }) {
            Text("I agree")
              .foregroundColor(.black)
              .font(.system(size: 16.sp, weight: .bold))
              .frame(maxWidth: .infinity)
          }
          .frame(height: 40.h)
          .background(
            Rectangle()
              .fill(
                LinearGradient(
                  colors: [
                    Color(red: 165 / 255, green: 237 / 255, blue: 57 / 255),
                    Color(red: 48 / 255, green: 234 / 255, blue: 1.0),
                  ],
                  startPoint: .leading,
                  endPoint: .trailing
                )
              )
          )
          .cornerRadius(40)
        }
        .padding(.horizontal, 36.w)
        Spacer()
      }
      .frame(width: 335.w, height: 667.h)
      .background(
        LinearGradient(
          colors: [
            Color(red: 48 / 255, green: 234 / 255, blue: 255 / 255),
            Color.white,
          ],
          startPoint: .top,
          endPoint: .bottom
        )
      )
      .cornerRadius(20)
      .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
    }
  }
}
