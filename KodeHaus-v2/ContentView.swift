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
            
            ExplorePageView()
                .tabItem {
                    Label("Explore Page", systemImage: "rainbow")
                }
            
            InboxView()
                .tabItem {
                    Label("Inbox", systemImage: "message.fill")
                }
            
            MyProjectsView()
                .tabItem {
                Label("My Projects", systemImage: "wand.and.stars")
                }
            
            
            MyProfileView()
                .tabItem {
                    Label("My Profile", systemImage: "person.fill")
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}


