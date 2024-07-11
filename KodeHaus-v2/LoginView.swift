//
//  LoginView.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 7/7/24.
//

import SwiftUI

struct LoginView: View {
    
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
        
        VStack {
            // email text field
          
            // password text fied
            
            
            HStack {
                //Sign Up button
                Button(action: {
                    
                }, label: {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 175, height: 50)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(LinearGradient(colors: [.hotPink, .magenta], startPoint: .leading, endPoint: .trailing))
                        )
                })
                
                //Login button
                Button(action: {
                    
                }, label: {
                    Text("Login")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 175, height: 50)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(LinearGradient(colors: [.hotPink, .magenta], startPoint: .leading, endPoint: .trailing))
                        )
                })
                
            }
        }
    }
}


#Preview {
    LoginView()
}
