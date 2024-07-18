//
//  LoginView.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 7/7/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var text: String = ""
    
    var body: some View {
       
        //HEADER START
        VStack {
            // Logo
            AppName()
            
            //header
            Text("A community for career changers.")
                .font(Font.system(size: 20, weight: .light))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)
                .foregroundColor(.gray)
            
            //header image
            Image("loginImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 200)
                .padding(.leading, 30)
                .padding(.top, 25)
            
            //Image credit
            Text("All Illustrations by Icons 8 from Ouch!")
                .font(.system(size: 8))
                .foregroundColor(.gray)
        }
        .padding(.top, 50)
        //HEADER END
        
        Spacer()
        
        //FORM FIELD START
        VStack {
            // email text field
            CustomTextField(name: "Email Address", color: .magenta, frameHeight: 3)
                       
            // password text fied
            CustomTextField(name: "Password", color: .magenta, frameHeight: 3)
        
            
            HStack {
                //Sign Up button
                GhostBtn(title: "Sign Up", color1: .magenta, color2: .blue)
              
                //Login button
                PrimaryBtn(title: "Login", color1: .magenta, color2: .hotPink)
            }
            //FORM FIELD END
            Spacer()
        }
        .padding(.top, 30)
    }
}


#Preview {
    LoginView()
}
