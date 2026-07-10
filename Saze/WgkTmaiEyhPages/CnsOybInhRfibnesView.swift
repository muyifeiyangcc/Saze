import Kingfisher
import SwiftUI
import SwiftData

struct CnsOybInhRfibnesView: View {
  #if DEBUG
    @ObserveInjection var forceRedraw
  #endif
  @Environment(\.dismiss) private var dismiss
  @Environment(\.modelContext) private var modelContext
  @EnvironmentObject var appState: RlbHdbTvacState
  @State private var SJAZEehC57FNw5LSfew8qAT = ""
  @State private var SJAZECv2KKivqSZCRiaTMWq = ""
  @State private var SJAZEXjJNVHQuZixOQPRFjP = ""
  @State private var SJAZEPIqatmHq3KkMNWycAI = "http://huanniuchat.oss-ap-northeast-1.aliyuncs.com/saze/saze_default_photo.png"
  @State private var SJAZElgbmcWUcczBpliHwhD = 0
  @State private var SJAZEDdtxt36SxEs2AJvhi4 = false
  @State private var SJAZEER4Tdene4ILy5txyIh = false

  var body: some View {
    #if DEBUG
      let _ = forceRedraw
    #endif
    ZStack {
      Image("SplashBg")
        .resizable()
        .ignoresSafeArea()

      VStack(spacing: 0) {
        HStack {
          Button {
            dismiss()
          } label: {
            Image("Assets/saze_back")
              .resizable()
              .scaledToFit()
              .frame(width: 40.r, height: 40.r)
          }
          Spacer()
        }
        .padding(.horizontal, 20.w)
        .padding(.top, 55.h)

        ScrollView(showsIndicators: false) {
          VStack(spacing: 0) {
            ZStack(alignment: .bottomTrailing) {
              Circle()
                .fill(Color(red: 1, green: 138 / 255, blue: 122 / 255))
                .frame(width: 90.r, height: 90.r)
              SJAZEM0OnEKdu7gD0I8pbs5Avatar(SJAZE9YZEklvW5n4doczjIz: SJAZEPIqatmHq3KkMNWycAI)
                .frame(width: 84.r, height: 84.r)
                .clipShape(Circle())
                .padding(3.r)
                .id(SJAZEPIqatmHq3KkMNWycAI)
              ZStack {
                Circle()
                  .fill(.white)
                  .frame(width: 18.r, height: 18.r)
                Image("Assets/SJAZEieushwfaaz")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 10.r, height: 10.r)
              }
              .offset(x: -13.r)
            }
            .contentShape(Rectangle())
            .onTapGesture {
              SJAZEDdtxt36SxEs2AJvhi4 = true
            }
            .padding(.top, 6.h)

            SJAZE87adfpqYBbV0zFP84V(
              SJAZEc9cYwDkwALOG4bF2yR: "NIckname:",
              SJAZE3G1raqR03fIKZ1FpY2: $SJAZEehC57FNw5LSfew8qAT
            )
            .padding(.top, 20.h)

            SJAZE87adfpqYBbV0zFP84V(
              SJAZEc9cYwDkwALOG4bF2yR: "Birthday:",
              SJAZE3G1raqR03fIKZ1FpY2: $SJAZECv2KKivqSZCRiaTMWq
            )
            .padding(.top, 16.h)

            SJAZE87adfpqYBbV0zFP84V(
              SJAZEc9cYwDkwALOG4bF2yR: "Location:",
              SJAZE3G1raqR03fIKZ1FpY2: $SJAZEXjJNVHQuZixOQPRFjP
            )
            .padding(.top, 16.h)

            VStack(alignment: .leading, spacing: 16.h) {
              Text("Gender:")
                .foregroundColor(.black)
                .font(.system(size: 20.sp))

              HStack(spacing: 16.w) {
                Button {
                  SJAZElgbmcWUcczBpliHwhD = 0
                } label: {
                  SJAZEpES7uN1NTAMQpx0tRh(
                    SJAZEVnL4zjZ4eemMCEjJC7: "Assets/SJAZEecvicizykc",
                    SJAZEXIEaaB3OBIjnnGdPri: SJAZElgbmcWUcczBpliHwhD == 0
                  )
                }
                .buttonStyle(.plain)

                Button {
                  SJAZElgbmcWUcczBpliHwhD = 1
                } label: {
                  SJAZEpES7uN1NTAMQpx0tRh(
                    SJAZEVnL4zjZ4eemMCEjJC7: "Assets/SJAZEuogvxiswco",
                    SJAZEXIEaaB3OBIjnnGdPri: SJAZElgbmcWUcczBpliHwhD == 1
                  )
                }
                .buttonStyle(.plain)
              }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 16.h)
          }
          .padding(.horizontal, 20.w)
          .padding(.bottom, 20.h)
        }

        Button {
          guard !SJAZEER4Tdene4ILy5txyIh else { return }
          SJAZEPIqatmHq3KkMNWycAI = SJAZEPIqatmHq3KkMNWycAI.trimmingCharacters(in: .whitespacesAndNewlines)
          SJAZEehC57FNw5LSfew8qAT = SJAZEehC57FNw5LSfew8qAT.trimmingCharacters(in: .whitespacesAndNewlines)
          SJAZECv2KKivqSZCRiaTMWq = SJAZECv2KKivqSZCRiaTMWq.trimmingCharacters(in: .whitespacesAndNewlines)
          SJAZEXjJNVHQuZixOQPRFjP = SJAZEXjJNVHQuZixOQPRFjP.trimmingCharacters(in: .whitespacesAndNewlines)

          guard
            !SJAZEPIqatmHq3KkMNWycAI.isEmpty,
            !SJAZEehC57FNw5LSfew8qAT.isEmpty,
            !SJAZECv2KKivqSZCRiaTMWq.isEmpty,
            !SJAZEXjJNVHQuZixOQPRFjP.isEmpty
          else {
            Toast.SJAZEcdY89CWWjnmZSU.SJAZErg181XkeSUsp4M("Please fill in all fields.")
            return
          }

          guard let SJAZEM0OnEKdu7gD0I8pbs5 = appState.wfzqCubCpmUser else {
            Toast.SJAZEcdY89CWWjnmZSU.SJAZErg181XkeSUsp4M("Please log in first.")
            return
          }

          SJAZEM0OnEKdu7gD0I8pbs5.SJAZEitwQEriHyuWepBXcnG = SJAZEPIqatmHq3KkMNWycAI
          SJAZEM0OnEKdu7gD0I8pbs5.SJAZEgk7Ot2T1adgYgUOQFz = SJAZEehC57FNw5LSfew8qAT
          try? modelContext.save()
          Task {
            await MainActor.run { SJAZEER4Tdene4ILy5txyIh = true }
            try? await Task.sleep(for: .seconds(2))
            await MainActor.run {
              SJAZEER4Tdene4ILy5txyIh = false
              Toast.SJAZEcdY89CWWjnmZSU.SJAZErg181XkeSUsp4M("Saved successfully.")
              dismiss()
            }
          }
        } label: {
          if SJAZEER4Tdene4ILy5txyIh {
            ProgressView()
              .progressViewStyle(CircularProgressViewStyle(tint: .white))
              .frame(width: 200.w, height: 52.h)
              .background(Color(red: 25 / 255, green: 44 / 255, blue: 65 / 255))
              .cornerRadius(26.r)
          } else {
            Text("SAVE")
              .foregroundColor(.white)
              .font(.system(size: 20.sp))
              .frame(width: 200.w, height: 52.h)
              .background(Color(red: 25 / 255, green: 44 / 255, blue: 65 / 255))
              .cornerRadius(26.r)
          }
        }
        .padding(.bottom, 35.h)
      }
    }
    .ignoresSafeArea()
    .navigationBarBackButtonHidden(true)
    .sheet(isPresented: $SJAZEDdtxt36SxEs2AJvhi4) {
      ImdttdwdNuoavTzghpt(
        oISmdttdwdNuoavTzghpt: { SJAZEPIqatmHq3KkMNWycAI = $0 },
        fPmdttdwdNuoavTzghpt: SJAZEPIqatmHq3KkMNWycAI
      )
    }
    .enableInjection()
  }
}

