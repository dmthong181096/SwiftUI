//
//  HomeScreenView.swift
//  Mediation
//
//  Created by FE-Thong on 23/07/2023.
//

import SwiftUI

struct HomeScreenView: View {
    let homeScreen = "Home Screen"
    let chips: [String] = [
        "Sweet sleep",
        "Insomniaa",
        "Depression"
    ]
    var body: some View {
        ZStack {
            colorDeepBlue.ignoresSafeArea()
            
            VStack(spacing: 0) {
                GreetingsView(name: "Thong")
                .font(.largeTitle)
                ChipsView(chips: chips)
                CurrentMeditationView()
                FeatureView()
                Spacer()
            }
        }
    }
}

#Preview {
    HomeScreenView()
}
