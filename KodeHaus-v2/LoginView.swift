//
//  LoginView.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 7/7/24.
//

import SwiftUI

struct LoginView: View {
    
    var body: some View {
       
        VStack {
            // Logo
            //header
        }
        
        VStack {
            // email text field
            // password text fied
            
            
            HStack {
                //Sign Up button
                Text("Sign Up")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 175, height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(LinearGradient(colors: [.hotPink, .magenta], startPoint: .leading, endPoint: .trailing))
                    )
                
                //Login button
                Text("Login")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 175, height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(LinearGradient(colors: [.hotPink, .magenta], startPoint: .leading, endPoint: .trailing))
                    )
            }
        }
    }
}


#Preview {
    LoginView()
}
