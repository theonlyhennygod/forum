//
//  ForumListView.swift
//  forum
//
//  Created by Argenis De La Rosa on 11/6/23.
//

import SwiftUI


// TODO : Refactor this sheet into 3 separate components 

// forum list view
struct ForumListView: View {
    
    @State private var forumTopics: [ForumTopic] = [
        ForumTopic(title: "Swift UI", author: "Henny ", content: "this is the first of many"),
        ForumTopic(title: "Swift UI Basics", author: "Henny ", content: "this is the second of many")
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach($forumTopics) { $forumTopic in
                    ForumListRow(forumTopic: $forumTopic)
                }
            }
            .navigationBarTitle("Forum Topics")
        }
    }
}

// forum detail view when the user clicks on the row
struct ForumDetail: View {
    let forumTopic: ForumTopic

    var body: some View {
        VStack {
            Text(forumTopic.title)
                .font(.title)

            Text("Author: \(forumTopic.author)")
                .font(.subheadline)

            Text(forumTopic.content)
                .padding()
            
            // Add more content and interactions for forum details here
        }
        .navigationBarTitle("Forum Topic")
    }
}

// what's in the list
struct ForumListRow: View {
    @Binding var forumTopic: ForumTopic

    var body: some View {
        
        // vertical stacked
        VStack(alignment: .leading) {

            // text field
            TextField("edit title", text: $forumTopic.title)
                .font(.headline)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            // text of author
            Text("Author: \(forumTopic.author)")
                .font(.subheadline)
        }
    }
}


#Preview() {
    ForumListView()
}
