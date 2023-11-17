//
//  PostFormView.swift
//  forum
//
//  Created by Argenis De La Rosa on 11/6/23.
//

import SwiftUI

struct PostFormCard: View {
    
    @State private var author: String = ""
    @State private var date: String = ""
    @State private var postContent: String = ""

    var body: some View {
        
        VStack {
            
            Text("Create a Note")
                .font(.title)
                .padding()

            TextField("Author", text: $author)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            TextField("Date", text: $date)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            TextEditor(text: $postContent)
                .frame(height: 200)
                .padding()

            Button(action: {
                // Handle the submission of the post data
                print("Author: \(author)")
                print("Date: \(date)")
                print("Post Content: \(postContent)")
            }) {
                Text("Submit Post")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 5)
        .padding()
    }
}

#Preview() {
    PostFormCard()
}
