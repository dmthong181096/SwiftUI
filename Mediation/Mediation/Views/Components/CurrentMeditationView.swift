//
//  CurrentMeditationView.swift
//  Mediation
//
//  Created by FE-Thong on 23/07/2023.
//

import SwiftUI

struct CurrentMeditationView: View {
    var body: some View {
            HStack {
                VStack(spacing: 10,content: {
                    Text("Daily Thought")
                        .foregroundStyle(colorTextWhite)
                        .fontWeight(.semibold)
                    Text("Meditation 3-10 min")
                        .foregroundStyle(colorTextWhite)
                        .font(.caption)
                    
                })
                .padding()
                Spacer()
                Image(systemName: "play.circle")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .foregroundStyle(colorTextWhite)
                    .background(
                        colorButtonBlue
                    )
                    .clipShape(Circle(), style: FillStyle())
                
            }.padding()
            .background(
                colorLightRed .clipShape(RoundedRectangle(cornerRadius: 10), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
            )
            .padding()
    }
}

#Preview {
    CurrentMeditationView()
}
