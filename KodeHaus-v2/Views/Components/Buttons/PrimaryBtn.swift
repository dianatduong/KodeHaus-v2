//
//  PrimaryBtn50.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 7/11/24.
//

import SwiftUI

struct PrimaryBtn: View {
    
    var title: LocalizedStringKey
    var color1: Color
    var color2: Color
    
    
    var body: some View {
        
        
        Button(action: {
            // Handle button tap
        }) {
            Text(title)
                .font(.system(size: 16))
                .foregroundColor(.white)
                .bold()
                .frame(width: 155, height: 42)
                .background(LinearGradient(colors: [color1, color2],
                                           startPoint: .leading,
                                           endPoint: .trailing))
                .cornerRadius(22)
        }
        .padding(.vertical, 5)

    }
}

#Preview {
    PrimaryBtn(title: "Example", color1: Color.magenta, color2: Color.pink)
}
