//
//  InfoScreenView.swift
//  BookTicketFilm
//
//  Created by FE-Thong on 29/07/2023.
//

import SwiftUI

struct InfoScreenView: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                colorBG.opacity(0.5).ignoresSafeArea()
                ScrollView() {
                    VStack {
                        Text("ĐM")
                            .padding(40)
                            .overlay(
                                Circle().stroke(.gray.opacity(0.2), lineWidth: 1)
                            )
                            .background(
                                Circle().fill(.white, style: FillStyle())
                            )
                            .shadow(radius: 12)
                        Text("Đoàn Minh Thông")
                            .font(.title)
                            .fontWeight(.bold)
                        HStack(spacing: 40 ,content: {
                            ForEach(DATA_ITEM_INFO) { item in
                                ItemInfoView(item: item)
                            }
                        })
                        .padding()
                        Spacer()
                    }
                    .frame(width: WIDTH_SCREEN, height: HEIGHT_SCREEN, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white, style: FillStyle())
                            .offset(x: 0, y: 50)
                    )
                 
                }
                .scrollIndicators(.hidden)

            }
            .navigationTitle("Trang phim của tôi")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    InfoScreenView()
}
