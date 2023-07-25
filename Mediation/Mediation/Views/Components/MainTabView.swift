//
//  MainTabView.swift
//  Mediation
//
//  Created by FE-Thong on 25/07/2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeScreenView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            MeditateScreenView()
                .tabItem {
                    Label("Home", systemImage: "drop")
                }
            SleepScreenView()
                .tabItem {
                    Label("Home", systemImage: "moon")
                }
            MusicView()
                .tabItem {
                    Label("Home", systemImage: "music.note")
                }
            ProfileView()
                .tabItem {
                    Label("Home", systemImage: "person")
                }
        }
    }
}

#Preview {
    MainTabView()
}
