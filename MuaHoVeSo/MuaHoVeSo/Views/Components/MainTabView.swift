//
//  MainTabView.swift
//  MuaHoVeSo
//
//  Created by FE-Thong on 27/07/2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        TabView {
            HomeScreenView()
                .tabItem {
                    Label("ĐẶT VÉ", systemImage: "ticket")
                }
            ResultScreenView()
                .tabItem {
                    Label("KẾT QUẢ", systemImage: "star")
                }
            ResultScreenView()
                .tabItem {
                    Label("LỊCH SỬ", systemImage: "clock.arrow.circlepath")
                }
        }
    }
}

#Preview {
    MainTabView()
}
