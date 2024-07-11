//
//  AppName.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 7/11/24.
//

import SwiftUI

struct AppName: View {
    
    var body: some View {
        
        Text("Kode")
            .foregroundColor(Color.magenta)
            .font(Font.system(size: 40, weight: .bold))
            +
        Text("Haus")
            .foregroundColor(Color.blue)
            .font(Font.system(size: 40, weight: .light))
    }
}


#Preview {
    AppName()
}
