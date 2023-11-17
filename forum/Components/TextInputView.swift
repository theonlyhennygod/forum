//
//  TextInputView.swift
//  forum
//
//  Created by Argenis De La Rosa on 11/6/23.
//

import SwiftUI

struct ModalView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        
        VStack {
            Text("this is a modal view")
                .font(.title)
                .padding()
            
            Button("Close") {
                print("hello")
                isPresented = false
            }
            .font(.title)
            .padding()
        }
    }
}

struct TextInputView: View {
    @State private var userInput: String = ""

    var body: some View {
        VStack {
            TextField("Enter text here", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                // Implement saving logic here (e.g., to UserDefaults or a database)
                saveUserInput()
            }) {
                Text("Save")
            }
        }
        .padding()
    }

    func saveUserInput() {
        // Implement your logic to save the user's input here
        // For example, you can use UserDefaults or store it in your data model
        // UserDefaults.standard.set(userInput, forKey: "savedText")
        UserDefaults.standard.set(userInput, forKey: "savedText") 
    }
}

#Preview {
    TextInputView()
}
