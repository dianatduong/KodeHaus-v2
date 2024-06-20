//
//  ContentView.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 4/28/24.
//

import SwiftUI

struct ContentView: View {
    
    //local and not shared
    @State private var name = ""
    
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            MyProfileView()
                .tabItem {
                    Label("My Profile", systemImage: "person.fill")
                }
        
            MyProjectsView()
                .tabItem {
                    Label("My Projects", systemImage: "wand.and.stars")
                }
            
            InboxView()
                .tabItem {
                    Label("Inbox", systemImage: "message.fill")
                }
        
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        
            }
        }
    }

#Preview {
    ContentView()
}





