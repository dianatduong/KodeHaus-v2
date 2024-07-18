//
//  TextField.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 7/16/24.
//

import SwiftUI

struct CustomTextField: View {
    
    //property wrappers and properties
    @State private var textInput = ""
    
    //sets indicator in the first text field
    @FocusState private var focus: Bool

    var name = ""
    var color: Color
    var frameHeight: CGFloat
   // var type: InputFieldType
    
    
    var body: some View {
        
       // if type == .text {
            
            VStack {
                
                TextField(name, text: $textInput)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(.plain)
                    .multilineTextAlignment(.leading)
                    .onSubmit {
                        print(textInput)
                    }
                    .focused($focus)
                
                Rectangle()
                    .frame(height: frameHeight)
                    .foregroundColor(color)
            }
            .padding()
            .onAppear {
                focus = true
            }
            
        }
    }
//}


#Preview {
    
    CustomTextField(name: "Email Address", color: Color.magenta, frameHeight: 3)
}


//enum InputFieldType {
   // case text
  //  case secure
//}
