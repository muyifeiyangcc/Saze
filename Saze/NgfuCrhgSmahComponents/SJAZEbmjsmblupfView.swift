import SwiftUI

struct SJAZEbmjsmblupfView: View {
  #if DEBUG
    @ObserveInjection var forceRedraw
  #endif
  var SJAZEDdtxt36SxEs2AJvhi4: () -> Void = {}
  var SJAZEM0OnEKdu7gD0I8pbs5: () -> Void = {}

  var body: some View {
    #if DEBUG
      let _ = forceRedraw
    #endif
    ZStack(alignment: .bottom) {
      Image("Assets/SJAZEulfrmpdkmc")
        .resizable()
        .scaledToFill()
        .frame(width: 277.w, height: 317.h)

      VStack(spacing: 0) {
        Text("LOG IN")
          .foregroundColor(.black)
          .font(.system(size: 24.sp))
          .padding(.bottom, 6.h)

        Text("To ensure the normal operation")
          .foregroundColor(Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255))
          .font(.system(size: 15.sp))

        Text("of the function, please log in to")
          .foregroundColor(Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255))
          .font(.system(size: 15.sp))
          .padding(.vertical, 8.h)

        Text("your account first.")
          .foregroundColor(Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255))
          .font(.system(size: 15.sp))

        Button(action: SJAZEDdtxt36SxEs2AJvhi4) {
          Text("log in")
            .foregroundColor(.white)
            .font(.system(size: 20.sp))
            .frame(width: 204.w, height: 54.h)
            .background(Color(red: 25 / 255, green: 44 / 255, blue: 65 / 255))
            .cornerRadius(27.r)
        }
        .padding(.top, 20.h)
        .padding(.bottom, 20.h)

        Button(action: SJAZEM0OnEKdu7gD0I8pbs5) {
          Text("cancel")
            .foregroundColor(Color(red: 25 / 255, green: 44 / 255, blue: 65 / 255))
            .font(.system(size: 20.sp))
            .frame(width: 204.w, height: 54.h)
            .background(Color(red: 214 / 255, green: 223 / 255, blue: 239 / 255))
            .cornerRadius(27.r)
        }
        .padding(.bottom, 24.h)
      }
    }
    .frame(width: 277.w, height: 317.h)
    .enableInjection()
  }
}
