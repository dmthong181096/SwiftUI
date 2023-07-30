//
//  HomeScreenView.swift
//  MuaHoVeSo
//
//  Created by FE-Thong on 27/07/2023.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack {
      
                ScrollView(showsIndicators: false){
                    Image("imgHeader")
                        .resizable()
                        .scaledToFit()
                    VStack {
                        ForEach(0..<8) { item in
                            TypeTicketItemView(typeTicketItem: defaultTypeItem)
                        }
                    }
                    .padding()
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Spacer()
                            Text("HƯỚNG DẪN CHƠI")
                                .padding()
                                .frame(width: .infinity)
                                .background(
                                    RoundedRectangle(cornerRadius: 12).stroke(style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
                                        .frame(width: .infinity)
                                )
                            Spacer()
                        }
                    })
                }
               
            }
        }
    }
}

#Preview {
    HomeScreenView()
}
