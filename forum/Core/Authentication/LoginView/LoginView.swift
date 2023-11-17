//
//  LoginView.swift
//  forum
//
//  Created by Argenis De La Rosa on 11/11/23.
//

import SwiftUI

struct LoginView: View {
    
    // MARK: - Properties
    @State private var email = ""
    @State private var password = ""
    @State private var isShowingModal = false
    @State private var isShowingAlert = false

    
    // MARK: - Views
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                Spacer()
                
                TextField("email", text: self.$email)
                    .padding()
                    .cornerRadius(20)
                SecureField("password", text: self.$password)
                    .padding()
                    .cornerRadius(20)
                
                Spacer()
                
                Button {
                    isShowingAlert = true
                } label: {
                    Text("Login")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

                NavigationLink {
                    SettingsView()
                } label: {
                    Text("Don't have an account, Sign Up")
                        .font(.headline)
                        .foregroundColor(Color.blue)
                }

            }
            .alert(isPresented: $isShowingAlert) {
                Alert(
                    title: Text("Alert Title"),
                    message: Text("This is the alert message."),
                    primaryButton: .default(Text("OK")) {
                        // Action to perform when the OK button is tapped
                        isShowingAlert = false // Close the alert
                    },
                    secondaryButton: .cancel() {
                        // Action to perform when the Cancel button is tapped (optional)
                        isShowingAlert = false // Close the alert
                    }
                )
            }
        }
    }
}

#Preview {
    LoginView()
}
