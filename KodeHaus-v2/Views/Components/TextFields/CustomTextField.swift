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
    @FocusState private var focus: FormFieldFocus?

    var name = ""
    var color: Color
   // var type: InputFieldType
    
    
    var body: some View {
        
       // if type == .text {
            
            VStack {
                
                TextField(name1, text: $textInput)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(.plain)
                    .multilineTextAlignment(.leading)
                    .onSubmit {
                        //prints in console
                        print(textInput)
                    }
                    .focused($focus, equals: .focus1)
                
                
                
                Rectangle()
                    .frame(height: 3)
                    .foregroundColor(color)
            }
            .padding()
            .onAppear {
                //set the focus state for the indicator
                //focus = true
            }
            
        }
    }
//}

enum FormFieldFocus: Hashable {
    //Hashable allows the values to be compared to eachother
    case focus1, focus2
    
}


#Preview {
    
    CustomTextField(name: "Email Address", color: Color.magenta)
}


//enum InputFieldType {
   // case text
  //  case secure
//}



//TextField(name2, text: $textInput2)
//keyboardType(.emailAddress)
//.textInputAutocapitalization(.none)
//.disableAutocorrection(true)
//.textFieldStyle(.plain)
//.multilineTextAlignment(.leading)
//.onSubmit {
    //prints in console
   // print(textInput2)
//}