private struct SJAZEM0OnEKdu7gD0I8pbs5Avatar: View {
  let SJAZE9YZEklvW5n4doczjIz: String

  var body: some View {
    KFImage(URL(string: SJAZE9YZEklvW5n4doczjIz))
      .placeholder {
        Image("Assets/SJAZEpveyzkcsgf")
          .resizable()
          .scaledToFill()
      }
      .fade(duration: 0.2)
      .resizable()
      .scaledToFill()
  }
}

private struct SJAZE87adfpqYBbV0zFP84V: View {
  let SJAZEc9cYwDkwALOG4bF2yR: String
  @Binding var SJAZE3G1raqR03fIKZ1FpY2: String

  var body: some View {
    VStack(alignment: .leading, spacing: 16.h) {
      Text(SJAZEc9cYwDkwALOG4bF2yR)
        .foregroundColor(.black)
        .font(.system(size: 20.sp))

      TextField("Please enter", text: $SJAZE3G1raqR03fIKZ1FpY2)
        .textInputAutocapitalization(.never)
        .disableAutocorrection(true)
        .font(.system(size: 16.sp))
        .foregroundColor(Color(red: 25 / 255, green: 44 / 255, blue: 65 / 255))
        .padding(.horizontal, 16.w)
        .padding(.vertical, 20.h)
        .background(.white)
        .cornerRadius(50.r)
    }
    .frame(maxWidth: .infinity, alignment: .leading)
  }
}

private struct SJAZEpES7uN1NTAMQpx0tRh: View {
  let SJAZEVnL4zjZ4eemMCEjJC7: String
  let SJAZEXIEaaB3OBIjnnGdPri: Bool

  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 24.r)
        .fill(SJAZEXIEaaB3OBIjnnGdPri ? Color(red: 1, green: 138 / 255, blue: 122 / 255) : .white)
        .frame(width: 106.w, height: 48.h)
      Image(SJAZEVnL4zjZ4eemMCEjJC7)
        .resizable()
        .scaledToFit()
        .frame(width: 24.r, height: 24.r)
    }
  }
}
