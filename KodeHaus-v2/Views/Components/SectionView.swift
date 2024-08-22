//
//  SectionView.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 7/5/24.
//

import SwiftUI 

struct SectionView: View {
    
    var title: String
    @State var userInput = ""
    
 
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(title)
                .font(.system(size: 18))
                .bold()
                .padding(.bottom, 10)
            
            TextEditor(text: $userInput)
                .font(.system(size: 16))
                .foregroundColor(.black)
                .keyboardType(.alphabet)
        }
        .padding(30)
        .frame(width: 400, height: 150, alignment: .leading)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {

    SectionView(title: "Technologies", userInput: "hello")
    
}
