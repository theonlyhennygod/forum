//
//  SignUpView.swift
//  forum
//
//  Created by Argenis De La Rosa on 11/12/23.
//

import SwiftUI

struct SignUpView: View {
    
    // MARK: - Properties
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var isShowingModal = false

    
    // MARK: - Views
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                Spacer()
                
                TextField("full name", text: self.$name)
                    .padding()
                    .cornerRadius(20)
                TextField("email", text: self.$email)
                    .padding()
                    .cornerRadius(20)
                SecureField("password", text: self.$password)
                    .padding()
                    .cornerRadius(20)
                SecureField("confirm password", text: self.$confirmPassword)
                    .padding()
                    .cornerRadius(20)
                
                Spacer()
                
                Button {
                    isShowingModal = true
                } label: {
                    Text("Sign Up")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

                NavigationLink {
                    SettingsView()
                } label: {
                    Text("Have an account? Log In")
                        .font(.headline)
                        .foregroundColor(Color.blue)
                }

            }
            .sheet(isPresented: $isShowingModal, content: {
                SettingsView()
        })
        }
    }
}

#Preview {
    SignUpView()
}
