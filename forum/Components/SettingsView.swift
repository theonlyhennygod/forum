//
//  SettingsView.swift
//  forum
//
//  Created by Argenis De La Rosa on 11/6/23.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        NavigationView {
            List {
                // general settings
                Section(header: Text("General")) {
                    NavigationLink(destination: Text("Notification Settings")) {
                        Text("Notifications")
                    }

                    NavigationLink(destination: Text("Privacy Settings")) {
                        Text("Privacy")
                    }

                    NavigationLink(destination: Text("Language Settings")) {
                        Text("Language")
                    }
                }

                // account settings
                Section(header: Text("Account")) {
                    NavigationLink(destination: Text("Profile Settings")) {
                        Text("Profile")
                    }

                    NavigationLink(destination: Text("Security Settings")) {
                        Text("Security")
                    }
                }

                // app settings
                Section(header: Text("App Settings")) {
                    NavigationLink(destination: Text("Theme Settings")) {
                        Text("Theme")
                    }

                    NavigationLink(destination: Text("About App")) {
                        Text("About")
                    }
                }
                Section(header: Text("Appearance")) {
                    Toggle(isOn: $isDarkMode) {
                        Text("Dark Mode")
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Settings")
        }
        
    }
}

#Preview() {
    SettingsView()
}
