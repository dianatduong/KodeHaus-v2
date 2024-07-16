//
//  SecondaryProfileBtnSmall.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 7/11/24.
//

import SwiftUI

struct GhostBtn: View {
    @Environment(\.colorScheme) var colorScheme
    var title: LocalizedStringKey
    var color1: Color
    var color2: Color
    
    var body: some View {
        
        Button(action: {
            // Handle button tap
        }) {
            Text(title)
                .foregroundColor(colorScheme == .dark ? .white : .magenta)
                .font(.system(size: 16))
                .foregroundColor(.white)
                .bold()
                .frame(width: 155, height: 40)
                .background(
                    RoundedRectangle(cornerRadius: 22)
                        .stroke(LinearGradient(colors: [color1, color2], startPoint: .leading, endPoint: .trailing), lineWidth: 3)
                )
        }
        .padding(.vertical, 10)
        
            
    }
}

struct ProfileGhostBtn_Previews: PreviewProvider {
    
    static var previews: some View {
        GhostBtn(title: "Example", color1: .magenta, color2: .blue)
    }
}



