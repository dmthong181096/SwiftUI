//
//  MainTabView.swift
//  BookTicketFilm
//
//  Created by FE-Thong on 29/07/2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeScreenView()
                .tabItem {
                    Label("Chọn phim", systemImage: "ticket")
                }
            TheaterScreenView()
                .tabItem {
                    Label("Chọn rạp", systemImage: "play.tv")
                }
//            FoodScreenView()
//                .tabItem {
//                    Label("Bắp nước", systemImage: "popcorn")
//                }
            InfoScreenView()
                .tabItem {
                    Label("Tôi", systemImage: "person")
                }
        }
    }
}

#Preview {
    MainTabView()
}
