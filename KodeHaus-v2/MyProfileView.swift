//
//  MyProfile.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 6/18/24.
//

import SwiftUI

struct MyProfileView: View {
    
    @Environment(\.colorScheme) var colorScheme  //dark mode
    @Bindable var nm: NetworkManager
    @State var didGoToNextScreen = false
    
    var body: some View {
        
        ZStack {
            Color(colorScheme == .dark ? .black : .lightGray)
            
            ScrollView {
                
                VStack {
                    Image("pinkBkgrd")
                        .resizable()
                        .frame(width: 450, height: 200)
                        .aspectRatio(contentMode: .fit)
                        .edgesIgnoringSafeArea(.top)
                    
                    AsyncImage(url: URL(string: nm.user?.avatarUrl ?? "")) { image in
                        image.resizable()
                            .frame(width: 160, height: 160)
                            .aspectRatio(contentMode: .fill)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .overlay(
                                Circle()
                                    .stroke(LinearGradient(colors: [Color.magenta, Color.pink],
                                                           startPoint: .leading,
                                                           endPoint: .trailing), lineWidth: 5)
                            )
                    } placeholder: {
                        Image(systemName: "bulldogProfile")
                            .resizable()
                            .frame(width: 160, height: 160)
                    } 
                    .offset(y: -130)
                } // end Vstack - images
                
                VStack(spacing: 10) {
                    VStack {
                        Text(nm.user?.name ?? "")
                            .font(.system(size: 26))
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                        
                        Text("iOS Software Engineer")
                            .font(.system(size: 16))
                            .multilineTextAlignment(.center)
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                        
                        HStack(spacing: 2) {
                            Image(colorScheme == .dark ? "location-wht-50" : "location-blk-50" )
                            Text("San Diego, CA ")
                                .font(.system(size: 15))
                                .multilineTextAlignment(.center)
                        }
                        
                    } // end vstack - biio
                    
                    VStack {
                          HStack(spacing: 15) {
                              IconBtn(icon: "message-50", title: "Message",  color1: Color.magenta, color2: Color.pink)
                          }
                      } // end vstack message & follow
                    .padding(.top, 10)
                }
                .offset(y: -125)
                
                VStack(spacing: 15) {
                    SectionView(title: "Tech Stack", userInput: "Swift, SwiftUI, Xcode, Firebase")
                    
                    
                    SectionView(title: "Previous Experience", userInput:"Ecommerce, Digital Marketing, Web Design, Email Development, UX/UI Design")
                    
                    SectionView(title: "Hobbies", userInput: "Traveling, Pickleball, Hiking, Exploring new restaurants")
                }
                .offset(y: -100)
                
              
                .task{
                    do {
                        try await nm.fetchUser()
                    }catch {
                        print("error occured")
                    }
                } // end task
               
              
            } // end scrollview
        } // end zstack
        .ignoresSafeArea()
    } // end body
} //end struck


#Preview {
    MyProfileView(nm: NetworkManager())
}
