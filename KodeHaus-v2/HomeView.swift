//
//  HomeView.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 6/18/24.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
               
                ScrollView {
                    
                    VStack() {
                        Text("")
                            .font(.system(size: 18))
                            .bold()
                    }
                    .background(.white)
                    .frame(maxWidth: .infinity, minHeight: 300, alignment: .leading)
                    .overlay(
                       Rectangle()
                           .frame(height: 10)
                           .foregroundColor(.lightGray),
                       alignment: .bottom
                   )
                        
                }
            }
            .navigationTitle("Home")
        }
    }
}


#Preview {
    HomeView()
}
