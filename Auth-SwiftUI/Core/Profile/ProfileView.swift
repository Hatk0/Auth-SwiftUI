import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Text("DY")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Dmitry Yastrebov")
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        
                        Text("hatk02019@gmail.com")
                            .font(.footnote)
                            .tint(.gray)
                    }
                }
            }
            
            Section("General") {
                HStack {
                    SettingsRowView(image: "gear",
                                    title: "Version",
                                    tintColor: Color(.systemGray))
                    
                    Spacer()
                    
                    Text("1.0.0")
                        .font(.subheadline)
                        .foregroundColor(Color(.darkGray))
                }
            }
            
            Section("Account") {
                Button {
                    print("Sign out")
                } label: {
                    SettingsRowView(image: "arrow.left.circle.fill",
                                    title: "Sign Out",
                                    tintColor: .red)
                }

                Button {
                    print("Delete account")
                } label: {
                    SettingsRowView(image: "xmark.circle.fill",
                                    title: "Delete account",
                                    tintColor: .red)
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
