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
            
            NavigationView {
                HomeView()
            }
            .tabItem {
                Label("Home", systemImage: "house.fill")
            }
          
            NavigationView {
                MyProfileView(nm: NetworkManager())
            }
                .tabItem {
                    Label("My Profile", systemImage: "person.fill")
                }
        
            NavigationView {
                MyProjectsView()
            }
                .tabItem {
                    Label("My Projects", systemImage: "wand.and.stars")
                }
            
            NavigationView {
                InboxView()
            }
                .tabItem {
                    Label("Inbox", systemImage: "message.fill")
                }
        
            NavigationView {
                SettingsView()
            }
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        
            }
        }
    }

#Preview {
    ContentView()
}





