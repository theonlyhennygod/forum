//
//  ContentView.swift
//  forum
//
//  Created by Argenis De La Rosa on 11/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                ForumListView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                TextInputView()
                    .tabItem {
                        Image(systemName: "note.text")
                        Text("Journal")
                    }
                ProfileCardView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
        }
    }
}

#Preview("Home View") {
    ContentView()
}

#Preview("Profile Card View") {
    ProfileCardView()
}

#Preview("Text Input View") {
    TextInputView()
}

#Preview("Post Form Card") {
    PostFormCard()
}

#Preview("Settings View") {
    SettingsView()
}


