//
//  LoginView.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 7/7/24.
//

import SwiftUI

struct LoginView: View {
    
    var body: some View {
        Text("Hello")
        
       
        VStack {
            // Logo
            //header
        }
        
        VStack {
            // email text field
            // password text fied
            
            
            HStack {
                //sign in button
                //create an account button
                Text("Sign in")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 175, height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(LinearGradient(colors: [red, blue], startPoint: .leading, endPoint: .trailing))
                    )
            }
        }
    }
}


#Preview {
    LoginView()
}
