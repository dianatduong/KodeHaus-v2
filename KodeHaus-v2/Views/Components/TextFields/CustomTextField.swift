//
//  TextField.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 7/16/24.
//

import SwiftUI

struct CustomTextField: View {
    
    @State private var textInput = ""
    var name = ""
    var color: Color
    var frameHeight: CGFloat
    var type: InputFieldType
    
    var body: some View {
        
        if type == .text {
            
            VStack {
                
                TextField(name, text: $textInput)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(.plain)
                    .multilineTextAlignment(.leading)
                
                Rectangle()
                    .frame(height: frameHeight)
                    .foregroundColor(color)
            }
            .padding()
        }
    }
}


#Preview {
    
    CustomTextField(name: "Email Address", color: Color.magenta, frameHeight: 3,  type: .text)
}


enum InputFieldType {
    case text
    case secure
}
