import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Image("firebase")
                 .resizable()
                 .scaledToFit()
                 .frame(width: 100, height: 120)
                 .padding(.vertical, 32)
            
            VStack(spacing: 25) {
                InputView(text: $email,
                          title: "Email Adress",
                          placeholder: "examplename@example.com")
                .textInputAutocapitalization(.none)
                
                InputView(text: $fullName,
                          title: "Full Name",
                          placeholder: "Enter your name")
                .textInputAutocapitalization(.none)
                
                InputView(text: $password,
                          title: "Password",
                          placeholder: "Enter your password",
                          isSecureField: true)
                
                InputView(text: $confirmPassword,
                          title: "Confirm Password",
                          placeholder: "Confirm your password",
                          isSecureField: true)
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            ButtonView(label: "SIGN UP") {
                print("Sign user up")
            }

            Spacer()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 2) {
                    Text("Already have an account?")
                    Text("Sign in")
                        .bold()
                }
                .font(.system(size: 14))
            }

        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
