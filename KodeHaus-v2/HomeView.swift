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
            ScrollView {
                VStack() {
                    Text("")
                        .font(.system(size: 18))
                        .bold()
                }
                .padding(60)
                .frame(width: 380, height: 250, alignment: .leading)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            }
        }
        .navigationTitle("Home")
        .background(.gray)
    }
}


#Preview {
    HomeView()
}
