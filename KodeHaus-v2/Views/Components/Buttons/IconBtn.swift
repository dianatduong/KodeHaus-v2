//
//  IconBtn.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 8/22/24.
//

import SwiftUI

struct IconBtn: View {
    
    var icon: String
    var title: LocalizedStringKey
    var color1: Color
    var color2: Color

    
    var body: some View {
        
        
        Button(action: {
                 // Handle button tap
             }) {
                 HStack {
                     Image(icon)
                     
                     Text(title)
                         .font(.system(size: 16))
                         .foregroundColor(.white)
                     
                         .bold()
                     
                 }
                 .frame(width: 155, height: 40)
                 .background(LinearGradient(colors: [color1, color2],
                                            startPoint: .leading,
                                            endPoint: .trailing))
                 .cornerRadius(15)
                 
             }
            
        
    }
}

#Preview {
    IconBtn(icon: "message-50", title: "Message", color1: Color.magenta, color2: Color.pink)
}

