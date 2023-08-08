//
//  HomeScreen.swift
//  BMICalulator
//
//  Created by FE-Thong on 08/08/2023.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        
       
        
        ZStack {
            colorWhite.ignoresSafeArea()
            VStack {
                //MARK: - HEDER
                HStack(content: {
                    ImageIconView(imageName: "text.alignleft", size: 20)
                    Spacer()
                    Text("BMI Calculator")
                        .font(.title)
                    Spacer()
                    ImageIconView(imageName: "person", size: 20)
                  
                })
                Spacer()
                
            }
            .padding(.horizontal,20)
        }
        //MARK: - BODY
        
        //MARK: - FOOTER
    }
}

#Preview {
    HomeScreen()
}
