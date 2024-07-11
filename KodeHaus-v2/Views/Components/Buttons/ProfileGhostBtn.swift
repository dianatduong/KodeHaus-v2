//
//  SecondaryProfileBtnSmall.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 7/11/24.
//

import SwiftUI

struct ProfileGhostBtn: View {
    @Environment(\.colorScheme) var colorScheme

    
    var title: String
    
    var body: some View {
        
        Text(title)
            .foregroundColor(colorScheme == .dark ? .white : .magenta)
            .fontWeight(.semibold)
            .padding()
            .frame(width:175, height:50)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(LinearGradient(colors: [Color.magenta, Color.blue], startPoint: .leading, endPoint: .trailing), lineWidth: 3)
            )
    }
}

struct ProfileGhostBtn_Previews: PreviewProvider {
    
    static var previews: some View {
        ProfileGhostBtn(title: "Create an Account")
    }
}



